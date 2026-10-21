// prayer_times_meeus.dart
//
// Pure Dart (no packages), fully offline prayer time calculation that follows
// the Kemenag RI (Bimas Islam) hisab convention, using Jean Meeus'
// "Astronomical Algorithms" (ch. 7, 25, 28) for the Sun's position.
//
// Calibrated against Kemenag's Jakarta schedule (api.myquran.com id 1301):
// 192 of 198 sampled prayer times (33 days across Jan/Jun/Oct 2026) match to
// the minute; the 6 misses (5 Ashar, 1 Isya) fall within a few seconds of a
// minute boundary (Kemenag's own ephemeris differs from Meeus by ~1-3 s).
//
// Kemenag convention encoded here:
//   * Fajr  : Sun at -20.0 deg (Muhammadiyah: -18.0 deg)
//   * Isha  : Sun at -18.0 deg
//   * Sunrise/Sunset (Syuruq/Maghrib): Sun at -1.0 deg
//       (= semi-diameter 16' + refraction 34' + horizon dip ~10')
//   * Asr   : shadow length = object length + noon shadow (Shafi'i, factor 1)
//   * Dzuhur: solar transit
//   * Ihtiyat (minutes added): Subuh +2, Dzuhur +3, Ashar +2, Maghrib +2,
//       Isya +2, Syuruq -2
//   * Rounding: salat times -> add ihtiyat then round UP to next whole minute
//       (ceil); Syuruq -> add ihtiyat then DROP seconds (floor).
//   * Sun declination & equation of time are evaluated at the event time
//       (iterated), not once at noon.
//
// Time zone is passed explicitly (WIB=7, WITA=8, WIT=9) so results never
// depend on the device's clock zone.

import 'dart:math' as math;

/// Default Kemenag ihtiyat (minutes).
const Map<String, int> kKemenagIhtiyat = {
  'subuh': 2,
  'terbit': -2,
  'dzuhur': 3,
  'ashar': 2,
  'maghrib': 2,
  'isya': 2,
};

/// Reference location for Jakarta, calibrated to Kemenag's published table.
const double kJakartaLat = -6.17;
const double kJakartaLon = 106.835;
const double kJakartaTz = 7.0; // WIB

class PrayerTimesMeeus {
  const PrayerTimesMeeus._();

  /// Computes the day's schedule for the calendar date [year]-[month]-[day].
  ///
  /// Returns an insertion-ordered map:
  /// Subuh, Syuruq, Dzuhur, Ashar, Maghrib, Isya  ->  "HH:mm".
  ///
  /// [tzOffsetHours]  7 = WIB, 8 = WITA, 9 = WIT.
  /// [fajrAngle]      20.0 Kemenag, 18.0 Muhammadiyah.
  /// [ishaAngle]      18.0 for both.
  /// [horizonAngle]   Sun depression at sunrise/sunset. 1.0 reproduces
  ///                  Kemenag (already includes a typical horizon dip).
  /// [useElevation] + [elevationMeters]
  ///                  Optional EXTRA horizon dip for a high-altitude site:
  ///                  adds 0.0293 * sqrt(meters) degrees to [horizonAngle].
  ///                  Leave off to match Kemenag exactly.
  /// [asrShadowFactor] 1 = Shafi'i/Maliki/Hanbali (Kemenag), 2 = Hanafi.
  /// [ihtiyat]        minutes per prayer, keys: subuh, terbit, dzuhur, ashar,
  ///                  maghrib, isya.
  static Map<String, String> compute({
    required int year,
    required int month,
    required int day,
    double latitude = kJakartaLat,
    double longitude = kJakartaLon,
    double tzOffsetHours = kJakartaTz,
    double fajrAngle = 20.0,
    double ishaAngle = 18.0,
    double horizonAngle = 1.0,
    bool useElevation = false,
    double elevationMeters = 0.0,
    int asrShadowFactor = 1,
    Map<String, int> ihtiyat = kKemenagIhtiyat,
  }) {
    final raw = computeRaw(
      year: year,
      month: month,
      day: day,
      latitude: latitude,
      longitude: longitude,
      tzOffsetHours: tzOffsetHours,
      fajrAngle: fajrAngle,
      ishaAngle: ishaAngle,
      horizonAngle: horizonAngle,
      useElevation: useElevation,
      elevationMeters: elevationMeters,
      asrShadowFactor: asrShadowFactor,
    );

    String f(String key, String ihKey, {bool ceil = true}) =>
        _format(raw[key], ihtiyat[ihKey] ?? 0, ceil: ceil);

    return {
      'Subuh': f('subuh', 'subuh'),
      'Syuruq': f('terbit', 'terbit', ceil: false),
      'Dzuhur': f('dzuhur', 'dzuhur'),
      'Ashar': f('ashar', 'ashar'),
      'Maghrib': f('maghrib', 'maghrib'),
      'Isya': f('isya', 'isya'),
    };
  }

  /// Raw local times in decimal hours (no ihtiyat, no rounding). A value is
  /// null when the event does not occur (polar day/night; not relevant in
  /// Indonesia but handled safely).
  static Map<String, double?> computeRaw({
    required int year,
    required int month,
    required int day,
    required double latitude,
    required double longitude,
    required double tzOffsetHours,
    double fajrAngle = 20.0,
    double ishaAngle = 18.0,
    double horizonAngle = 1.0,
    bool useElevation = false,
    double elevationMeters = 0.0,
    int asrShadowFactor = 1,
  }) {
    final double dip = (useElevation && elevationMeters > 0)
        ? 0.0293 * math.sqrt(elevationMeters)
        : 0.0;
    final double sunriseAlt = -(horizonAngle + dip);

    // Solar transit (UT hours) given a UT hour at which to sample the Sun.
    ({double transit, double dec}) at(double hourUt) {
      final s = _sun(_julianDay(year, month, day, hourUt));
      return (
        transit: 12.0 - longitude / 15.0 - s.eotMinutes / 60.0,
        dec: s.dec,
      );
    }

    // Converge the transit time (Sun sampled at the transit itself).
    var tn = at(12.0 - longitude / 15.0).transit;
    for (var i = 0; i < 3; i++) {
      tn = at(tn).transit;
    }

    // Solve one altitude event. [sign] -1 = morning (before transit),
    // +1 = afternoon. [altOf] gives the target altitude (deg) for a given
    // declination (needed because Asr depends on it).
    double? solve(double Function(double dec) altOf, int sign) {
      var t = tn;
      for (var i = 0; i < 4; i++) {
        final s = at(t);
        final ha = _hourAngleHours(altOf(s.dec), latitude, s.dec);
        if (ha == null) return null;
        t = s.transit + sign * ha;
      }
      return t + tzOffsetHours;
    }

    double asrAlt(double dec) {
      final z = (latitude * _d - dec).abs();
      return math.atan(1.0 / (asrShadowFactor + math.tan(z))) / _d;
    }

    return {
      'subuh': solve((_) => -fajrAngle, -1),
      'terbit': solve((_) => sunriseAlt, -1),
      'dzuhur': tn + tzOffsetHours,
      'ashar': solve(asrAlt, 1),
      'maghrib': solve((_) => sunriseAlt, 1),
      'isya': solve((_) => -ishaAngle, 1),
    };
  }

  // ---------------------------------------------------------------------------
  // Formatting: add ihtiyat, then ceil (salat) or floor (Syuruq) to the minute.
  // The 1e-9 guard stops floating-point noise from tipping an exact minute.
  // ---------------------------------------------------------------------------
  static String _format(double? rawHours, int ihtiyatMin, {bool ceil = true}) {
    if (rawHours == null) return '--:--';
    final seconds = (rawHours * 3600.0 * 1e6).round() / 1e6 + ihtiyatMin * 60;
    final minutes = ceil
        ? (seconds / 60.0 - 1e-9).ceil()
        : (seconds / 60.0 + 1e-9).floor();
    final m = minutes % 1440; // Dart % is non-negative for positive divisor
    final hh = (m ~/ 60).toString().padLeft(2, '0');
    final mm = (m % 60).toString().padLeft(2, '0');
    return '$hh:$mm';
  }

  // ---------------------------------------------------------------------------
  // Astronomy (Meeus)
  // ---------------------------------------------------------------------------
  static const double _d = math.pi / 180.0;

  /// Julian Day (Meeus ch. 7, Gregorian calendar) for a date + UT hour.
  static double _julianDay(int y, int m, int d, double hourUt) {
    if (m <= 2) {
      y -= 1;
      m += 12;
    }
    final a = y ~/ 100;
    final b = 2 - a + a ~/ 4;
    return (365.25 * (y + 4716)).floorToDouble() +
        (30.6001 * (m + 1)).floorToDouble() +
        d +
        b -
        1524.5 +
        hourUt / 24.0;
  }

  /// Sun's apparent declination (radians) and equation of time (minutes)
  /// (Meeus ch. 25 with nutation/aberration correction, ch. 28 for EoT).
  static ({double dec, double eotMinutes}) _sun(double jd) {
    final t = (jd - 2451545.0) / 36525.0;

    final l0 = (280.46646 + 36000.76983 * t + 0.0003032 * t * t) % 360.0;
    final m = (357.52911 + 35999.05029 * t - 0.0001537 * t * t) % 360.0;
    final mr = m * _d;

    final c =
        (1.914602 - 0.004817 * t - 0.000014 * t * t) * math.sin(mr) +
        (0.019993 - 0.000101 * t) * math.sin(2 * mr) +
        0.000289 * math.sin(3 * mr);
    final trueLong = l0 + c;

    final omega = (125.04 - 1934.136 * t) * _d;
    final lambda = (trueLong - 0.00569 - 0.00478 * math.sin(omega)) * _d;

    // Mean obliquity + nutation-in-obliquity term.
    final eps =
        (23.0 +
            26.0 / 60.0 +
            21.448 / 3600.0 -
            46.8150 / 3600.0 * t -
            0.00059 / 3600.0 * t * t +
            0.001813 / 3600.0 * t * t * t +
            0.00256 * math.cos(omega)) *
        _d;

    final ra = math.atan2(math.cos(eps) * math.sin(lambda), math.cos(lambda));
    final dec = math.asin(math.sin(eps) * math.sin(lambda));

    final dpsi = -0.00478 * math.sin(omega); // nutation in longitude (deg)
    var eot = l0 - 0.0057183 - ra / _d + dpsi * math.cos(eps); // degrees
    eot = ((eot + 180.0) % 360.0) - 180.0;

    return (dec: dec, eotMinutes: eot * 4.0);
  }

  /// Hour angle (in hours) at which the Sun reaches [altDeg]; null if never.
  static double? _hourAngleHours(double altDeg, double latDeg, double dec) {
    final x =
        (math.sin(altDeg * _d) - math.sin(latDeg * _d) * math.sin(dec)) /
        (math.cos(latDeg * _d) * math.cos(dec));
    if (x > 1.0 || x < -1.0) return null;
    return math.acos(x) / _d / 15.0;
  }
}

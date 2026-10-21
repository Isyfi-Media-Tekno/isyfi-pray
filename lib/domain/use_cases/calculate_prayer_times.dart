import '../../core/constants/app_constants.dart';
import '../models/app_config.dart';
import 'prayer_times_meeus.dart';

/// Computes today's prayer schedule fully on-device with the pure-Dart Meeus
/// implementation ([PrayerTimesMeeus]), following the Kemenag (Bimas Islam)
/// convention.
///
/// Returns the canonical jadwal map in insertion order:
/// `Subuh`, `Syuruq`, `Dzuhur`, `Ashar`, `Maghrib`, `Isya` with `HH:mm`
/// values. Ihtiyat and rounding are applied inside [PrayerTimesMeeus]:
/// add the per-prayer minutes, then round up to the next minute (ceil) for
/// the five salat times and drop leftover seconds (floor) for Syuruq.
///
/// The time zone is taken from [AppConfig.tzOffsetHours] (WIB 7, WITA 8,
/// WIT 9), never from the device clock, so a masjid TV with a wrong time zone
/// still displays the correct jadwal.
class CalculatePrayerTimes {
  const CalculatePrayerTimes();

  /// [now] is injectable for deterministic testing; defaults to `DateTime.now()`.
  ///
  /// Pass an [AppConfig] to use runtime-editable calc parameters (location,
  /// time zone, angles, madhab, ihtiyat); when omitted the [AppConstants]
  /// defaults are used unchanged.
  Map<String, String> call({DateTime? now, AppConfig? config}) {
    final DateTime date = now ?? DateTime.now();
    final AppConfig? cfg = config;

    // Defensive merge: a config always carries all six keys, but merging over
    // the defaults keeps the calculator safe if a caller builds a partial map.
    final Map<String, int> ihtiyat = {
      ...AppConstants.ihtiyat,
      ...?cfg?.ihtiyat,
    };

    return PrayerTimesMeeus.compute(
      year: date.year,
      month: date.month,
      day: date.day,
      latitude: cfg?.latitude ?? AppConstants.latitude,
      longitude: cfg?.longitude ?? AppConstants.longitude,
      // The presets (Kemenag / Muhammadiyah) resolve through the effective
      // getters, so their angles are pinned regardless of stale saved values.
      fajrAngle: cfg?.effectiveFajrAngle ?? AppConstants.fajrAngle,
      ishaAngle: cfg?.effectiveIshaAngle ?? AppConstants.ishaAngle,
      tzOffsetHours: cfg?.tzOffsetHours ?? AppConstants.tzOffsetHours,
      useElevation: cfg?.useElevation ?? AppConstants.useElevation,
      elevationMeters: cfg?.elevationMeters ?? AppConstants.elevationMeters,
      // Hanafi shadows are twice the object height; every other madhab uses
      // the Kemenag/Shafi factor of 1.
      asrShadowFactor: (cfg?.madhab ?? AppConstants.madhab) == 'hanafi' ? 2 : 1,
      ihtiyat: ihtiyat,
    );
  }
}

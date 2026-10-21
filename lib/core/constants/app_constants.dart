import 'package:flutter/foundation.dart';

class AppConstants {
  static const bool isDebug = kDebugMode;

  // --- masjid identity ---
  /// Name of the masjid shown on the display screens (home corner + side
  /// panel). Editable at runtime through the local config server's
  /// "Identitas Masjid" dashboard.
  static const String masjidName = 'Nama Masjid';

  /// Address/location shown under the masjid name on the home screen. Editable
  /// at runtime through the local config server's "Identitas Masjid" dashboard.
  static const String locationName = 'Lokasi Masjid';

  // --- feature toggles ---
  /// Set to `false` to remove the financial report from the home-screen idle
  /// cycle (the clock+schedule then runs alone).
  static const bool enableFinancialReport = false;

  // --- duration defaults (ConfigProvider) ---
  // Units: durations below marked MINUTES are configured and stored in minutes
  // (converted to seconds when the countdown runs); the rest stay in seconds.
  // In debug builds the state machine shortens the minute-based durations to a
  // few seconds so the prayer cycle can be tested quickly.
  static const int homeDuration = isDebug ? 2 : 10;
  static const int eventDuration = isDebug ? 3 : 20;
  static const int reportDuration = isDebug ? 3 : 20;
  static const int adzanDuration = 3; // minutes
  static const int jumatDuration = 45; // minutes
  static const int shalatDuration = 10; // minutes
  static const int isyraqDuration = 10; // minutes
  static const int hijriCorrection = -1;

  /// Hijri calendar used for the displayed date: `'umum'` (location-based,
  /// local rukyat) or `'khgt'` (Kalender Hijriah Global Tunggal — one global
  /// date for everyone). Editable at runtime through the local config server;
  /// when `'khgt'`, [hijriCorrection] is not applied.
  static const String hijriKalender = 'umum';

  /// Serialized values accepted for [hijriKalender] in `AppConfig`.
  static const List<String> hijriKalenderNames = ['umum', 'khgt'];

  static const int waitingIsyraqDuration = 15; // minutes
  static const int iqomahSubuhDuration = 15; // minutes
  static const int iqomahMaghribRamadhanDuration = 15; // minutes
  static const int iqomahDefaultDuration = 10; // minutes

  /// Seconds the iqomah stage lasts in debug builds only. Debug-only: hidden
  /// from the config dashboard and never used in release builds.
  static const int iqomahTestingDuration = 5;
  static const int monthOfRamadhan = 9; // 9 = Ramadhan in Hijri Calendar

  // --- prayer calculation (Kemenag / Meeus) ---
  // All prayer times are computed fully on-device with the pure-Dart Meeus
  // implementation in `prayer_times_meeus.dart`; no network or bundled
  // schedule is needed. Fine-tune the coordinates to the masjid's exact
  // position.
  //
  // Coordinates are the Kemenag Jakarta reference point calibrated against
  // Bimas Islam's published schedule (not the Monas/city-centre marker).
  static const double latitude = -6.17;
  static const double longitude = 106.835;

  /// Fixed time-zone offset (hours) used for the schedule: 7 = WIB,
  /// 8 = WITA, 9 = WIT.
  ///
  /// This is deliberately a config value, never `DateTime.now()
  /// .timeZoneOffset`: a masjid TV's device clock zone can be wrong.
  static const double tzOffsetHours = 7;
  static const double fajrAngle = 20.0; // Kemenag
  static const double ishaAngle = 18.0; // Kemenag

  /// Fajr/Isya angles for the MTT PP Muhammadiyah preset (18°/18°).
  static const double muhammadiyahFajrAngle = 18.0;
  static const double muhammadiyahIshaAngle = 18.0;

  /// Serialized Ashar madhab (`'shafi'` default, or `'hanafi'`). Only the Ashar
  /// time differs: Hanafi uses a shadow factor of 2, the others 1.
  static const String madhab = 'shafi';

  /// Prayer-calculation method: `'kemenag'` (Subuh 20°, Isya 18°),
  /// `'muhammadiyah'` (MTT PP Muhammadiyah, 18°/18°) or `'kustom'` (the stored
  /// [fajrAngle]/[ishaAngle]). Editable at runtime through the local config
  /// server; for the two presets the angles are pinned by `AppConfig` and
  /// cannot drift, even if a stale angle was saved earlier.
  static const String calculationMethod = 'kemenag';

  /// Serialized values accepted for [calculationMethod] in `AppConfig`.
  static const List<String> calculationMethodNames = [
    'kemenag',
    'muhammadiyah',
    'kustom',
  ];

  /// Serialized names accepted for [madhab] in `AppConfig` (kept in sync with
  /// the Ashar shadow-factor rules: `hanafi` uses 2, every other value 1).
  static const List<String> madhabNames = [
    'shafi',
    'hanafi',
    'maliki',
    'hanbali',
  ];

  // Per-prayer ihtiyat (minutes) applied to the raw calculation, Kemenag keys.
  // Salat times gain a few minutes; Syuruq (terbit) is *earlier* so its
  // ihtiyat is negative (-2). Editable at runtime through the config server.
  static const Map<String, int> ihtiyat = {
    'subuh': 2,
    'terbit': -2,
    'dzuhur': 3,
    'ashar': 2,
    'maghrib': 2,
    'isya': 2,
  };

  /// Whether the masjid's elevation above sea level should be folded into the
  /// Syuruq / Maghrib calculation. Defaults to off; must be explicitly enabled
  /// from the config dashboard (the "Gunakan elevasi" checkbox).
  static const bool useElevation = false;

  /// Masjid elevation above sea level (meters). Populated automatically when a
  /// city is picked from the dashboard's "Pilih Kota" list; only used when
  /// [useElevation] is enabled.
  static const double elevationMeters = 0.0;

  // --- audio_service.dart ---
  static const String adzanBeepAssetPath = 'sounds/beep_adzan.wav';
  static const String iqomahBeepAssetPath = 'sounds/beep_iqomah.wav';

  // --- app_provider.dart ---
  static const int minutesBeforeMaghrib =
      0; // live makkah before maghrib, in minutes (0 = disabled by default)
  static const int minutesBeforeJumat =
      0; // live makkah before jumat, in minutes (0 = disabled by default)

  /// YouTube URL of the live Makkah (Masjid al-Haram) stream shown during the
  /// pre-Maghrib / pre-Jumat live mode. Editable at runtime through the local
  /// config server's "Konfigurasi Live Makkah" (dashboard). Verified 24/7 feed
  /// (AlQuran4K); if it ever stops, the masjid can swap it from the dashboard.
  static const String liveMakkahUrl =
      'https://www.youtube.com/watch?v=_y45JcS3MlQ'; // Makkah Live HD (AlQuran4K)

  // --- ASSETS ---
  static const String backgroundImage = 'assets/images/background_masjid.jpeg';

  // marquee text
  static const String marqueeText =
      'Selamat Datang - Jagalah Kebersihan dan Matikan Handphone saat Sholat - ';
}

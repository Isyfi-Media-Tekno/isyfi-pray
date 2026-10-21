# Changelog

All notable changes to Isyfi Pray are documented in this file.

## [3.3.0] - 2026-10-21

- Replaced `adhan_dart` with a pure-Dart Meeus calculation calibrated to the Kemenag/Bimas Islam Jakarta schedule, so the offline jadwal matches Bimas exactly.
- Added an explicit `tzOffsetHours` setting (WIB 7 / WITA 8 / WIT 9) and a zone dropdown in the web editor, so the schedule no longer depends on the TV's device time zone.
- Updated the default location to the calibrated Jakarta reference (`-6.17`, `106.835`) and the default ihtiyat to Subuh +2, Syuruq -2, Dzuhur +3, Ashar +2, Maghrib +2, Isya +2.
- Migrated the legacy `dhuhur` ihtiyat key to `dzuhur` and removed the unused `imsak` entry.
- Added regression tests against the Kemenag Jakarta reference table and removed the `adhan_dart` dependency.

## [3.2.2] - 2026-10-20

- Reverted the Android release build to split-per-ABI APKs (`arm64-v8a` and `armeabi-v7a`) after the single universal APK caused 64-bit devices to crash on launch.
- GitHub Releases now contain only the newest changelog section, with the version heading and trailing blank lines removed for tidy release notes.
- Updated the release docs to match the split APK output.

## [3.2.1] - 2026-10-07

- APK universal name.

## [3.2.0] - 2026-10-01

- Revamp Jumat Time Screen.
- Shake for enter the Config Menu.

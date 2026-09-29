# Graph Report - jam-sholat-tv  (2026-09-29)

## Corpus Check
- 85 files · ~76,255 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 764 nodes · 920 edges · 52 communities (40 shown, 9 thin omitted)
- Extraction: 94% EXTRACTED · 5% INFERRED · 0% AMBIGUOUS · INFERRED: 50 edges (avg confidence: 0.86)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- Local Config Server
- AppProvider State Machine
- AppConstants Defaults
- ConfigProvider Runtime Config
- MainController Screen Router
- AppConfig Domain Models
- App Entry Bootstrap
- Remote Key Handling
- FinancialSummary Model
- Config Menu QR Screen
- Prayer Audio Repository
- Project Docs Architecture
- Financial Sync Services
- Financial Report Pipeline
- Prayer Cycle Screens
- Home Financial Rotation
- Home Clock Schedule
- App Theme Jumat Screen
- Side Prayer Panel
- Marquee Home Display
- Countdown Use Case
- Launcher Icon XHDPI
- Launcher Icon XXHDPI
- Launcher Icon XXXHDPI
- Mosque Background Asset
- Adaptive Icon XXHDPI
- Adaptive Icon XXXHDPI
- Core UI Widgets
- Prayer Card Widget
- Launcher Icon MDPI
- Event Image Model
- Shalat Screen
- Launcher Icon HDPI
- App Icon Branding
- Config Server API
- Network Info Helper
- Launcher Foreground XHDPI
- Countdown Result Model
- Graphify Plugin Config
- Android MainActivity
- Launcher Foreground HDPI
- Graphify Reminder Script
- Web Form Save Handler
- Web Config Dashboard
- Financial Report Editor
- AppStatus Enum
- Home UI Prompt
- Launcher Icon Asset
- Release Rebrand Note

## God Nodes (most connected - your core abstractions)
1. `ConfigProvider` - 17 edges
2. `Jam Sholat TV app launcher icon (xhdpi, 96x96 PNG): white mosque with teal crescent on navy square` - 7 edges
3. `Jam Sholat TV app launcher icon (xxhdpi, 144x144 PNG): white mosque with teal crescent on navy square` - 7 edges
4. `Jam Sholat TV app launcher icon (xxxhdpi, 192x192 PNG): white mosque with teal crescent on navy square` - 7 edges
5. `AppProvider` - 6 edges
6. `ic_launcher_foreground.png xxhdpi foreground asset` - 6 edges
7. `Jam Sholat TV adaptive foreground icon (xxxhdpi drawable): white mosque with teal crescent on navy field` - 6 edges
8. `background_masjid.jpeg TV Background Asset` - 6 edges
9. `FinancialSummary` - 5 edges
10. `Prayer state machine Adzan Iqomah Shalat Dzikir Jumat Isyraq` - 5 edges

## Surprising Connections (you probably didn't know these)
- `AppProvider one-second tick state machine` --semantically_similar_to--> `Prayer state machine Adzan Iqomah Shalat Dzikir Jumat Isyraq`  [INFERRED] [semantically similar]
  CLAUDE.md → PRD/isyfi-pray-prd.md
- `Jumat Dzuhur rename at five sites` --shares_data_with--> `Prayer state machine Adzan Iqomah Shalat Dzikir Jumat Isyraq`  [INFERRED]
  docs/ARCHITECTURE.md → PRD/isyfi-pray-prd.md
- `Prayer state machine Adzan Iqomah Shalat Dzikir Jumat Isyraq` --shares_data_with--> `CalculatePrayerTimes ihtiyat ceil floor`  [AMBIGUOUS]
  PRD/isyfi-pray-prd.md → docs/DATA_SOURCES.md
- `Live Makkah pre-prayer override` --conceptually_related_to--> `Home idle cycle event report live override`  [INFERRED]
  PRD/isyfi-pray-prd.md → docs/STATE_MACHINE.md
- `Android Release workflow (tag v* to APK)` --shares_data_with--> `FVM Flutter 3.41.1 setup and run`  [INFERRED]
  .github/workflows/android-build.yml → README.md

## Import Cycles
- None detected.

## Hyperedges (group relationships)
- **Prayer cycle state machine flow** — claude_appprovider_tick, claude_appstatus_enum, docs_architecture_maincontroller, docs_state_machine_idle_cycle, prd_isyfi_pray_prd_prayer_states [INFERRED 0.85]
- **Offline config edit hot-apply loop** — claude_local_config_server, assets_web_index_config_editor, assets_web_index_config_api_client, docs_data_sources_server_api [INFERRED 0.85]
- **Tag-driven Android release pipeline** — _github_workflows_android_build_android_release, changelog_v3_1_0, docs_development_release_flow, pubspec_dependencies [EXTRACTED 1.00]
- **Masjid launcher icon visual composition** — android_app_src_main_res_drawable_xxhdpi_ic_launcher_foreground_mosque_silhouette, android_app_src_main_res_drawable_xxhdpi_ic_launcher_foreground_crescent_star, android_app_src_main_res_drawable_xxhdpi_ic_launcher_foreground_navy_background [INFERRED 0.85]
- **Islamic Visual Identity** — android_app_src_main_res_mipmap_hdpi_ic_launcher_mosque_silhouette, android_app_src_main_res_mipmap_hdpi_ic_launcher_crescent_moon, android_app_src_main_res_mipmap_hdpi_ic_launcher_navy_background [INFERRED 0.85]
- **Mdpi launcher icon visual composition** — android_app_src_main_res_mipmap_mdpi_ic_launcher_app_launcher_icon, android_app_src_main_res_mipmap_mdpi_ic_launcher_mosque_silhouette, android_app_src_main_res_mipmap_mdpi_ic_launcher_navy_background, android_app_src_main_res_mipmap_mdpi_ic_launcher_crescent_moon_star [EXTRACTED 1.00]
- **Launcher icon composition: mosque + crescent finial + navy field form Islamic branding** — android_app_src_main_res_mipmap_xhdpi_ic_launcher_mosque_silhouette, android_app_src_main_res_mipmap_xhdpi_ic_launcher_crescent_moon_star, android_app_src_main_res_mipmap_xhdpi_ic_launcher_navy_background, android_app_src_main_res_mipmap_xhdpi_ic_launcher_islamic_visual_identity [INFERRED 0.85]
- **Launcher icon composition: mosque + crescent finial + navy field form Islamic branding** — android_app_src_main_res_mipmap_xxhdpi_ic_launcher_mosque_silhouette, android_app_src_main_res_mipmap_xxhdpi_ic_launcher_crescent_moon_star, android_app_src_main_res_mipmap_xxhdpi_ic_launcher_navy_background, android_app_src_main_res_mipmap_xxhdpi_ic_launcher_islamic_visual_identity [INFERRED 0.85]
- **Launcher icon composition: mosque + crescent finial + navy field form Islamic branding** — android_app_src_main_res_mipmap_xxxhdpi_ic_launcher_mosque_silhouette, android_app_src_main_res_mipmap_xxxhdpi_ic_launcher_crescent_moon_star, android_app_src_main_res_mipmap_xxxhdpi_ic_launcher_navy_background, android_app_src_main_res_mipmap_xxxhdpi_ic_launcher_islamic_visual_identity [INFERRED 0.85]
- **Serene Mosque Courtyard Backdrop Composition for TV Display** — assets_images_background_masjid_file, assets_images_background_masjid_modern_mosque_building, assets_images_background_masjid_golden_mashrabiya_screens, assets_images_background_masjid_landscaped_garden, assets_images_background_masjid_daylight_sky_setting [EXTRACTED 1.00]
- **App Icon Visual Composition - Mosque and Islamic Symbol on Dark Blue** — assets_images_icon_file, assets_images_icon_mosque_arch, assets_images_icon_crescent_star, assets_images_icon_navy_background [EXTRACTED 1.00]

## Communities (52 total, 9 thin omitted)

### Community 0 - "Local Config Server"
Cohesion: 0.03
Nodes (72): dart:typed_data, Handler, Handler get, HttpServer?, _assetBundleHandler, _authMiddleware, _authToken, _buildHandler (+64 more)

### Community 1 - "AppProvider State Machine"
Cohesion: 0.03
Nodes (68): config_provider.dart, ConfigProvider get, ../../core/utils/date_formatter.dart, ../../data/repositories/financial_repository.dart, ../../data/repositories/prayer_repository.dart, ../../data/services/audio_service.dart, DateTime get, ../../domain/use_cases/calculate_countdown.dart (+60 more)

### Community 2 - "AppConstants Defaults"
Cohesion: 0.04
Nodes (50): adzanBeepAssetPath, adzanDuration, AppConstants, backgroundImage, calculationMethod, calculationMethodNames, elevationMeters, enableFinancialReport (+42 more)

### Community 3 - "ConfigProvider Runtime Config"
Cohesion: 0.04
Nodes (48): AppConfig get, double get, FinancialSummary get, int get, adzanDuration, applyConfig, backgroundImage, calculationMethod (+40 more)

### Community 4 - "MainController Screen Router"
Cohesion: 0.06
Nodes (43): ../app/providers/config_provider.dart, ChangeNotifier, ../../core/constants/app_enum.dart, ../core/theme/app_theme.dart, ../core/widgets/prayer_card.dart, GlobalKey, build, _buildDebugFab (+35 more)

### Community 5 - "AppConfig Domain Models"
Cohesion: 0.05
Nodes (43): dart:math, event_image.dart, financial_summary.dart, adzanDuration, AppConfig, backgroundImage, calculationMethod, defaults (+35 more)

### Community 6 - "App Entry Bootstrap"
Cohesion: 0.07
Nodes (32): dart:convert, Directory, File, LocalServerService, package:flutter_test/flutter_test.dart, package:intl/date_symbol_data_local.dart, package:jam_sholat_tv/app/providers/config_provider.dart, package:jam_sholat_tv/core/constants/app_constants.dart (+24 more)

### Community 7 - "Remote Key Handling"
Cohesion: 0.06
Nodes (36): dart:async, build, _cancelHold, child, createState, dispose, holdDuration, _holdTimer (+28 more)

### Community 8 - "FinancialSummary Model"
Cohesion: 0.07
Nodes (27): DateTime?, ../../domain/models/event_image.dart, fromJson, offlineSample, pemasukan, periodeEnd, periodeStart, saldoKasDate (+19 more)

### Community 9 - "Config Menu QR Screen"
Cohesion: 0.09
Nodes (22): app/masjid_app.dart, configProvider, initializeDateFormatting, main, null, setPreferredOrientations, _authenticatedUrl, build (+14 more)

### Community 10 - "Prayer Audio Repository"
Cohesion: 0.09
Nodes (20): ../../core/constants/app_constants.dart, ../domain/models/app_config.dart, ../../domain/use_cases/calculate_prayer_times.dart, _calculator, getTodayJadwal, PrayerRepository, AudioService, playAdzanBeep (+12 more)

### Community 11 - "Project Docs Architecture"
Cohesion: 0.09
Nodes (23): Android Release workflow (tag v* to APK), Changelog reader step (top CHANGELOG section as release body), flutter_lints analyzer with 80 char lines, Release 3.1.0 smaller app size, AppProvider one-second tick state machine, AppStatus home adzan iqomah jumatMode shalat isyraq, Jam Sholat TV masjid display app, On-device Kemenag prayer calculation adhan_dart (+15 more)

### Community 12 - "Financial Sync Services"
Cohesion: 0.09
Nodes (21): bool get, Dio, Duration, _dio, _endpoint, fetchSummary, _logger, _configProvider (+13 more)

### Community 13 - "Financial Report Pipeline"
Cohesion: 0.09
Nodes (20): ../../domain/models/financial_summary.dart, DateFormatter, getFullDate, fetchMonthlySummary, FinancialRepository, _service, FinancialService, FinancialSummary (+12 more)

### Community 14 - "Prayer Cycle Screens"
Cohesion: 0.15
Nodes (12): ../../core/widgets/background_image.dart, dart:ui, AdzanScreen, build, prayerName, build, countdown, IqomahScreen (+4 more)

### Community 15 - "Home Financial Rotation"
Cohesion: 0.18
Nodes (10): ../../core/widgets/side_prayer_panel.dart, financial_report_card.dart, build, dateHijriah, dateMasehi, jadwal, masjidName, nextPrayerName (+2 more)

### Community 16 - "Home Clock Schedule"
Cohesion: 0.20
Nodes (9): home_screen.dart, build, dateHijriah, dateMasehi, jadwal, locationName, masjidName, time (+1 more)

### Community 17 - "App Theme Jumat Screen"
Cohesion: 0.20
Nodes (8): AppTheme, backgroundColor, cardColor, primaryColor, build, JumatScreen, package:flutter/material.dart, static const Color

### Community 18 - "Side Prayer Panel"
Cohesion: 0.20
Nodes (9): build, _buildPrayerItem, dateHijriah, dateMasehi, jadwal, masjidName, nextPrayerName, SidePrayerPanel (+1 more)

### Community 19 - "Marquee Home Display"
Cohesion: 0.22
Nodes (8): ../../core/widgets/bottom_marquee_bar.dart, build, dateHijriah, dateMasehi, jadwal, locationName, masjidName, time

### Community 20 - "Countdown Use Case"
Cohesion: 0.22
Nodes (7): CalculateCountdown, call, ../models/countdown_result.dart, package:jam_sholat_tv/domain/use_cases/calculate_countdown.dart, calculator, jadwal, main

### Community 21 - "Launcher Icon XHDPI"
Cohesion: 0.32
Nodes (8): Jam Sholat TV app launcher icon (xhdpi, 96x96 PNG): white mosque with teal crescent on navy square, Teal crescent moon with star finial atop the minaret, Islamic visual identity for Masjid Al Hijrah masjid-display app, Legacy mipmap launcher fallback for pre-API-26 (complements adaptive-icon in mipmap-anydpi-v26), White mosque dome-and-minaret silhouette (central foreground motif), Dark navy square background field, Android TV launcher asset (LEANBACK_LAUNCHER, 96x96 xhdpi variant of multi-density set), Android mipmap xhdpi density bucket (96x96, ~320dpi, 2x baseline)

### Community 22 - "Launcher Icon XXHDPI"
Cohesion: 0.32
Nodes (8): Jam Sholat TV app launcher icon (xxhdpi, 144x144 PNG): white mosque with teal crescent on navy square, Teal crescent moon with star finial atop the minaret, Islamic visual identity for Masjid Al Hijrah masjid-display app, Legacy mipmap launcher fallback for pre-API-26 (complements adaptive-icon in mipmap-anydpi-v26), White mosque dome-and-minaret silhouette (central foreground motif), Dark navy square background field, Android TV launcher asset (LEANBACK_LAUNCHER, 144x144 xxhdpi variant of multi-density set), Android mipmap xxhdpi density bucket (144x144, ~480dpi, 3x baseline)

### Community 23 - "Launcher Icon XXXHDPI"
Cohesion: 0.32
Nodes (8): Jam Sholat TV app launcher icon (xxxhdpi, 192x192 PNG): white mosque with teal crescent on navy square, Teal crescent moon with star finial atop the minaret, Islamic visual identity for Masjid Al Hijrah masjid-display app, Legacy mipmap launcher fallback for pre-API-26 (complements adaptive-icon in mipmap-anydpi-v26), White mosque dome-and-minaret silhouette (central foreground motif), Dark navy square background field, Android TV launcher asset (LEANBACK_LAUNCHER, 192x192 xxxhdpi variant of multi-density set), Android mipmap xxxhdpi density bucket (192x192, ~640dpi, 4x baseline)

### Community 24 - "Mosque Background Asset"
Cohesion: 0.43
Nodes (8): Arched Colonnade with Tall Rounded Arches, Bright Daylight Sky Setting with Blue Sky and Clouds, background_masjid.jpeg TV Background Asset, Golden Islamic Geometric Mashrabiya Screens, Landscaped Garden with Pink Flowers and Trimmed Shrubs, Modern Minimalist Mosque Building with Cream Facade, Paved Brick Courtyard Foreground, Calm Serene TV Display Background Purpose

### Community 25 - "Adaptive Icon XXHDPI"
Cohesion: 0.38
Nodes (7): Android adaptive icon foreground layer, Teal crescent moon and star finial, ic_launcher_foreground.png xxhdpi foreground asset, Instantly recognizable masjid prayer-app identity, White mosque dome and arch silhouette, Dark navy background field, xxhdpi density bucket variant

### Community 26 - "Adaptive Icon XXXHDPI"
Cohesion: 0.38
Nodes (7): Jam Sholat TV adaptive foreground icon (xxxhdpi drawable): white mosque with teal crescent on navy field, Adaptive-icon foreground layer referenced by mipmap-anydpi-v26 ic_launcher.xml with 16 percent inset, Teal crescent moon with star finial atop the arch, Islamic visual identity for Masjid Al Hijrah masjid-display app, White mosque gateway arch silhouette (central foreground motif), Dark navy square background field, Android drawable xxxhdpi density bucket (highest-density foreground variant, ~640dpi)

### Community 27 - "Core UI Widgets"
Cohesion: 0.29
Nodes (7): MasjidApp, BottomMarqueeBar, FinancialReportCard, FinancialReportScreen, HomeScreen, HomeWrapper, StatelessWidget

### Community 28 - "Prayer Card Widget"
Cohesion: 0.29
Nodes (6): build, countdown, isNext, label, PrayerCard, time

### Community 29 - "Launcher Icon MDPI"
Cohesion: 0.40
Nodes (6): Jam Sholat TV app launcher icon (mdpi 48x48 baseline), Crescent moon with star finial atop the dome, Islamic visual identity of a masjid display app, Android mipmap mdpi density bucket (48x48 baseline), White mosque dome-and-arch silhouette, Dark navy rounded-square background field

### Community 30 - "Event Image Model"
Cohesion: 0.33
Nodes (5): EventImage, fromJson, toJson, type, url

### Community 31 - "Shalat Screen"
Cohesion: 0.33
Nodes (5): build, _buildBadge, _buildPrayerInfo, prayerName, ShalatScreen

### Community 32 - "Launcher Icon HDPI"
Cohesion: 0.50
Nodes (5): Teal Crescent Moon, Islamic Prayer Branding, App Launcher Icon Hdpi, White Mosque Silhouette, Dark Navy Background

### Community 33 - "App Icon Branding"
Cohesion: 0.60
Nodes (4): Teal Crescent Moon and Star Finial, Jam Sholat TV Islamic App Branding, White Mosque Arch Silhouette, Dark Navy Blue Background

### Community 34 - "Config Server API"
Cohesion: 0.40
Nodes (5): Config API client POST GET uploads, fetchConfig JS GET api config, uploadFiles JS background event uploader, Embedded local config server port 8080, Local server API config uploads images

### Community 35 - "Network Info Helper"
Cohesion: 0.40
Nodes (4): dart:io, localIPv4, NetworkInfoHelper, package:network_info_plus/network_info_plus.dart

### Community 36 - "Launcher Foreground XHDPI"
Cohesion: 0.67
Nodes (3): Teal crescent moon and star emblem, White mosque arch silhouette, Dark navy background

### Community 37 - "Countdown Result Model"
Cohesion: 0.50
Nodes (3): countdown, CountdownResult, nextName

### Community 38 - "Graphify Plugin Config"
Cohesion: 0.50
Nodes (3): plugin, $schema, .opencode/plugins/graphify.js

### Community 40 - "Launcher Foreground HDPI"
Cohesion: 1.00
Nodes (3): Teal Crescent Star Motif, Launcher Foreground Icon (hdpi), White Mosque Arch Motif

## Ambiguous Edges - Review These
- `Prayer state machine Adzan Iqomah Shalat Dzikir Jumat Isyraq` → `CalculatePrayerTimes ihtiyat ceil floor`  [AMBIGUOUS]
  PRD/isyfi-pray-prd.md · relation: shares_data_with
- `Jam Sholat TV app launcher icon (mdpi 48x48 baseline)` → `Crescent moon with star finial atop the dome`  [AMBIGUOUS]
  android/app/src/main/res/mipmap-mdpi/ic_launcher.png · relation: references
- `White mosque dome-and-arch silhouette` → `Crescent moon with star finial atop the dome`  [AMBIGUOUS]
  android/app/src/main/res/mipmap-mdpi/ic_launcher.png · relation: conceptually_related_to

## Knowledge Gaps
- **466 isolated node(s):** `$schema`, `.opencode/plugins/graphify.js`, `configProvider`, `_navigatorKey`, `build` (+461 more)
  These have ≤1 connection - possible missing edges or undocumented components. (Counts symbols only; 551 node(s) total have ≤1 connection when file, concept and rationale nodes are included.)
- **9 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **What is the exact relationship between `Prayer state machine Adzan Iqomah Shalat Dzikir Jumat Isyraq` and `CalculatePrayerTimes ihtiyat ceil floor`?**
  _Edge tagged AMBIGUOUS (relation: shares_data_with) - confidence is low._
- **What is the exact relationship between `Jam Sholat TV app launcher icon (mdpi 48x48 baseline)` and `Crescent moon with star finial atop the dome`?**
  _Edge tagged AMBIGUOUS (relation: references) - confidence is low._
- **What is the exact relationship between `White mosque dome-and-arch silhouette` and `Crescent moon with star finial atop the dome`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **Why does `ConfigProvider` connect `MainController Screen Router` to `Local Config Server`, `AppProvider State Machine`, `ConfigProvider Runtime Config`, `App Entry Bootstrap`, `Config Menu QR Screen`, `Financial Sync Services`, `Core UI Widgets`?**
  _High betweenness centrality (0.087) - this node is a cross-community bridge._
- **Why does `FinancialSummary` connect `Financial Report Pipeline` to `FinancialSummary Model`, `AppProvider State Machine`, `AppConfig Domain Models`, `Home Financial Rotation`?**
  _High betweenness centrality (0.028) - this node is a cross-community bridge._
- **Why does `CalculateCountdown` connect `Countdown Use Case` to `AppProvider State Machine`?**
  _High betweenness centrality (0.014) - this node is a cross-community bridge._
- **What connects `$schema`, `.opencode/plugins/graphify.js`, `configProvider` to the rest of the system?**
  _466 weakly-connected nodes found - possible documentation gaps or missing edges._
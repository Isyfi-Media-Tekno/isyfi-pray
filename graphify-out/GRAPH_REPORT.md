# Graph Report - jam-sholat-tv  (2026-10-02)

## Corpus Check
- 54 files · ~711,650 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 1097 nodes · 1499 edges · 88 communities (68 shown, 17 thin omitted)
- Extraction: 88% EXTRACTED · 12% INFERRED · 0% AMBIGUOUS · INFERRED: 179 edges (avg confidence: 0.85)
- Token cost: 7,380 input · 5,880 output

## Community Hubs (Navigation)
- Local Config HTTP Server
- Config Provider Wiring
- Project Docs & Changelog
- Landing Page & Follower Sync
- AppConfig Accessors
- App Constants Defaults
- Domain Config Models
- App Bootstrap & Providers
- AI-Friendly PRD Skill
- Launcher Icon Foreground (xxxhdpi)
- Core Imports & Prayer Use Cases
- Website Feature Grid
- Adzan Screen UI
- Local Server File I/O
- Shake to Config Listener
- Website FAQ & Offline
- Live Makkah Screenshot
- Live Makkah Screen
- Website Hero & Solutions
- Config Menu Screen
- Remote Key Handler
- Event Image Screen
- Adzan Mockup (Light)
- Iqamah Mockup (Light)
- Main Controller Routing
- App Theme & Shell
- Financial Summary Model
- Home UI Widgets
- Final CTA & Footer Mockup
- Widget Test Imports
- Report Card & Prayer Panel
- Home Mockup (Light)
- Home Screenshot (App)
- Input Listeners & Event States
- Side Prayer Panel
- Financial Report Card
- Home Screen & Marquee
- Financial Service (Dio)
- Home & Wrapper Screens
- Financial Report Mockup (Light)
- Isyraq Mockup (Light)
- Live Makkah Mockup (Light)
- 404 Page Mockup
- Adaptive Icon Details (xxhdpi)
- Financial Repository Layer
- Shalat Mockup (Light)
- Prayer Times Calculation Tests
- Shalat Screenshot (App)
- Isyraq Screenshot (App)
- Launcher Icon (mdpi)
- Default Mosque Background
- App Theme Colors
- Prayer Card Widget
- Event Image Model
- Launcher Icon (hdpi)
- Provider Debug Tools
- App Icon Branding
- Network Info Helper
- Jumat Screen Test
- Countdown Use Case Tests
- Launcher Icon Foreground Art
- Keep Silent Icon
- No Talking Icon
- Web Config API Client
- CountdownResult Model
- OpenCode Graphify Plugin
- Android MainActivity
- Launcher Icon Motif (hdpi)
- Config Menu Toggle
- Graphify Plugin Script
- Release Workflow & FVM
- Web Editor Form Handlers
- Financial Editor & Sample
- AppStatus Enum
- Changelog Release Step
- Lint Config (80 cols)
- Launcher Icon Asset
- Web Editor Dashboard
- Ihtiyat Rounding Logic
- Documentation Index
- Prayer Entry Dzuhur
- Prayer Entry Isya
- Prayer Entry Maghrib
- Prayer Entry Subuh
- Prayer Entry Syuruq

## God Nodes (most connected - your core abstractions)
1. `CLAUDE.md Project Guidance` - 21 edges
2. `PRD - Isyfi Pray (Masjid TV Prayer Display)` - 21 edges
3. `Prayer State Machine` - 17 edges
4. `ConfigProvider` - 15 edges
5. `State Machine & Prayer Cycle (docs)` - 13 edges
6. `Isyfi Pray` - 12 edges
7. `PRD - Isyfi Pray Website (Marketing & Download Site)` - 12 edges
8. `Fitur & Tangkapan Layar Page Mockup` - 12 edges
9. `AppConfig` - 11 edges
10. `Architecture (docs)` - 11 edges

## Surprising Connections (you probably didn't know these)
- `Audio Cues` --references--> `AudioService`  [EXTRACTED]
  PRD/PRD-jam-sholat-tv.md → lib/data/services/audio_service.dart
- `Total Kas Masjid Row (Rp123.555.000, per 1 Oktober 2026)` --shares_data_with--> `FinancialSummary`  [INFERRED]
  mockups/website-light/screenshots/laporan-keuangan.jpg → lib/domain/models/financial_summary.dart
- `Weekly Income Rows (5-11, 12-18, 19-25 September 2026)` --shares_data_with--> `FinancialSummary`  [INFERRED]
  mockups/website-light/screenshots/laporan-keuangan.jpg → lib/domain/models/financial_summary.dart
- `Embedded Local Config Server` --references--> `NetworkInfoHelper`  [EXTRACTED]
  PRD/PRD-jam-sholat-tv.md → lib/services/network_info_helper.dart
- `AppProvider` --implements--> `Home Financial Report Display Mode`  [INFERRED]
  lib/app/providers/app_provider.dart → mockups/website-light/screenshots/laporan-keuangan.jpg

## Import Cycles
- None detected.

## Hyperedges (group relationships)
- **Mdpi launcher icon visual composition** — android_app_src_main_res_mipmap_mdpi_ic_launcher_app_launcher_icon, android_app_src_main_res_mipmap_mdpi_ic_launcher_mosque_silhouette, android_app_src_main_res_mipmap_mdpi_ic_launcher_navy_background, android_app_src_main_res_mipmap_mdpi_ic_launcher_crescent_moon_star [EXTRACTED 1.00]
- **App Icon Visual Composition - Mosque and Islamic Symbol on Dark Blue** — assets_images_icon_file, assets_images_icon_mosque_arch, assets_images_icon_crescent_star, assets_images_icon_navy_background [EXTRACTED 1.00]
- **Tag-driven Android release pipeline** — _github_workflows_android_build_android_release [EXTRACTED 1.00]
- **Masjid launcher icon visual composition** — android_app_src_main_res_drawable_xxhdpi_ic_launcher_foreground_mosque_silhouette, android_app_src_main_res_drawable_xxhdpi_ic_launcher_foreground_crescent_star, android_app_src_main_res_drawable_xxhdpi_ic_launcher_foreground_navy_background [INFERRED 0.85]
- **Islamic Visual Identity** — android_app_src_main_res_mipmap_hdpi_ic_launcher_mosque_silhouette, android_app_src_main_res_mipmap_hdpi_ic_launcher_crescent_moon, android_app_src_main_res_mipmap_hdpi_ic_launcher_navy_background [INFERRED 0.85]
- **Launcher icon composition: mosque + crescent finial + navy field form Islamic branding** — android_app_src_main_res_mipmap_xhdpi_ic_launcher_mosque_silhouette, android_app_src_main_res_mipmap_xhdpi_ic_launcher_crescent_moon_star, android_app_src_main_res_mipmap_xhdpi_ic_launcher_navy_background, android_app_src_main_res_mipmap_xhdpi_ic_launcher_islamic_visual_identity [INFERRED 0.85]
- **Launcher icon composition: mosque + crescent finial + navy field form Islamic branding** — android_app_src_main_res_mipmap_xxhdpi_ic_launcher_mosque_silhouette, android_app_src_main_res_mipmap_xxhdpi_ic_launcher_crescent_moon_star, android_app_src_main_res_mipmap_xxhdpi_ic_launcher_navy_background, android_app_src_main_res_mipmap_xhdpi_ic_launcher_islamic_visual_identity [INFERRED 0.85]
- **Launcher icon composition: mosque + crescent finial + navy field form Islamic branding** — android_app_src_main_res_mipmap_xxxhdpi_ic_launcher_mosque_silhouette, android_app_src_main_res_mipmap_xxxhdpi_ic_launcher_crescent_moon_star, android_app_src_main_res_mipmap_xxxhdpi_ic_launcher_navy_background, android_app_src_main_res_mipmap_xhdpi_ic_launcher_islamic_visual_identity [INFERRED 0.85]
- **Offline config edit hot-apply loop** — assets_web_index_config_editor, assets_web_index_config_api_client, docs_data_sources_server_api [INFERRED 0.85]
- **AppStatus State Machine States** — prd_prd_jam_sholat_tv_prayer_state_machine, prd_prd_jam_sholat_tv_adzan_state, prd_prd_jam_sholat_tv_iqomah_state, prd_prd_jam_sholat_tv_shalat_state, prd_prd_jam_sholat_tv_jumat_mode, prd_prd_jam_sholat_tv_isyraq_state [EXTRACTED 1.00]
- **Offline Data Sources (prayer calc, config server, financial report)** — prd_prd_jam_sholat_tv_on_device_prayer_calculation, prd_prd_jam_sholat_tv_local_config_server, prd_prd_jam_sholat_tv_financial_report [EXTRACTED 1.00]
- **Jumat Rename Sites and Path** — docs_architecture_jumat_translation_five_sites, prd_prd_jam_sholat_tv_jumat_path, prd_prd_jam_sholat_tv_jumat_mode, lib_app_providers_app_provider_appprovider, lib_domain_use_cases_calculate_countdown_calculatecountdown, lib_core_widgets_prayer_card_prayercard, lib_core_widgets_side_prayer_panel_sideprayerpanel [EXTRACTED 1.00]
- **Isyfi Pray Marketing Website (Light Theme)** — mockups_website_light_01_beranda_solusi_with_screenshots_beranda, mockups_website_light_02_fitur_tangkapan_layar_with_screenshots_fitur, mockups_website_light_03_cara_pasang_faq_with_screenshots_cara_pasang_faq, mockups_website_light_04_final_cta_footer_with_screenshots_final_cta_footer, mockups_website_light_05_kebijakan_privasi_with_screenshots_kebijakan_privasi, mockups_website_light_06_404_with_screenshots_404, prd_prd_jam_sholat_tv_isyfi_pray [INFERRED 0.95]
- **Website Feature Claims Implemented by Flutter Packages** — mockups_website_light_01_beranda_solusi_with_screenshots_on_device_prayer_calculation, pubspec_adhan_dart, mockups_website_light_02_fitur_tangkapan_layar_with_screenshots_khgt_hijri_calendar, pubspec_hijriyah_khgt, mockups_website_light_02_fitur_tangkapan_layar_with_screenshots_live_makkah, pubspec_youtube_player_flutter, mockups_website_light_02_fitur_tangkapan_layar_with_screenshots_browser_config_qr, pubspec_qr_flutter, pubspec_shelf [INFERRED 0.85]
- **Offline-First & Privacy Architecture** — mockups_website_light_01_beranda_solusi_with_screenshots_on_device_prayer_calculation, mockups_website_light_03_cara_pasang_faq_with_screenshots_offline_first_operation, mockups_website_light_05_kebijakan_privasi_with_screenshots_no_data_collection, mockups_website_light_05_kebijakan_privasi_with_screenshots_local_device_storage, pubspec_shared_preferences [INFERRED 0.85]
- **Masjid Scene Composition (Architecture, Sahn, Golden Hour, Arcade Framing)** — assets_images_background_masjid_mosque_architecture, assets_images_background_masjid_courtyard, assets_images_background_masjid_golden_hour, assets_images_background_masjid_arched_frame [INFERRED 0.75]
- **Keep Silent Icon Composition (prohibition ring + shhh gesture conveying khutbah silence)** — assets_images_keep_silent_icon, assets_images_keep_silent_prohibition_circle, assets_images_keep_silent_shhh_gesture, assets_images_keep_silent_silence_during_khutbah [INFERRED 0.85]
- **No-Talking Sign Composition (prohibition ring + silenced speaker)** — assets_images_no_talking_icon, assets_images_no_talking_prohibition_symbol, assets_images_no_talking_silenced_speech [EXTRACTED 1.00]
- **Isyi Pray Landing Page Product Pitch** — mockups_website_light_01_beranda_solusi_with_screenshots_landing_page, mockups_website_light_01_beranda_solusi_with_screenshots_isyipray_brand, mockups_website_light_01_beranda_solusi_with_screenshots_hero_headline, mockups_website_light_01_beranda_solusi_with_screenshots_tv_display_screenshot, mockups_website_light_01_beranda_solusi_with_screenshots_download_apk_cta, mockups_website_light_01_beranda_solusi_with_screenshots_masjid_audience [EXTRACTED 1.00]
- **Masalah to Solusi Problem-Solution Pairs** — mockups_website_light_01_beranda_solusi_with_screenshots_manual_schedule_problem, mockups_website_light_01_beranda_solusi_with_screenshots_phone_forgotten_problem, mockups_website_light_01_beranda_solusi_with_screenshots_opaque_cash_report_problem, mockups_website_light_01_beranda_solusi_with_screenshots_auto_schedule_solution, mockups_website_light_01_beranda_solusi_with_screenshots_auto_transition_solution, mockups_website_light_01_beranda_solusi_with_screenshots_digital_cash_report_solution [EXTRACTED 1.00]
- **Mosque TV Display Feature Set** — mockups_website_light_01_beranda_solusi_with_screenshots_tv_display_screenshot, mockups_website_light_01_beranda_solusi_with_screenshots_prayer_schedule_bar, mockups_website_light_01_beranda_solusi_with_screenshots_ashar_countdown, mockups_website_light_01_beranda_solusi_with_screenshots_marquee_announcement, mockups_website_light_01_beranda_solusi_with_screenshots_adzan_iqomah_shalat_flow [INFERRED 0.85]
- **Adzan -> Iqomah -> Shalat Transition Flow (Feature Card + Screenshots)** — mockups_website_light_02_fitur_tangkapan_layar_with_screenshots_otomatis_adzan_iqomah_shalat, mockups_website_light_02_fitur_tangkapan_layar_with_screenshots_waktu_adzan, mockups_website_light_02_fitur_tangkapan_layar_with_screenshots_menuju_iqomah, mockups_website_light_02_fitur_tangkapan_layar_with_screenshots_shalat_berlangsung [INFERRED 0.85]
- **Home-Layout Screenshot Family (clock + schedule sidebar reused across modes)** — mockups_website_light_02_fitur_tangkapan_layar_with_screenshots_tampilan_utama, mockups_website_light_02_fitur_tangkapan_layar_with_screenshots_laporan_kas_masjid_screenshot, mockups_website_light_02_fitur_tangkapan_layar_with_screenshots_live_makkah_screenshot [INFERRED 0.75]
- **3-Step Installation and Configuration Flow** — mockups_website_light_03_cara_pasang_faq_with_screenshots_step_1_unduh_pasang, mockups_website_light_03_cara_pasang_faq_with_screenshots_step_2_sambungkan_wifi, mockups_website_light_03_cara_pasang_faq_with_screenshots_step_3_pindai_qr [EXTRACTED 1.00]
- **Feature Cards and Their Matching FAQ Entries** — mockups_website_light_03_cara_pasang_faq_with_screenshots_multi_tv_master_follower, mockups_website_light_03_cara_pasang_faq_with_screenshots_berjalan_offline, mockups_website_light_03_cara_pasang_faq_with_screenshots_faq_internet, mockups_website_light_03_cara_pasang_faq_with_screenshots_faq_beberapa_tv [INFERRED 0.75]
- **Install Conversion Flow (headline -> free-APK CTA -> disabled Play Store -> platform fit -> install help)** — mockups_website_light_04_final_cta_footer_with_screenshots_final_cta_section, mockups_website_light_04_final_cta_footer_with_screenshots_download_apk_button, mockups_website_light_04_final_cta_footer_with_screenshots_play_store_button, mockups_website_light_04_final_cta_footer_with_screenshots_installation_help_button, mockups_website_light_04_final_cta_footer_with_screenshots_android_tv_landscape_requirement [INFERRED 0.85]
- **Five numbered privacy policy disclosure sections (no-collection, local storage, network, cookies, contact)** — mockups_website_light_05_kebijakan_privasi_with_screenshots_no_data_collection, mockups_website_light_05_kebijakan_privasi_with_screenshots_device_local_storage, mockups_website_light_05_kebijakan_privasi_with_screenshots_network_usage, mockups_website_light_05_kebijakan_privasi_with_screenshots_no_cookies, mockups_website_light_05_kebijakan_privasi_with_screenshots_contact [EXTRACTED 1.00]
- **Offline-first privacy commitment backed by no-collection and on-device-only storage claims** — mockups_website_light_05_kebijakan_privasi_with_screenshots_offline_first_architecture, mockups_website_light_05_kebijakan_privasi_with_screenshots_no_data_collection, mockups_website_light_05_kebijakan_privasi_with_screenshots_device_local_storage, mockups_website_light_05_kebijakan_privasi_with_screenshots_no_cookies [INFERRED 0.85]
- **IsyfiPray 404 Page Composition (navbar, error state, CTA, footer)** — mockups_website_light_06_404_with_screenshots_navbar, mockups_website_light_06_404_with_screenshots_404_state, mockups_website_light_06_404_with_screenshots_download_cta, mockups_website_light_06_404_with_screenshots_footer [EXTRACTED 1.00]
- **Adzan Screen Primary Content Group** — mockups_website_light_screenshots_adzan_screen, mockups_website_light_screenshots_adzan_glass_card, mockups_website_light_screenshots_adzan_waktu_adzan_berkumandang, mockups_website_light_screenshots_adzan_maghrib, mockups_website_light_screenshots_adzan_tagline [INFERRED 0.85]
- **Six Prayer Entries Form the Daily Schedule Bar** — mockups_website_light_screenshots_home_prayer_bar, mockups_website_light_screenshots_home_prayer_subuh, mockups_website_light_screenshots_home_prayer_syuruq, mockups_website_light_screenshots_home_prayer_dzuhur, mockups_website_light_screenshots_home_prayer_ashar, mockups_website_light_screenshots_home_prayer_maghrib, mockups_website_light_screenshots_home_prayer_isya [EXTRACTED 1.00]
- **Layered Full-Screen Home Layout over Mosque Background** — mockups_website_light_screenshots_home_home_screen, mockups_website_light_screenshots_home_background_mosque, mockups_website_light_screenshots_home_clock, mockups_website_light_screenshots_home_hijri_date, mockups_website_light_screenshots_home_gregorian_date, mockups_website_light_screenshots_home_mosque_identity, mockups_website_light_screenshots_home_prayer_bar, mockups_website_light_screenshots_home_marquee [INFERRED 0.85]
- **Iqamah Countdown Screen Composition** — mockups_website_light_screenshots_iqamah, mockups_website_light_screenshots_iqamah_menuju_iqomah, mockups_website_light_screenshots_iqamah_countdown_display, mockups_website_light_screenshots_iqamah_shaf_instruction, mockups_website_light_screenshots_iqamah_card_overlay [EXTRACTED 1.00]
- **Isyraq Screen Composition (heading + Dhuha subtitle + countdown on glass card over mosque photo)** — mockups_website_light_screenshots_isyraq_menanti_isyraq_heading, mockups_website_light_screenshots_isyraq_awal_waktu_dhuha_subtitle, mockups_website_light_screenshots_isyraq_countdown_timer, mockups_website_light_screenshots_isyraq_frosted_glass_card, mockups_website_light_screenshots_isyraq_mosque_background [EXTRACTED 1.00]
- **Home Report-Mode Screen Layout (Light Mockup)** — mockups_website_light_screenshots_laporan_keuangan, mockups_website_light_screenshots_laporan_keuangan_clock_panel, mockups_website_light_screenshots_laporan_keuangan_prayer_schedule_panel, mockups_website_light_screenshots_laporan_keuangan_financial_report_card, mockups_website_light_screenshots_laporan_keuangan_marquee_ticker [EXTRACTED 1.00]
- **Financial Report Display Flow (UI Rows render FinancialSummary data)** — mockups_website_light_screenshots_laporan_keuangan_financial_report_card, mockups_website_light_screenshots_laporan_keuangan_total_kas_akhir, mockups_website_light_screenshots_laporan_keuangan_weekly_income_table, lib_domain_models_financial_summary_financialsummary [INFERRED 0.85]
- **Pre-Maghrib Live Makkah Mode Layout** — mockups_website_light_screenshots_live_makkah, mockups_website_light_screenshots_live_makkah_live_stream_panel, mockups_website_light_screenshots_live_makkah_maghrib_highlight, mockups_website_light_screenshots_live_makkah_clock [INFERRED 0.85]
- **Left Info Panel Stack (Masjid Name, Clock, Dates, Schedule)** — mockups_website_light_screenshots_live_makkah_masjid_name_placeholder, mockups_website_light_screenshots_live_makkah_clock, mockups_website_light_screenshots_live_makkah_hijri_date, mockups_website_light_screenshots_live_makkah_prayer_schedule_panel [EXTRACTED 1.00]
- **Shalat Screen Display Composition** — mockups_website_light_screenshots_shalat_glassmorphism_panel, mockups_website_light_screenshots_shalat_shalat_berlangsung, mockups_website_light_screenshots_shalat_hadith_arabic, mockups_website_light_screenshots_shalat_hadith_translation, mockups_website_light_screenshots_shalat_maghrib_card [EXTRACTED 1.00]
- **Home Screen Layout During Financial Report Mode** — screenshots_isyfi_pray_financial_report_home_screen, screenshots_isyfi_pray_financial_report_clock_display, screenshots_isyfi_pray_financial_report_prayer_schedule_panel, screenshots_isyfi_pray_financial_report_laporan_keuangan_panel, screenshots_isyfi_pray_financial_report_marquee_text [EXTRACTED 1.00]
- **Financial Summary Card Contents** — screenshots_isyfi_pray_financial_report_laporan_keuangan_panel, screenshots_isyfi_pray_financial_report_saldo_kas_akhir, screenshots_isyfi_pray_financial_report_pemasukan_pekan_ini [EXTRACTED 1.00]
- **Clock and Schedule Column** — screenshots_isyfi_pray_financial_report_clock_display, screenshots_isyfi_pray___live_makkah_hijri_date, screenshots_isyfi_pray_financial_report_prayer_schedule_panel, screenshots_isyfi_pray_financial_report_next_prayer_highlight [EXTRACTED 1.00]
- **Home Idle Display Composition (clock, dates, schedule bar, marquee, mosque background)** — screenshots_isyfi_pray_home, screenshots_isyfi_pray_home_clock_display, screenshots_isyfi_pray_home_hijri_date, screenshots_isyfi_pray_home_gregorian_date, screenshots_isyfi_pray_home_prayer_schedule_bar, screenshots_isyfi_pray_home_marquee_ticker, screenshots_isyfi_pray_home_mosque_identity, screenshots_isyfi_pray_home_background_image [INFERRED 0.95]
- **Next-Prayer Countdown Flow (schedule data → highlighted Ashar card → live countdown)** — screenshots_isyfi_pray_home_prayer_times, screenshots_isyfi_pray_home_prayer_schedule_bar, screenshots_isyfi_pray_home_next_prayer_highlight, screenshots_isyfi_pray_home_countdown_display, screenshots_isyfi_pray_home_clock_display [INFERRED 0.90]
- **Iqomah Screen UI Composition** — screenshots_isyfi_pray_iqamah_iqomah_screen, screenshots_isyfi_pray_iqamah_menuju_iqomah_header, screenshots_isyfi_pray_iqamah_countdown_timer, screenshots_isyfi_pray_iqamah_maghrib_label, screenshots_isyfi_pray_iqamah_shaf_instruction, screenshots_isyfi_pray_iqamah_masjid_background [EXTRACTED 1.00]
- **Maghrib Pre-Prayer Home Display Layout** — screenshots_isyfi_pray___live_makkah_home_screen, screenshots_isyfi_pray___live_makkah_clock, screenshots_isyfi_pray___live_makkah_prayer_schedule_panel, screenshots_isyfi_pray___live_makkah_maghrib_active, screenshots_isyfi_pray___live_makkah_makkah_live_stream, screenshots_isyfi_pray___live_makkah_marquee_ticker [INFERRED 0.85]
- **Time and Date Information Group** — screenshots_isyfi_pray___live_makkah_clock, screenshots_isyfi_pray___live_makkah_hijri_date, screenshots_isyfi_pray___live_makkah_prayer_schedule_panel [INFERRED 0.75]
- **Shalat State Screen Composition (glass card + status pill + hadith card + prayer badge over mosque backdrop)** — screenshots_isyfi_pray___shalat_berlangsung_shalat_screen, screenshots_isyfi_pray___shalat_berlangsung_status_pill, screenshots_isyfi_pray___shalat_berlangsung_shaf_hadith_arabic, screenshots_isyfi_pray___shalat_berlangsung_shaf_hadith_translation, screenshots_isyfi_pray___shalat_berlangsung_maghrib_name_badge, screenshots_isyfi_pray___shalat_berlangsung_mosque_background [EXTRACTED 1.00]
- **Adzan Screen Composition** — screenshots_isyfi_pray___waktu_adzan_adzan_screen_state, screenshots_isyfi_pray___waktu_adzan_maghrib, mockups_website_light_screenshots_adzan_waktu_adzan_berkumandang, mockups_website_light_screenshots_adzan_tagline, screenshots_isyfi_pray___waktu_adzan_mosque_icon, screenshots_isyfi_pray___waktu_adzan_glassmorphic_card [EXTRACTED 1.00]
- **Isyraq Countdown Screen Composition** — screenshots_isyfi_pray___waktu_isyraq_screen, screenshots_isyfi_pray___waktu_isyraq_menanti_isyraq_heading, screenshots_isyfi_pray___waktu_isyraq_awal_waktu_dhuha_subtitle, screenshots_isyfi_pray___waktu_isyraq_countdown_digits, screenshots_isyfi_pray___waktu_isyraq_frosted_card, screenshots_isyfi_pray___waktu_isyraq_mosque_photo [EXTRACTED 1.00]

## Communities (88 total, 17 thin omitted)

### Community 0 - "Local Config HTTP Server"
Cohesion: 0.03
Nodes (73): dart:typed_data, Handler, Handler get, HttpServer?, _assetBundleHandler, _authMiddleware, _authToken, _buildHandler (+65 more)

### Community 1 - "Config Provider Wiring"
Cohesion: 0.03
Nodes (67): config_provider.dart, ConfigProvider get, ../../core/utils/date_formatter.dart, ../../data/repositories/financial_repository.dart, ../../data/repositories/prayer_repository.dart, ../../data/services/audio_service.dart, DateTime get, ../../domain/use_cases/calculate_countdown.dart (+59 more)

### Community 2 - "Project Docs & Changelog"
Cohesion: 0.07
Nodes (61): CHANGELOG, Jumat Time Screen Revamp, Shake to Open Config Menu, Release 3.2.0, ChangeNotifier, CLAUDE.md Project Guidance, Provider Wiring (MultiProvider + ProxyProvider), Architecture (docs) (+53 more)

### Community 3 - "Landing Page & Follower Sync"
Cohesion: 0.06
Nodes (54): FollowerSyncService, 24/7 Unattended Operation, Beranda Page Mockup (Isyfi Pray), Download APK (Gratis) CTA, Website Light Design System (Green #15803D, Plus Jakarta Sans), Masalah → Solusi Section, On-Device Prayer Time Calculation, Otomatis Adzan–Iqomah–Shalat (+46 more)

### Community 4 - "AppConfig Accessors"
Cohesion: 0.04
Nodes (48): AppConfig get, double get, FinancialSummary get, int get, adzanDuration, applyConfig, backgroundImage, calculationMethod (+40 more)

### Community 5 - "App Constants Defaults"
Cohesion: 0.04
Nodes (48): adzanBeepAssetPath, adzanDuration, backgroundImage, calculationMethod, calculationMethodNames, elevationMeters, enableFinancialReport, eventDuration (+40 more)

### Community 6 - "Domain Config Models"
Cohesion: 0.05
Nodes (42): event_image.dart, financial_summary.dart, adzanDuration, AppConfig, backgroundImage, calculationMethod, defaults, deviceRole (+34 more)

### Community 7 - "App Bootstrap & Providers"
Cohesion: 0.06
Nodes (35): app/masjid_app.dart, ../app/providers/config_provider.dart, bool get, Duration, ConfigProvider, BackgroundImage, build, imagePath (+27 more)

### Community 8 - "AI-Friendly PRD Skill"
Cohesion: 0.13
Nodes (28): AI-Friendly PRD Template, Mermaid Cheat Sheet for PRDs, AI-Friendly PRD Writer (Skill), AI-Friendly PRD, Mandatory Mermaid ERD, Mandatory Mermaid Sequence Diagram, PRD Self-Check Checklist, 7-Section PRD Structure (+20 more)

### Community 9 - "Launcher Icon Foreground (xxxhdpi)"
Cohesion: 0.11
Nodes (26): Jam Sholat TV adaptive foreground icon (xxxhdpi drawable): white mosque with teal crescent on navy field, Adaptive-icon foreground layer referenced by mipmap-anydpi-v26 ic_launcher.xml with 16 percent inset, Teal crescent moon with star finial atop the arch, White mosque gateway arch silhouette (central foreground motif), Dark navy square background field, Android drawable xxxhdpi density bucket (highest-density foreground variant, ~640dpi), Jam Sholat TV app launcher icon (xhdpi, 96x96 PNG): white mosque with teal crescent on navy square, Teal crescent moon with star finial atop the minaret (+18 more)

### Community 10 - "Core Imports & Prayer Use Cases"
Cohesion: 0.08
Nodes (21): ../core/constants/app_constants.dart, ../domain/models/app_config.dart, ../../domain/use_cases/calculate_prayer_times.dart, DateFormatter, _calculator, getTodayJadwal, AudioService, playAdzanBeep (+13 more)

### Community 11 - "Website Feature Grid"
Cohesion: 0.15
Nodes (21): Feature Card: Atur dari Browser (QR + Local Server), Fitur Unggulan Section (9-Feature Grid), Feature Card: Jadwal Sholat Akurat (Kemenag Method), Feature Card: Kalender Hijriah Umum & KHGT, Feature Card: Laporan Kas Masjid, Screenshot: Laporan Keuangan Card on Home Layout, Feature Card: Layar Jumat & Isyraq, Live Makkah (+13 more)

### Community 12 - "Adzan Screen UI"
Cohesion: 0.13
Nodes (16): ../../core/widgets/background_image.dart, dart:ui, AdzanScreen, build, prayerName, build, _buildBadge, IsyraqScreen (+8 more)

### Community 13 - "Local Server File I/O"
Cohesion: 0.12
Nodes (16): dart:convert, Directory, File, package:jam_sholat_tv/core/constants/app_constants.dart, package:jam_sholat_tv/domain/models/app_config.dart, package:jam_sholat_tv/services/local_server_service.dart, package:shared_preferences/shared_preferences.dart, main (+8 more)

### Community 14 - "Shake to Config Listener"
Cohesion: 0.11
Nodes (18): dart:math, build, child, createState, dispose, initState, _lastOpenedAt, _lastShakeAt (+10 more)

### Community 15 - "Website FAQ & Offline"
Cohesion: 0.17
Nodes (18): Berjalan Offline Feature Card (On-Device Prayer Schedule), FAQ: Apakah bisa dipakai di beberapa TV? (Multi-TV Support), FAQ: Apakah Isyfi Pray gratis? (Free, No Subscription, No Account), FAQ: Apakah butuh internet? (Offline Capability Question), FAQ: Bagaimana kalender Hijriyahnya? (Hijri Calendar), FAQ: Bagaimana cara mengatur TV? (TV Configuration), FAQ: Metode perhitungan apa yang tersedia? (Calculation Method), FAQ: Perangkat apa yang didukung? (Supported Devices) (+10 more)

### Community 16 - "Live Makkah Screenshot"
Cohesion: 0.18
Nodes (18): Isyfi Pray - Live Makkah Screenshot, Large Digital Clock (17:49), Hijri and Gregorian Date Display (19 Rabiul Akhir 1448 H / 1 October 2026), Home Screen (Clock + Schedule + Live Stream), Maghrib Row Highlighted (17:50, Next Prayer), Live Makkah Stream Panel (Masjidil Haram, Ka'bah), Bottom Marquee Ticker (Indonesian Reminder Text), Prayer Schedule Panel (Subuh to Isya List) (+10 more)

### Community 17 - "Live Makkah Screen"
Cohesion: 0.12
Nodes (16): build, _controller, createState, dateHijriah, dateMasehi, initState, jadwal, liveMakkahUrl (+8 more)

### Community 18 - "Website Hero & Solutions"
Cohesion: 0.12
Nodes (17): Automatic Adzan, Iqomah, and Shalat Transitions, Ashar Countdown Highlight (-00:09:21), Solution: Prayer Schedule Computed Automatically On-Device, Solution: Self-Running Full-Screen Transitions, Solution: Digital Cash Report on the TV Screen, Download APK (Gratis) Call to Action, Hero Headline: Display Jadwal Sholat Digital untuk TV Masjid, Isyi Pray Brand (+9 more)

### Community 19 - "Config Menu Screen"
Cohesion: 0.13
Nodes (15): ../../app/providers/app_provider.dart, _authenticatedUrl, build, _buildDebugFabs, _buildInfoColumn, _buildQrCard, ConfigMenuScreen, _ConfigMenuScreenState (+7 more)

### Community 20 - "Remote Key Handler"
Cohesion: 0.13
Nodes (14): dart:async, build, _cancelHold, child, createState, dispose, holdDuration, _holdTimer (+6 more)

### Community 21 - "Event Image Screen"
Cohesion: 0.13
Nodes (14): ../domain/models/event_image.dart, build, _buildSmartImage, createState, currentIndex, currentTime, didUpdateWidget, dispose (+6 more)

### Community 22 - "Adzan Mockup (Light)"
Cohesion: 0.29
Nodes (14): Adzan Prayer State, Glassmorphism Card Container, Light-Theme Website Mockup Variant, MAGHRIB Prayer Name, Mosque Interior Background, Adzan Screen Mockup (Maghrib), Waktunya Berhenti Sejenak dari Aktivitas Dunia Tagline, WAKTU ADZAN BERKUMANDANG Heading (+6 more)

### Community 23 - "Iqamah Mockup (Light)"
Cohesion: 0.22
Nodes (13): Iqamah Countdown Screen — Website Light Mockup, Rounded Card Overlay over Blurred Masjid Background, MM:SS Countdown Display, MENUJU IQOMAH State, Luruskan dan Rapatkan Shaf Instruction Banner, Large Countdown Timer (00:02), Iqomah State Screen, MAGHRIB Prayer Label (+5 more)

### Community 24 - "Main Controller Routing"
Cohesion: 0.17
Nodes (11): ../core/constants/app_enum.dart, ../core/widgets/prayer_card.dart, ../ui/home/event_screen.dart, ../ui/home/financial_report_screen.dart, ../ui/home/home_wrapper.dart, ../ui/home/live_makkah_screen.dart, ../ui/prayer/adzan_screen.dart, ../ui/prayer/iqomah_screen.dart (+3 more)

### Community 25 - "App Theme & Shell"
Cohesion: 0.17
Nodes (11): ../core/theme/app_theme.dart, GlobalKey, build, configProvider, _navigatorKey, main_controller.dart, NavigatorState, providers/app_provider.dart (+3 more)

### Community 26 - "Financial Summary Model"
Cohesion: 0.17
Nodes (11): DateTime?, fromJson, offlineSample, pemasukan, periodeEnd, periodeStart, saldoKasDate, toJson (+3 more)

### Community 27 - "Home UI Widgets"
Cohesion: 0.17
Nodes (11): MasjidApp, BottomMarqueeBar, FinancialReportCard, FinancialReportScreen, HomeScreen, HomeWrapper, build, countdown (+3 more)

### Community 28 - "Final CTA & Footer Mockup"
Cohesion: 0.29
Nodes (12): Android TV / Box / Tablet, Landscape 16:9 Requirement, Copyright Notice (c) 2026 Isyfi Media Tekno - 'Solusi Jadwal Sholat Digital Android TV', Download APK (Gratis) Primary CTA Button, Final CTA Section: 'Pasang Sekarang di TV Masjid Anda', Site Footer (Isyfi Pray), Footer Navigation Columns (Navigasi & Tautan), Free for Mosques - No Subscription, No Account, 'Butuh bantuan pemasangan?' Support CTA Button (+4 more)

### Community 29 - "Widget Test Imports"
Cohesion: 0.20
Nodes (9): package:flutter_test/flutter_test.dart, package:intl/date_symbol_data_local.dart, package:jam_sholat_tv/core/utils/date_formatter.dart, package:jam_sholat_tv/domain/models/financial_summary.dart, package:jam_sholat_tv/ui/home/financial_report_card.dart, main, main, main (+1 more)

### Community 30 - "Report Card & Prayer Panel"
Cohesion: 0.18
Nodes (10): ../../core/widgets/side_prayer_panel.dart, financial_report_card.dart, build, dateHijriah, dateMasehi, jadwal, masjidName, nextPrayerName (+2 more)

### Community 31 - "Home Mockup (Light)"
Cohesion: 0.24
Nodes (11): Full-Screen Mosque Background Image, Large Digital Clock (14:42), Countdown to Next Prayer (-00:09:21), Gregorian Date Display (1 Oktober 2026), Hijri Date Display (19 Rabiul Akhir 1448 H), Jam Sholat TV Home Screen Mockup (Light Website), Bottom Marquee Text (Jadwal Sholat - Selamat Datang - Jagalah Kebersihan...), Mosque Name and Location Header (NAMA MASJID / Lokasi Masjid) (+3 more)

### Community 32 - "Home Screenshot (App)"
Cohesion: 0.25
Nodes (11): Isyfi Pray — Home Screenshot (Landscape TV UI), Mosque Background Image (dome and minarets at dusk), Clock Display (14:42), Prayer Countdown Display (-00:09:21), Gregorian Date Display (1 Oktober 2026), Hijri Date Display (19 Rabiul Akhir 1448 H), Marquee Ticker ("Sholat - Selamat Datang - Jagalah Kebersihan dan Matikan Handphone saat Sholat"), Mosque Identity Labels (NAMA MASJID / Lokasi Masjid placeholders) (+3 more)

### Community 33 - "Input Listeners & Event States"
Cohesion: 0.27
Nodes (10): RemoteKeyDetector, _RemoteKeyDetectorState, ShakeToConfigListener, _ShakeToConfigListenerState, EventScreen, _EventScreenState, LiveMakkahScreen, _LiveMakkahScreenState (+2 more)

### Community 34 - "Side Prayer Panel"
Cohesion: 0.20
Nodes (9): build, _buildPrayerItem, dateHijriah, dateMasehi, jadwal, masjidName, nextPrayerName, time (+1 more)

### Community 35 - "Financial Report Card"
Cohesion: 0.20
Nodes (9): build, _buildRow, _buildSectionHeader, _buildTotalRow, _buildWeekRow, formatDate, formatIdr, _shrinkText (+1 more)

### Community 36 - "Home Screen & Marquee"
Cohesion: 0.22
Nodes (8): ../../core/widgets/bottom_marquee_bar.dart, build, dateHijriah, dateMasehi, jadwal, locationName, masjidName, time

### Community 37 - "Financial Service (Dio)"
Cohesion: 0.22
Nodes (8): Dio, _dio, _endpoint, fetchSummary, _logger, Logger, package:dio/dio.dart, package:logger/logger.dart

### Community 38 - "Home & Wrapper Screens"
Cohesion: 0.22
Nodes (8): home_screen.dart, build, dateHijriah, dateMasehi, jadwal, locationName, masjidName, time

### Community 39 - "Financial Report Mockup (Light)"
Cohesion: 0.33
Nodes (9): FinancialSummary, Laporan Keuangan Screen Mockup (Light Theme), Clock, Mosque Name & Date Panel (Nama Masjid / 12:16 / 19 Rabiul Akhir 1448 H), Laporan Keuangan Card (Saldo Kas Akhir & Pemasukan Pekan Ini), Light Glassmorphism Panels over Mosque Interior Background, Bottom Welcome Marquee Ticker (Selamat Datang / Jagalah Kebersihan), Prayer Schedule Panel with Maghrib Highlighted as Next Prayer, Total Kas Masjid Row (Rp123.555.000, per 1 Oktober 2026) (+1 more)

### Community 40 - "Isyraq Mockup (Light)"
Cohesion: 0.31
Nodes (9): AWAL WAKTU DHUHA Subtitle, 00:01 Countdown Timer Display, Frosted Glass Rounded Card Overlay, Isyraq Countdown Screen Mockup (Light Theme), Isyraq App State, Light Theme Visual Variant, MENANTI ISYRAQ Heading, Mosque Courtyard Background Photo (+1 more)

### Community 41 - "Live Makkah Mockup (Light)"
Cohesion: 0.33
Nodes (9): Live Makkah Mode Screenshot (Light Website Mockup), Analog-Free Digital Clock Panel (17:49), Dual Date Display (19 Rabiul Akhir 1448 H / 1 Oktober 2026), Makkah Live Stream Video Panel (Kaaba, Haram), Gold Highlight on Maghrib Row as Next Prayer (17:50), Bottom Running-Text Marquee (Sholat Reminder Greeting), Masjid Name Placeholder ("Nama Masjid"), Islamic Ornamental Gold Background Frame (Light Theme) (+1 more)

### Community 42 - "404 Page Mockup"
Cohesion: 0.39
Nodes (8): 404 Halaman Tidak Ditemukan Error State with Logo Tile, Kembali ke Beranda Secondary Link, IsyfiPray Brand (Green Mosque Logo, Light Theme), Download APK (Gratis) Primary CTA Button, IsyfiPray Site Footer (Navigasi / Informasi columns, 2026 Isyfi Media Tekno), IsyfiPray Site Navbar (Beranda, Fitur, Tangkapan Layar, Cara Pasang, FAQ, Unduh), IsyfiPray 404 Page Mockup (Light Theme), Display Jadwal Sholat Digital Android TV Tagline

### Community 43 - "Adaptive Icon Details (xxhdpi)"
Cohesion: 0.38
Nodes (7): Android adaptive icon foreground layer, Teal crescent moon and star finial, ic_launcher_foreground.png xxhdpi foreground asset, Instantly recognizable masjid prayer-app identity, White mosque dome and arch silhouette, Dark navy background field, xxhdpi density bucket variant

### Community 44 - "Financial Repository Layer"
Cohesion: 0.29
Nodes (6): ../../domain/models/financial_summary.dart, fetchMonthlySummary, FinancialRepository, _service, FinancialService, ../services/financial_service.dart

### Community 45 - "Shalat Mockup (Light)"
Cohesion: 0.48
Nodes (7): Glassmorphism Overlay Panel, Arabic Hadith on Straightening Shaf, Indonesian Translation of Shaf Hadith, MAGHRIB Prayer Name Card, Blurred Mosque Courtyard Background, Shalat Screen Mockup (Light Theme), SHALAT BERLANGSUNG Status Badge

### Community 46 - "Prayer Times Calculation Tests"
Cohesion: 0.29
Nodes (6): package:jam_sholat_tv/domain/use_cases/calculate_prayer_times.dart, calculator, circularGap, main, now, toMinutes

### Community 47 - "Shalat Screenshot (App)"
Cohesion: 0.43
Nodes (7): SHALAT MAGHRIB Name Badge, Blurred Mosque Interior Background, Shaf Hadith Arabic Text (Straighten the Rows), Shaf Hadith Indonesian Translation, Shalat Berlangsung Full-Screen Display, Shalat State (AppStatus.shalat), SHALAT BERLANGSUNG Status Pill

### Community 48 - "Isyraq Screenshot (App)"
Cohesion: 0.48
Nodes (7): AWAL WAKTU DHUHA Subtitle, Large Coral Countdown Digits (MM:SS), Translucent Frosted-Glass Center Card, Isyraq / Post-Syuruq Waiting Phase, MENANTI ISYRAQ Heading, Mosque Interior Background Photo, Isyraq Countdown Screenshot (MENANTI ISYRAQ)

### Community 49 - "Launcher Icon (mdpi)"
Cohesion: 0.40
Nodes (6): Jam Sholat TV app launcher icon (mdpi 48x48 baseline), Crescent moon with star finial atop the dome, Islamic visual identity of a masjid display app, Android mipmap mdpi density bucket (48x48 baseline), White mosque dome-and-arch silhouette, Dark navy rounded-square background field

### Community 50 - "Default Mosque Background"
Cohesion: 0.47
Nodes (6): Masjid Background Image, Foreground Arcade Arches Framing the Composition, Reflective Marble Courtyard (Sahn) with Symmetrical Inlay, Golden-Hour Sunset Lighting with Warm Sky Gradient, Ottoman-Style Mosque Architecture (Central Dome, Cascading Semi-Domes, Pencil Minarets), Default Fullscreen TV Background Asset for Jam Sholat Display

### Community 51 - "App Theme Colors"
Cohesion: 0.33
Nodes (5): AppTheme, backgroundColor, cardColor, primaryColor, static const Color

### Community 52 - "Prayer Card Widget"
Cohesion: 0.33
Nodes (5): build, countdown, isNext, label, time

### Community 53 - "Event Image Model"
Cohesion: 0.33
Nodes (5): EventImage, fromJson, toJson, type, url

### Community 54 - "Launcher Icon (hdpi)"
Cohesion: 0.50
Nodes (5): Teal Crescent Moon, Islamic Prayer Branding, App Launcher Icon Hdpi, White Mosque Silhouette, Dark Navy Background

### Community 55 - "Provider Debug Tools"
Cohesion: 0.50
Nodes (5): AppProvider, ConfigProvider, build, MainController, _runDebugTool

### Community 56 - "App Icon Branding"
Cohesion: 0.60
Nodes (4): Teal Crescent Moon and Star Finial, Jam Sholat TV Islamic App Branding, White Mosque Arch Silhouette, Dark Navy Blue Background

### Community 57 - "Network Info Helper"
Cohesion: 0.40
Nodes (4): dart:io, localIPv4, NetworkInfoHelper, package:network_info_plus/network_info_plus.dart

### Community 58 - "Jumat Screen Test"
Cohesion: 0.40
Nodes (4): package:jam_sholat_tv/app/providers/config_provider.dart, package:jam_sholat_tv/ui/prayer/jumat_screen.dart, package:provider/provider.dart, main

### Community 59 - "Countdown Use Case Tests"
Cohesion: 0.40
Nodes (4): package:jam_sholat_tv/domain/use_cases/calculate_countdown.dart, calculator, jadwal, main

### Community 60 - "Launcher Icon Foreground Art"
Cohesion: 0.67
Nodes (3): Teal crescent moon and star emblem, White mosque arch silhouette, Dark navy background

### Community 61 - "Keep Silent Icon"
Cohesion: 0.50
Nodes (4): Keep Silent Icon, Red Prohibition Circle, Finger-to-Lips Shhh Gesture, Silence During Khutbah

### Community 62 - "No Talking Icon"
Cohesion: 0.67
Nodes (4): No Talking / Silence Icon (PNG asset), Red Prohibition Circle with Diagonal Slash, Quiet Etiquette Reminder (Silence During Prayer/Khutbah), Silenced Speech (Person Silhouette + Sound Waves)

### Community 63 - "Web Config API Client"
Cohesion: 0.50
Nodes (4): Config API client POST GET uploads, fetchConfig JS GET api config, uploadFiles JS background event uploader, Local server API config uploads images

### Community 64 - "CountdownResult Model"
Cohesion: 0.50
Nodes (3): countdown, CountdownResult, nextName

### Community 65 - "OpenCode Graphify Plugin"
Cohesion: 0.50
Nodes (3): plugin, $schema, .opencode/plugins/graphify.js

### Community 67 - "Launcher Icon Motif (hdpi)"
Cohesion: 1.00
Nodes (3): Teal Crescent Star Motif, Launcher Foreground Icon (hdpi), White Mosque Arch Motif

### Community 68 - "Config Menu Toggle"
Cohesion: 0.67
Nodes (3): _toggleConfigMenu, _toggleConfigMenu, MaterialPageRoute

## Ambiguous Edges - Review These
- `Jam Sholat TV app launcher icon (mdpi 48x48 baseline)` → `Crescent moon with star finial atop the dome`  [AMBIGUOUS]
  android/app/src/main/res/mipmap-mdpi/ic_launcher.png · relation: references
- `Crescent moon with star finial atop the dome` → `White mosque dome-and-arch silhouette`  [AMBIGUOUS]
  android/app/src/main/res/mipmap-mdpi/ic_launcher.png · relation: conceptually_related_to
- `Isyraq Countdown Screen Mockup (Light Theme)` → `Syuruq Waiting Phase (MENANTI ISYRAQ)`  [AMBIGUOUS]
  mockups/website-light/screenshots/isyraq.jpg · relation: conceptually_related_to
- `Prayer Schedule Panel with Maghrib Highlighted as Next Prayer` → `Laporan Keuangan Card (Saldo Kas Akhir & Pemasukan Pekan Ini)`  [AMBIGUOUS]
  mockups/website-light/screenshots/laporan-keuangan.jpg · relation: conceptually_related_to

## Knowledge Gaps
- **530 isolated node(s):** `adzanCounter`, `_calcKey`, `_calculateCountdown`, `checkInitialStatus`, `_checkSpecialLiveConditions` (+525 more)
  These have ≤1 connection - possible missing edges or undocumented components. (Counts symbols only; 616 node(s) total have ≤1 connection when file, concept and rationale nodes are included.)
- **17 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **What is the exact relationship between `Jam Sholat TV app launcher icon (mdpi 48x48 baseline)` and `Crescent moon with star finial atop the dome`?**
  _Edge tagged AMBIGUOUS (relation: references) - confidence is low._
- **What is the exact relationship between `Crescent moon with star finial atop the dome` and `White mosque dome-and-arch silhouette`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **What is the exact relationship between `Isyraq Countdown Screen Mockup (Light Theme)` and `Syuruq Waiting Phase (MENANTI ISYRAQ)`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **What is the exact relationship between `Prayer Schedule Panel with Maghrib Highlighted as Next Prayer` and `Laporan Keuangan Card (Saldo Kas Akhir & Pemasukan Pekan Ini)`?**
  _Edge tagged AMBIGUOUS (relation: conceptually_related_to) - confidence is low._
- **Why does `PRD - Isyfi Pray (Masjid TV Prayer Display)` connect `Project Docs & Changelog` to `Landing Page & Follower Sync`, `AI-Friendly PRD Skill`, `Adzan Screen UI`, `Provider Debug Tools`, `Home UI Widgets`?**
  _High betweenness centrality (0.091) - this node is a cross-community bridge._
- **Why does `Isyfi Pray` connect `Landing Page & Follower Sync` to `AI-Friendly PRD Skill`, `Project Docs & Changelog`?**
  _High betweenness centrality (0.054) - this node is a cross-community bridge._
- **Why does `Fitur & Tangkapan Layar Page Mockup` connect `Landing Page & Follower Sync` to `Website Feature Grid`?**
  _High betweenness centrality (0.044) - this node is a cross-community bridge._
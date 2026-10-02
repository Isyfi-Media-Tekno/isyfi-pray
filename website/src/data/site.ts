export interface SiteConfig {
  /** Product name shown in the header, footer and structured data. */
  appName: string;
  /** Short positioning line used in metadata. */
  tagline: string;
  /** Default meta description (pages may override with their own). */
  description: string;
  /** Production URL, e.g. "https://isyfipray.id". Empty until the owner sets it. */
  siteUrl: string;
  /** Direct APK download (GitHub Releases latest). */
  apkUrl: string;
  /** Google Play listing. Empty while the app is not published there. */
  playStoreUrl: string;
  /** WhatsApp contact link. Empty hides the contact CTA. */
  whatsappUrl: string;
  /** Contact email. Empty hides the contact block. */
  email: string;
  /** Organization name used in the footer and structured data. */
  organizationName: string;
  /** Social-proof line shown under Masalah → Solusi. Empty hides the line. */
  masjidReference: string;
  /** Device requirements shown under the download buttons. */
  requirements: string;
  /** Social share image (1200×630 PNG in public/). */
  ogImage: string;
}

/**
 * Single source of truth for every owner-supplied value. No other file may
 * hardcode these. Fields that are not yet available stay as empty strings.
 */
export const siteConfig: SiteConfig = {
  appName: "Isyfi Pray",
  tagline: "Display Jadwal Sholat Digital untuk TV Masjid",
  description:
    "Aplikasi jam sholat digital untuk Android TV dan tablet. Jadwal Kemenag atau Muhammadiyah dihitung offline, layar Adzan, Iqomah, dan Shalat otomatis. Gratis.",
  siteUrl: "",
  apkUrl: "https://github.com/Isyfi-Media-Tekno/isyfi-pray/releases/latest",
  playStoreUrl: "",
  whatsappUrl: "",
  email: "",
  organizationName: "Isyfi Media Tekno",
  masjidReference: "Digunakan di berbagai masjid di Indonesia",
  requirements: "Android TV, Android Box, atau tablet Android • Lanskap 16:9",
  ogImage: "/og-default.png",
};

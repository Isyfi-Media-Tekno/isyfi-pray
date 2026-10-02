export interface NavLink {
  id: string;
  label: string;
  /** In-page anchor ("#fitur") or route ("/", "/kebijakan-privasi"). */
  href: string;
  sortOrder: number;
}

/** Declared once and rendered by both the header and the footer. */
export const navLinks: NavLink[] = [
  { id: "beranda", label: "Beranda", href: "/", sortOrder: 1 },
  { id: "fitur", label: "Fitur", href: "#fitur", sortOrder: 2 },
  { id: "tangkapan-layar", label: "Tangkapan Layar", href: "#tangkapan-layar", sortOrder: 3 },
  { id: "cara-pasang", label: "Cara Pasang", href: "#cara-pasang", sortOrder: 4 },
  { id: "faq", label: "FAQ", href: "#faq", sortOrder: 5 },
  { id: "unduh", label: "Unduh", href: "#unduh", sortOrder: 6 },
];

/**
 * Prefixes internal hrefs with Astro's BASE_URL so the site works from a
 * domain root and from a GitHub Pages project sub-path alike.
 */
export function withBase(href: string): string {
  const base = import.meta.env.BASE_URL;
  return href.startsWith("#") ? `${base}${href}` : `${base}${href.replace(/^\//, "")}`;
}

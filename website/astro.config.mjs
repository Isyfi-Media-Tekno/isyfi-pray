// @ts-check
import { defineConfig } from "astro/config";
import sitemap from "@astrojs/sitemap";
import icon from "astro-icon";
import tailwindcss from "@tailwindcss/vite";
import { siteConfig } from "./src/data/site.ts";

// The owner sets `siteConfig.siteUrl` in src/data/site.ts once the real domain
// is ready. Until then the canonical tags and sitemap are omitted, and the site
// still builds and deploys fine.
const site = siteConfig.siteUrl || undefined;

// When siteUrl contains a path (e.g. a GitHub Pages project sub-path), derive
// Astro's `base` from it so every internal link built with BASE_URL works.
let base = "/";
if (site) {
  const { pathname } = new URL(site);
  if (pathname && pathname !== "/") {
    base = pathname.replace(/\/+$/, "") + "/";
  }
}

export default defineConfig({
  output: "static",
  site,
  base,
  integrations: [icon(), ...(site ? [sitemap()] : [])],
  vite: {
    plugins: [tailwindcss()],
  },
});

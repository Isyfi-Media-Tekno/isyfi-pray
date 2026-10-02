# Isyfi Pray — Website

Static marketing & download site for Isyfi Pray, built with Astro + Tailwind CSS.
Spec: [`../PRD/PRD-website.md`](../PRD/PRD-website.md). Visual reference:
[`../mockups/website-light`](../mockups/website-light) (light theme with green accent —
this supersedes the dark/amber palette originally sketched in the PRD).

## Commands

```bash
npm install        # install dependencies (Node 22)
npm run dev        # local dev server (http://localhost:4321)
npm run build      # static build into website/dist/
npm run preview    # preview the production build
```

## Owner checklist before the first production deploy

1. **Set the real site URL.** Edit `src/data/site.ts` → `siteUrl` (e.g. `"https://isyfipray.id"`).
   That single value drives the canonical tags, Open Graph URLs, JSON-LD, the sitemap
   integration, and robots.txt. If the URL contains a path (GitHub Pages project
   sub-path, e.g. `https://org.github.io/isyfi-pray/`), Astro's `base` is derived from it
   automatically so every internal link keeps working.
2. **Play Store:** set `playStoreUrl` when the app is published; the disabled
   "Segera Hadir di Play Store" button turns into an active "Unduh di Google Play" link.
3. **Contact:** set `whatsappUrl` and/or `email` to show the contact blocks
   ("Butuh bantuan pemasangan?" and the footer contact column). Leave them empty to hide.
4. **Repository Pages setting:** Settings → Pages → Source: **GitHub Actions**.
   The workflow (`.github/workflows/website.yml`) deploys on every push to `master`
   that touches `website/**`.

## Content editing (no layout changes needed)

| What | Where |
|------|-------|
| Owner values (URLs, org name, requirements) | `src/data/site.ts` |
| Navigation links | `src/data/navigation.ts` |
| Feature cards | `src/content/features.json` |
| Screenshot gallery | `src/content/screenshots.json` |
| FAQ items | `src/content/faqs.json` |

All content JSON is validated by Zod at build time (`src/content.config.ts`) — an invalid
file fails the build instead of reaching production.

## Screenshots

App screenshots live in `src/assets/screenshots/` and flow through Astro's image
optimizer (WebP, responsive widths). To replace one, drop a new JPG with the same name;
to add one, add the file plus a `screenshots.json` entry. Do **not** put them in `public/`.

## Outputs

- `/` — landing page (hero, masalah→solusi, fitur, tangkapan layar, cara pasang,
  multi-TV & offline, FAQ, unduhan akhir)
- `/kebijakan-privasi` — privacy policy
- `/404` — not-found page
- `/robots.txt` — generated at build time (Sitemap line added when `siteUrl` is set)
- `/sitemap-index.xml` — generated when `siteUrl` is set

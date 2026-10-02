import { defineCollection, z } from "astro:content";
import { file } from "astro/loaders";

const feature = z.object({
  id: z.string(),
  title: z.string(),
  description: z.string(),
  sortOrder: z.number().int(),
});

const screenshot = z.object({
  id: z.string(),
  /** Import key into src/assets/screenshots (e.g. "home.jpg"). */
  image: z.string(),
  caption: z.string(),
  alt: z.string(),
  sortOrder: z.number().int(),
});

const faq = z.object({
  id: z.string(),
  question: z.string(),
  answer: z.string(),
  sortOrder: z.number().int(),
});

const features = defineCollection({
  loader: file("src/content/features.json"),
  schema: feature,
});

const screenshots = defineCollection({
  loader: file("src/content/screenshots.json"),
  schema: screenshot,
});

const faqs = defineCollection({
  loader: file("src/content/faqs.json"),
  schema: faq,
});

export const collections = { features, screenshots, faqs };

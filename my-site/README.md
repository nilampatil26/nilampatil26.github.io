# Learner's Paradise Site Structure

This site now behaves as a content-driven Hugo site with local layout overrides on top of the `hugo-profile` theme.

## Edit content here

- `content/hero.md`
  Homepage hero title, subtitle, intro, social links, and body copy.
- `content/about.md`
  About section copy, profile image, and `What Kids Can Learn` cards.
- `content/achievements.md`
  Teaching Impact cards.
- `content/contact.md`
  Homepage contact copy and Formspree settings.
- `content/book-session.md`
  Book Session page content.
- `content/projects/_index.md`
  Courses section title.
- `content/projects/*.md`
  Individual course cards and detail pages.
- `content/blogs/*.md`
  Blog posts.

## Layout behavior lives here

- `layouts/index.html`
  Homepage section order and custom stylesheet loading.
- `layouts/_default/single.html`
  Single-page template override.
- `layouts/book-session/single.html`
  Custom Book Session page and enquiry form.
- `layouts/partials/sections/hero/index.html`
  Text-only hero section.
- `layouts/partials/sections/hero/social.html`
  Hero social links from `content/hero.md`.
- `layouts/partials/sections/skills.html`
  `What Kids Can Learn` section placed below Hero.
- `layouts/partials/sections/about.html`
  About section sourced from `content/about.md`.
- `layouts/partials/sections/projects.html`
  Homepage Courses cards sourced from `content/projects/*.md`.
- `layouts/partials/sections/achievements.html`
  Teaching Impact section sourced from `content/achievements.md`.
- `layouts/partials/sections/contact.html`
  Homepage contact section sourced from `content/contact.md`.
- `layouts/partials/sections/header.html`
  Header/nav labels sourced from content titles.
- `layouts/partials/scripts.html`
  Script loading, including Formspree support from `content/contact.md`.

## Styling

- `static/css/custom-overrides.css`
  CTA buttons and custom section styling.
- `static/css/enquiry-form.css`
  Book Session enquiry form styling.

## Theme files still used directly

These still come from the theme because there is no local override yet:

- search UI behavior
- language switcher partial
- experience section partial
- education section partial
- footer partials
- blog/list templates unless overridden later

## Practical rule

- Change words and section data in `content/`
- Change structure and rendering in `layouts/`
- Change appearance in `static/css/`

# Personal Homepage Redesign Design

Date: 2026-06-16
Status: Approved for implementation planning

## Context

The current homepage is a minimal Jekyll page with two publications. The target style is inspired by https://qizekun.github.io/: an academic homepage with a concise profile section, news, selected works, publication entries, and light card styling.

The chosen direction is a navigation-enhanced research homepage: it keeps the academic clarity of the reference page, adds a persistent section navigation for easier scanning, and uses a restrained visual style rather than a decorative landing page.

## Goals

- Rebuild the homepage as an English-first academic research profile.
- Preserve and present existing personal information from `_config.yml`.
- Feature the badminton robot project as a selected work with existing local media.
- Present the two current publications in a richer, scannable format.
- Add section navigation that works well as the page grows.
- Keep the site compatible with GitHub Pages and the current Jekyll setup.
- Make the avatar easy to replace later with a real photo.

## Non-Goals

- Do not redesign the project page under `DTG-IRRL-For-Badminton/`.
- Do not add a frontend framework or build pipeline.
- Do not invent missing publication links or claims.
- Do not add a marketing-style hero page.

## Content Architecture

The homepage will contain these sections:

1. About
   - Name: Yanyan Yuan, with Chinese name included if available from existing site metadata.
   - Role: PhD student at the School of Aeronautics and Astronautics, Zhejiang University.
   - Research interests: robotics, robotic arms, humanoid robots, reinforcement learning, dynamic robot motion/control.
   - Contact links: Email, GitHub, Zhihu.
   - Avatar: circular initials placeholder using `YY`.

2. News
   - A short dated list of current academic updates.
   - Initial entries will be conservative and based on existing repository facts, such as the IEEE RA-L publication and the badminton project.

3. Selected Works
   - Highlighted publication/project cards.
   - The badminton project appears first and links to `DTG-IRRL-For-Badminton/`.
   - Use existing local media where feasible:
     - `DTG-IRRL-For-Badminton/image/fig1.jpg`
     - existing local badminton/UR5 videos as optional visual thumbnails.

4. Publications
   - Publication entries grouped by year or presented in descending order.
   - Include title, authors, venue/status, and available links.
   - Highlight Yanyan Yuan in the author list.

5. Honors and Service
   - Reserved for future growth, but omitted from the first implementation because no concrete content is currently available in the repository.
   - The navigation should only include sections that are rendered on the page.

## Visual Design

The design combines the selected navigation-enhanced layout with the restraint of a classic academic homepage:

- Page background: light neutral gray.
- Content cards: white background, 8px radius, subtle border, soft shadow.
- Links and accents: academic blue.
- Typography: system sans-serif for body text, serif or strong display styling only for the name.
- Spacing: generous but compact enough for academic scanning.
- No decorative gradients as page backgrounds, oversized hero art, nested cards, or marketing sections.

## Layout

Desktop layout:

- A max-width content shell.
- Left sticky navigation column with anchors:
  - About
  - News
  - Selected Works
  - Publications
- Right main column with the content sections.
- About section uses a two-column layout: text and links on the left, initials avatar on the right.
- Publication items use a media thumbnail column and text content column.

Mobile layout:

- Navigation becomes a compact top horizontal anchor list.
- About section stacks avatar and profile text cleanly.
- Publication items stack thumbnail above text.
- Text and buttons must wrap without overflow.

## Components

Homepage components can be implemented with plain HTML and CSS inside `index.md`:

- `site-shell`: full homepage wrapper.
- `side-nav`: anchor navigation.
- `section-card`: reusable white section surface.
- `profile-grid`: profile content plus avatar.
- `avatar-placeholder`: circular initials avatar.
- `news-list`: dated update list.
- `publication-item`: thumbnail plus publication metadata.
- `publication-links`: compact link row.

No new JavaScript is required for core functionality. Optional active-link behavior can be added only if it remains small and progressive-enhancement friendly.

## Data and Assets

Use existing repository data first:

- `_config.yml` for name, description, email, GitHub, and Zhihu.
- `index.md` for the two existing publication records.
- `DTG-IRRL-For-Badminton/` for the badminton project link.
- `DTG-IRRL-For-Badminton/image/fig1.jpg` or existing videos for visual media.

If a real profile photo is added later, the implementation should require replacing one image reference or adding one CSS class, not restructuring the page.

## Accessibility and Robustness

- Use semantic headings and anchor targets.
- Provide alt text for images.
- Keep contrast readable on light backgrounds.
- Avoid relying on hover-only interactions.
- Ensure media thumbnails have stable dimensions to prevent layout shift.
- Keep links understandable without surrounding visual context.

## Testing and Verification

Verification should include:

- Build or serve the Jekyll site locally if dependencies are available.
- Check the static rendered homepage in a browser.
- Verify desktop and mobile responsive layouts.
- Confirm all internal links resolve, especially `DTG-IRRL-For-Badminton/`.
- Confirm no generated `.superpowers/` brainstorming files are tracked.
- Confirm the homepage remains usable without JavaScript.

## Implementation Decisions

- Omit Honors and Service in the first implementation until real content exists.
- Use `DTG-IRRL-For-Badminton/image/fig1.jpg` as the default selected-work thumbnail for stability, with project links to the richer video page.

# Sidebar Link Icons Design

Date: 2026-06-16
Status: Approved

## Goal

Add small icons before the Email, GitHub, and Zhihu links in the left sidebar profile block.

## Design

- Keep the existing sidebar link blocks.
- Add a fixed-size icon before each link label.
- Use inline SVG for Email and GitHub so the page has no external icon dependency.
- Use a compact text mark `知` for Zhihu to keep the icon crisp and dependency-free.
- Icons are decorative and should be hidden from screen readers with `aria-hidden="true"`.

## Files

- `index.md`: update sidebar link CSS and markup.

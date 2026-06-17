# Sidebar Profile Block Design

Date: 2026-06-16
Status: Approved

## Goal

Add a separate personal information block above the homepage navigation in the left sidebar.

## Approved Design

The desktop left sidebar will contain two stacked cards:

1. Profile block
   - Circular `YY` initials avatar.
   - Name: `Yanyan Yuan`.
   - Email link.
   - GitHub link.
   - Zhihu link.

2. Navigation block
   - About
   - News
   - Selected Works
   - Publications

The navigation remains below the profile block and keeps the current sticky sidebar behavior. On mobile, both blocks stack at the top of the page, with the navigation links remaining horizontally scrollable.

## Files

- `index.md`: add sidebar profile markup and CSS, then adjust existing navigation markup.
- `README.md`: update maintenance notes to mention the new sidebar profile block.

## Constraints

- Preserve current local values in `index.md`, including updated email, GitHub link, and research tags.
- Do not add JavaScript or new assets.
- Do not change main content sections except where duplicate top-profile links should be simplified after adding the sidebar profile block.

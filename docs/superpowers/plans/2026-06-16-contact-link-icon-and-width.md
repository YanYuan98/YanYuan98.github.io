# Contact Link Icon And Width Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Make the left sidebar contact link blocks narrower and add matching icons to the main About contact links.

**Architecture:** Keep all changes in the existing static `index.md` HTML/CSS. Reuse the inline SVG icon pattern already added for the sidebar and add parallel icon markup to the About link row.

**Tech Stack:** GitHub Pages, Jekyll front matter, plain HTML, plain CSS, Python static verification.

---

## Tasks

### Task 1: Contact Link Sizing And Icons

**Files:**
- Modify: `index.md`

- [ ] **Step 1: Run failing check**

```bash
python3 - <<'PY'
from pathlib import Path
content = Path('index.md').read_text()
required = [
    'width: 50%;',
    'class="link-icon link-icon-email"',
    'class="link-icon link-icon-github"',
    'class="link-icon link-icon-zhihu"'
]
missing = [item for item in required if item not in content]
if missing:
    raise SystemExit('Missing contact link update: ' + ', '.join(missing))
PY
```

Expected: FAIL before implementation.

- [ ] **Step 2: Update `index.md` CSS and About link markup**

Add half-width styling to `.sidebar-links a`, add `.link-icon` CSS, and add icon spans before Email, GitHub, and Zhihu in `.link-row`.

- [ ] **Step 3: Run verification**

Run the Step 1 command again and confirm it passes.

- [ ] **Step 4: Refresh local preview**

Regenerate `/tmp/yanyan-homepage-preview/index.html` from `index.md` and confirm `http://127.0.0.1:4173/` returns HTTP 200.

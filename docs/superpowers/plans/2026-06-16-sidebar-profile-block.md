# Sidebar Profile Block Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a dedicated personal information block above the homepage navigation in the left sidebar.

**Architecture:** Keep the homepage as plain HTML/CSS in `index.md`. Replace the single `nav.side-nav` card with a sticky sidebar container containing two cards: `sidebar-profile` and `side-nav`. Update README maintenance notes to document the new sidebar block.

**Tech Stack:** GitHub Pages, Jekyll front matter, plain HTML, plain CSS, Python static verification.

---

## Tasks

### Task 1: Sidebar Profile Block

**Files:**
- Modify: `index.md`
- Modify: `README.md`

- [ ] **Step 1: Run failing structure check**

```bash
python3 - <<'PY'
from pathlib import Path
content = Path('index.md').read_text()
required = [
    'class="sidebar-stack"',
    'class="sidebar-profile"',
    'class="sidebar-avatar"',
    'class="sidebar-name"',
    'class="sidebar-links"',
    '<nav class="side-nav"'
]
missing = [item for item in required if item not in content]
if missing:
    raise SystemExit('Missing sidebar profile structure: ' + ', '.join(missing))
PY
```

Expected: FAIL because the sidebar profile block has not been added yet.

- [ ] **Step 2: Edit `index.md`**

Add CSS classes:

```css
  .sidebar-stack {
    align-self: start;
    display: grid;
    gap: 14px;
    position: sticky;
    top: 22px;
  }

  .sidebar-profile,
  .side-nav {
    background: var(--card);
    border: 1px solid var(--line);
    border-radius: 8px;
    box-shadow: var(--shadow);
    padding: 16px;
  }
```

Add the profile block above navigation:

```html
    <aside class="sidebar-stack" aria-label="Profile and homepage navigation">
      <section class="sidebar-profile" aria-label="Basic information">
        <div class="sidebar-avatar" aria-hidden="true">YY</div>
        <div class="sidebar-name">Yanyan Yuan</div>
        <div class="sidebar-links">
          <a href="mailto:yuanyanyan98@163.com">Email</a>
          <a href="https://github.com/YanYuan98">GitHub</a>
          <a href="https://www.zhihu.com/people/yuan-yan-yan-47">Zhihu</a>
        </div>
      </section>

      <nav class="side-nav" aria-label="Homepage sections">
        ...
      </nav>
    </aside>
```

Keep mobile behavior by making `.sidebar-stack` static inside the existing `@media (max-width: 760px)` block.

- [ ] **Step 3: Update README**

Update the homepage maintenance list so it says the left sidebar profile block is maintained in `index.md`.

- [ ] **Step 4: Run structure check**

Run the Step 1 command again.

Expected: PASS with no output.

- [ ] **Step 5: Run link and responsive checks**

```bash
python3 - <<'PY'
from pathlib import Path
import re
content = Path('index.md').read_text()
anchors = re.findall(r'id="([^"]+)"', content)
targets = re.findall(r'href="#([^"]+)"', content)
missing = [target for target in targets if target not in anchors]
if missing:
    raise SystemExit('Missing anchors: ' + ', '.join(missing))
for text in ['mailto:yuanyanyan98@163.com', 'https://github.com/YanYuan98', 'sidebar-stack', '@media (max-width: 760px)']:
    if text not in content:
        raise SystemExit('Missing expected text: ' + text)
PY
```

Expected: PASS with no output.

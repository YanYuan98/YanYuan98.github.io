# Personal Homepage Redesign Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Rebuild the GitHub Pages homepage as an English-first academic research profile with sticky section navigation, an initials avatar, news, selected works, and publication entries.

**Architecture:** Keep the site static and Jekyll-compatible by implementing the homepage as raw HTML and CSS inside `index.md` with existing `layout: default` front matter. Reuse existing repository assets and links, especially the badminton project media, and avoid adding JavaScript or build dependencies.

**Tech Stack:** GitHub Pages, Jekyll minimal theme, Markdown front matter, plain HTML, plain CSS, existing local image/video assets.

---

## File Structure

- Modify `index.md`: Replace the current short publications Markdown with a complete static academic homepage. This file owns the homepage markup, section anchors, homepage CSS, and publication content.
- Read-only `DTG-IRRL-For-Badminton/image/fig1.jpg`: Use as the selected-work thumbnail.
- Read-only `_config.yml`: Source of existing personal metadata; no modification needed.
- No new production assets, scripts, or framework files.

## Implementation Tasks

### Task 1: Replace The Homepage With The Approved Layout

**Files:**
- Modify: `index.md`

- [ ] **Step 1: Run a pre-implementation homepage check and verify it fails**

Run:

```bash
python3 - <<'PY'
from pathlib import Path

content = Path('index.md').read_text()
required = [
  'class="research-homepage"',
  'id="about"',
  'id="news"',
  'id="selected-works"',
  'id="publications"',
  'class="side-nav"',
  'class="avatar-placeholder"',
  'DTG-IRRL-For-Badminton/image/fig1.jpg',
  'Imitation-Relaxation Reinforcement Learning for Sparse Badminton Strikes via Dynamic Trajectory Generation',
  'Optimal Design of High-Dynamic Robotic Arm Based on Angular Momentum Maximum'
]
missing = [needle for needle in required if needle not in content]
if missing:
    raise SystemExit('Missing homepage features: ' + ', '.join(missing))
PY
```

Expected: FAIL with missing homepage features.

- [ ] **Step 2: Replace `index.md` with the static homepage**

Use this complete content:

```html
---
layout: default
title: Yanyan Yuan
---

<style>
  .research-homepage {
    --accent: #2563eb;
    --accent-hover: #1d4ed8;
    --ink: #1f2937;
    --muted: #64748b;
    --soft: #f6f8fb;
    --card: #ffffff;
    --line: #e2e8f0;
    --shadow: 0 10px 28px rgba(15, 23, 42, 0.07);
    color: var(--ink);
    background: var(--soft);
    margin: -30px;
    padding: 34px 22px 46px;
    min-height: 100vh;
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
  }

  .research-shell {
    display: grid;
    grid-template-columns: 170px minmax(0, 1fr);
    gap: 24px;
    max-width: 1050px;
    margin: 0 auto;
  }

  .side-nav {
    position: sticky;
    top: 22px;
    align-self: start;
    background: var(--card);
    border: 1px solid var(--line);
    border-radius: 8px;
    box-shadow: var(--shadow);
    padding: 16px;
  }

  .nav-kicker {
    color: var(--muted);
    font-size: 12px;
    font-weight: 700;
    letter-spacing: 0.08em;
    margin-bottom: 12px;
    text-transform: uppercase;
  }

  .side-nav a {
    border-radius: 6px;
    color: #334155;
    display: block;
    font-size: 14px;
    font-weight: 600;
    padding: 8px 10px;
    text-decoration: none;
  }

  .side-nav a:hover,
  .side-nav a:focus {
    background: #eff6ff;
    color: var(--accent);
  }

  .homepage-main {
    display: grid;
    gap: 18px;
    min-width: 0;
  }

  .section-card {
    background: var(--card);
    border: 1px solid var(--line);
    border-radius: 8px;
    box-shadow: var(--shadow);
    padding: 28px;
  }

  .section-card h2 {
    color: var(--ink);
    font-size: 22px;
    line-height: 1.25;
    margin: 0 0 18px;
  }

  .profile-grid {
    align-items: center;
    display: grid;
    gap: 30px;
    grid-template-columns: minmax(0, 1fr) 150px;
  }

  .profile-name {
    color: #111827;
    font-family: Georgia, "Times New Roman", serif;
    font-size: 38px;
    font-weight: 700;
    line-height: 1.12;
    margin: 0 0 12px;
  }

  .profile-name span {
    color: var(--muted);
    font-family: inherit;
    font-size: 22px;
    font-weight: 600;
  }

  .profile-text {
    color: #334155;
    font-size: 15px;
    line-height: 1.72;
    margin: 0 0 12px;
  }

  .link-row {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    margin-top: 18px;
  }

  .link-row a,
  .publication-links a {
    background: #f8fafc;
    border: 1px solid #dbe4ef;
    border-radius: 999px;
    color: var(--accent);
    font-size: 13px;
    font-weight: 650;
    line-height: 1;
    padding: 8px 12px;
    text-decoration: none;
  }

  .link-row a:hover,
  .link-row a:focus,
  .publication-links a:hover,
  .publication-links a:focus {
    background: #eff6ff;
    border-color: #bfdbfe;
    color: var(--accent-hover);
  }

  .avatar-placeholder {
    align-items: center;
    aspect-ratio: 1;
    background: linear-gradient(145deg, #e8eef8, #cbdaf5);
    border: 5px solid #ffffff;
    border-radius: 50%;
    box-shadow: 0 14px 30px rgba(30, 64, 175, 0.16);
    color: #315da8;
    display: flex;
    font-size: 42px;
    font-weight: 800;
    justify-content: center;
    width: 140px;
  }

  .research-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin-top: 15px;
  }

  .research-tags span {
    background: #f1f5f9;
    border: 1px solid #e2e8f0;
    border-radius: 999px;
    color: #475569;
    font-size: 12px;
    font-weight: 650;
    padding: 6px 10px;
  }

  .news-list {
    list-style: none;
    margin: 0;
    padding: 0;
  }

  .news-list li {
    border-bottom: 1px solid var(--line);
    color: #334155;
    display: grid;
    font-size: 14px;
    gap: 14px;
    grid-template-columns: 76px minmax(0, 1fr);
    line-height: 1.55;
    padding: 11px 0;
  }

  .news-list li:first-child {
    padding-top: 0;
  }

  .news-list li:last-child {
    border-bottom: 0;
    padding-bottom: 0;
  }

  .news-date {
    color: var(--accent);
    font-weight: 750;
    white-space: nowrap;
  }

  .publication-list {
    display: grid;
    gap: 22px;
  }

  .publication-item {
    align-items: start;
    display: grid;
    gap: 18px;
    grid-template-columns: 178px minmax(0, 1fr);
  }

  .publication-item + .publication-item {
    border-top: 1px solid var(--line);
    padding-top: 22px;
  }

  .publication-media {
    align-items: center;
    aspect-ratio: 16 / 10;
    background: #f8fafc;
    border: 1px solid #dbe4ef;
    border-radius: 8px;
    display: flex;
    justify-content: center;
    overflow: hidden;
  }

  .publication-media img {
    display: block;
    height: 100%;
    object-fit: cover;
    width: 100%;
  }

  .media-fallback {
    color: #64748b;
    font-size: 13px;
    font-weight: 750;
    letter-spacing: 0.04em;
    text-transform: uppercase;
  }

  .paper-title {
    color: #111827;
    font-size: 16px;
    font-weight: 750;
    line-height: 1.45;
    margin: 0 0 7px;
  }

  .authors,
  .venue,
  .paper-description {
    color: #475569;
    font-size: 13.5px;
    line-height: 1.55;
    margin: 0 0 7px;
  }

  .authors strong {
    color: var(--accent);
    font-weight: 750;
  }

  .venue strong {
    color: #1f2937;
  }

  .publication-links {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin-top: 10px;
  }

  @media (max-width: 760px) {
    .research-homepage {
      margin: -20px;
      padding: 20px 14px 34px;
    }

    .research-shell {
      display: block;
    }

    .side-nav {
      margin-bottom: 16px;
      overflow-x: auto;
      padding: 12px;
      position: static;
      white-space: nowrap;
    }

    .nav-kicker {
      margin-bottom: 8px;
    }

    .side-nav a {
      display: inline-block;
      margin-right: 4px;
    }

    .section-card {
      padding: 22px 18px;
    }

    .profile-grid {
      grid-template-columns: 1fr;
      justify-items: start;
    }

    .avatar-placeholder {
      grid-row: 1;
      width: 112px;
    }

    .profile-name {
      font-size: 31px;
    }

    .profile-name span {
      display: block;
      font-size: 19px;
      margin-top: 4px;
    }

    .news-list li {
      grid-template-columns: 1fr;
      gap: 3px;
    }

    .publication-item {
      grid-template-columns: 1fr;
    }
  }
</style>

<div class="research-homepage">
  <div class="research-shell">
    <nav class="side-nav" aria-label="Homepage sections">
      <div class="nav-kicker">Yanyan Yuan</div>
      <a href="#about">About</a>
      <a href="#news">News</a>
      <a href="#selected-works">Selected Works</a>
      <a href="#publications">Publications</a>
    </nav>

    <main class="homepage-main">
      <section class="section-card" id="about">
        <div class="profile-grid">
          <div>
            <h1 class="profile-name">Yanyan Yuan <span>(袁炎炎)</span></h1>
            <p class="profile-text">
              I am a PhD student at the School of Aeronautics and Astronautics, Zhejiang University. My research focuses on robotics, robotic arms, humanoid robots, reinforcement learning, and dynamic robot motion/control.
            </p>
            <p class="profile-text">
              I am interested in building robot systems that can learn, adapt, and perform high-dynamic tasks in real-world settings.
            </p>
            <div class="research-tags" aria-label="Research interests">
              <span>Robotics</span>
              <span>Robotic Arm</span>
              <span>Humanoid Robot</span>
              <span>Reinforcement Learning</span>
              <span>Dynamic Control</span>
            </div>
            <div class="link-row" aria-label="Profile links">
              <a href="mailto:yuanyan_hy@zju.edu.cn">Email</a>
              <a href="https://github.com/Stylite-Y">GitHub</a>
              <a href="https://www.zhihu.com/people/yuan-yan-yan-47">Zhihu</a>
            </div>
          </div>
          <div class="avatar-placeholder" aria-label="Initials avatar">YY</div>
        </div>
      </section>

      <section class="section-card" id="news">
        <h2>News</h2>
        <ul class="news-list">
          <li>
            <span class="news-date">2025-04</span>
            <span>Our paper on high-dynamic robotic arm design was published in <strong>IEEE Robotics and Automation Letters</strong>.</span>
          </li>
          <li>
            <span class="news-date">2024</span>
            <span>Released the project page for dynamic trajectory generation and imitation-relaxation reinforcement learning for sparse badminton strikes.</span>
          </li>
        </ul>
      </section>

      <section class="section-card" id="selected-works">
        <h2>Selected Works</h2>
        <div class="publication-list">
          <article class="publication-item">
            <a class="publication-media" href="DTG-IRRL-For-Badminton/" aria-label="Open badminton strikes project page">
              <img src="DTG-IRRL-For-Badminton/image/fig1.jpg" alt="Dynamic trajectory generation framework for badminton robot striking">
            </a>
            <div>
              <h3 class="paper-title">Imitation-Relaxation Reinforcement Learning for Sparse Badminton Strikes via Dynamic Trajectory Generation</h3>
              <p class="authors"><strong>Yanyan Yuan</strong>, Yucheng Tao, Shaowen Cheng, Yanhong Liang, Yongbin Jin, Hongtao Wang</p>
              <p class="venue">Submitted to <strong>Frontiers in Neurorobotics</strong></p>
              <p class="paper-description">A robot badminton striking framework that combines dynamic trajectory generation with imitation-relaxation reinforcement learning for sparse, high-dynamic striking tasks.</p>
              <div class="publication-links">
                <a href="DTG-IRRL-For-Badminton/">Project Page</a>
                <a href="https://github.com/Stylite-Y/DTG_IRRL_for_Badminton">Code</a>
                <a href="https://www.youtube.com/watch?v=gwa21ZNewJk">Video</a>
              </div>
            </div>
          </article>
        </div>
      </section>

      <section class="section-card" id="publications">
        <h2>Publications</h2>
        <div class="publication-list">
          <article class="publication-item">
            <a class="publication-media" href="DTG-IRRL-For-Badminton/" aria-label="Open badminton strikes project page">
              <img src="DTG-IRRL-For-Badminton/image/fig1.jpg" alt="Dynamic trajectory generation framework for badminton robot striking">
            </a>
            <div>
              <h3 class="paper-title">Imitation-Relaxation Reinforcement Learning for Sparse Badminton Strikes via Dynamic Trajectory Generation</h3>
              <p class="authors"><strong>Yanyan Yuan</strong>, Yucheng Tao, Shaowen Cheng, Yanhong Liang, Yongbin Jin, Hongtao Wang</p>
              <p class="venue">Submitted to <strong>Frontiers in Neurorobotics</strong></p>
              <div class="publication-links">
                <a href="DTG-IRRL-For-Badminton/">Project Page</a>
                <a href="https://github.com/Stylite-Y/DTG_IRRL_for_Badminton">Code</a>
              </div>
            </div>
          </article>

          <article class="publication-item">
            <div class="publication-media" aria-hidden="true">
              <span class="media-fallback">RA-L 2025</span>
            </div>
            <div>
              <h3 class="paper-title">Optimal Design of High-Dynamic Robotic Arm Based on Angular Momentum Maximum</h3>
              <p class="authors"><strong>Yanyan Yuan</strong>, Xianwei Liu, Lei Jiang, Yongbin Jin, Hongtao Wang</p>
              <p class="venue"><strong>IEEE Robotics and Automation Letters</strong>, Volume 10, Issue 4, April 2025</p>
            </div>
          </article>
        </div>
      </section>
    </main>
  </div>
</div>
```

- [ ] **Step 3: Run the homepage feature check and verify it passes**

Run the same Ruby command from Step 1.

Expected: PASS with no output and exit code 0.

- [ ] **Step 4: Commit the homepage replacement**

Run:

```bash
git add index.md
git commit -m "Redesign academic homepage"
```

Expected: Commit succeeds.

### Task 2: Verify Links, Assets, And Static Structure

**Files:**
- Inspect: `index.md`
- Inspect: `DTG-IRRL-For-Badminton/image/fig1.jpg`
- Inspect: `DTG-IRRL-For-Badminton/index.html`

- [ ] **Step 1: Run a static link and asset verification script**

Run:

```bash
python3 - <<'PY'
from pathlib import Path

content = Path('index.md').read_text()
internal_paths = [
  'DTG-IRRL-For-Badminton/',
  'DTG-IRRL-For-Badminton/image/fig1.jpg'
]
missing_files = [
    path for path in internal_paths
    if not Path(path).exists() and not Path(path, 'index.html').exists()
]
if missing_files:
    raise SystemExit('Missing internal paths: ' + ', '.join(missing_files))

import re
anchors = re.findall(r'id="([^"]+)"', content)
nav_targets = re.findall(r'href="#([^"]+)"', content)
missing_anchors = [target for target in nav_targets if target not in anchors]
if missing_anchors:
    raise SystemExit('Missing anchor targets: ' + ', '.join(missing_anchors))

if 'href="#honors"' in content:
    raise SystemExit('Expected no Honors navigation until content exists')
if re.search(r'<script', content, re.IGNORECASE):
    raise SystemExit('Expected no JavaScript dependency on homepage')
PY
```

Expected: PASS with no output and exit code 0.

- [ ] **Step 2: Check responsive CSS is present**

Run:

```bash
rg -n '@media \(max-width: 760px\)|grid-template-columns: 170px|minmax\(0, 1fr\)|position: sticky|white-space: nowrap' index.md
```

Expected: Output includes the desktop grid, sticky side nav, mobile media query, and horizontal mobile nav rules.

- [ ] **Step 3: Check git state after committed homepage**

Run:

```bash
git status --short
```

Expected: No uncommitted production files. Ignored `.superpowers/` files must not appear.

### Task 3: Serve Or Inspect The Page Locally

**Files:**
- Inspect: rendered homepage through a local server when possible.

- [ ] **Step 1: Try to serve with Jekyll**

Run:

```bash
command -v bundle >/dev/null && test -f Gemfile && bundle exec jekyll serve --host 127.0.0.1 --port 4000
```

Expected: If a Gemfile exists, Jekyll starts at `http://127.0.0.1:4000/`. If no Gemfile exists, this command exits without starting a server, and Step 2 should be used.

- [ ] **Step 2: If Jekyll cannot be served locally, use GitHub Pages compatibility inspection**

Run:

```bash
python3 - <<'PY'
from pathlib import Path

content = Path('index.md').read_text()
if not content.startswith('---\nlayout: default\ntitle: Yanyan Yuan\n---\n'):
    raise SystemExit('Missing Jekyll front matter')
if '<style>' not in content or '</style>' not in content:
    raise SystemExit('Homepage CSS missing')
if '<div class="research-homepage">' not in content:
    raise SystemExit('Homepage wrapper missing')
PY
```

Expected: PASS with no output and exit code 0.

- [ ] **Step 3: Final implementation commit if verification caused any changes**

Run only if files changed during verification:

```bash
git add index.md
git commit -m "Polish homepage verification issues"
```

Expected: Commit succeeds only if there were follow-up changes.

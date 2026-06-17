---
layout: default
title: Yanyan Yuan
---

<style>
  body {
    background: #f6f8fb;
    padding: 0;
  }

  body > .wrapper {
    margin: 0;
    max-width: none;
    width: auto;
  }

  body > .wrapper > header,
  body > .wrapper > footer {
    display: none;
  }

  body > .wrapper > section {
    border: 0;
    float: none;
    margin: 0;
    padding: 0;
    width: auto;
  }

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
    margin: 0;
    padding: 34px 22px 46px;
    min-height: 100vh;
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
  }

  .research-homepage section {
    border: 0;
    float: none;
    margin: 0;
    padding-bottom: 0;
    width: auto;
  }

  .research-shell {
    display: grid;
    grid-template-columns: 220px minmax(0, 1fr);
    gap: 24px;
    max-width: 1050px;
    margin: 0 auto;
  }

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

  .sidebar-profile {
    text-align: center;
  }

  .sidebar-avatar {
    aspect-ratio: 1;
    border: 4px solid #ffffff;
    border-radius: 50%;
    box-shadow: 0 10px 24px rgba(30, 64, 175, 0.14);
    display: block;
    margin: 0 auto 12px;
    object-fit: cover;
    width: 84px;
  }

  .sidebar-name {
    color: #111827;
    font-size: 17px;
    font-weight: 750;
    line-height: 1.25;
    margin-bottom: 12px;
  }

  .sidebar-links {
    display: grid;
    gap: 7px;
  }

  .sidebar-links a {
    align-items: center;
    background: #f8fafc;
    border: 1px solid #dbe4ef;
    border-radius: 6px;
    color: var(--accent);
    display: flex;
    font-size: 13px;
    font-weight: 650;
    gap: 8px;
    overflow-wrap: anywhere;
    padding: 8px 10px;
    text-decoration: none;
    text-align: left;
    width: 50%;
    margin: 0 auto;
  }

  .sidebar-links a:hover,
  .sidebar-links a:focus {
    background: #eff6ff;
    border-color: #bfdbfe;
    color: var(--accent-hover);
  }

  .sidebar-icon {
    align-items: center;
    background: #eff6ff;
    border: 1px solid #dbeafe;
    border-radius: 6px;
    color: var(--accent);
    display: inline-flex;
    flex: 0 0 24px;
    height: 24px;
    justify-content: center;
    width: 24px;
  }

  .sidebar-icon svg {
    display: block;
    height: 14px;
    width: 14px;
  }

  .sidebar-icon-zhihu {
    font-size: 12px;
    font-weight: 800;
    line-height: 1;
  }

  .link-row a {
    align-items: center;
    display: inline-flex;
    gap: 8px;
  }

  .link-icon {
    align-items: center;
    background: #eff6ff;
    border: 1px solid #dbeafe;
    border-radius: 6px;
    color: var(--accent);
    display: inline-flex;
    flex: 0 0 22px;
    height: 22px;
    justify-content: center;
    width: 22px;
  }

  .link-icon svg {
    display: block;
    height: 13px;
    width: 13px;
  }

  .link-icon-zhihu {
    font-size: 11px;
    font-weight: 800;
    line-height: 1;
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

  .profile-photo {
    aspect-ratio: 1;
    border: 5px solid #ffffff;
    border-radius: 50%;
    box-shadow: 0 14px 30px rgba(30, 64, 175, 0.16);
    display: block;
    object-fit: cover;
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
      margin: 0;
      padding: 20px 14px 34px;
    }

    .research-shell {
      display: block;
    }

    .sidebar-stack {
      margin-bottom: 16px;
      position: static;
    }

    .side-nav {
      overflow-x: auto;
      padding: 12px;
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

    .profile-photo {
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
    <aside class="sidebar-stack" aria-label="Profile and homepage navigation">
      <section class="sidebar-profile" aria-label="Basic information">
        <img class="sidebar-avatar" src="assets/images/profile/avatar.jpg" alt="Yanyan Yuan">
        <div class="sidebar-name">Yanyan Yuan</div>
        <div class="sidebar-links">
          <a href="mailto:yuanyanyan98@163.com">
            <span class="sidebar-icon sidebar-icon-email" aria-hidden="true">
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <rect x="3" y="5" width="18" height="14" rx="2"></rect>
                <path d="m3 7 9 6 9-6"></path>
              </svg>
            </span>
            <span>Email</span>
          </a>
          <a href="https://github.com/YanYuan98">
            <span class="sidebar-icon sidebar-icon-github" aria-hidden="true">
              <svg viewBox="0 0 24 24" fill="currentColor">
                <path d="M12 2a10 10 0 0 0-3.16 19.49c.5.09.68-.22.68-.48v-1.7c-2.78.61-3.37-1.18-3.37-1.18a2.65 2.65 0 0 0-1.11-1.46c-.91-.62.07-.61.07-.61a2.1 2.1 0 0 1 1.53 1.03 2.13 2.13 0 0 0 2.91.83 2.14 2.14 0 0 1 .64-1.34c-2.22-.25-4.56-1.11-4.56-4.95a3.87 3.87 0 0 1 1.03-2.69 3.6 3.6 0 0 1 .1-2.65s.84-.27 2.75 1.03a9.46 9.46 0 0 1 5 0c1.91-1.3 2.75-1.03 2.75-1.03.37.84.41 1.8.1 2.65a3.86 3.86 0 0 1 1.03 2.69c0 3.85-2.34 4.69-4.57 4.94a2.39 2.39 0 0 1 .68 1.85v2.75c0 .27.18.58.69.48A10 10 0 0 0 12 2Z"></path>
              </svg>
            </span>
            <span>GitHub</span>
          </a>
          <a href="https://www.zhihu.com/people/yuan-yan-yan-47">
            <span class="sidebar-icon sidebar-icon-zhihu" aria-hidden="true">知</span>
            <span>Zhihu</span>
          </a>
        </div>
      </section>

      <nav class="side-nav" aria-label="Homepage sections">
        <div class="nav-kicker">Contents</div>
        <a href="#about">About</a>
        <a href="#news">News</a>
        <a href="#projects">Projects</a>
        <a href="#Research">Research</a>
      </nav>
    </aside>

    <main class="homepage-main">
      <section class="section-card" id="about">
        <div class="profile-grid">
          <div>
            <h1 class="profile-name">Yanyan Yuan <span>(袁炎炎)</span></h1>
            <p class="profile-text">
              I am Yanyan Yuan. I received my Ph.D. degree in 2025 and B.Eng. degree in 2020 from the School of Aeronautics and Astronautics, Zhejiang University.
            </p>
            <p class="profile-text">
              My research focuses on humanoid robot motion control, general motion tracking, motion generation, behavior foundation models and humanoid-object Interaction. I aim to develop embodiment-aware control methods for robust, agile, and task-adaptive whole-body motion in real-world.
            </p>
            <p class="profile-text">
              I have also worked on the design and control of robotic manipulators and five-finger dexterous hands, with broader interests in connecting robot embodiment, motion generation, and real-world task execution.
            </p>
            <div class="research-tags" aria-label="Research interests">
              <span>Humanoid Robot</span>
              <span>Motion Tracking</span>
              <span>Humanoid-Object Interaction</span>
              <span>Behavior Foundation Model</span>
              <span>Robotic Arm</span>
              <span>dexterous robotic hand</span>
            </div>
            <div class="link-row" aria-label="Profile links">
              <a href="mailto:yuanyanyan98@163.com">
                <span class="link-icon link-icon-email" aria-hidden="true">
                  <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <rect x="3" y="5" width="18" height="14" rx="2"></rect>
                    <path d="m3 7 9 6 9-6"></path>
                  </svg>
                </span>
                <span>Email</span>
              </a>
              <a href="https://github.com/YanYuan98">
                <span class="link-icon link-icon-github" aria-hidden="true">
                  <svg viewBox="0 0 24 24" fill="currentColor">
                    <path d="M12 2a10 10 0 0 0-3.16 19.49c.5.09.68-.22.68-.48v-1.7c-2.78.61-3.37-1.18-3.37-1.18a2.65 2.65 0 0 0-1.11-1.46c-.91-.62.07-.61.07-.61a2.1 2.1 0 0 1 1.53 1.03 2.13 2.13 0 0 0 2.91.83 2.14 2.14 0 0 1 .64-1.34c-2.22-.25-4.56-1.11-4.56-4.95a3.87 3.87 0 0 1 1.03-2.69 3.6 3.6 0 0 1 .1-2.65s.84-.27 2.75 1.03a9.46 9.46 0 0 1 5 0c1.91-1.3 2.75-1.03 2.75-1.03.37.84.41 1.8.1 2.65a3.86 3.86 0 0 1 1.03 2.69c0 3.85-2.34 4.69-4.57 4.94a2.39 2.39 0 0 1 .68 1.85v2.75c0 .27.18.58.69.48A10 10 0 0 0 12 2Z"></path>
                  </svg>
                </span>
                <span>GitHub</span>
              </a>
              <a href="https://www.zhihu.com/people/yuan-yan-yan-47">
                <span class="link-icon link-icon-zhihu" aria-hidden="true">知</span>
                <span>Zhihu</span>
              </a>
            </div>
          </div>
          <img class="profile-photo" src="assets/images/profile/avatar.jpg" alt="Yanyan Yuan">
        </div>
      </section>

      <section class="section-card" id="news">
        <h2>News</h2>
        <ul class="news-list">
          <li>
            <span class="news-date">2026-06</span>
            <span>Released a demonstration of a soccer-ball juggling task on the Bolt humanoid robot, showcasing dynamic whole-body coordination and balance control.</span>
          </li>
        </ul>
      </section>

      <section class="section-card" id="projects">
        <h2>Projects</h2>
        <div class="publication-list">
          <article class="publication-item">
            <a class="publication-media" href="DTG-IRRL-For-Badminton/" aria-label="Open badminton strikes project page">
              <img src="assets/images/works/juggle.jpg" alt="Dynamic trajectory generation framework for badminton robot striking">
            </a>
            <div>
              <h3 class="paper-title">Humanoid Robot Bolt Juggle Soccer Ball</h3>
              <p class="authors"><strong>Yanyan Yuan</strong>, Mirrorme Technology Co., Ltd.</p>
              <div class="publication-links">
                <a href="https://www.zhihu.com/pin/2048524691153876702">Project Page</a>
              </div>
            </div>
          </article>
        </div>
      </section>

      <section class="section-card" id="Research">
        <h2>Research</h2>
        <div class="publication-list">
          <article class="publication-item">
            <a class="publication-media" href="DTG-IRRL-For-Badminton/" aria-label="Open badminton strikes project page">
              <img src="assets/images/works/DTG.png" alt="Dynamic trajectory generation framework for badminton robot striking">
            </a>
            <div>
              <h3 class="paper-title">Imitation-Relaxation Reinforcement Learning for Sparse Badminton Strikes via Dynamic Trajectory Generation</h3>
              <p class="authors"><strong>Yanyan Yuan</strong>, Yucheng Tao, Shaowen Cheng, Yanhong Liang, Yongbin Jin, Hongtao Wang</p>
              <p class="venue"><strong>Front. Neurorobot.</strong>,
              Volume 19, 02 September 2025
              </p>
              <div class="publication-links">
                <a href="DTG-IRRL-For-Badminton/">Project Page</a>
                <a href="https://github.com/Stylite-Y/DTG_IRRL_for_Badminton">Code</a>
              </div>
            </div>
          </article>

          <article class="publication-item">
            <div class="publication-media">
              <img src="assets/images/works/Ral.png" alt="High-dynamic robotic arm design">
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

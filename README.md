YanYuan personal site

## 主页维护说明

个人主页主体内容在 `index.md` 中修改，包括：

- 左侧 `Profile` block：姓名、Email、GitHub、Zhihu 和个人头像。
- 左侧 `Contents` block：About、News、Selected Works、Publications 目录链接。
- `About`：姓名、简介、研究方向、邮箱/GitHub/Zhihu 链接和个人头像。
- `News`：主页新闻列表。
- `Projects`：项目展示，目前使用 `assets/images/works/juggle.jpg` 作为 project 缩略图。
- `Research`：研究展示，目前使用 `assets/images/works/DTG.png` 和 `assets/images/works/Ral.png` 作为缩略图。
- `Publications`：论文列表、作者、期刊/会议状态和项目链接。
- 页面样式：同样写在 `index.md` 顶部的 `<style>` 中，包括左侧导航、卡片布局、移动端适配等。

其他相关文件：

- `_config.yml`：GitHub Pages/Jekyll 站点标题、描述、作者信息和社交链接配置。
- `assets/images/profile/avatar.jpg`：个人头像图片。
- `assets/images/works/`：首页或跨页面使用的工作图片素材。
- `assets/videos/works/`：首页或跨页面使用的工作视频素材。
- `DTG-IRRL-For-Badminton/index.html`：羽毛球机器人项目页。
- `DTG-IRRL-For-Badminton/image/`：项目图片素材。
- `DTG-IRRL-For-Badminton/videos/`：项目视频素材。

## 访问地址

- 线上主页：`https://yanyuan98.github.io/`
- 线上项目页：`https://yanyuan98.github.io/DTG-IRRL-For-Badminton/`
- 当前本地预览：`http://127.0.0.1:4173/`

GitHub Pages 会自动渲染 `index.md`。如果本地预览服务没有运行，并且本机没有 Jekyll/GitHub Pages 环境，可以在仓库根目录执行下面的临时预览命令：

```bash
python3 - <<'PY'
from pathlib import Path
import re

root = Path('/tmp/yanyan-homepage-preview')
root.mkdir(exist_ok=True)
content = Path('index.md').read_text()
body = re.sub(r'^---\n.*?\n---\n', '', content, flags=re.S)
html = f'''<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Yanyan Yuan Preview</title>
<style>
  body {{ margin: 0; background: #f6f8fb; }}
  .wrapper {{ max-width: none; margin: 0; padding: 0; }}
</style>
</head>
<body>
<div class="wrapper">
{body}
</div>
</body>
</html>
'''
(root / 'index.html').write_text(html)
PY

python3 -m http.server 4173 --directory /tmp/yanyan-homepage-preview
```

然后访问 `http://127.0.0.1:4173/`。

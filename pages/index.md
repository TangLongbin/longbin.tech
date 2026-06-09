---
layout: page
home-title: Longbin's Tech-Blog
description: 👏欢迎来到我的个人技术博客
permalink: /index.html
langs: ["zh-Hans", "en"]
lang: "zh-Hans"
---
# 个人介绍

{% assign cv = site.data.cv | where: "lang", "zh" | first %}

## 关于我

{{ cv.homepage.intro }}

{{ cv.homepage.focus }}

## 教育与经历

<ul>
{% for experience in cv.homepage.experiences %}
  <li><b>{{ experience.title }} · {% if experience.organization_url %}<a href="{{ experience.organization_url }}" target="_blank">{{ experience.organization }}</a>{% else %}{{ experience.organization }}{% endif %}</b>：{{ experience.summary }}</li>
{% endfor %}
</ul>

## 代表成果

- **学术研究**：{{ cv.homepage.research_highlight }}
- **发明专利**：{{ cv.homepage.patent_highlight }}
- **团队与竞赛**：{{ cv.homepage.competition_highlight }}
- **个人奖项**：{{ cv.homepage.award_highlight }}

## 论文与专利

### 论文

<ul>
{% for publication in cv.publications %}
  <li><b><a href="{{ publication.url }}" target="_blank">{{ publication.title }}</a></b>，{% if publication.status == "submitted" %}投稿 {% endif %}{{ publication.venue }} {{ publication.year }}</li>
{% endfor %}
</ul>

### 发明专利

<ul>
{% for patent in cv.patents %}
  <li><b>{{ patent.title }}</b>，发明专利申请{% if patent.publication_no %}，已公开（公开号 {{ patent.publication_no }}）{% endif %}</li>
{% endfor %}
</ul>

## 开源项目

<ul>
{% for project in cv.open_source %}
  {% assign dynamic_stars = site.data.github_stars[project.name] | default: project.stars %}
  <li><b><a href="{{ project.url }}" target="_blank">{{ project.name }}</a>{% if dynamic_stars %}（{{ dynamic_stars }}）{% endif %}</b>：{{ project.desc }}，{{ project.role }}。</li>
{% endfor %}
</ul>

## 联系我

- [Email：{{ cv.email }}](mailto:{{ cv.email }})
- [GitHub](https://github.com/{{ cv.github }})
- [Google Scholar]({{ cv.google_scholar }})
- [LinkedIn](https://www.linkedin.com/in/{{ cv.linkedin }})
- [个人简历](/cv)

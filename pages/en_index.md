---
layout: page
home-title: Longbin's Tech-Blog
description: 👏Welcome to my personal blog!
permalink: /en/index.html
langs: ["zh-Hans", "en"]
lang: "en"
---
# Introduction

{% assign cv = site.data.cv | where: "lang", "en" | first %}

## About me

{{ cv.homepage.intro }}

{{ cv.homepage.focus }}

## Education and Experience

<ul>
{% for experience in cv.homepage.experiences %}
  <li><b>{{ experience.title }} · {% if experience.organization_url %}<a href="{{ experience.organization_url }}" target="_blank">{{ experience.organization }}</a>{% else %}{{ experience.organization }}{% endif %}</b>: {{ experience.summary }}</li>
{% endfor %}
</ul>

## Highlights

- **Research**: {{ cv.homepage.research_highlight }}
- **Patents**: {{ cv.homepage.patent_highlight }}
- **Leadership and Competitions**: {{ cv.homepage.competition_highlight }}
- **Awards**: {{ cv.homepage.award_highlight }}

## Publications and Patents

### Publications

<ul>
{% for publication in cv.publications %}
  <li><b><a href="{{ publication.url }}" target="_blank">{{ publication.title }}</a></b>, {% if publication.status == "submitted" %}submitted to {% endif %}{{ publication.venue }} {{ publication.year }}</li>
{% endfor %}
</ul>

### Invention Patents

<ul>
{% for patent in cv.patents %}
  <li><b>{{ patent.title }}</b>, invention patent application{% if patent.publication_no %}, published as {{ patent.publication_no }}{% endif %}</li>
{% endfor %}
</ul>

## Open Source

<ul>
{% for project in cv.open_source %}
  {% assign dynamic_stars = site.data.github_stars[project.name] | default: project.stars %}
  <li><b><a href="{{ project.url }}" target="_blank">{{ project.name }}</a>{% if dynamic_stars %} ({{ dynamic_stars }}){% endif %}</b>: {{ project.desc }}; {{ project.role }}.</li>
{% endfor %}
</ul>

## Contact

- [Email: {{ cv.email }}](mailto:{{ cv.email }})
- [GitHub](https://github.com/{{ cv.github }})
- [Google Scholar]({{ cv.google_scholar }})
- [LinkedIn](https://www.linkedin.com/in/{{ cv.linkedin }})
- [Curriculum Vitae](/cv)

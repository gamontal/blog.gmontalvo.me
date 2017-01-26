---
layout: default
---

## Post Archive

<br>

| Title | Date |
|:------|:-----|{% for post in site.posts %}
|<a class="archive-post" href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> | {{ post.date | date: "%-d %B %Y" }} |{% endfor %}
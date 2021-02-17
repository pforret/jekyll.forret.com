---
title: Portfolio
layout: page
---

{% assign pages_list = site.pages %}
{% for page in pages_list %}
{% if page.title != null %}
{% if page.layout == "page" %}
{% if page.type == "portfolio" %}

## [{{ page.title }}]({{ page.url }})

{% if page.image %}
[![{{ page.title }}]({{page.image}})]({{ page.url }})
{% endif %}
<hr>

{% endif %}
{% endif %}
{% endif %}
{% endfor %}

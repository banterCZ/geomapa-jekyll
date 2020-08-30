---
layout: default
title: Geologická období
navigation_weight: 11
---

<div class="home">
  {%- if page.title -%}
    <h1 class="page-heading">{{ page.title }}</h1>
  {%- endif -%}

  {%- if site.geologicka-obdobi.size > 0 -%}
    <ul class="post-list">
      {% assign sorted_pages = site.geologicka-obdobi | sort:"order" %}
      {%- for post in sorted_pages -%}
      <li>
        <h2>
          <a class="post-link" href="{{ post.url | relative_url }}">
            {{ post.title | escape }}
          </a>
        </h2>
        {{ post.description }}
      </li>
      {%- endfor -%}
    </ul>

  {%- endif -%}

</div>
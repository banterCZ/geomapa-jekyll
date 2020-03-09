---
layout: default
title: Horniny
---

<div class="home">
  {%- if page.title -%}
    <h1 class="page-heading">{{ page.title }}</h1>
  {%- endif -%}

  {%- if site.horniny.size > 0 -%}
    <ul class="post-list">
      {% assign sorted_pages = site.horniny | sort:"order" %}
      {%- for post in sorted_pages -%}
      <li>
        <h2>
          <a class="post-link" href="{{ post.url | relative_url }}">
            {{ post.order }} - {{ post.title | escape }}
          </a>
        </h2>
        <img src="{{ site.url }}/static/images/{{ post.order }}.JPG?nf_resize=fit&w=200">
        {%- if site.show_excerpts -%}
          {{ post.excerpt }}
        {%- endif -%}
      </li>
      {%- endfor -%}
    </ul>

  {%- endif -%}

</div>
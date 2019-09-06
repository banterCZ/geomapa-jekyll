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
      {%- for post in site.horniny -%}
      <li>
        <h2>
          <a class="post-link" href="{{ post.url | relative_url }}">
            {{ post.id | remove: "/horniny/" }} - {{ post.title | escape }}
          </a>
        </h2>
        {%- if site.show_excerpts -%}
          {{ post.excerpt }}
        {%- endif -%}
      </li>
      {%- endfor -%}
    </ul>

  {%- endif -%}

</div>
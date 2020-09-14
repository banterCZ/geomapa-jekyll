---
layout: default
title: Horniny
navigation_weight: 10
---

<div class="home">
  {%- if page.title -%}
    <h1 class="page-heading">{{ page.title }}</h1>
  {%- endif -%}

  {%- if site.horniny.size > 0 -%}
    <ul class="post-list masonry-grid">
      {% assign sorted_pages = site.horniny | sort:"order" %}
      {%- for post in sorted_pages -%}
      <li class="grid-item">
          <a class="post-link" href="{{ post.url | relative_url }}">
              <span>{{ post.order }} - {{ post.title | escape }}</span>
              <img src="{{ site.url }}/static/images/{{ post.order }}.JPG?nf_resize=fit&w=360">
           </a>
      </li>
      {%- endfor -%}
    </ul>

  {%- endif -%}

</div>

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
<script type="text/javascript">
  
// init Masonry
var $grid = $('.masonry-grid').masonry({
    itemSelector: '.grid-item',
    columnWidth: 360
});
// layout Masonry after each image loads
$grid.imagesLoaded().progress( function() {
  $grid.masonry('layout');
});
</script>
---
layout: default
title: Home
---

<h3>Recent notes</h3>

<ul class="posts-list">
  {% for post in site.posts limit:15 %}
    <li>
      <time datetime="{{ post.date | date_to_xmlschema }}">
        {{ post.date | date: "%d %b %Y" }}
      </time>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

<p>
  <a href="{{ '/posts' | relative_url }}">&gt;&gt; see all posts</a>
</p>
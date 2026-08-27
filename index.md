---
layout: default
title: Home
---

<div class="home">
  <h1>Artigos Recentes</h1>

  <ul class="post-list" style="list-style: none; padding: 0;">
    {% for post in site.posts %}
      <li style="margin-bottom: 25px;">
        <span class="post-meta" style="color: #6a737d; font-size: 0.9em;">
          {{ post.date | date: "%d/%m/%Y" }}
        </span>
        
        <h2 style="margin: 5px 0;">
          <a class="post-link" href="{{ post.url | relative_url }}" style="text-decoration: none; color: #0366d6;">
            {{ post.title }}
          </a>
        </h2>
        
        <div class="post-excerpt" style="color: #444; line-height: 1.5;">
          {{ post.excerpt | strip_html | truncatewords: 35 }}
        </div>
      </li>
    {% endfor %}
  </ul>
</div>
---
layout: default
title: A cabeça da Mákina
---

<header style="margin-bottom: 2rem;">
  <h1 style="color: #0366d6; font-size: 2.2rem; margin-bottom: 0.5rem;">A cabeça da Mákina</h1>
  <hr style="border: 0; border-top: 1px solid #e1e4e8; margin: 1.5rem 0;">
</header>

<main class="post-feed">
  <h2 style="font-size: 1.4rem; color: #24292e; margin-bottom: 1.5rem;">Recent notes</h2>

  <div class="posts-list" style="display: flex; flex-direction: column; gap: 2rem;">
    {% for post in site.posts %}
      <article class="post-item" style="border-bottom: 1px solid #eaecef; padding-bottom: 1.5rem;">
        <span class="post-date" style="color: #6a737d; font-size: 0.9rem;">
          {{ post.date | date: "%d %b %Y" }}
        </span>
        
        <h3 style="margin: 0.3rem 0 0.6rem 0; font-size: 1.3rem;">
          <a href="{{ post.url | relative_url }}" style="color: #0366d6; text-decoration: none;">
            {{ post.title }}
          </a>
        </h3>

        <div class="post-excerpt" style="color: #444d56; line-height: 1.6; font-size: 1rem;">
          {{ post.excerpt | strip_html | truncatewords: 30 }}
        </div>

        <div style="margin-top: 0.6rem;">
          <a href="{{ post.url | relative_url }}" style="color: #0366d6; font-weight: 500; text-decoration: none; font-size: 0.95rem;">
            Continue lendo &rarr;
          </a>
        </div>
      </article>
    {% endfor %}
  </div>
</main>
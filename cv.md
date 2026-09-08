---
layout: default
title: Bio
---

<!-- Seção Perfil (Foto + Frase + Tags Dinâmicas) -->
<section class="profile-section">
  <div class="profile-header">
    <img src="{{ 'https://avatars.githubusercontent.com/u/244601701?v=4' | relative_url }}" alt="{{ site.author }}" class="avatar" onerror="this.style.display='none'">
    <div class="profile-info">
      <p class="site-bio">I read the air and write bits of my understanding.</p>
      <!-- Novo Menu -->
      <nav class="menu-perfil">
        <a href="{{ site.baseurl }}/cv">Bio</a>
        <a href="{{ site.baseurl }}/midia-e-publicacoes/">Publicações</a>
        <a href="http://youtube.com/makinadeideias" target="_blank" rel="noopener noreferrer">YouTube</a>
      </nav>
      <!-- Tags geradas a partir dos posts -->
      <div class="topic-tags">
        {% assign all_tags = site.tags | sort %}
        {% for tag in all_tags %}
          <a class="tag" href="{{ '/tags#' | append: tag[0] | relative_url }}">#{{ tag[0] }}</a>
        {% endfor %}
      </div>
    </div>
  </div>
</section>
<hr class="sep-light">



Sergio Spagnuolo is a Brazilian journalist, media consultant, entrepreneur and 2025-26 JSK Latin American Fellow at Stanford University, where he created the Journalism Relay Project, a knowledge-transfer initiative to help journalists reduce structural dependence on Big Tech. As director and co-founder of Nucleo Jornalismo, he leads an award-winning news organization that investigates how digital technology and artificial intelligence shape society.
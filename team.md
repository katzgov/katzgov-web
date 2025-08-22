---
title: Our Team
---

The professionals at Katz Government Affairs offer clients a unique combination of a deep understanding of New Jersey government, a detailed knowledge of the state's political environment, an ability to quickly comprehend complicated business and professional issues and a dedication to hand-tailored client service.

Katz Government Affairs' professionals and our approach has earned the firm recognition – several times, most recently this year – as the best lobbying firm in an annual NJBIZ Reader Ranking survey. Katz Government Affairs also appears consistently in that magazine's list of top lobbying firms as ranked by revenue. InsiderNJ, a well-respected political website, ranked Katz Government Affairs among the top 10 lobbying firms in its inaugural Top 100 Lobbyists list – published in the fall of 2024.

{% include team-bio-styles.html %}

<div class="team-grid">
{% for member in site.data.team %}
  {% include team-member.html 
     id=member.id 
     name=member.name 
     title=member.title 
     image=member.image 
     initials=member.initials 
     summary=member.summary 
     bio=member.bio %}
{% endfor %}
</div>

{% include team-bio-scripts.html %}
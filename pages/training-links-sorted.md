---
layout: page
show_meta: false
title: "Existing Research Software Engineering Training Material"
subheadline: "Collecting RSE training towards the goal of a unified curriculum"
teaser:
header:
permalink: "/training-links-sorted/"
tags: {python, packaging, performance, licensing, CI, git}
---

Below is an ongoing collection of RSE training material, workshops, and resources.
We are compiling this list as a starting point for future activities.
For now, these are all provided "as is" to the community.
They haven't been reviewed for content or accuracy.
They are presented in no particular order.

We eagerly welcome additions to this list.
Links to slides, videos, notebooks etc that fall loosely under the _Research Software Engineering_ umbrella are all encouraged.
See [below](#contribute) for instructions on how to add to this list

{% for tag in page.tags %}
  <h3> {{ tag }} </h3>
  <ol>{% for entry in site.data.training %}
       {% for entry_tag in entry.tags %}
          {% if entry_tag == tag %}
            <li> {{ entry.name }}</li>
          {% endif %}  
       {% endfor %}   
  {% endfor %}</ol>
{% endfor %}


## Links to RSE Training Material
<ol>{% for entry in site.data.training %}
   <li><a href="{{ entry.url }}" target="_blank">{{ entry.name }}</a>.
       {% if entry.author %}
         {% if entry.author_url %}
            <a href="{{ entry.author_url }}" target="_blank">{{ entry.author }}</a>,
         {% else %}
            {{ entry.author }},
         {% endif %}
       {% endif %}
       {% if entry.location %}
         {% if entry.location_url %}
            <a href="{{ entry.location_url }}" target="_blank">{{ entry.location }}</a>,
         {% else %}
           {{ entry.location }},
         {% endif %}
       {% endif %}
       {% if entry.date %}
         {{ entry.date }}
       {% endif %}
       {% if entry.description %}
         <br> {{ entry.description }}
       {% endif %}
   </li>
{% endfor %}</ol>


<br>

<a name="contribute"></a>
### Have an RSE-related link to add?  
Links can be added by filling out this [form](https://docs.google.com/forms/d/e/1FAIpQLSej2ZXTNnxy9PsdfZLdFFYJ-YzhcTInV0NHeUakg5TEngwz5g/viewform?usp=sf_link) or directly by submitting a pull request to the website's [GitHub repository](https://github.com/INTERSECT-training/intersect-training.github.io).

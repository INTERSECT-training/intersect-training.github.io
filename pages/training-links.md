---
layout: page
show_meta: false
title: "Existing Research Software Engineering Training Material"
subheadline: "Collecting RSE training towards the goal of a unified curriculum"
teaser:
header:
permalink: "/training-links/"
tags: {CI, Collaboration, Git, Licensing, Packaging, Performance, Reproducibility,Software Engineering, Python in Research, Documentation, Design, Refactoring, Testing}
---

Below is an ongoing collection of RSE training material, workshops, and resources.
We are compiling this list as a starting point for future activities.
For now, these are all provided "as is" to the community.
They haven't been reviewed for content or accuracy.
They are presented in no particular order.

We eagerly welcome additions to this list.
Links to slides, videos, notebooks etc that fall loosely under the _Research Software Engineering_ umbrella are all encouraged.

We are especially seeking material that goes beyond basic research computing competency (e.g. what [The Carpentries](https://carpentries.org/) does so well) and is general enough to span multiple domains.
Specific tools and technologies used only in one domain, or applicable to only one subset of computing (i.e. HPC) are typically too narrowly focused.
When in doubt, submit it to be included or reach out and we'd be happy to discuss.


See [below](#contribute) for instructions on how to add to this list.

## Links to RSE Training Material by Topic
*Note some items may be listed more than once due to overlapping topics

<!--
  Uses section headers from the page tags (see above header "tags" field)
  For each category tag, loop through entries in _data/training.yml
  If entry has a tag == category, then include it's information

  Note tags must match identically (including case)

  For the case of no matches see loop below for "Other" category
  -->

{% for tag in page.tags %}
  <h3> {{ tag }} </h3>
  <ol>{% for entry in site.data.training %}
       {% for entry_tag in entry.tags %}
          {% if entry_tag == tag %}
            <li> <a href="{{ entry.url }}" target="_blank">{{ entry.name }}</a>.
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
                  <br> {{ entry.description | markdownify | remove: '<p>' | remove: '</p>' }}
                {% endif %}</li>
          {% endif %}  
       {% endfor %}   <!-- end training entry tag loop -->
  {% endfor %}</ol> <!-- end of site.data.training loop -->
{% endfor %} <!-- end of page.tags loop -->



<!--
  Loop to check if training entry has no matching tag with page.tags categories.
  If no matches, then put entry in "Other" category at bottom of webpage.
  -->

{% assign other_list = false %}
<h3> Other </h3>

<ol>{% for entry in site.data.training %}

    <!-- check to see if entry has been included in previous list already
    other_list == false if no entry.tags match page.tags  -->
     {% for entry_tag in entry.tags %}
        {% for tag in page.tags %}
          {% if entry_tag == tag %}
             {% assign other_list = true %}
          {% endif %}
        {% endfor %}
      {% endfor %}

      <!-- write out entry info -->
     {% if other_list == false %}
        <li> <a href="{{ entry.url }}" target="_blank">{{ entry.name }}</a>.
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
              <br> {{ entry.description | markdownify | remove: '<p>' | remove: '</p>' }}
            {% endif %}</li>
     {% endif %}

    {% assign other_list = false %}

   {% endfor %}</ol> <!-- end site.data.training loop -->

<br>

<a name="contribute"></a>
### Have an RSE-related link to add?  
Links can be added by filling out this [form](https://docs.google.com/forms/d/e/1FAIpQLSej2ZXTNnxy9PsdfZLdFFYJ-YzhcTInV0NHeUakg5TEngwz5g/viewform?usp=sf_link) or directly by submitting a pull request to the website's [GitHub repository](https://github.com/INTERSECT-training/intersect-training.github.io).

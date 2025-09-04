<div id="header">

# Build documentation

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

This action builds documentation of your Hop files or project.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="ulist">

  - The target folder in which you want your project documentation to end up in.

  - Include notes?

  - Include parameters?

</div>

</div>

</div>

<div class="sect1">

## Generating HTML

<div class="sectionbody">

<div class="paragraph">

The links from the index are currently set to the .md.html files. I ran the following command in the target folder to generate the HTML files:

</div>

<div class="listingblock">

<div class="content">

``` highlight
for i in $(find . -name '*.md') ; do echo "$i" && pandoc -s $i -c assets/styles.css -o $i.html ; done
```

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:07 +0200

</div>

</div>

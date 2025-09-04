<div id="header">

# XSD validator

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `XSD validator` validates an XML files against an internal (defined in the XML file) or external (defined in a separate xsd file) XML schema.

</div>

<div class="paragraph">

XSD is short for [XML Schema](http://en.wikipedia.org/wiki/XML_Schema_\(W3C\)) Definition.

</div>

<div class="paragraph">

As such, there are 2 entities at work here:

</div>

<div class="ulist">

  - The XML you want to validate the layout for

  - The XSD (Schema) file that describes what the XML file should look like.

</div>

<div class="paragraph">

See also the [XSD Validator pipeline transform](pipeline/transforms/xsdvalidator.8WU2Br8IiC).

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Action name</p></td>
<td><p>The name of the workflow action.</p></td>
</tr>
<tr class="even">
<td><p>Enable external entity for XSD validation</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>XSD Source</p></td>
<td><div class="content">
<div class="paragraph">
<p>The options are</p>
</div>
<div class="ulist">
<ul>
<li><p>none (default)</p></li>
<li><p>is a file, let me specify filename</p></li>
<li><p>is defined inside XML</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>XML File name</p></td>
<td><p>The name of the XML file</p></td>
</tr>
<tr class="odd">
<td><p>XSD File name</p></td>
<td><p>The name of the XSD file</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:36 +0200

</div>

</div>

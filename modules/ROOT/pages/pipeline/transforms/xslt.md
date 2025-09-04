<div id="header">

# <span class="image image-doc-icon">![XSL Transformation transform Icon](../assets/images/transforms/icons/XSLT.svg)</span> XSL Transformation

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 75%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="content">
<div class="sect1">
<h2 id="_description">Description</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The XSL Transformation transform performs XSL Transformations on XML.</p>
</div>
<div class="paragraph">
<p>XSLT is short for <a href="http://en.wikipedia.org/wiki/XSLT">Extensible Stylesheet Language Transformations</a>.</p>
</div>
</div>
</div>
</div></td>
<td><div class="content">
<div class="sect1">
<h2 id="_supported_engines">Supported Engines</h2>
<div class="sectionbody">
<table>
<tbody>
<tr class="odd">
<td><p>Hop Engine</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Spark</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
</tbody>
</table>
</div>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Transform name</p></td>
<td><p>Name of the transform.</p></td>
</tr>
<tr class="even">
<td><p>XML fieldname</p></td>
<td><p>The name of the field that will contain the XML</p></td>
</tr>
<tr class="odd">
<td><p>Result fields : fieldname</p></td>
<td><p>The name of the output fieldname that will contain the XML after the transformations</p></td>
</tr>
<tr class="even">
<td><p>XSL file</p></td>
<td><div class="content">
<div class="ulist">
<ul>
<li><p>XSL filename defined in a field?:<br />
Use this option if your XSLT is defined in a field. If enabled, you can specify the filename field below.</p></li>
<li><p>XSL filename :<br />
You can specify the XSLT filename here.</p></li>
<li><p>XSLT Factory :<br />
Specify the factory to use for the transformations: JAXP or SAXON</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:28 +0200

</div>

</div>

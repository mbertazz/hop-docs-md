<div id="header">

# <span class="image image-doc-icon">![Splunk input transform Icon](../assets/images/transforms/icons/splunk.svg)</span> Splunk input

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
<p>The Splunk Input transform runs a Splunk search query and returns the result as a set of Hop fields</p>
</div>
<div class="paragraph">
<p>Check the <a href="metadata-types/splunk-connection.QLIpwOFnTt">Splunk Connection docs</a> for more information about creating a Splunk connection.</p>
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
<td><p>Splunk Connection</p></td>
<td><p>The Splunk connection to use</p></td>
</tr>
<tr class="odd">
<td><p>Query</p></td>
<td><p>The Splunk search query to run</p></td>
</tr>
<tr class="even">
<td><p>Returns</p></td>
<td><div class="content">
<div class="paragraph">
<p>The list of fields returned by the Splunk query:</p>
</div>
<div class="ulist">
<ul>
<li><p>Field name: the field name to store as an output field for this transform</p></li>
<li><p>Splunk name: the field name (key) returned by the Splunk search</p></li>
<li><p>Return type: search result field data type</p></li>
<li><p>Length: length of the result field</p></li>
<li><p>Format: format for the result field</p></li>
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

Last updated 2025-09-04 18:23:11 +0200

</div>

</div>

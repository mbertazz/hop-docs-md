<div id="header">

# <span class="image image-doc-icon">![Beam BigTable Output Icon](../assets/images/transforms/icons/beam-gcp-bigtable-output.svg)</span> Beam Bigtable Output

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
<p>The Beam Bigtable Output transform can be used to write data to a <a href="https://cloud.google.com/bigtable">Google Cloud Bigtable</a> table using the Beam execution engine.</p>
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
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Spark</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
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
<td><p>Name of the transform, this name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Project ID</p></td>
<td><p>The Google Cloud project.</p></td>
</tr>
<tr class="odd">
<td><p>Instance ID</p></td>
<td><p>The Bigtable instance ID.</p></td>
</tr>
<tr class="even">
<td><p>Table ID</p></td>
<td><p>The Bigtable ID.</p></td>
</tr>
<tr class="odd">
<td><p>Key field</p></td>
<td><p>the field to use as the Bigtable table row key</p></td>
</tr>
<tr class="even">
<td><p>Columns to set:</p></td>
<td><div class="content">
<div class="paragraph">
<p>a list of the columns to write to the Bigtable table:</p>
</div>
<div class="ulist">
<ul>
<li><p>name: the name (qualifier) for this column</p></li>
<li><p>family: the family name for this column</p></li>
<li><p>source field: the pipeline field to use for the column’s values</p></li>
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

Last updated 2025-09-04 18:21:46 +0200

</div>

</div>

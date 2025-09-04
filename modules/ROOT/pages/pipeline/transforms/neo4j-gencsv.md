<div id="header">

# <span class="image image-doc-icon">![Neo4j Generate CSVs transform Icon](../assets/images/transforms/icons/neo4j_load.svg)</span> Neo4j Generate CSVs

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
<p>The Neo4j Generate CSV transform writes files for nodes and relationships to the import folder for use with Neo4j’s neo4j-import tool.</p>
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
<thead>
<tr class="header">
<th>Option</th>
<th>Default</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Transform name</p></td>
<td><p>Neo4j Generate CSVs</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Graph field</p></td>
<td><p>-</p></td>
<td><p>The field in this pipeline that contains the graph data (Graph data type)</p></td>
</tr>
<tr class="odd">
<td><p>Base folder (below <code>import/</code> folder)</p></td>
<td><p><code>/var/lib/neo4j</code></p></td>
<td><p>the folder to write the nodes and relationships types to</p></td>
</tr>
<tr class="even">
<td><p>CSV files prefix</p></td>
<td><p>prefix</p></td>
<td><p>prefix to apply to the generated CSV files</p></td>
</tr>
<tr class="odd">
<td><p>Node/Relationships Uniqueness strategy</p></td>
<td><p>None</p></td>
<td><p>* None: don’t handle uniqueness while generating CSVs * First: if duplicates are found, keep the first occurrence * Last: if duplicates are found, keep the last occurrence</p>
<p>Please note that primary key of all nodes written to a CSV file needs to be unique. The uniqueness strategy used in this transform is simple in nature and loads everything in memory. Because of this you can consider using a Sort transform to force uniqueness beforehand.</p></td>
</tr>
<tr class="even">
<td><p>Filename field</p></td>
<td><p>filename</p></td>
<td><p>field that contains the filename for the CSV files to be generated</p></td>
</tr>
<tr class="odd">
<td><p>File type field</p></td>
<td><p>fileType</p></td>
<td><p>field that contains the file type for the CSV files to be generated</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:42 +0200

</div>

</div>

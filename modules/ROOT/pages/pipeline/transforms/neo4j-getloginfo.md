<div id="header">

# <span class="image image-doc-icon">![Neo4j Get Logging Info transform Icon](../assets/images/transforms/icons/systeminfo.svg)</span> Neo4j Get Logging Info

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
<p>The Neo4j Get Logging Info transform queries the Neo4j logging graph and retrieves logging information.</p>
</div>
<div class="paragraph">
<p>This transform uses the <code>NEO4J_LOGGING_CONNECTION</code>. Check the <a href="hop-gui/perspective-neo4j.sEn6V3z6V4">Neo4j perspective</a> for more details.</p>
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

| Option               | Description                                    |
| -------------------- | ---------------------------------------------- |
| Transform name       | the name for this transform in your pipeline   |
| startOfPipelineDelta | Start of the date range for the given pipeline |
| endOfPipelineDelta   | End of the data range for the given pipeline   |
| startOfWorkflowDelta | Start of the date range for the given workflow |
| endOfWorkflowDelta   | End of the date range for the given workflow   |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:43 +0200

</div>

</div>

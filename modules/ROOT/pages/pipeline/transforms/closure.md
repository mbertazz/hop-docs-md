<div id="header">

# <span class="image image-doc-icon">![Closure transform Icon](../assets/images/transforms/icons/closuregenerator.svg)</span> Closure

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
<p>The Closure transform allows you to generate a Reflexive Transitive Closure Table for the Mondrian OLAP engine. For more information on how a closure table can help Mondrian gain performance, go here Technically, this transform reads all input rows in memory and calculates all possible parent-child relationships. It attaches the distance (in levels) from parent to child.</p>
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

| Option              | Description                                                                          |
| ------------------- | ------------------------------------------------------------------------------------ |
| Transform name      | The name that uniquely identifies the transform.                                     |
| Parent ID field     | The field name that contains the parent ID of the parent-child relationship.         |
| Child ID field      | The field name that contains the child ID of the parent-child relationship.          |
| Distance field name | The name of the distance field that will be added to the output                      |
| Root is zero        | Check this box if the root of the parent-child tree is not empty (null) but zero (0) |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:57 +0200

</div>

</div>

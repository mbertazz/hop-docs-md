<div id="header">

# <span class="image image-doc-icon">![Beam Input Icon](../assets/images/transforms/icons/beam-input.svg)</span> (EXPERIMENTAL) Beam Hive Catalog Input

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
<p>The Beam Hive Catalog input transform reads data from an Apache Hive metastore.</p>
</div>
<div class="admonitionblock warning">
<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Warning
</div></td>
<td>This transform is in an experimental state, backwards compatibility between versions is not guaranteed</td>
</tr>
</tbody>
</table>
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

| Option             | Description                                                                  |
| ------------------ | ---------------------------------------------------------------------------- |
| Transform name     | Name of the transform, this name has to be unique in a single pipeline.      |
| Hive Metastore URI | The Thrift metastore URI needs to be in format `thrift://hivemetastore:9083` |
| Database name      | Database name used in the metastore.                                         |
| Table name         | Table name used in the metastore                                             |

</div>

</div>

<div class="sect1">

## Limitations

<div class="sectionbody">

<div class="paragraph">

At this point in time this transform is still in an experimental phase.  
It can not yet detect and cast field types, all data is returned in a single string which is separated by the `;` character. Use a [split fields](pipeline/transforms/splitfields.eTmz78djkf) transform to split the data into fields.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:49 +0200

</div>

</div>

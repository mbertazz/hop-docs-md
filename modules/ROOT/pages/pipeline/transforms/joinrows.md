<div id="header">

# <span class="image image-doc-icon">![Join Rows transform Icon](../assets/images/transforms/icons/joinrows.svg)</span> Join Rows

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
<p>The Join Rows (cartesian product) transform allows you to combine/join multiple input streams (<a href="https://en.wikipedia.org/wiki/Cartesian_product">Cartesian product</a>) without joining on keys. It works best with one row from each stream. You can add a condition to only join when a condition is met.</p>
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

| Option                      | Description                                                                                                                                                           |
| --------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name              | Name of the transform this name has to be unique in a single pipeline.                                                                                                |
| Temp directory              | Specify the name of the directory where the system stores temporary files in case you want to combine more then the cached number of rows.                            |
| TMP-file prefix             | This is the prefix of the temporary files that will be generated.                                                                                                     |
| Max. cache size             | The number of rows to cache before the system reads data from temporary files; required when you want to combine large row sets that do not fit into memory.          |
| Main transform to read from | Specifies the transform from which to read most of the data; while the data from other transforms are cached or spooled to disk, the data from this transform is not. |
| The Condition(s)            | You can enter a complex condition to limit the number of output row.                                                                                                  |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:30 +0200

</div>

</div>

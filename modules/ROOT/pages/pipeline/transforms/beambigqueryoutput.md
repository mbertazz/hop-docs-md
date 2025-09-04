<div id="header">

# <span class="image image-doc-icon">![Beam BigQuery Output Icon](../assets/images/transforms/icons/beam-bq-output.svg)</span> Beam BigQuery Output

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
<p>The Beam BigQuery Output transform can be used to write data to a <a href="https://cloud.google.com/bigquery">BigQuery</a> table using the Beam execution engine.</p>
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

| Option                         | Description                                                              |
| ------------------------------ | ------------------------------------------------------------------------ |
| Transform name                 | Name of the transform, this name has to be unique in a single pipeline.  |
| Project ID                     | The Google Cloud Platform project.                                       |
| Data set ID                    | The BigQuery dataset ID.                                                 |
| Table ID                       | The BigQuery table ID.                                                   |
| Create table if needed         | Whether or not to create the table if it does not exist. (default: true) |
| Truncate table                 | Whether or not to truncate the table before inserting.                   |
| Fail if the table is not empty | Throws an error if the table is not empty.                               |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:45 +0200

</div>

</div>

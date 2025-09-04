<div id="header">

# <span class="image image-doc-icon">![Doris Bulk Loader transform Icon](../assets/images/transforms/icons/dorisbulkloader.svg)</span> Doris Bulk Loader

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
<p>Apache Doris is a modern MPP analytical database product. It can provide sub-second queries and efficient real-time data analysis. With it’s distributed architecture, up to 10PB level datasets will be well supported and easy to operate.</p>
</div>
<div class="paragraph">
<p>Apache Doris can meet various data analysis demands, including history data reports, real-time data analysis, interactive data analysis, and exploratory data analysis. Make your data analysis easier!</p>
</div>
<div class="paragraph">
<p>The Doris Bulk Loader allows you to insert data into Apache Doris at high speed and volume, making it a faster way to load data than using the traditional database insert statements.</p>
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

<div class="sect2">

### General

| Option           | Description                                                                                                  |
| ---------------- | ------------------------------------------------------------------------------------------------------------ |
| Transform name   | Name of the transform; This name has to be unique in a single pipeline                                       |
| FE Host          | Hostname of the FE Host                                                                                      |
| FE HTTP Port     | Port used to connect to the FE Host                                                                          |
| Database Name    | The database you want to connect to                                                                          |
| Table Name       | Table name to bulk load records to                                                                           |
| Login User       | User used to connect to the database                                                                         |
| Login Password   | Password to connect to the database                                                                          |
| Data Field       | The Data has to be combined to a single field, this can be a csv style field or json data                    |
| Format           | Indicator to tell the transform it is expecting CSV style or JSON style data                                 |
| Line Delimiter   | The Delimiter used to indicate line endings                                                                  |
| Column separator | When using CSV style data this will indicate what character to split fields on                               |
| Buffer Size      | Size of the buffer in bytes (0 = unlimited)                                                                  |
| Buffer Count     | Buffer Size \* Buffer Count is the max capacity to buffer data before doing real stream load (0 = unlimited) |

</div>

<div class="sect2">

### Headers

| Option       | Description                                           |
| ------------ | ----------------------------------------------------- |
| Header/value | Use this to add extra option to the bulk load command |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:06 +0200

</div>

</div>

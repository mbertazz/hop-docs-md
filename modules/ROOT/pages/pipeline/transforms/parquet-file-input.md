<div id="header">

# <span class="image image-doc-icon">![Parquet File Input transform Icon](../assets/images/transforms/icons/parquet_input.svg)</span> Parquet File Input

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
<p>The Parquet File Input transform reads (primitive) values from an Apache Parquet file.</p>
</div>
<div class="paragraph">
<p>For more information on this see: <a href="http://parquet.apache.org/">Apache Parquet</a>.</p>
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

<div class="paragraph">

Notes:

</div>

<div class="ulist">

  - To support reading from any location through Apache VFS each file is loaded into memory (one at a time). Make sure to allocate enough memory to allow this.

  - Long values can be de-serialized to Dates if they are EPOC: milliseconds since `1970-01-01 00:00:00.000`

  - Parquet Binary fields are considered to be Hop Strings but you can read them as Hop Binary.

  - All input values are passed to the output

  - INT96 is converted to the Hop Binary data type.

</div>

| Option            | Description                                                                                                                      |
| ----------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| Transform name    | Name of the transform this name has to be unique in a single pipeline.                                                           |
| Filename field    | Specify the input field. Use a transform like Get File Names to obtain file names. Any supported file location is fine.          |
| Fields            | In this table you can specify all the fields you want to obtain from the parquet files as well as their desired Hop output type. |
| Get fields button | With this button you can select a parquet file from which we’ll read the schema to populate the Fields grid.                     |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:47 +0200

</div>

</div>

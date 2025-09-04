<div id="header">

# <span class="image image-doc-icon">![Schema Mapping transform Icon](../assets/images/transforms/icons/schemamapping.svg)</span> Schema Mapping

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
<p>The Schema Mapping transform maps fields from an incoming stream over a specified Schema Definition. The result of this transform is an output stream that conforms to the mapped Schema Definition</p>
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

<div class="paragraph">

Schema mapping is a useful mapping transform to precede transforms like [Text File Output](pipeline/transforms/textfileoutput.zPZ2oN7iKz) or [Excel Writer](pipeline/transforms/excelwriter.zPZ2oN7iKz) when we decide to refer to a [Schema Definition](metadata-types/static-schema-definition.zPZ2oN7iKz) to map the output layout of the file. By preceding these transforms with the Schema Mapping, the incoming stream will be already setup according to the expected output layout definition.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option             | Description                                                                                                                          |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| Schema Definition  | Name of the [Schema Definition](metadata-types/static-schema-definition.zPZ2oN7iKz) that we are going to map to the incoming stream. |
| Schema Fields      | The set of schema fields that are mapped to stream fields.                                                                           |
| Stream Fields name | The set of stream fields that are mapped to schema fields.                                                                           |

<div class="ulist">

  - Use *Get fields* button to fill in the available fields from the incoming stream.

  - Use the *Mapping* button to show a Mapping Dialog that will support the mapping process between the stream’s fields and the schema fields.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:03 +0200

</div>

</div>

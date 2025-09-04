<div id="header">

# <span class="image image-doc-icon">![Metadata structure of stream transform Icon](../assets/images/transforms/icons/metastructure.svg)</span> Metadata structure of stream

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
<p>The Metadata Structure Of Stream transform produces the metadata structure of the input fields of this transform as output.</p>
</div>
<div class="paragraph">
<p>Before producing this output the transform reads and discards (or eats) all input rows.</p>
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

| Option                     | Description                                                               |
| -------------------------- | ------------------------------------------------------------------------- |
| Transform name             | Name of the transform.                                                    |
| Output row count           | Include the number of rows eaten by this transform in the output          |
| Field for row count        | The name of the field containing the number of rows eaten                 |
| Include position field?    | Include the field position in the transform’s output                      |
| Field for position         | The name of the field containing position                                 |
| Include field name field?  | Include the field name in the transform’s output                          |
| Field for field name       | The name of the field containing field’s name                             |
| Include comment field?     | Include the field comment in the transform’s output                       |
| Field for comments         | The name of the field containing the comment                              |
| Include type field?        | Include the field data type in the transform’s output                     |
| Field for type             | The name of the field containing the data type                            |
| Include format mask field? | Include the format mask field containing the format mask used on the data |
| Field for format mask      | The name of the field containing the format mask                          |
| Include length field?      | Include the field length in the transform’s output                        |
| Field for length           | The name of the field containing the data length                          |
| Include precision field?   | Include the field precision in the transform’s output                     |
| Field for precision        | The name of the field containing precision (if value is numeric)          |
| Include origin field?      | Include the field origin in the transform’s output                        |
| Field for origin           | The name of the field containing field’s origin                           |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:38 +0200

</div>

</div>

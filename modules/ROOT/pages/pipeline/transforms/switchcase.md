<div id="header">

# <span class="image image-doc-icon">![Switch / Case transform Icon](../assets/images/transforms/icons/switchcase.svg)</span> Switch / Case

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
<p>The Switch Case transform implements the <a href="https://en.wikipedia.org/wiki/Switch_statement">Switch/Case statement</a> found in popular programming languages like Java.</p>
</div>
<div class="paragraph">
<p>In our case we route rows of data to one or more target transforms based on the value encountered in a certain field.</p>
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

| Option                         | Description                                                                                                                                                                                                                                           |
| ------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                 | The name that uniquely identifies the transform.                                                                                                                                                                                                      |
| Field name to switch           | The field name that contains the value to use as a bases for the row routing.                                                                                                                                                                         |
| Use string contains comparison | If checked, the comparison will be true if the value is found anywhere in the field being tested. Unchecked and the value has to exactly match the field.                                                                                             |
| Case value data type           | The data type of the values specified in this dialog                                                                                                                                                                                                  |
| Case value conversion mask     | The conversion mask of the values specified in this dialog (numeric / date values)                                                                                                                                                                    |
| Case value decimal symbol      | The decimal symbol of the values specified in this dialog (numeric values)                                                                                                                                                                            |
| Case value grouping symbol     | The grouping symbol of the values specified in this dialog (numeric values)                                                                                                                                                                           |
| Case values                    | Here you can specify a value-target transform pair, one per row. To specify a null value, simply leave the value column blank while entering a target transform. Please note that it is possible to specify the same target transform more than once. |
| Default target transform       | All the rows that don’t match any of the case values above are sent to this target transform.                                                                                                                                                         |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:15 +0200

</div>

</div>

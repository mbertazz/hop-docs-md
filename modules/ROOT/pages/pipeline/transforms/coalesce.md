<div id="header">

# <span class="image image-doc-icon">![Coalesce transform Icon](../assets/images/transforms/icons/coalesce.svg)</span> Coalesce

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
<p>The Coalesce transform lets you list multiple fields and returns the first non-null value.</p>
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

| Option                          | Description                                                                       |
| ------------------------------- | --------------------------------------------------------------------------------- |
| Transform name                  | Name of the transform. **Note**: This name has to be unique in a single pipeline. |
| Considered empty string as null | The transform can consider empty string as null.                                  |

</div>

</div>

<div class="sect1">

## Fields

<div class="sectionbody">

<div class="paragraph">

Pick a list of fields to evaluate and specify a field name and type for the field output.

</div>

| Option       | Description                                                                                           |
| ------------ | ----------------------------------------------------------------------------------------------------- |
| Name         | The result field name, can overwrite an existing one.                                                 |
| Type         | The formats to convert the value into the chosen data type.                                           |
| Remove       | Remove input fields from the stream.                                                                  |
| Input fields | The order of the input fields listed in the columns determines the order in which they are evaluated. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:58 +0200

</div>

</div>

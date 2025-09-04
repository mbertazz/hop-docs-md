<div id="header">

# <span class="image image-doc-icon">![Split Fields transform Icon](../assets/images/transforms/icons/fieldsplitter.svg)</span> Split Fields

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
<p>The Split Fields transform splits a field into multiple fields based on a specified delimiter.</p>
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

| Option         | Description                                                                                                                                                                                                                                    |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name | Name of the transform; this name has to be unique in a single pipeline                                                                                                                                                                         |
| Field to split | The name of the field you want to split                                                                                                                                                                                                        |
| Delimiter      | Delimiter that determines the field. Special characters (e.g. CHAR ASCII HEX01) can be set with the format $\[value\], e.g. $\[01\] or $\[6F,FF,00,1F\].                                                                                       |
| Enclosure      | You can specify an enclosure string which when placed around a value allows delimiters to be present in it. For example with a comma (,) delimiter: `aaaa,"123,456",ccc` can be resolved to 3 fields using enclosure `"`.                      |
| Escape string  | To include delimiter characters in values sometimes an escape string is used like backslash, double backslash and so on. For example with a comma (,) delimiter: `aaaa,123\\,456,ccc` can be resolved to 3 fields using escape character `\\`. |
| Fields table   | This table is where you define the properties for each new field created by the split. For each new field, you must define the field name, data type, and other properties.                                                                    |

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="paragraph">

Below are examples of split fields:

</div>

<div class="sect2">

### Example 1

<div class="paragraph">

SALES\_VALUES field containing: "500,300,200,100"

</div>

<div class="paragraph">

Use these settings to split the field into four new fields:

</div>

<div class="ulist">

  - Delimiter: ,

  - Field: SALES1, SALES2, SALES3, SALES4

  - Id:

  - remove ID no, no, no, no

  - type: Number, Number, Number, Number

  - format: ., ., ., .

  - group:

  - decimal: .

  - currency:

  - length: 3, 3, 3, 3

  - precision: 0, 0, 0, 0

</div>

</div>

<div class="sect2">

### Example 2

<div class="paragraph">

SALES\_VALUES field containing "Sales2=310.50, Sales4=150.23"

</div>

<div class="paragraph">

Use these settings to split the field into four new fields:

</div>

<div class="ulist">

  - Delimiter: ,

  - Field: SALES1, SALES2, SALES3, SALES4

  - Id: Sales1=, Sales2=, Sales3=, Sales4=

  - remove ID yes, yes, yes, yes

  - type: Number, Number, Number, Number

  - format: ., ., ., .

  - group:

  - decimal: .

  - currency:

  - length: 7, 7, 7, 7

  - precision: 2, 2, 2, 2

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:10 +0200

</div>

</div>

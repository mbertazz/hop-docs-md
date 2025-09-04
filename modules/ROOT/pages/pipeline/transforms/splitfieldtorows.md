<div id="header">

# <span class="image image-doc-icon">![Split fields to rows transform Icon](../assets/images/transforms/icons/splitfieldtorows.svg)</span> Split fields to rows

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
<p>The Split Fields To Rows transform splits a row containing a delimited field into multiple new rows, one per split value.</p>
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

## Usage

<div class="sectionbody">

<div class="paragraph">

The original row is not delivered to following transforms.

</div>

<div class="paragraph">

The original field is left in each new row to assist in debugging or error handling.

</div>

<div class="paragraph">

It can be removed via a [Select Values](pipeline/transforms/selectvalues.Hv5ieaQGST) transform if needed.

</div>

<div class="paragraph">

The original field must be a string field.

</div>

<div class="paragraph">

A new field name must be specified.

</div>

<div class="paragraph">

If the value type/format of the new row is not specified, the new field will use the same type/format as the original field.

</div>

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="ulist">

  - Delimiter Regular Expression to split on a comma, or a space, or a comma + space (\* n): `[,\s]\s*`

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                            | Description                                                                                                                                          |
| --------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                    | Name of the transform.                                                                                                                               |
| Field to split                    | The field you want to split.                                                                                                                         |
| Delimiter                         | The delimiter or separator used. Special characters (e.g. CHAR ASCII HEX01) can be set with the format $\[value\], e.g. $\[01\] or $\[6F,FF,00,1F\]. |
| Delimiter is a Regular Expression | The regular expression to match the delimiter.                                                                                                       |
| New field name                    | The name of the new field.                                                                                                                           |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:10 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![Replace in String transform Icon](../assets/images/transforms/icons/replaceinstring.svg)</span> Replace in String

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
<p>The Replace In String transform performs simple search and replace operations on String fields.</p>
</div>
<div class="paragraph">
<p>It also supports regular expressions and group references. group references are picked up in the replace by string as $n where n is the number of the group.</p>
</div>
<div class="paragraph">
<p>You can also use <a href=":variables.oytm9M9gHt#_hexadecimal_values">hexadecimal replacements</a> for special characters</p>
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

| Option             | Description                                                                                                                                                             |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name     | Name of the transform. This must be unique within a plugin.                                                                                                             |
| In stream field    | The field in which a replacement has to take place.                                                                                                                     |
| Out stream field   | The result field. If you leave the Out stream field empty, it will replace the value in the In stream field. Otherwise, the replacement value is output in a new field. |
| use RegEx          | Specify whether a regular expression is used for specifying the value to replace. This value must be Y or N.                                                            |
| Search             | Search for a certain pattern. You can use a wildcard (\*) for matching multiple characters. If you are using a regular expression, specify the pattern in this field.   |
| Replace with       | Specify the value to replace the search pattern with. If you are using egular expressions, specify the replacement part of the string here.                             |
| Set empty string?  | Specify whether the field value is replaced with a blank string. This value must be Y or N.                                                                             |
| Replace with field | Replace the search pattern with the vlaue from the field you specify.                                                                                                   |
| Whole word         | Specify whether the whole word must match the search pattern to be replaced. This value must be Y or N.                                                                 |
| Case sensitive     | Specify whether the search is case sensitive. This value must be Y or N.                                                                                                |
| Is Unicode         | Specify whether the search uses unicode encoding. This value must be Y or N.                                                                                            |

</div>

</div>

<div class="sect1">

## Example

<div class="sectionbody">

<div class="paragraph">

You could parse out sections of a string as follows

</div>

<div class="ulist">

  - regex = ^(\[0-9\]{4})(\[0-9\]{7})$

  - replace with = $2

</div>

<div class="paragraph">

This will replace any 11 digit numbers with the last 7 digits.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:53 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![Strings cut transform Icon](../assets/images/transforms/icons/stringcut.svg)</span> Strings cut

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
<p>The Strings Cut transform cuts a portion of a string (i.e., a substring). If the designated field is out of range, it returns blank.</p>
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

| Option           | Description                                                                                                                                                                                |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Transform name   | Name of the transform.                                                                                                                                                                     |
| In stream field  | Name of the field whose substring to cut.                                                                                                                                                  |
| Out stream field | When a field name is given here, the transform creates a new field with the substring. Otherwise the original field gets replaced by the substring.                                        |
| Cut from         | Designate where to begin cutting the substring. This value is 0-based, thus the first character in a string is 0.                                                                          |
| Cut to           | Designate where to end cutting the substring. This value is exclusive (1-based), so using a 1 includes the first character. The maximum length of the new string is Cut to minus Cut from. |

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="paragraph">

Consider the following string (displayed here with positive and negative length references):

</div>

<div class="literalblock">

<div class="content">

    |0        |10       |20       |30       |40
    The quick brown fox jumps over the lazy dog
       |-40      |-30      |-20      |-10

</div>

</div>

<div class="paragraph">

The text above is considered as input string in all the following examples:

</div>

| Cut from | Cut to | Result                                        | Notes                                                                                                          |
| -------- | ------ | --------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| 0        | 9      | `The quick`                                   | Use `0` to refer to the first character                                                                        |
| 10       | 19     | `brown fox`                                   | Use two positive indexes to get a substring from the start of the input                                        |
| 0        | \-12   | `the lazy dog`                                | Use a negative index to get a substring from the end of the input                                              |
| \-13     | \-23   | `jumps over`                                  | Use two negative indexes to get a substring from the end of the input                                          |
| 20       | 10     | (null)                                        | When the first index is lower than the second, `null` is returned                                              |
| 10       | 10     | (empty string)                                | When the two indexes are equal, an empty string (not `null`) is returned                                       |
| 20       | 100    | `jumps over the lazy dog`                     | When the second index is greater than the input length, the returned substring extends to the end of the input |
| 50       | 100    | (null)                                        | When the first index is greater than the input length, `null` is returned                                      |
| 10       | \-10   | `The quick brown fox jumps over the lazy dog` | When the two indexes have different signs, the entire input is returned                                        |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:14 +0200

</div>

</div>

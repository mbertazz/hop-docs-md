<div id="header">

# <span class="image image-doc-icon">![String operations transform Icon](../assets/images/transforms/icons/stringoperations.svg)</span> String operations

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
<p>The String Operations transform can perform the following string operations on an incoming Hop field:</p>
</div>
<div class="ulist">
<ul>
<li><p>Trim (remove leading and/or trailing spaces).</p></li>
<li><p>Convert to upper or lowercase.</p></li>
<li><p>Pad (add leading or trailing extra characters).</p></li>
<li><p>Convert to initial capitalization.</p></li>
<li><p>Ignore escape characters.</p></li>
<li><p>Remove or return only numeric digits.</p></li>
<li><p>Remove special characters..</p></li>
</ul>
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

| Option                   | Description                                                      |
| ------------------------ | ---------------------------------------------------------------- |
| Transform name           | Name of the transform.                                           |
| In stream field          | Designate the field to transform.                                |
| Out stream field         | Designate the name of the field to be created.                   |
| Trim type                | Designate the trim type: none, left, right, or both.             |
| Lower/Upper              | Designate upper or lowercase.                                    |
| Padding                  | Designate left or right padding.                                 |
| Pad char                 | Designate the padding character.                                 |
| Pad Length               | Designate how long the padding will be.                          |
| InitCap                  | Transform to initial capitalization.                             |
| Escape                   | Define to Escape or Unescape XML, HTML, use CDATA or Escape SQL. |
| Digits                   | Designate whether to return remove, or do nothing to digits.     |
| Remove Special character | Designate a special character to remove.                         |

</div>

</div>

<div class="sect1">

## Metadata Injection Support

<div class="sectionbody">

<div class="paragraph">

All fields of this transform support metadata injection. You can use this transform with ETL Metadata Injection to pass metadata to your pipeline at runtime.

</div>

<div class="paragraph">

Values for Metadata Injection

</div>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Field</th>
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>In stream fields</p></td>
<td><p>list of source fields</p></td>
</tr>
<tr class="even">
<td><p>Out stream fields</p></td>
<td><p>list of target fields</p></td>
</tr>
<tr class="odd">
<td><p>Trim Type</p></td>
<td><p>0 = none<br />
1 = left<br />
2 = right<br />
3 = both</p></td>
</tr>
<tr class="even">
<td><p>Lower/Upper</p></td>
<td><p>0 = none<br />
1 = lower<br />
2 = upper</p></td>
</tr>
<tr class="odd">
<td><p>Padding</p></td>
<td><p>0 = none<br />
1 = left<br />
2= right</p></td>
</tr>
<tr class="even">
<td><p>Pad Char</p></td>
<td><p>Character used for padding</p></td>
</tr>
<tr class="odd">
<td><p>Pad Length</p></td>
<td><p>Lenght to pad</p></td>
</tr>
<tr class="even">
<td><p>InitCap</p></td>
<td><p>0 = no<br />
1 = yes</p></td>
</tr>
<tr class="odd">
<td><p>Escape</p></td>
<td><p>0 = none<br />
1 = escapexml<br />
2 = cdata<br />
3 = unescapexml<br />
4 = escapesql<br />
5 = escapehtml<br />
6 = unescapehtml</p></td>
</tr>
<tr class="even">
<td><p>Digits</p></td>
<td><p>0 = none<br />
1 = digits_only<br />
2 = remove_digits</p></td>
</tr>
<tr class="odd">
<td><p>Remove Special character</p></td>
<td><p>0 = none<br />
1 = cr<br />
2 = lf<br />
3 = crlf<br />
4 = tab<br />
5 = espace</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:14 +0200

</div>

</div>

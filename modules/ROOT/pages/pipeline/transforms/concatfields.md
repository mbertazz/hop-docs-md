<div id="header">

# <span class="image image-doc-icon">![Concat Fields transform Icon](../assets/images/transforms/icons/concatfields.svg)</span> Concat Fields

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
<p>The Concat Fields transform concatenates multiple fields into one target field. Type in a target field name which always creates a new field. You can optionally use a Separator field or Enclosure between fields and add the fields or free text you would like to concatenate in order.</p>
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

<div class="sect2">

### General

| Option                                  | Description                                                                                                                                                                             |
| --------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                          | Name of the transform.                                                                                                                                                                  |
| Target Field Name                       | The name of the target field (String type)                                                                                                                                              |
| Length of Target Field                  | The length of the string type (setting the meta-data of the String type, this is also used by the Fast Data Dump option for performance optimization)                                   |
| Separator                               | Specify the character that separates the fields in a single line of text. Typically this is ; or a tab.                                                                                 |
| Enclosure                               | A pair of strings can enclose some fields. This allows separator characters in fields. The enclosure string is optional.                                                                |
| Force enclosure?                        | Force adding the enclosing character before and after each field that is added to the concatenated string.                                                                              |
| Remove concatenated fields from output? | If checked, the fields that were used to create the concatenated field (specified in `Target Field Name`) will be removed from the output and wil not be available in later transforms. |

</div>

<div class="sect2">

### Fields Tab

<div class="paragraph">

This is identical to the fields tab option of the Text File Output transform and has the same functionality.

</div>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Name</p></td>
<td><p>The name of the field.</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Type of the field can be either String, Date or Number.</p></td>
</tr>
<tr class="odd">
<td><p>Format</p></td>
<td><p>The format mask to convert with. See Number Formats for a complete description of format symbols.</p></td>
</tr>
<tr class="even">
<td><p>Length</p></td>
<td><div class="content">
<div class="paragraph">
<p>The length option depends on the field type follows:</p>
</div>
<div class="ulist">
<ul>
<li><p>Number - Total number of significant figures in a number</p></li>
<li><p>String - total length of string</p></li>
<li><p>Date - length of printed output of the string (e.g. 4 only gives back year)</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Precision</p></td>
<td><div class="content">
<div class="paragraph">
<p>The precision option depends on the field type as follows:</p>
</div>
<div class="ulist">
<ul>
<li><p>Number - Number of floating point digits</p></li>
<li><p>String - unused</p></li>
<li><p>Date - unused</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Currency</p></td>
<td><p>Symbol used to represent currencies like $10,000.00 or E5.000,00</p></td>
</tr>
<tr class="odd">
<td><p>Decimal</p></td>
<td><p>A decimal point can be a &quot;.&quot; (10,000.00) or &quot;,&quot; (5.000,00)</p></td>
</tr>
<tr class="even">
<td><p>Group</p></td>
<td><p>A grouping can be a &quot;,&quot; (10,000.00) or &quot;.&quot; (5.000,00)</p></td>
</tr>
<tr class="odd">
<td><p>Trim type</p></td>
<td><p>The trimming method to apply on the string. Trimming only works when there is no field length given.</p></td>
</tr>
<tr class="even">
<td><p>Null</p></td>
<td><p>If the value of the field is null, insert this string into the textfile</p></td>
</tr>
<tr class="odd">
<td><p>Get</p></td>
<td><p>Click to retrieve the list of fields from the input fields stream(s)</p></td>
</tr>
<tr class="even">
<td><p>Minimal width</p></td>
<td><p>Alter the options in the fields tab in such a way that the resulting width of lines in the text file is minimal. So instead of save 0000001, we write 1, etc. String fields will no longer be padded to their specified length.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:59 +0200

</div>

</div>

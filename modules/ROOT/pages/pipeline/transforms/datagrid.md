<div id="header">

# <span class="image image-doc-icon">![Data Grid transform Icon](../assets/images/transforms/icons/datagrid.svg)</span> Data Grid

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
<p>The Data Grid transform allows you to enter a static list of rows in a grid, similar to an in-pipeline spreadsheet. This is usually done for testing, reference or demo purposes.</p>
</div>
<div class="paragraph">
<p>Place a Data grid onto the data orchestration grid. On the Meta tab, add the field names and type and format. Then on the Data tab, add the field values for each data row.</p>
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

|          |                                                                                                                              |
| -------- | ---------------------------------------------------------------------------------------------------------------------------- |
| Meta tab | specify the field metadata (output specification) of the data                                                                |
| Data Tab | contains the data. Everything is entered in String format so make sure you use the correct format masks in the metadata tab. |

</div>

</div>

<div class="sect1">

## Metadata Injection Support

<div class="sectionbody">

<div class="paragraph">

This transform supports metadata injection. It is made up out of 2 parts the meta (field definitions) and the data. The meta requires multiple rows to define the fields. The data part contains 2 injection fields, the first is a concatenated string that contains all values the second is the delimiter used to split that specific row. Mixing delimiters is possible, when empty "," is used as string to split with.

</div>

</div>

</div>

<div class="sect1">

## Limitations

<div class="sectionbody">

<div class="paragraph">

It is not yet possible to insert columns in between 2 existing one or in general re-order the fields in the metadata tab.

</div>

<div class="paragraph">

If you plan to do this, make sure to copy the data section first to a spreadsheet (Select all rows and copy/paste the whole grid), change the data and copy it back into the data section.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:03 +0200

</div>

</div>

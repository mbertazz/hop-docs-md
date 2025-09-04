<div id="header">

# <span class="image image-doc-icon">![Excel writer transform Icon](../assets/images/transforms/icons/excelwriter.svg)</span> Excel writer

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
<p>The Microsoft Excel Writer transform writes incoming rows from Hop out to an MS Excel file. It supports both the .xls and .xlsx file formats.</p>
</div>
<div class="paragraph">
<p>The .xls files use a binary format which is better suited for simple content, while the .xlsx files use the Open XML format which works well with templates since it can better preserve charts and miscellaneous objects.</p>
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

### File & sheet tab

<div class="paragraph">

**File section**

</div>

| Option                                  | Description                                                                                                                                                                                                                        |
| --------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Stream XLSX data                        | Check this option when writing large XLSX files. It uses internally a streaming API and is able to write large files without any memory restrictions (of course not exceeding Excel’s limit of 1,048,575 rows and 16,384 columns). |
| Create parent folder                    | Enable to create the parent folder                                                                                                                                                                                                 |
| If output file exists                   | Check this option when writing large XLSX files. It uses internally a streaming API and is able to write large files without any memory restrictions (of course not exceeding Excel’s limit of 1,048,575 rows and 16,384 columns). |
| Add filename(s) to result               | Check to have the filename added to the result filenames                                                                                                                                                                           |
| Wait for first row before creating file | Checking this option makes the transform create the file only after it has seen a row. If this is disabled the output file is always created, regardless of whether rows are actually written to the file.                         |

<div class="paragraph">

**Sheet section**

</div>

| Option                         | Description                                                                                                                                                                                   |
| ------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Sheet Name                     | The sheet name the transform will write rows to.                                                                                                                                              |
| Make this the active sheet     | If checked the Excel file will by default open on the above sheet when opened in MS Excel.                                                                                                    |
| If sheet exists in output file | The output file already has this sheet (for example when using a template, or writing to existing files), you can choose to write to the existing sheet, or replace it.                       |
| Protect Sheet                  | The XLS file format allows to protect an entire sheet from changes. If checked you need to provide a password. Excel will indicate that the sheet was protected by the user you provide here. |

<div class="paragraph">

**Template section**

</div>

<div class="paragraph">

When creating new files (when existing files are replaced, or completely fresh files are created) you may choose to create a copy of an existing template file instead. Please make sure that the template file is of the same type as the output file (both must be xls or xlsx respectively).

</div>

<div class="paragraph">

When creating new sheets, the transform may copy a sheet from the current document (the template or an otherwise existing file the transform is writing to). A new sheet is created if the target sheet is not present, or the existing one shall be replaced as per configuration above.

</div>

</div>

<div class="sect2">

### Content tab

<div class="paragraph">

**Content options section**

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
<td><p>Start writing at cell</p></td>
<td><p>This is the cell to start writing to in Excel notation (letter column, number row)</p></td>
</tr>
<tr class="even">
<td><p>When writing rows</p></td>
<td><p>The transform may overwrite existing cells (fast), or shift existing cells down (append new rows at the top of sheet)</p></td>
</tr>
<tr class="odd">
<td><p>Write Header</p></td>
<td><p>If checked the first line written will contain the field names</p></td>
</tr>
<tr class="even">
<td><p>Write Footer</p></td>
<td><p>If checked the last line written will contains the field names</p></td>
</tr>
<tr class="odd">
<td><p>Auto Size Columns</p></td>
<td><p>If checked the transform tries to automatically size the columns to fit their content. Since this is not a feature the xls(x) file formats support directly, results may vary.</p></td>
</tr>
<tr class="even">
<td><p>Force formula recalculation</p></td>
<td><div class="content">
<div class="paragraph">
<p>If checked, the transform tries to make sure all formula fields in the output file are updated.</p>
</div>
<div class="ulist">
<ul>
<li><p>The xls file format supports a &quot;dirty&quot; flag that the transform sets. The formulas are recalculated as soon as the file is opened in MS Excel.</p></li>
<li><p>For the xlsx file format, the transform must try to recalculate the formula fields itself. Since the underlying POI library does not support the full set of Excel formulas yet, this may give errors. The transform will throw errors if it cannot recalculate the formulas.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Leave styles of existing cells unchanged</p></td>
<td><p>If checked, the transform will not try to set the style of existing cells it is writing to. This is useful when writing to pre-styled template sheets.</p></td>
</tr>
</tbody>
</table>

<div class="paragraph">

**When writing to existing sheet section**

</div>

| Option                          | Description                                                                                                                                                                                                                                          |
| ------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Start writing at end of sheet   | The transform will try to find the last line of the sheet, and start writing from there.                                                                                                                                                             |
| Offset by …​ rows               | Any non-0 number will cause the transform to move this amount of rows down (positive numbers) or up (negative numbers) before writing rows. Negative numbers may be useful if you need to append to a sheet, but still preserve a pre-styled footer. |
| Begin by writing …​ empty lines | The transform will try to find the last line of the sheet, and start writing from there.                                                                                                                                                             |
| Omit Header                     | Any non-0 number will cause the transform to move this amount of rows down (positive numbers) or up (negative numbers) before writing rows. Negative numbers may be useful if you need to append to a sheet, but still preserve a pre-styled footer. |

<div class="paragraph">

**Fields section**

</div>

<div class="paragraph">

The fields section is for specifying the fields that must be written to the Excel file. You can choose to use a [Schema Definition](metadata-types/static-schema-definition.EHPBHl4cvl) or to define the required fields' layout manually.

</div>

<div class="paragraph">

If you decide to define the fields layout by using a [Schema Definition](metadata-types/static-schema-definition.EHPBHl4cvl), use the [Schema Mapping](pipeline/transforms/schemamapping.EHPBHl4cvl) transform to adjust the incoming stream according to the choosen [Schema Definition](metadata-types/static-schema-definition.EHPBHl4cvl)

</div>

| Option                        | Description                                                                                                                                                    |
| ----------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Schema Definition             | Name of the [Schema Definition](metadata-types/static-schema-definition.EHPBHl4cvl) that we want to reference.                                                 |
| Name                          | The field to write                                                                                                                                             |
| Type                          | The type of data                                                                                                                                               |
| Format                        | The Excel format to use in the sheet. Please consult the Excel manual for valid formats. There are some online references as well.                             |
| Style from cell               | A cell (i.e. A1, B3 etc.) to copy the styling from for this column (usually some pre-styled cell in a template)                                                |
| Field Title                   | If set, this is used for the Header/Footer instead of the Hop field name                                                                                       |
| Header/Footer style from cell | A cell to copy the styling from for headers/footers (usually some pre-styled cell in a template)                                                               |
| Field Contains Formula        | Set to Yes, if the field contains an Excel formula (no leading '=')                                                                                            |
| Hyperlink                     | A field, that contains the target to link to. The supported targets are Link to other cells, http, ftp, email, and local documents                             |
| Cell Comment / Cell Author    | The xlsx format allows to put comments on cells. If you’d like to generate comments, you may specify fields holding the comment and author for a given column. |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:10 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![Microsoft Excel input transform Icon](../assets/images/transforms/icons/excelinput.svg)</span> Microsoft Excel input

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
<p>The Microsoft Excel Input transform reads data from Microsoft Excel spreadsheet.</p>
</div>
<div class="paragraph">
<p>The default spreadsheet type (engine) is set to Excel XLSX, XLS.</p>
</div>
<div class="paragraph">
<p>When you read other file types like OpenOffice ODS and using special functions like protected worksheets, you need to change the Spread sheet type (engine) in the Content tab accordingly.</p>
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

### Files Tab

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
<td><p>Transform Name</p></td>
<td><p>Name of the transform; the name has to be unique in a single transform.</p></td>
</tr>
<tr class="even">
<td><p>Spread sheet type (engine)</p></td>
<td><div class="content">
<div class="paragraph">
<p>This field allows you to specify the spreadsheet type. Currently the following are supported:</p>
</div>
<div class="ulist">
<ul>
<li><p>Excel XLSX, XLS: This is the default, if you select this spread sheet type you can read all known Excel file types. Functionality provided by the Apache POI project.</p></li>
<li><p>Excel XLSX (Streaming): This spread sheet type allows to read in large Excel files.</p></li>
<li><p>Open Office ODS: By selecting this type you can read OpenOffice spreadsheet using the ODFDOM engine.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>File or directory</p></td>
<td><p>Specifies the location and/or name of the input text file. Note: Click Add to add the file/directory/wildcard combination to the list of selected files (grid) below.</p></td>
</tr>
<tr class="even">
<td><p>Regular expression</p></td>
<td><p>Specify the regular expression you want to use to select the files in the directory specified in the previous option. For example, you want to process all files that have a .txt extension. (For further details see the Text File Input transform and the section &quot;Selecting file using Regular Expressions&quot;)</p></td>
</tr>
<tr class="odd">
<td><p>Exclude Regular Expression</p></td>
<td><p>Excludes all files (in a given location) that meet the criteria specified by this regular expression.</p></td>
</tr>
<tr class="even">
<td><p>Selected Files</p></td>
<td><p>Contains a list of selected files (or wildcard selections) and a property specifying if file is required or not. If a file is required and it is not found, an error is generated;otherwise, the file name is skipped.</p></td>
</tr>
<tr class="odd">
<td><p>Accept filenames from previous transforms</p></td>
<td><p>Allows you to read in file names from a previous transform in the transform. You must also specify which transform you are importing from, and the input field in that transform from which you will retrieve the filename data</p></td>
</tr>
<tr class="even">
<td><p>Show filenames(s)…​</p></td>
<td><p>Displays a list of all files that will be loaded based on the current selected file definitions</p></td>
</tr>
<tr class="odd">
<td><p>Preview rows</p></td>
<td><p>Click Preview to examine the contents of the specified Excel file</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Sheets

<div class="paragraph">

In this tab you can specify the names of the sheets in the Excel workbook to read. For each of the sheet names you can specify the row and column to start at.

</div>

</div>

<div class="sect2">

### Content

|                   |                                                                                                                                                                                                              |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Option            | Description                                                                                                                                                                                                  |
| Header            | Enable if the sheets specified contain a header row to skip                                                                                                                                                  |
| No empty rows     | Enable if you don’t want empty rows in the output of this transform                                                                                                                                          |
| Stop on empty row | Makes the transform stop reading the current sheet of a file when a empty line is encountered                                                                                                                |
| Limit             | Limits the number of rows to this number (zero (0) means all rows).                                                                                                                                          |
| Encoding          | Specifies the text file encoding to use. Leave blank to use the default encoding on your system. To use Unicode, specify UTF-8 or UTF-16. On first use, Spoon searches your system for available encodings.) |

</div>

<div class="sect2">

### Error handling

|                                      |                                                                                                                                                                                                                                                                     |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Option                               | Description                                                                                                                                                                                                                                                         |
| Strict types?                        | If checked, Hop will report data type errors in the input.                                                                                                                                                                                                          |
| Ignore errors?                       | Enable if you want to ignore errors during parsing                                                                                                                                                                                                                  |
| Skip error lines?                    | If checked, Hop will skip lines that contain errors. These lines can be dumped to a separate file by specifying a path in the Failing line numbers files directory field below. If this is not checked, lines with errors will appear as NULL values in the output. |
| Warnings file directory              | When warnings are generated, they are placed in this directory. The name of that file is \<warning dir\>/filename.\<date\_time\>.\<warning extension\>                                                                                                              |
| Error files directory                | When errors occur, they are placed in this directory. The name of that file is \<errorfile\_dir\>/filename.\<date\_time\>.\<errorfile\_extension\>                                                                                                                  |
| Failing line numbers files directory | When a parsing error occurs on a line, the line number is placed in this directory. The name of that file is \<errorline dir\>/filename.\<date\_time\>.\<errorline extension\>                                                                                      |

</div>

<div class="sect2">

### Fields tab

<div class="paragraph">

The fields tab is for specifying the fields that must be read from the Excel files. You can choose to use a [Schema Definition](metadata-types/static-schema-definition.ymndhovQw6) or to define the required fields' layout manually.

</div>

<div class="paragraph">

Use *Get fields from header* row to fill in the available fields if the sheets have a header row automatically.

</div>

<div class="paragraph">

The Type column performs type conversions for a given field. For example, if you want to read a date and you have a String value in the Excel file, specify the conversion mask. Note: In the case of Number to Date conversion (for example, 20051028-→ October 28th, 2005) specify the conversion mask yyyyMMdd because there will be an implicit Number to String conversion taking place before doing the String to Date conversion.

</div>

|                   |                                                                                                                                                                                                              |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Option            | Description                                                                                                                                                                                                  |
| Schema Definition | Name of the [Schema Definition](metadata-types/static-schema-definition.ymndhovQw6) that we want to reference.                                                                                               |
| Name              | The name of the field.                                                                                                                                                                                       |
| Type              | The field’s data type; String, Date or Number.                                                                                                                                                               |
| Length            | The length option depends on the field type. Number: total number of significant figures in a number; String: total length of a string; Date: determines how much of the date string is printed or recorded. |
| Precision         | The precision option depends on the field type, but only Number is supported; it returns the number of floating point digits.                                                                                |
| Trim type         | Truncates the field (left, right, both) before processing. Useful for fields that have no static length.                                                                                                     |
| Repeat            | If set to Y, will repeat this value if the field in the next row is empty.                                                                                                                                   |
| Format            | The format mask (number type). See Text File Input transform and the section "Number Formats" for a complete description of format symbols.                                                                  |
| Currency          | Symbol used to represent currencies.                                                                                                                                                                         |
| Decimal           | A decimal point; this is either a dot or a comma.                                                                                                                                                            |
| Grouping          | A method of separating units of thousands in numbers of four digits or larger. This is either a dot or a comma.                                                                                              |

</div>

<div class="sect2">

### Additional output fields tab

<div class="paragraph">

This tab retrieves custom metadata fields to add to the transform’s output. The purpose of each field is defined in its name, but you can use these fields for whatever you want. Each item defines an output field that will contain the following information. Some of these are missing.

</div>

|                      |                                                                                           |
| -------------------- | ----------------------------------------------------------------------------------------- |
| Option               | Description                                                                               |
| Full filename field  | The full file name plus the extension.                                                    |
| Sheetname field      | The worksheet name you’re using.                                                          |
| Sheet row nr field   | The current sheet row number.                                                             |
| Row nr written field | Number of rows written                                                                    |
| Short filename field | The field name that contains the filename without path information but with an extension. |
| Extension field      | The field name that contains the extension of the filename.                               |
| Path field           | The field name that contains the path in operating system format.                         |
| Size field           | The field name that contains the size of the file, in bytes.                              |
| Is hidden field      | The field name that contains if the file is hidden or not (boolean).                      |
| Uri field            | The field name that contains the URI.                                                     |
| Root uri field       | The field name that contains only the root part of the URI.                               |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:09 +0200

</div>

</div>

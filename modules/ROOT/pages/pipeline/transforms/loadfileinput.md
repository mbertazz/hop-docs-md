<div id="header">

# <span class="image image-doc-icon">![Load file content in memory transform Icon](../assets/images/transforms/icons/loadfileinput.svg)</span> Load file content in memory

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
<p>The Load File Content In Memory transform loads the content of a file in memory.</p>
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

<div class="sect2">

### File Tab

| Option                         | Description                                               |
| ------------------------------ | --------------------------------------------------------- |
| Filename is defined in a field | Takes a filename from a field                             |
| get filename from a field      | A field containing the filename                           |
| File or directory              | The file or directory path to be added                    |
| Add                            | Adds the file or directory to the selected files          |
| Browse                         | Uses the local file browser to select a path              |
| Regular Expression             | Allows files to be included based on a regular expression |
| Exclude Regular Expression     | Allows files to be excluded based on a regular expression |
| Selected files                 | The selected files to load into memory                    |
| Show filename(s)               | Previews the selected files                               |

</div>

<div class="sect2">

### Content Tab

| Option                        | Description                                        |
| ----------------------------- | -------------------------------------------------- |
| Encoding                      | The file encoding (UTF, ISO, …​)                   |
| Ignore empty file             | Ignores empty files                                |
| Ignore missing path           | Ignores missing paths                              |
| Limit                         | Limit the rows loaded from the file                |
| Include filename in output?   | Allows the filename to be included in the output   |
| Filename fieldname            | Field containing the filename                      |
| Rownum in output?             | Allows the row number to be included in the output |
| Rownum filename               | Field containing the row number                    |
| Add files to result filesname | Add files to resulting files name                  |

</div>

<div class="sect2">

### Fields Tab

<div class="paragraph">

The fields to load from the file.

</div>

| Option     | Description                                                                                                                                               |
| ---------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Name       | The name of the imported field.                                                                                                                           |
| Element    | File content or size                                                                                                                                      |
| Type       | The data type for this field                                                                                                                              |
| Format     | The format mask                                                                                                                                           |
| Length     | The field length                                                                                                                                          |
| Precision  | The precision option depends on the field type, but only Number is supported; it returns the number of floating point digits                              |
| Currency   | Symbol used to represent currencies                                                                                                                       |
| Decimal    | A decimal point; this is either a dot or a comma                                                                                                          |
| Group      | A method of separating units of thousands in numbers of four digits or larger. This is either a dot or a comma.                                           |
| Trim type  | Type of trim: none, left, right, both                                                                                                                     |
| Repeat     | Enter ‘Y’ if you want to reuse the value from the last non-empty row when the corresponding value in this row is empty. Enter ‘N’ to leave the row empty. |
| Get fields | Retrieve available fields based on the file contents                                                                                                      |

</div>

<div class="sect2">

### Additional output Tab

| Option                  | Description                                                                               |
| ----------------------- | ----------------------------------------------------------------------------------------- |
| Short filename field    | The field name that contains the filename without path information but with an extension. |
| Extension field         | The field name that contains the extension of the filename.                               |
| Path field              | The field name that contains the path in operating system format.                         |
| Is hidden field         | The field name that contains if the file is hidden or not (boolean).                      |
| Last modification field | The field name that contains the last modification.                                       |
| Uri field               | The field name that contains the URI.                                                     |
| Root uri field          | The field name that contains only the root part of the URI.                               |

</div>

<div class="sect2">

### Buttons

| Option       | Description                                   |
| ------------ | --------------------------------------------- |
| Preview rows | Preview the rows generated by this transform. |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:34 +0200

</div>

</div>

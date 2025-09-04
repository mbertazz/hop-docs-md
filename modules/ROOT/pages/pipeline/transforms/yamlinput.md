<div id="header">

# <span class="image image-doc-icon">![YAML Input transform Icon](../assets/images/transforms/icons/yamlinput.svg)</span> YAML Input

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
<p>The YAML Input transform reads data from YAML structures, files or incoming fields.</p>
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

| Option                        | Description                                                        |
| ----------------------------- | ------------------------------------------------------------------ |
| Transform name                | Name of the transform.                                             |
| Source is defined in a field? | Whether or not the source is in a field from a previous transform. |
| Source is a filename          | Whether or not the source is a filename, else a directory.         |
| get source from a field       | The field containing the filename or directory.                    |
| File or directory             | The file or directory path.                                        |
| Add                           | Adds the file or directory to the Selected files list.             |
| Browse                        | Browses the local filesystem for a file or directory.              |
| Regular Expression            |                                                                    |
| Selected files                | The selected files or directories.                                 |
| Delete                        | Deletes selected lines from the list.                              |
| Edit                          | Moved the selected line for editting.                              |
| Show filename(s)              | Previews the filename.                                             |

</div>

<div class="sect2">

### Content Tab

| Option                            | Description                                                  |
| --------------------------------- | ------------------------------------------------------------ |
| Ignore empty file                 | Whether or not to ignore empty files.                        |
| Do not raise an error if no files | Whether or not the raise an error if no files are available. |
| Limit                             | Sets a limit to be read.                                     |
| Include filename in output?       | Adds the filename to the output rows.                        |
| Filename fieldname                | The field containing the filename.                           |
| Rownum in output?                 | Adds the row number to the output rows.                      |
| Rownum fieldname                  | The field containing the row number.                         |
| Add files to result filesname     |                                                              |

</div>

<div class="sect2">

### Fields Tab

| Option     | Description                                                       |
| ---------- | ----------------------------------------------------------------- |
| Name       | The name of the output field.                                     |
| Key        | The key to the element.                                           |
| Type       | The data type to convert to.                                      |
| Format     | The format or conversion mask to use in the data type conversion. |
| Length     | The length of the output data type.                               |
| Precision  | The precision of the output data type.                            |
| Currency   | The currency symbol to use during data type conversion.           |
| Decimal    | The numeric decimal symbol to use during data type conversion.    |
| Group      | The numeric grouping symbol to use during data type conversion.   |
| Trim type  | The type of trimming to use during data type conversion.          |
| Get fields | Approximates fields from the input.                               |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:28 +0200

</div>

</div>

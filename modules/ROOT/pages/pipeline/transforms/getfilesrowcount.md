<div id="header">

# <span class="image image-doc-icon">![Get files Row Count transform Icon](../assets/images/transforms/icons/getfilesrowcount.svg)</span> Get files Row Count

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
<p>The Get Files Row Count transform counts the number of rows in a file or set of files.</p>
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

### File tab

| Option                                       | Description                                                                                                                                                  |
| -------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Transform name                               | Name of the transform. This must be unique within the pipeline.                                                                                              |
| Get filename from field                      | Whether the file name is taken from the specified field.                                                                                                     |
| Filename from field                          | Specify the field to read the file name from.                                                                                                                |
| File or directory                            | Specify the path to the file or files you want to count rows for.                                                                                            |
| Add                                          | Click to add the specified file, directory, and regular expression to the Selected files list.                                                               |
| Browse                                       | Click to select a file or directory.                                                                                                                         |
| Regular Expression                           | If you want to load multiple files, an expression that matches the files you want to use.                                                                    |
| \!GetFilesRowsDialog.ExcludeFileMask.Label\! | If you want to exclude files in the directory, an expression that matches the files to exclude.                                                              |
| Selected files                               | Lists the files that you have selected to use with this transform, including the location of each and the regular expression used to match or exclude files. |
| Delete                                       | Click to remove a selected file from the list.                                                                                                               |
| Edit                                         | Click to modify a selected file in the list.                                                                                                                 |
| Show Filenames                               | Click to view all files that will be used.                                                                                                                   |

</div>

<div class="sect2">

### Content tab

| Option                         | Description                                                                                                                                                                                                                                                                                    |
| ------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Rows Count fieldname           | The name of the field to store the row count in.                                                                                                                                                                                                                                               |
| Rows Separator type            | Select they type of character that defines the end of a line, either a carriage return, line feed, tab, or custom character.                                                                                                                                                                   |
| Row separator                  | If you are using a custom character, the character that defines the end of a line.                                                                                                                                                                                                             |
| Perform smart count            | If not selected, the count returns the number of separators in the file. If selected, an extra pass is performed to try to return the actual number of lines. This can be used in cases where the row separator is the same as the column value delimiter or if the file contains blank lines. |
| Include files count in output? | Whether the file count is included in a field in the output.                                                                                                                                                                                                                                   |
| Files Count fieldname          | The name of the field to store the output file count in.                                                                                                                                                                                                                                       |
| Add filename to result         | Whether the file names are included as a field in the output.                                                                                                                                                                                                                                  |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:19 +0200

</div>

</div>

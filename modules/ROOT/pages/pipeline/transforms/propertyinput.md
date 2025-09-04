<div id="header">

# <span class="image image-doc-icon">![Read data (key](../assets/images/transforms/icons/propertyinput.svg)</span> Read data (key, value) from properties files

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
<p>The Property Input transform reads key/values pairs from a Java properties files.</p>
</div>
<div class="admonitionblock tip">
<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>More information on this file format is available on <a href="https://en.wikipedia.org/wiki/.properties">Wikipedia</a></td>
</tr>
</tbody>
</table>
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

### Files Tab

| Option                                                                                                                                                                                                                       | Description                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| Transform name                                                                                                                                                                                                               | Name of the transform. This name has to be unique in a single pipeline.                          |
| Filename is defined in a field?                                                                                                                                                                                              | The file name to read is available in a field in the input stream.                               |
| Get filename from field                                                                                                                                                                                                      | Specify the field to read the file name from.                                                    |
| File or directory                                                                                                                                                                                                            | Specifies the location and/or name of the input text file.                                       |
| Add                                                                                                                                                                                                                          | Click to add the file/directory/wildcard combination to the list of selected files (grid) below. |
|                                                                                                                                                                                                                              | Browse                                                                                           |
| Click to select the file to load from a file browser.                                                                                                                                                                        | Regular expression                                                                               |
| Specifies the regular expression you want to use to select the files in the directory specified in the previous option.                                                                                                      | Exclude Regular                                                                                  |
| Specifies a regular expression to exclude files from the specified directory.                                                                                                                                                | Selected Files                                                                                   |
| Contains a list of selected files (or wildcard selections) and a property specifying if that file is required or not. If a file is required and it is not found, an error is generated, otherwise, the file name is skipped. | Delete                                                                                           |
| Click to remove the selected file or wildcard selection from the list.                                                                                                                                                       | Edit                                                                                             |
| Click to modiy the selected file or wildcard.                                                                                                                                                                                | Show filenames(s)…​                                                                              |

</div>

<div class="sect2">

### Content Tab

| Option                          | Description                                                                                                                                                                                   |
| ------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| File Type                       | The file’s type. This should be "Properties file".                                                                                                                                            |
| Encoding                        | The character encoding used for the file.                                                                                                                                                     |
| Section                         | If necessary, specify the section of the file to read.                                                                                                                                        |
| Limit                           | Specify the maximum number of rows read from the file, or specify 0 for no limit.                                                                                                             |
| Substitute variable for value   | If the file was provided in a variable, resolve that variable to get the file name.                                                                                                           |
| Include filename in output?     | Allows you to specify a field name to include the file name in the output of this transform.                                                                                                  |
| Rownum in output                | Allows you to specify a field name to include the row number (Integer) in the output of this transform.                                                                                       |
| Reset rownum per file?          | Enable to reset the generated row number to 1 at the start of every individual file. Otherwise, the rownum counts all rows in all files.                                                      |
| Include section name in output? | Allows you specify a field name to include the section namemin the output of this transform.                                                                                                  |
| Add filename to result?         | Adds the names of the files read to the result of this pipeline. A unique list is kept in memory that can be used in the next workflow action in a workflow, for example in another pipeline. |

</div>

<div class="sect2">

### Fields Tab

| Option    | Description                                                                                                                                                               |
| --------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Name      | The name of the output field                                                                                                                                              |
| Column    | The attribute to read                                                                                                                                                     |
| Type      | The data type for the field. This might require conversion if the source file does not use the same type. The following options all apply to the result after conversion. |
| Format    | The format or conversion mask to use in the data type conversion                                                                                                          |
| Length    | The maximum number of characters for the output data type, or -1 for no limit.                                                                                            |
| Precision | The number of decimal places used for displaying floating-point numbers.                                                                                                  |
| Currency  | The currency symbol to display for monetary value.                                                                                                                        |
| Decimal   | The decimal point symbol to use for numbers. Typically "." (10.5) or "," (10,5).                                                                                          |
| Group     | The thousands separator symbol to use for numbers. Typically "," (5,200,820) or "." (5.200.820).                                                                          |
| Trim type | The trimming method used to remove blank spaces from string values. This can be left (removes leading spaces), right (removes trailing spaces), both, or none.            |
| Repeat    | Repeat the column value of the previous row if the column value is empty (null)                                                                                           |

</div>

<div class="sect2">

### Additional output fields Tab

| Option                  | Description                                                                                                                         |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| Short filename field    | The field used to contain the filename, without the path.                                                                           |
| Extension field         | The field used to contain the file extension.                                                                                       |
| Path field              | The field used to contain the file’s path.                                                                                          |
| Size field              | The field used to contain the file size.                                                                                            |
| Is hidden field         | The field used to contain whether the file is hidden.                                                                               |
| Last modification field | The field used to contain the date the file was last modified.                                                                      |
| Uri field               | The field used to contain the full source URL for the file. This could be an http:// or file:// URL depending on the file’s source. |
| Root uri field          | The field used to contain the root of the source URL for the file, including the protocol and top-level address.                    |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:51 +0200

</div>

</div>

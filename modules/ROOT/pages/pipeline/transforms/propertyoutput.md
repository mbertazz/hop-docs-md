<div id="header">

# <span class="image image-doc-icon">![Write data to properties file transform Icon](../assets/images/transforms/icons/propertyoutput.svg)</span> Write data to properties file

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
<p>The Properties Output transform outputs a set of rows of data to a Java properties files.</p>
</div>
<div class="paragraph">
<p>The data needs to be structured in a key/value format to be usable for a properties file.</p>
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

### General Tab

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
<td><p>Transform name</p></td>
<td><p>Name of the transform. This name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Key field</p></td>
<td><p>The input field name that will contain the key part of the key:value pairs to be written to the properties file.</p></td>
</tr>
<tr class="odd">
<td><p>Value field</p></td>
<td><p>The input field name that will contain the value part of the key:value pairs to be written to the properties file.</p></td>
</tr>
<tr class="even">
<td><p>Comment</p></td>
<td><div class="content">
<div class="paragraph">
<p>Short comment that is copied into the top of the properties file.</p>
</div>
<div class="admonitionblock note">
<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Note
</div></td>
<td>Only the first line is commented out. Any additional lines must be commented out manually.</td>
</tr>
</tbody>
</table>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Content

| Option                               | Description                                                                                                                                                                             |
| ------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Filename                             | The name of the properties file to create, without the file extension.                                                                                                                  |
| Append                               | Check this option to update an existing property file. Properties in the file that are not processed by the transform will remain unchanged.                                            |
| Create parent folder                 | Check this option if you want to automatically create the parent folder.                                                                                                                |
| Accept file name from field?         | Check this option if the file name is specified in an input stream field.                                                                                                               |
| File name field                      | Specifies the field that contains the name of the file to write to.                                                                                                                     |
| Extension                            | Specify the file extension. Usually this is "properties".                                                                                                                               |
| Include transform number in filename | Includes the transform number (when running in multiple copies) in the output filename.                                                                                                 |
| Include date in filename             | Includes the date in the output filename with format yyyyMMdd (20081231).                                                                                                               |
| Include time in filename             | Includes the time in the output filename with format HHmmss (235959).                                                                                                                   |
| Show filename(s)…​                   | Displays the paths and names of all files to be written to.                                                                                                                             |
| Add File to result                   | Adds the generated filenames to the result of this pipeline. A unique list is kept in memory, which can be used in the next workflow action in a workflow, such as in another pipeline. |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:52 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![File exists transform Icon](../assets/images/transforms/icons/fileexists.svg)</span> File exists

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
<p>The File Exists transforms verifies the existence of a file. The filenames to check are read from pipeline fields.</p>
</div>
<div class="paragraph">
<p>The transform outputs a boolean flag field, indicating whether a file exists or doesn’t.</p>
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

| Option                 | Description                                                                                                               |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| Transform name         | Name of the transform; This name has to be unique in a single pipeline                                                    |
| Filename field         | The input field that will contain the filename at runtime                                                                 |
| Result fieldname       | The name of the field that will contain the boolean flag.                                                                 |
| Add filename to result | Enable this option if you want to add the filename to the list of filenames that can be used in the next workflow action. |
| Include file type      | Include the file type in a field.                                                                                         |
| File type field        | The name of the field that will contain the file type as a String: "file", "folder", "imaginary"                          |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:13 +0200

</div>

</div>

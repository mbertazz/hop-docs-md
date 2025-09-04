<div id="header">

# <span class="image image-doc-icon">![Zip file transform Icon](../assets/images/transforms/icons/zipfile.svg)</span> Zip file

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
<p>The Zip File transform creates a standard ZIP archive using the options you specify in the dialog.</p>
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
<td><p>Name of the transform.</p></td>
</tr>
<tr class="even">
<td><p>Create target parent folder</p></td>
<td><p>Check this option to create the target parent folder if needed.</p></td>
</tr>
<tr class="odd">
<td><p>Overwrite target file</p></td>
<td><p>Check this option to overwrite the target file if it exists.</p></td>
</tr>
<tr class="even">
<td><p>Add zip filename to result</p></td>
<td><p>Check this option to add the zip filename to the internal result set.</p></td>
</tr>
<tr class="odd">
<td><p>Source filename field</p></td>
<td><p>Define the field that contains the source filename. This is the file that gets added to the zip archive.</p></td>
</tr>
<tr class="even">
<td><p>Target filename field</p></td>
<td><p>Define the field that contains the target zip filename. This file is created if it does not exist, or overwritten if you allow it.</p></td>
</tr>
<tr class="odd">
<td><p>Keep source folders</p></td>
<td><p>Check this option to keep the source folder in the zip file’s name.</p></td>
</tr>
<tr class="even">
<td><p>Base folder fieldname</p></td>
<td><p>If Keep source folders is selected, define a field that contains any additional folders the source folder is nested in, which will be removed from the file name when the zip file is created. This preserves only the name of the folder the file was in as part of the zip file name, such as 'outputs/result.zip'</p></td>
</tr>
<tr class="odd">
<td><p>After zip</p></td>
<td><div class="content">
<div class="paragraph">
<p>The action to take on the source file after zipping. Select one of the following:</p>
</div>
<div class="paragraph">
<p>*Do nothing: The source file is left in the folder. *Move source file: Moves the source file to the location specified in the Move to folder fieldname box. *Delete source file: Deletes the source file from the folder.</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Move to folder fieldname</p></td>
<td><p>Define the field that contains the target folder to move the source file to after zipping.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:29 +0200

</div>

</div>

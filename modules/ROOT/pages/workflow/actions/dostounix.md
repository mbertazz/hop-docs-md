<div id="header">

# Convert file between Windows and Unix

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Convert file between Windows and Unix` action converts files from Windows (DOS) Format (lines end with CR/LF) to Linux/Unix Format (lines end with LF) and vice versa.

</div>

<div class="paragraph">

When the format is unknown, this action also has a guess function and converts to the other format.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General tab

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Action name</p></td>
<td><p>The name of the workflow action.</p></td>
</tr>
<tr class="even">
<td><p>Settings</p></td>
<td><div class="content">
<div class="ulist">
<ul>
<li><p>Include Subfolders: also process sub-folders</p></li>
<li><p>Copy previous results to args : use the list of result files from the previous workflow action (actions) in stead of the static file list below.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Files / Folders</p></td>
<td><div class="content">
<div class="paragraph">
<p>You can specify the list of files or folders with wildcards in this grid. You can add a different source/destination on each line.</p>
</div>
</div></td>
</tr>
</tbody>
</table>

<div class="paragraph">

After specifying a folder and wildcard (regular expression), use the `Add` button to add your file/folder selection to the table. Use the `Delete` or `Edit` buttons to remove or edit selected lines in the table.

</div>

</div>

<div class="sect2">

### Advanced

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
<td><p>Success Condition</p></td>
<td><div class="content">
<div class="paragraph">
<p>This action will follow the success path if the selected condition is true. Current options are:</p>
</div>
<div class="ulist">
<ul>
<li><p>Success if all files are processed</p></li>
<li><p>Success if at least x files are processed</p></li>
<li><p>Success when number of error files lesser than</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Nr Files</p></td>
<td><p>specifies the number of files that have to meet the selected condition from above</p></td>
</tr>
<tr class="odd">
<td><p>Add Filenames</p></td>
<td><div class="content">
<div class="paragraph">
<p>Adds the filenames that meet the selected condition to the workflow output stream. Conditions are:</p>
</div>
<div class="ulist">
<ul>
<li><p>Do not add filenames</p></li>
<li><p>Add all filenames</p></li>
<li><p>Add only processed filenames</p></li>
<li><p>Add only error filenames</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:07 +0200

</div>

</div>

<div id="header">

# Check if XML file is well-formed

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Check if XML file is well-formed action` verifies if one or more files contain well-formed (allowed) XML content.

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
<td><p>Include Subfolders</p></td>
<td><p>Option to move the content of sub-folders.</p></td>
</tr>
<tr class="odd">
<td><p>Copy previous results to args</p></td>
<td><p>Check this to pass the results of the previous action into the arguments of this action.</p></td>
</tr>
<tr class="even">
<td><p>File/Folder source</p></td>
<td><p>Enter or select (Browse button) a file or folder</p></td>
</tr>
<tr class="odd">
<td><p>Wildcard (RegExp)</p></td>
<td><p>A regular expression wildcard for the filename pattern</p></td>
</tr>
<tr class="even">
<td><p>Files/Folders</p></td>
<td><div class="content">
<div class="paragraph">
<p>Specify the list of files or folders with wildcards (regular expressions) in this grid. You can add a different source/destination on each line.</p>
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
<td>You can use the Add button to add a line to the Files/Folders list.</td>
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

### Advanced tab

<div class="paragraph">

In this tab you can specify the files and/or folders to move.

</div>

Option

</div>

</div>

</div>

</div>

Description

Success On

Success on

Allows you to set specific success conditions: Success if all files are well formed, Success if at least x files are well formed, or Success when number of bad formed files less than.

Result files name

Specify which kind of filenames to add to the internal result file names: all filenames, only well formed filenames, or only bad filenames.

Result file names

Add filename

<div class="content">

<div class="paragraph">

Add the checked XML filenames to the workflow action result. The available options are:

</div>

<div class="ulist">

  - Add all filenames

  - Add only well-formed filenames

  - Add only bad-formed filenames

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:35 +0200

</div>

</div>

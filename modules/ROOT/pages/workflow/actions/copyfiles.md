<div id="header">

# Copy Files

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The Copy Files action copies one of more files or folders.

</div>

</div>

</div>

<div class="sect1">

## Files tab

<div class="sectionbody">

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
<td><p>Action Name</p></td>
<td><p>Indicates the name of the action.</p></td>
</tr>
<tr class="even">
<td><p>Source Environment</p></td>
<td><div class="content">
<div class="paragraph">
<p>Indicates the file system or specific cluster on which the item you want to input can be found. Options are Local and &lt;Static&gt;.</p>
</div>
<div class="ulist">
<ul>
<li><p>Local: Specifies that the item specified in the File/Folder field is in a file system that is local to Hop.</p></li>
<li><p>&lt;Static&gt;: Specifies that the item specified in the File/Folder field should use the path name in that field, exactly. Use this if you already know a file path and you simply want to copy and paste it into the window.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Source File/Folder* *</p></td>
<td><p>The file or directory to copy from. If you choose an option other than &lt;Static&gt; in the Source Environment field, click the button in the field to view the Open File window.</p></td>
</tr>
<tr class="even">
<td><p>Wildcard</p></td>
<td><p>Defines the files that are copied in regular expression terms (instead of static file names), for instance: .*\.txt would be any file with a .txt extension.</p></td>
</tr>
<tr class="odd">
<td><p>Destination Environment</p></td>
<td><div class="content">
<div class="paragraph">
<p>Indicates the file system or specific cluster where you want the file to be placed. Options are Local and &lt;Static&gt;.</p>
</div>
<div class="ulist">
<ul>
<li><p>Local: Specifies that the item specified in the File/Folder field is in a file system that is local to Hop.</p></li>
<li><p>&lt;Static&gt;: Specifies that the item specified in the File/Folder field should use the path name in that field, exactly. Use this if you already know a file path and you simply want to copy and paste it into the window.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Destination File</p></td>
<td><p>Indicates the name of the destination environment. If you choose an option other than &lt;Static&gt; in the Destination Environment field, click the button in the field to view the Open File window.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Settings

<div class="sectionbody">

| Option                             | Description                                                                                                                                                                          | Default   |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------- |
| Include Subfolders                 | If selected, all subdirectories within the chosen directory will be copied as well                                                                                                   | unchecked |
| Destination is a file              | Determines whether the destination is a file or a directory                                                                                                                          | unchecked |
| Copy empty folders                 | If selected, will copy all directories, even if they are empty the Include Subfolders option must be selected for this option to be valid. (Wildcard MUST be blank for this to work) | checked   |
| Create destination folder          | If selected, will create the specified destination directory if it does not currently exist                                                                                          | unchecked |
| Replace existing files             | If selected, duplicate files in the destination directory will be overwritten                                                                                                        | unchecked |
| Remove source files                | If selected, removes the source files after copy (a move procedure)                                                                                                                  | unchecked |
| Copy previous results to arguments | Copies the previous results to arguments.                                                                                                                                            | unchecked |
| Add files to result files name     | Any files that are copied will appear as a result from this action; shows a list of files that were copied in this action                                                            | unchecked |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:04 +0200

</div>

</div>

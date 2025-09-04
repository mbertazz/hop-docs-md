<div id="header">

# Bulk load from MySQL into file

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Bulk load from MySQL into file` action bulk loads data from a MySQL table into a file.

</div>

</div>

</div>

<div class="sect1">

## Options

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
<td><p>Action name</p></td>
<td><p>The name of the workflow action.</p></td>
</tr>
<tr class="even">
<td><p>Connection</p></td>
<td><p>The database connection.</p></td>
</tr>
<tr class="odd">
<td><p>Target schema</p></td>
<td><p>The target schema.</p></td>
</tr>
<tr class="even">
<td><p>Target File name</p></td>
<td><p>The target file.</p></td>
</tr>
<tr class="odd">
<td><p>High Priority</p></td>
<td><p>The priority to load the file with.</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>OUTFILE, DUMPFILE</p></td>
</tr>
<tr class="odd">
<td><p>Field separator</p></td>
<td><p>The field separator to use.</p></td>
</tr>
<tr class="even">
<td><p>Fields enclosed by</p></td>
<td><p>The field enclosure to use.</p></td>
</tr>
<tr class="odd">
<td><p>Optionally enclosed</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Lines terminated by</p></td>
<td><p>The line termination string to use.</p></td>
</tr>
<tr class="odd">
<td><p>Names of columns</p></td>
<td><p>A comma separated list of columns to export</p></td>
</tr>
<tr class="even">
<td><p>Limit to the…​first lines</p></td>
<td><p>Only export the first x number of rows</p></td>
</tr>
<tr class="odd">
<td><p>If file exists</p></td>
<td><div class="content">
<div class="paragraph">
<p>The action to take when the target file already exists:</p>
</div>
<div class="ulist">
<ul>
<li><p>Create new with unique name</p></li>
<li><p>Do Nothing</p></li>
<li><p>Fail (default)</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Add file to result filenames</p></td>
<td><p>Add the target file to the result filenames</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:17 +0200

</div>

</div>

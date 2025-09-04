<div id="header">

# Bulk load into MySQL

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Bulk load into MySQL` action loads data from a text file into a MySQL table.

</div>

<div class="paragraph">

This action uses the MySQL [`LOAD DATA`](https://dev.mysql.com/doc/refman/8.0/en/load-data.html) command.

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
<td><p>The connection to the MySQL database to use.</p></td>
</tr>
<tr class="odd">
<td><p>Target schema</p></td>
<td><p>The schema of the table to load.</p></td>
</tr>
<tr class="even">
<td><p>Target table name</p></td>
<td><p>The name of the table to load into.</p></td>
</tr>
<tr class="odd">
<td><p>Source file name</p></td>
<td><p>The name of the file to load.</p></td>
</tr>
<tr class="even">
<td><p>Local</p></td>
<td><p>Check this if the file is local.</p></td>
</tr>
<tr class="odd">
<td><p>Priority</p></td>
<td><div class="content">
<div class="paragraph">
<p>The priority to load the file with. The available options are:</p>
</div>
<div class="ulist">
<ul>
<li><p>NORMAL (default): no priority is set on the <code>LOAD DATA</code> command</p></li>
<li><p>LOW PRIORITY: With the LOW_PRIORITY modifier, execution of the LOAD DATA statement is delayed until no other clients are reading from the table. This affects only storage engines that use only table-level locking (such as MyISAM, MEMORY, and MERGE).</p></li>
<li><p>CONCURRENT: With the CONCURRENT modifier and a MyISAM table that satisfies the condition for concurrent inserts (that is, it contains no free blocks in the middle), other threads can retrieve data from the table while LOAD DATA is executing. This modifier affects the performance of LOAD DATA a bit, even if no other thread is using the table at the same time.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Fields terminated by</p></td>
<td><p>The field terminator to use.</p></td>
</tr>
<tr class="odd">
<td><p>Fields enclosed by</p></td>
<td><p>The field enclosure to use.</p></td>
</tr>
<tr class="even">
<td><p>Fields escaped by</p></td>
<td><p>The escape character to use.</p></td>
</tr>
<tr class="odd">
<td><p>Lines started by</p></td>
<td><p>The line start string to use.</p></td>
</tr>
<tr class="even">
<td><p>Lines terminated by</p></td>
<td><p>The line termination string to use.</p></td>
</tr>
<tr class="odd">
<td><p>Fields</p></td>
<td><p>The fields to load, separated by comma (,).</p></td>
</tr>
<tr class="even">
<td><p>Replace data</p></td>
<td><p>Check this option if you want to replace the data in the target data.</p></td>
</tr>
<tr class="odd">
<td><p>Ignore the first …​ lines</p></td>
<td><p>Ignores the first …​ lines in the text file.</p></td>
</tr>
<tr class="even">
<td><p>Add files to result</p></td>
<td><p>Check this option if you want to re-use the filename of the text file in a next workflow action.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:18 +0200

</div>

</div>

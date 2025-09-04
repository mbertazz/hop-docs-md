<div id="header">

# <span class="image image-doc-icon">![SQL File Output transform Icon](../assets/images/transforms/icons/sqlfileoutput.svg)</span> SQL File Output

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
<p>The SQL File Output transform writes input data to a text file in the form of a set of SQL statements.</p>
</div>
<div class="paragraph">
<p>The SQL is generated in the dialect of the selected database.</p>
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
<td><p>Name of the transform.</p></td>
</tr>
<tr class="even">
<td><p>Connection</p></td>
<td><div class="content">
<div class="ulist">
<ul>
<li><p>Connection : select the database for which you want to generate the SQL. The information in the connection is used to select the appropriate dialect.</p></li>
<li><p>Target schema : the schema of the table to generate the SQL for</p></li>
<li><p>Target table : the name of the table to generate the SQL for</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Output file</p></td>
<td><div class="content">
<div class="ulist">
<ul>
<li><p>Add create table statement : check this if you want the &quot;CREATE TABLE&quot; statement to be included in the generated SQL</p></li>
<li><p>Add truncate table statement: check this if the table is expected to exist and you want the &quot;TRUNCATE TABLE&quot; statement to be included in the generated SQL. Note that this could also be a &quot;DELETE FROM&quot; statement, depending on the database dialect.</p></li>
<li><p>Start new line for each statement : Enable this to increase the readability of the file</p></li>
<li><p>Filename : the filename (without file extension)</p></li>
<li><p>Create parent folder : if you want the parent folder of the specified file to be created if it doesn’t exist already.</p></li>
<li><p>Do not open create at start : if you don’t want an empty file in case there are no input rows</p></li>
<li><p>Extension : the required file extension (&quot;sql&quot; by default)</p></li>
<li><p>Include transformnr in filename : includes the transform number (when running in multiple copies) in the output filename</p></li>
<li><p>Include date in filename : includes the date in the output filename with format yyyyMMdd (20081231)</p></li>
<li><p>Include time in filename : includes the date in the output filename with format HHmmss (235959)</p></li>
<li><p>Append : append the generated SQL to the existing file</p></li>
<li><p>Split every …​ rows : limits the size of a single file by starting a new one every …​ rows.</p></li>
<li><p>Show filenames : hit this button to see the complete filename after assembly of the various parts (filename, extension, transformnr, date and time)</p></li>
<li><p>Add File to result: Adds the filenames written to the result of this pipeline. A unique list is being kept in memory that can be used in the next workflow action in a workflow, for example in another pipeline.</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Content Tab

| Option      | Description                                  |
| ----------- | -------------------------------------------- |
| Date format | Allows you to specify the date format.       |
| Encoding    | Allows you to specify the text file encoding |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:11 +0200

</div>

</div>

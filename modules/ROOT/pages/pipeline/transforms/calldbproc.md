<div id="header">

# <span class="image image-doc-icon">![Call DB procedure transform Icon](../assets/images/transforms/icons/dbproc.svg)</span> Call DB procedure

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
<p>The Call DB Procedure transform allows you to execute a database procedure (or function) and get the result(s) back. With MySQL and JDBC, it is not possible to retrieve the result set of a stored procedure. Stored procedures and functions can only return values through their function arguments and those arguments must be defined in the Parameters section of the DB Procedure Call configuration.</p>
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
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
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
<td><p>Name of the transform; this name has to be unique in a single pipeline</p></td>
</tr>
<tr class="even">
<td><p>Connection</p></td>
<td><p>Name of the database connection on which the procedure resides</p></td>
</tr>
<tr class="odd">
<td><p>Proc-name</p></td>
<td><p>Name of the procedure or function to call</p></td>
</tr>
<tr class="even">
<td><p>Find it</p></td>
<td><p>Click to search on the specified database connection for available procedures and functions (Oracle and SQL Server only)</p></td>
</tr>
<tr class="odd">
<td><p>Enable auto</p></td>
<td><p>In some instances you want to perform updates</p></td>
</tr>
<tr class="even">
<td><p>commit</p></td>
<td><p>in the database using the specified procedure. In that case you can either have the changes performed using auto-commit or not. If auto-commit is disabled, a single commit is being performed after the last row is received by this transform.</p></td>
</tr>
<tr class="odd">
<td><p>Result name</p></td>
<td><p>Name of the result of the function call; leave blank if this is a procedure</p></td>
</tr>
<tr class="even">
<td><p>Result type</p></td>
<td><p>Type of the result of the function call; not used in case of a procedure.</p></td>
</tr>
<tr class="odd">
<td><p>Parameters</p></td>
<td><div class="content">
<div class="paragraph">
<p>List of parameters that the procedure or function needs</p>
</div>
<div class="ulist">
<ul>
<li><p>Field name: Name of the field.</p></li>
<li><p>Direction: Can be either IN (input only), OUT (output only), INOUT (value is changed on the database).</p></li>
<li><p>Type: Used for output parameters so that Hop knows what returns</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Get Fields</p></td>
<td><p>Fills in all the fields in the input streams to make your life easier; delete the lines you don’t need and re-order the remaining lines</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:54 +0200

</div>

</div>

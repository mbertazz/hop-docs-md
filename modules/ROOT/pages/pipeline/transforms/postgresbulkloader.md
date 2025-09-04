<div id="header">

# <span class="image image-doc-icon">![PostgreSQL Bulk Loader transform Icon](../assets/images/transforms/icons/PGBulkLoader.svg)</span> PostgreSQL Bulk Loader

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
<p>The PostgreSQL Bulk Loader transform streams data from Hop to Postgresql using <a href="https://www.postgresql.org/docs/current/sql-copy.html">&quot;COPY DATA FROM STDIN&quot;</a> into the database.</p>
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
<td>replace boolean fields in your pipeline stream by string fields with &quot;Y&quot; or &quot;N&quot; values to avoid errors.</td>
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

<div class="admonitionblock important">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Important
</div></td>
<td>The PostgreSQL Bulk Loader is linked to the database type. It will fetch the JDBC driver from the hop/lib/jdbc folder.<br />
<br />
Valid locations for the JDBC driver for this transform are the database plugin lib and the main hop/lib folder. It will not work in combination with the SHARED_JDBC_FOLDER variable.</td>
</tr>
</tbody>
</table>

</div>

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
<td><p>Connection</p></td>
<td><p>Name of the database connection on which the target table resides.</p></td>
</tr>
<tr class="odd">
<td><p>Target schema</p></td>
<td><p>The name of the Schema for the table to write data to. This is important for data sources that allow for table names with dots '.' in it.</p></td>
</tr>
<tr class="even">
<td><p>Target table</p></td>
<td><p>Name of the target table.</p></td>
</tr>
<tr class="odd">
<td><p>Load action</p></td>
<td><p>Insert, Truncate. Insert inserts, truncate first truncates the table.</p></td>
</tr>
<tr class="even">
<td><p>DB Name Override</p></td>
<td><p>(optional) database name to override the database name used in this transform’s connection.</p></td>
</tr>
<tr class="odd">
<td><p>Enclosure</p></td>
<td><p>the enclosure character to use in the <code>QUOTE AS</code> part of the copy command</p></td>
</tr>
<tr class="even">
<td><p>Delimiter</p></td>
<td><p>the delimiter character to use in the <code>DELIMITER AS</code> part of the copy command</p></td>
</tr>
<tr class="odd">
<td><p>Stop on error</p></td>
<td><p>Stop the execution of this transform when an error occurs</p></td>
</tr>
<tr class="even">
<td><p>Fields to load</p></td>
<td><div class="content">
<div class="paragraph">
<p>This table contains a list of fields to load data from, properties include:</p>
</div>
<div class="ulist">
<ul>
<li><p>Table field: Table field to be loaded in the PostgreSQL table;</p></li>
<li><p>Stream field: Field to be taken from the incoming rows;</p></li>
<li><p>Date mask: Either &quot;Pass through, &quot;Date&quot; or &quot;DateTime&quot;, determines how date/timestamps will be loaded in PostgreSQL.</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:50 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![CrateDB Bulk Loader transform Icon](../assets/images/transforms/icons/cratedbulkloader.svg)</span> CrateDB Bulk Loader

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
<p>The CrateDB Bulk Loader transform loads data from Apache Hop to CrateDB using two different approaches:</p>
</div>
<div class="ulist">
<ul>
<li><p>the <a href="https://cratedb.com/docs/crate/reference/en/5.7/sql/statements/copy-from.html#copy-from"><code>COPY FROM</code></a> command.</p></li>
<li><p>The <a href="https://cratedb.com/docs/crate/reference/en/latest/interfaces/http.html#bulk-operations">CrateDB HTTP endpoint</a> for bulk operations.</p></li>
</ul>
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
<td>The CrateDB Bulk Loader is linked to the database type. When the COPY mode is used, it will fetch the JDBC driver from the hop/lib/jdbc folder.<br />
</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## General Options

<div class="sectionbody">

| Option         | Description                                                                                                                                                                                          |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name | Name of the transform.                                                                                                                                                                               |
| Target schema  | The name of the target schema to write data to. This is a mandatory field because CrateDB needs to know which of the default schemas write to (`doc` and `blob` are the default schemas in CrateDB). |
| Target table   | The name of the target table to write data to.                                                                                                                                                       |

</div>

</div>

<div class="sect1">

## Main Options

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
<td><p>Connection</p></td>
<td><p>Name of the database connection on which the target table resides.</p></td>
</tr>
<tr class="even">
<td><p>Use HTTP Endpoint</p></td>
<td><p>Choose the mode to use to load data into CrateDB. Supported options are <code>HTTP Endpoint</code> and <code>COPY</code>; when <code>HTTP Endpoint</code> is selected, the <code>COPY</code> options are disabled and vice versa.</p></td>
</tr>
<tr class="odd">
<td><p>Batch size</p></td>
<td><p>HTTP mode works writing in batch. The number of rows to send in a single batch to CrateDB must be set as there’s no default value.</p></td>
</tr>
<tr class="even">
<td><p>Specify database fields</p></td>
<td><p>Specify the database and stream fields mapping</p></td>
</tr>
<tr class="odd">
<td><p>Stream to file</p></td>
<td><p>Write the current pipeline stream to a file in the local filesystem or in S3 before performing the <code>COPY</code> load.</p></td>
</tr>
<tr class="even">
<td><p>Local folder</p></td>
<td><p>Local folder where to store files that will be used by the <code>COPY</code> command.</p>
<p>As per documentation, CrateDB retrieves files from its nodes filesystem (scheme <code>file://</code>). However, in most cases, Hop is executed in a different machine than the CrateDB one, so the most adopted solution with such scenarios is mapping the remote folder (CrateDB) with a local one (Hop) via volumes, for example.</p>
<p>In the <code>Local folder</code> field, you can specify the local folder where the file will be written. The file will be written in the local filesystem, which is linked to the remote filesystem (for e.g. Docker Volume).</p>
<p>Leave it empty otherwise in other scenarios (i.e.: writing to S3).</p></td>
</tr>
<tr class="odd">
<td><p>Read from file</p></td>
<td><p>Do not stream the contents of the current pipeline, but perform the <code>COPY</code> load from a pre-existing file in the local filesystem or in S3. Supported formats are <code>CSV</code> (comma delimited).</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## AWS Authentication

<div class="sectionbody">

| Option                   | Description                                                                                                                            |
| ------------------------ | -------------------------------------------------------------------------------------------------------------------------------------- |
| Use AWS system variables | When selected, picks up the `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` values from your operating system’s environment variables. |
| AWS\_ACCESS\_KEY\_ID     | (if `Use AWS system variables` is unchecked) specify a value or variable for your `AWS_ACCESS_KEY_ID`.                                 |
| AWS\_SECRET\_ACCESS\_KEY | (if `Use AWS system variables` is unchecked) specify a value or variable for your `AWS_SECRET_ACCESS_KEY`.                             |

</div>

</div>

<div class="sect1">

## HTTP Authentication

<div class="sectionbody">

<div class="paragraph">

At the moment, Hop only supports the `Basic` and `Bearer` authentication methods.

</div>

| Option        | Description                                     |
| ------------- | ----------------------------------------------- |
| HTTP Login    | Insert the username for the HTTP authentication |
| HTTP password | Insert the password for the HTTP authentication |

</div>

</div>

<div class="sect1">

## Fields

<div class="sectionbody">

<div class="paragraph">

Map the current stream fields to the CrateDB table’s columns.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:00 +0200

</div>

</div>

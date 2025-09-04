<div id="header">

# <span class="image image-doc-icon">![Redshift Bulk Loader transform Icon](../assets/images/transforms/icons/redshiftbulkloader.svg)</span> Redshift Bulk Loader

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
<p>The Redshift Bulk Loader transform loads data from Apache Hop to AWS Redshift using the <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html"><code>COPY</code></a> command.</p>
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
<td>make sure your target Redshift table has a layout that is compatible with Parquet data types, e.g. use <code>int8</code> instead of <code>int4</code> data types.</td>
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
<td>The Redshift Bulk Loader is linked to the database type. It will fetch the JDBC driver from the hop/lib/jdbc folder.<br />
</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

\+

</div>

</div>

</div>

<div class="sect1">

## General Options

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
<td><p>The name of the target schema to write data to.</p></td>
</tr>
<tr class="even">
<td><p>Target table</p></td>
<td><p>The name of the target table to write data to.</p></td>
</tr>
<tr class="odd">
<td><p>AWS Authentication</p></td>
<td><div class="content">
<div class="paragraph">
<p>choose which authentication method to use with the <code>COPY</code> command. Supported options are <code>AWS Credentials</code> and <code>IAM Role</code>.<br />
</p>
</div>
<div class="ulist">
<ul>
<li><p>check the <a href="https://docs.aws.amazon.com/redshift/latest/dg/copy-usage_notes-access-permissions.html#copy-usage_notes-access-key-based">Key-based access control</a> for more information on the <code>Credentials</code> option.</p></li>
<li><p>check the <a href="https://docs.aws.amazon.com/redshift/latest/dg/copy-usage_notes-access-permissions.html#copy-usage_notes-access-role-based">IAM Role</a> docs for more information on the <code>IAM Role</code> option.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Use AWS system variables</p></td>
<td><p>(<code>Credentials</code> only!) pick up the <code>AWS_ACCESS_KEY_ID</code> and <code>AWS_SECRET_ACCESS_KEY</code> values from your operating system’s environment variables.</p></td>
</tr>
<tr class="odd">
<td><p>AWS_ACCESS_KEY_ID</p></td>
<td><p>(if <code>Credentials</code> is selected and <code>Use AWS system variables</code> is unchecked) specify a value or variable for your <code>AWS_ACCESS_KEY_ID</code>.</p></td>
</tr>
<tr class="even">
<td><p>AWS_SECRET_ACCESS_KEY</p></td>
<td><p>(if <code>Credentials</code> is selected and <code>Use AWS system variables</code> is unchecked) specify a value or variable for your <code>AWS_SECRET_ACCESS_KEY</code>.</p></td>
</tr>
<tr class="odd">
<td><p>IAM Role</p></td>
<td><p>(if <code>IAM Role</code> is selected) specify the IAM Role to use, in the syntax <code>arn:aws:iam::&lt;aws-account-id&gt;:role/&lt;role-name&gt;</code></p></td>
</tr>
<tr class="even">
<td><p>Truncate table</p></td>
<td><p>Truncate the target table before loading data.</p></td>
</tr>
<tr class="odd">
<td><p>Truncate on first row</p></td>
<td><p>Truncate the target table before loading data, but only when a first data row is received (will not truncate when a pipeline runs an empty stream (0 rows)).</p></td>
</tr>
<tr class="even">
<td><p>Specify database fields</p></td>
<td><p>Specify the database and stream fields mapping</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Main Options

<div class="sectionbody">

| Option                                | Description                                                                                                                                                                   |
| ------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Stream to S3 CSV                      | write the current pipeline stream to a CSV file in an S3 bucket before performing the `COPY` load.                                                                            |
| Load from existing file               | do not stream the contents of the current pipeline, but perform the `COPY` load from a pre-existing file in S3. Suppoorted formats are `CSV` (comma delimited) and `Parquet`. |
| Copy into Redshift from existing file | path to the file in S3 to `COPY` load the data from.                                                                                                                          |

</div>

</div>

<div class="sect1">

## Database fields

<div class="sectionbody">

<div class="paragraph">

Map the current stream fields to the Redshift table’s columns.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:52 +0200

</div>

</div>

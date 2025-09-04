<div id="header">

# <span class="image image-doc-icon">![Parquet File Output transform Icon](../assets/images/transforms/icons/parquet_output.svg)</span> Parquet File Output

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
<p>The Parquet File Output transform writes data into the Apache Parquet file format.</p>
</div>
<div class="paragraph">
<p>For more information on this see: <a href="http://parquet.apache.org/">Apache Parquet</a>.</p>
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

<div class="paragraph">

Notes:

</div>

<div class="ulist">

  - The date optionally referenced in the output file name(s) will be the start of the pipeline execution.

  - Hop Date types are serialized as EPOC: milliseconds since `1970-01-01 00:00:00.000`

  - Strings are written as binary in UTF-8

  - Compression of data into columnar format is being done in memory. This happens when all rows are written. To not run out of memory make sure to specify a split size.

</div>

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
<td><p>Name of the transform this name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Base file name</p></td>
<td><p>Specify the base filename. This is composed of where you want to write the Parquet file to as well as the start of the filename. Examples:</p>
<p>Write to Amazon AWS S3 : <code>s3://my-bucket-name/transactions</code></p>
<p>Write to a local folder : <code>/my/folder/customer-data</code></p></td>
</tr>
<tr class="odd">
<td><p>Extension</p></td>
<td><p>This is the extension of the file. Usually this is simply <code>snappy</code></p></td>
</tr>
<tr class="even">
<td><p>Include date?</p></td>
<td><p>Check this box if you want to include the date in the filename with mask <code>yyyMMdd</code></p></td>
</tr>
<tr class="odd">
<td><p>Include time?</p></td>
<td><p>Check this box if you want to include the time in the filename with mask <code>HHmmss</code></p></td>
</tr>
<tr class="even">
<td><p>Include date-time-format?</p></td>
<td><p>Check this box if you want to include a specific custom date-time format in the filename</p></td>
</tr>
<tr class="odd">
<td><p>Include transform copy number?</p></td>
<td><p>Enable this option if you run this transform in multiple copies to not have multiple threads write to the same file. The copy number is formatted with mask <code>00</code></p></td>
</tr>
<tr class="even">
<td><p>Split into parts and include number?</p></td>
<td><p>Enable this option if you want to split the output into multiple parts. Specify a split size larger than 0 and this is then the number of rows per file. The file part (split) number will be included in the filename to make sure that the same file is not being overwritten. The split number is formatted with mask <code>0000</code></p></td>
</tr>
<tr class="odd">
<td><p>Compression codec</p></td>
<td><p>Here you can indicate which compression codec you want to use. The default is SNAPPY for Apache Snappy compression.</p></td>
</tr>
<tr class="even">
<td><p>Version</p></td>
<td><p>Choose the protocol version of Parquet (1.0 or 2.0)</p></td>
</tr>
<tr class="odd">
<td><p>Row group size</p></td>
<td><p>The amount of rows in a group</p></td>
</tr>
<tr class="even">
<td><p>Data page size</p></td>
<td><p>The data page size on a 1kB boundary (default is 1048576)</p></td>
</tr>
<tr class="odd">
<td><p>Dictionary page size</p></td>
<td><p>The data dictionary page size on a 1kB boundary (default is 1048576)</p></td>
</tr>
<tr class="even">
<td><p>Fields</p></td>
<td><p>You can specify which fields to write and in which order. You can use the &quot;Get Fields&quot; button to populate the dialog.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:47 +0200

</div>

</div>

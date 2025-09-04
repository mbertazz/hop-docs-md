<div id="header">

# <span class="image image-doc-icon">![Combination lookup/update transform Icon](../assets/images/transforms/icons/combinationlookup.svg)</span> Combination lookup/update

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
<p>The Combination Lookup-Update transform allows you to store information in a junk-dimension table. The transform can possibly also be used to maintain Kimball pure Type 1 dimensions.</p>
</div>
<div class="paragraph">
<p>This transform will…​</p>
</div>
<div class="olist arabic">
<ol>
<li><p>Look up combination of business key field1…​ fieldn from the input stream in a dimension table</p></li>
<li><p>If this combination of business key fields exists, return its technical key (surrogate id);</p></li>
<li><p>If this combination of business key doesn’t exist yet, insert a row with the new key fields and return its (new) technical key</p></li>
<li><p>Put all input fields on the output stream including the returned technical key, but remove all business key fields if &quot;remove lookup fields&quot; is true.</p></li>
</ol>
</div>
<div class="paragraph">
<p>This transform creates/maintains a technical key out of data with business keys. After passing through this transform all of the remaining data changes for the dimension table can be made as updates, as either a row for the business key already existed or was created.</p>
</div>
<div class="paragraph">
<p>This transform will maintain the key information only. You must update the non-key information in the dimension table, e.g. by putting an update transform (based on technical key) after the combination update/lookup transform.</p>
</div>
<div class="paragraph">
<p>Apache Hop will store the information in a table where the primary key is the combination of the business key fields in the table. Because this process can be slow if you have a large number of fields, a &quot;hash code&quot; field is supported that is representing all fields in the dimension. This can speed up lookup performance dramatically while limiting the fields to index to one field only.</p>
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
<td><p>Name of the transform.</p></td>
</tr>
<tr class="even">
<td><p>Connection</p></td>
<td><p>Name of the database connection on which the dimension table resides.</p></td>
</tr>
<tr class="odd">
<td><p>Target schema</p></td>
<td><p>This allows you to specify a schema name.</p></td>
</tr>
<tr class="even">
<td><p>Target table</p></td>
<td><p>Name of the dimension table.</p></td>
</tr>
<tr class="odd">
<td><p>Commit size</p></td>
<td><p>Define the commit size, e.g. setting this to 10 will generate a commit every 10 inserts or updates.</p></td>
</tr>
<tr class="even">
<td><p>Cache size in rows</p></td>
<td><p>This is the cache size in number of rows that will be held in memory to speed up lookups by reducing the number of round trips to the database.</p>
<p>A cache size of 0 caches as many rows as possible and until your JVM runs out of memory. Use this option wisely with dimensions that can’t grown too large. A cache size of -1 means that caching is disabled.</p></td>
</tr>
<tr class="odd">
<td><p>Key fields</p></td>
<td><p>Specify the names of the keys in the stream and in the dimension table. This will enable the transform to do the lookup.</p></td>
</tr>
<tr class="even">
<td><p>Technical key field</p></td>
<td><p>This indicates the primary key of the dimension. It is also referred to as Surrogate Key.</p></td>
</tr>
<tr class="odd">
<td><p>Creation of technical key</p></td>
<td><div class="content">
<div class="paragraph">
<p>Specify howthe technical key is generated, options which are not available for your connection will be grayed out:</p>
</div>
<div class="ulist">
<ul>
<li><p>Use table maximum + 1: A new technical key will be created from the maximum key in the table. Note that the new maximum is always cached, so that the maximum does not need to be calculated for each new row.</p></li>
<li><p>Use sequence: Specify the sequence name if you want to use a database sequence on the table connection to generate the technical key (typical for Oracle e.g.).</p></li>
<li><p>Use auto increment field: Use an auto increment field in the database table to generate the technical key (supported e.g. by DB2).</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Remove lookup fields?</p></td>
<td><p>Enable this option if you want to remove all the lookup fields from the input stream in the output. The only extra field added is then the technical key.</p></td>
</tr>
<tr class="odd">
<td><p>Use hashcode</p></td>
<td><p>This option allows you to generate a hash code, representing all values in the key fields in a numerical form (a signed 64 bit integer). This hash code has to be stored in the table.</p></td>
</tr>
<tr class="even">
<td><p>Date of last update field</p></td>
<td><p>When required, specify the date of last update field (timestamp) from the source system to be copied to the data warehouse. For example, when you have an address without a primary key. The field will not be part of the lookup fields (nor be part in the hash code calculation). The value is written once only because any change results in a new record being written.</p></td>
</tr>
<tr class="odd">
<td><p>Get Fields button</p></td>
<td><p>Fills in all the available fields on the input stream, except for the keys you specified.</p></td>
</tr>
<tr class="even">
<td><p>SQL button</p></td>
<td><p>Generates the SQL to build the dimension and allows you to execute this SQL.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:59 +0200

</div>

</div>

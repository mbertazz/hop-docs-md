<div id="header">

# <span class="image image-doc-icon">![Table Output transform Icon](../assets/images/transforms/icons/tableoutput.svg)</span> Table Output

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
<p>The Table Output transform inserts data into a relational database table.</p>
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

<div class="paragraph">

Table Output is equivalent to the DML operator INSERT.

</div>

<div class="paragraph">

This transform provides configuration options for target table and a lot of housekeeping and/or performance-related options such as Commit Size and Use batch update for inserts.

</div>

<div class="paragraph">

If you have a database table that has identity columns and you are inserting a record, as part of the insert, the JDBC driver will typically return the auto-generated key it used when performing the insert.

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
<td><p>Name of the transform, this name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Connection</p></td>
<td><p>The database connection to which data is written</p></td>
</tr>
<tr class="odd">
<td><p>Target Schema</p></td>
<td><p>The name of the Schema for the table to write data to. This is important for data sources that allow for table names with periods in them.</p></td>
</tr>
<tr class="even">
<td><p>Target table</p></td>
<td><p>The name of the table to which data is written.</p></td>
</tr>
<tr class="odd">
<td><p>Commit size</p></td>
<td><p>Use transactions to insert rows in the database table. Commit the connection every N rows if N is larger than zero (0); otherwise, don’t use transactions. (Slower)</p></td>
</tr>
<tr class="even">
<td><p>Truncate table</p></td>
<td><p>Select if you want the table to be truncated before the first row is inserted into the table</p></td>
</tr>
<tr class="odd">
<td><p>Truncate on first row</p></td>
<td><p>Select if you want the table to be truncated when the transform receives it’s first row</p></td>
</tr>
<tr class="even">
<td><p>Ignore insert errors</p></td>
<td><p>Makes Hop ignore all insert errors such as violated primary keys. A maximum of 20 warnings will be logged however. This option is not available for batch inserts.</p></td>
</tr>
<tr class="odd">
<td><p>Specify database fields</p></td>
<td><p>Enable this option to specify the fields in the Database fields tab. Otherwise all fields are taken into account by default.</p></td>
</tr>
<tr class="even">
<td><p>Partition data over tables</p></td>
<td><div class="content">
<div class="paragraph">
<p>Use to split the data over multiple tables. For example instead of inserting all data into table SALES, put the data into tables SALES_200510, SALES_200511, SALES_200512, …​ Use this on systems that don’t have partitioned tables and/or don’t allow inserts into UNION ALL views or the master of inherited tables. The view SALES allows you to report on the complete sales:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight"><code>CREATE OR REPLACE VIEW SALES AS
SELECT * FROM SALES_200501
UNION ALL
SELECT * FROM SALES_200502
UNION ALL
SELECT * FROM SALES_200503
UNION ALL
SELECT * FROM SALES_200504
...</code></pre>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Use batch update for inserts</p></td>
<td><p>Enable if you want to use batch inserts. This feature groups inserts statements to limit round trips to the database. This is the fastest option and is enabled by default.</p></td>
</tr>
<tr class="even">
<td><p>Is the name of the table defined in a field?</p></td>
<td><p>Use these options to split the data over one or more tables; the name of the target table is defined in the field you specify. For example if you store customer data in the field gender, the data might end up in tables M and F (Male and Female). There is an option to exclude the field containing the tablename from being inserted into the tables.</p></td>
</tr>
<tr class="odd">
<td><p>Field that contains name of table</p></td>
<td><p>When the option &quot;Is the name of the table defined in a field?&quot; is enabled, enter the field name to use here.</p></td>
</tr>
<tr class="even">
<td><p>Store the table name field</p></td>
<td><p>When the option &quot;Is the name of the table defined in a field?&quot; is enabled, you can chose is this field should we written to the table or not.</p></td>
</tr>
<tr class="odd">
<td><p>Return auto-generated key</p></td>
<td><p>Enable if you want to get back the key that was generated by inserting a row into the table</p></td>
</tr>
<tr class="even">
<td><p>Name of auto-generated key field</p></td>
<td><p>Specifies the name of the new field in the output rows that contains the auto-generated key</p></td>
</tr>
<tr class="odd">
<td><p>SQL</p></td>
<td><p>Generates the SQL to create the output table automatically</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:17 +0200

</div>

</div>

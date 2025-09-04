<div id="header">

# <span class="image image-doc-icon">![JDBC Metadata transform Icon](../assets/images/transforms/icons/jdbcmetadata.svg)</span> JDBC Metadata

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
<p>The JDBC Metadata transform allows you to fetch metadata from a database connection, this includes schemas, tables and other objects.</p>
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

## Method and Arguments tab

<div class="sectionbody">

<div class="paragraph">

In this tab, you can specify the java method of the DatabaseMetaData object which is to be called to obtain metadata. It also controls some other aspects of the steps behavior.

</div>

<div class="paragraph">

**Always pass the input row:** Controls how this step behaves in case there is no metadata. If this option is not checked, the step will not produce any output rows. If this option is checked, the incoming row will still be passed. Any output fields that originate from the metadata resultset will be NULL in this case.

</div>

<div class="paragraph">

**Metadata Method:** This dropdown list can be used to specify which metadata method to call upon the DatabaseMetaData object to obtain metadata:

</div>

<div class="ulist">

  - Catalogs: see DatabaseMetaData.getCatalogs()

  - Best row identifier: see [DatabaseMetaData.getBestRowIdentifier()](http://docs.oracle.com/javase/7/docs/api/java/sql/DatabaseMetaData.html#getBestRowIdentifier\(java.lang.String,%20java.lang.String,%20java.lang.String,%20int,%20boolean\))

  - Column privileges: see [DatabaseMetaData.getColumnPrivileges()](http://docs.oracle.com/javase/7/docs/api/java/sql/DatabaseMetaData.html#getColumnPrivileges\(java.lang.String,%20java.lang.String,%20java.lang.String,%20java.lang.String\))

  - Columns: see [DatabaseMetaData.getColumns()](http://docs.oracle.com/javase/7/docs/api/java/sql/DatabaseMetaData.html#getColumns\(java.lang.String,%20java.lang.String,%20java.lang.String,%20java.lang.String\))

  - Cross references: see [DatabaseMetaData.getCrossReferences()](http://docs.oracle.com/javase/7/docs/api/java/sql/DatabaseMetaData.html#getCrossReference\(java.lang.String,%20java.lang.String,%20java.lang.String,%20java.lang.String,%20java.lang.String,%20java.lang.String\))

  - Exported key columns: see [DatabaseMetaData.getExportedKeys()](http://docs.oracle.com/javase/7/docs/api/java/sql/DatabaseMetaData.html#getExportedKeys\(java.lang.String,%20java.lang.String,%20java.lang.String\))

  - Foreign key columns: see [DatabaseMetaData.getImportedKeys()](http://docs.oracle.com/javase/7/docs/api/java/sql/DatabaseMetaData.html#getImportedKeys\(java.lang.String,%20java.lang.String,%20java.lang.String\))

  - Primary key columns: see [DatabaseMetaData.getPrimaryKeys()](http://docs.oracle.com/javase/7/docs/api/java/sql/DatabaseMetaData.html#getPrimaryKeys\(java.lang.String,%20java.lang.String,%20java.lang.String\))

  - Schemas: see DatabaseMetaData.getSchemas()

  - Table privileges: see [DatabaseMetaData.getTablePrivileges()](http://docs.oracle.com/javase/7/docs/api/java/sql/DatabaseMetaData.html#getTablePrivileges\(java.lang.String,%20java.lang.String,%20java.lang.String\))

  - Table types: see DatabaseMetaData.getTableTypes()

  - Tables: see [DatabaseMetaData.getTables()](http://docs.oracle.com/javase/7/docs/api/java/sql/DatabaseMetaData.html#getTables\(java.lang.String,%20java.lang.String,%20java.lang.String,%20java.lang.String%5B%5D\))

  - Data types: see DatabaseMetaData.getTypeInfo()

  - Version columns: see [DatabaseMetaData.getVersionColumns()](http://docs.oracle.com/javase/7/docs/api/java/sql/DatabaseMetaData.html#getVersionColumns\(java.lang.String,%20java.lang.String,%20java.lang.String\))

  - After selecting a method, fields will be added to the tab so you can specify any arguments required by the method. For a description of the method-specific arguments and their meaning, please refer to the javadoc for each method (linked above).

</div>

<div class="paragraph">

**Get arguments from fields:** If this option is checked, arguments to the method can be specified by selecting a field from the incoming stream, and the value of that field is used as actual argument value. If this option is not checked, argument values can be entered directly as a literal into the argument fields.

</div>

<div class="paragraph">

**Remove argument fields:** This option is applicable when the Get arguments from fields is checked. When checked, the fields that are selected as argument fields are removed from the output stream. This is typically a convenient option when you chain several JdbcMetaData steps in sequence, using the fields coming out of upstream steps as argument fields for downstream steps. In such a case using this option will remove a lot of duplicate fields.

</div>

</div>

</div>

<div class="sect1">

## Output Fields tab

<div class="sectionbody">

<div class="paragraph">

This tab allows you to control how the output metadata is added to the outputstream.

</div>

<div class="paragraph">

**Output Fields:** This grid is automatically filled with the appropriate fields as you select a particular metadata method on the Method and Aruments tab. Use this gridview to remove or rename output fields.

</div>

<div class="paragraph">

**Get fields:** use this button to refill the grid. This will re-add any removed fields, but preserve any renamed fields.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:29 +0200

</div>

</div>

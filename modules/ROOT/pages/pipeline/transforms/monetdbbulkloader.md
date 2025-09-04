<div id="header">

# <span class="image image-doc-icon">![MonetDB Bulk Loader transform Icon](../assets/images/transforms/icons/monetdbbulkloader.svg)</span> MonetDB Bulk Loader

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
<p>The MonetDB Bulk Loader transform bulk loads data to MonetDB. This significantly speeds up data loading to MonetDB.</p>
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

<div class="sect2">

### General

| Field          | Description                                                              |
| -------------- | ------------------------------------------------------------------------ |
| Transform name | Specify the unique name of the MongoDB Output transform in the pipeline. |
| Connection     | Select your MonetDB database connection                                  |

</div>

<div class="sect2">

### General Settings tab

<div class="paragraph">

This tab contains the destination settings, buffer size and location for the logfile.

</div>

| Field                          | Description                                                                                                       |
| ------------------------------ | ----------------------------------------------------------------------------------------------------------------- |
| Target Schema                  | Specify the database schema that has to be used.                                                                  |
| Target Table                   | Specify the database table, use the Browse button next to this field to use a menu to select the table and schema |
| Buffer size (rows)             | Specify how many rows will be kept in memory before transferring to MonetDB                                       |
| Log file                       | Specify the location for the Bulk command logs returned from MonetDB                                              |
| Truncate table                 | Remove all data from the destination table before loading the data.                                               |
| Fully quote all SQL statements | Forces quotes around all objects when executing                                                                   |

</div>

<div class="sect2">

### MonetDB Settings tab

<div class="paragraph">

This tab contains information about the temporary files that are generated to load the data.

</div>

| Field                   | Description                                                                                                               |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| Field separator         | This is the separator that will be used in the Bulk copy command, it is not allowed to have this field in the input data. |
| Field enclosure         | The enclosure character used around values.                                                                               |
| Null values represented | Null values will be converted to this string, this allows to differentiate empty strings and null values.                 |
| Encoding                | File encoding used when generating the files for the copy statement.                                                      |

</div>

<div class="sect2">

### Output Fields tab

<div class="paragraph">

This tab contains the source to target mapping.

</div>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Field</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Target table field</p></td>
<td><p>Field containing the name of the field in the target table</p></td>
</tr>
<tr class="even">
<td><p>Incoming stream field</p></td>
<td><p>Field containing the value we want to insert in target table</p></td>
</tr>
<tr class="odd">
<td><p>Format is ok</p></td>
<td><p>Set to Y if the incoming stream’s field is the correct format according to the target datatatype.</p>
<p><strong>NOTE:</strong></p>
<p>This setting is evaluated only when Lazy Conversion is applied.</p>
<p>For example: imagine you are getting values from a text file, your incoming data contains numbers or dates and Lazy Conversion is enabled in the input transform. In this case, the data is not transformed internally to the target data type and is managed as a String by Hop. By setting this flag to Y, we are saying Hop that the incoming data’s value is already in a format clearly understandable by the target database according to the target datatype.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:39 +0200

</div>

</div>

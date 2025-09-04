<div id="header">

# <span class="image image-doc-icon">![MySql Bulk loader transform Icon](../assets/images/transforms/icons/mysqlbulkloader.svg)</span> MySql Bulk Loader

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
<p>The MySql Bulk Loader transform uses the copy command to load data as opposed to sending individual insert statements.</p>
</div>
<div class="paragraph">
<p>It will create a local file which will then be loaded using the <code>LOAD DATA</code> command. More information <a href="https://dev.mysql.com/doc/refman/9.2/en/load-data.html">here</a></p>
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

<div class="admonitionblock note">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Note
</div></td>
<td>Bulk loading must be enabled on both server and client in the client connection add following option <code>allowLoadLocalInfile=true</code>. On the server side the following query should return &quot;ON&quot; <code>show global variables like 'local_infile';</code></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### General

| option                        | description                                                                                                              |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| Connection                    | The database connection to use when bulk loading                                                                         |
| Target Schema                 | (Optional) The schema containing the table being loaded.                                                                 |
| Target Table                  | The name of the table being loaded.                                                                                      |
| Fifo file                     | Temporary file location                                                                                                  |
| Delimiter                     | Delimiter that determines the field.                                                                                     |
| Enclosure                     | You can specify an enclosure string which when placed around a value allows delimiters to be present in it.              |
| Escape character              | To include delimiter characters in values sometimes an escape string is used like backslash, double backslash and so on. |
| Character set (load command)  | The used character set in the load command (optional).                                                                   |
| Character set (file creation) | The used character set when creating the file (optional).                                                                |
| Bulk size (rows)              | This will split the data load in multiple chucks.                                                                        |
| Use replace clause            | With REPLACE, new rows that have the same value as a unique key value in an existing row replace the existing row.       |
| Use Ignore clause             | With IGNORE, new rows that duplicate an existing row on a unique key value are discarded.                                |
| Local data                    | If LOCAL is not specified, the file must be located on the server host.                                                  |

</div>

<div class="sect2">

### Fields

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 80%" />
</colgroup>
<thead>
<tr class="header">
<th>option</th>
<th>description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Table field</p></td>
<td><p>Name of the field in the table.</p></td>
</tr>
<tr class="even">
<td><p>Stream field</p></td>
<td><p>Name of the field in the stream.</p></td>
</tr>
<tr class="odd">
<td><p>Field format OK?</p></td>
<td><div class="content">
<div class="paragraph">
<p>You can decide if the format should be kept (Don’t change formatting) or changed:</p>
</div>
<div class="ulist">
<ul>
<li><p>Format as Date (yyyy-MM-dd)</p></li>
<li><p>Format as a timestamp (yyyy-MM-dd HH:mm:ss)</p></li>
<li><p>Format as Number (grouping symbol is &quot;,&quot; - decimal is &quot;.&quot;)</p></li>
<li><p>Escape enclosure characters when found</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:41 +0200

</div>

</div>

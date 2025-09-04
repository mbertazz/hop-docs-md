<div id="header">

# <span class="image image-doc-icon">![Cassandra Output transform Icon](../assets/images/transforms/icons/cassandraout.svg)</span> Cassandra Output

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
<p>The Cassandra Output transform writes data to a Cassandra table of an Apache Cassandra cluster using CQL (Cassandra Query Language) version 3.x.</p>
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

| Option                                | Description                                                                                                                                                                                                                                           |
| ------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Cassandra connection                  | Here you specify the name of the connection to use either as a fixed value or as a variable expression. There are buttons to the right of the input field to hel you manage the metadata.                                                             |
| Table to write to                     | Specify the name of the table to write to.                                                                                                                                                                                                            |
| Consistency level                     | Please see [Cassandra Write consistency levels](https://docs.datastax.com/en/cassandra-oss/3.0/cassandra/dml/dmlConfigConsistency.html#Writeconsistencylevels) for a list of possible values.                                                         |
| Commit batch size                     | The number of rows to update at once in each commit                                                                                                                                                                                                   |
| Batch insert timeout                  | Specify the number of milliseconds to wait for a batch to completely insert before splitting into smaller sub-batches. You must specify a value lower than Socket timeout or leave empty for no timeout.                                              |
| Sub batch size                        | Specify the sub-batch size (in number of rows) if the batch must be split because Batch insert timeout is reached.                                                                                                                                    |
| Insert unlogged batches               | Select if you want to use non-atomic batch writing. By default, batches are atomic (if any of the batch succeeds, all of it will succeed). Select this option to remove the atomic restriction.                                                       |
| Time to live (TTL)                    | Specify the amount of time in which to write a column. If the time expires, that column is deleted.                                                                                                                                                   |
| Incoming field to use as the key      | Specify which incoming field to use as the key. You can use to specify the key from the names of incoming transform fields.                                                                                                                           |
| Create table                          | Select to create a named table (column family) if one does not already exist.                                                                                                                                                                         |
| Table creation WITH clause            | Specify additions to the table creation `WITH` clause.                                                                                                                                                                                                |
| Truncate table                        | Select if you want any existing data to be deleted from the named table before inserting incoming rows.                                                                                                                                               |
| Update table metadata                 | Select if you want to update the table metadata with information on incoming fields not already present. If this option is not selected, any unknown incoming fields are ignored unless the Insert fields not in column meta data option is selected. |
| Insert fields not in column meta data | Select if want to insert the table metadata in any incoming fields not present, with respect to the default table validator. This option has no effect if Update table meta data is selected.                                                         |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:55 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![Cassandra SSTable Output transform Icon](../assets/images/transforms/icons/cassandra.svg)</span> Cassandra SSTable Output

</div>

<div id="content">

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
<p>The Cassandra SSTable Output transform writes to a file system directory as a Cassandra SSTable.</p>
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

| Option                            | Description                                                  |
| --------------------------------- | ------------------------------------------------------------ |
| Transform name                    | the name to use for this transform                           |
| Cassandra yaml file               | The cassandra.yaml configuration file to use                 |
| Directory                         | the directory to output to                                   |
| Keyspace                          | the keyspace (database) to use                               |
| Table                             | the table to write to                                        |
| Incoming fields to use as the key | The field in the incoming data to use as the key for inserts |
| Buffer (MB)                       | Size (MB) of write buffer                                    |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:12 +0200

</div>

</div>

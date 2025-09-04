<div id="header">

# <span class="image image-doc-icon">![Cassandra Input transform Icon](../assets/images/transforms/icons/cassandrain.svg)</span> Cassandra Input

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
<p>The Cassandra Input transform reads data from a Cassandra table of an Apache Cassandra cluster using CQL (Cassandra Query Language) version 3.x.</p>
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

| Option                               | Description                                                                                                                                                                                     |
| ------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Cassandra connection                 | Here you specify the name of the connection to use either as a fixed value or as a variable expression. There are buttons to the right of the input field to hel you manage the metadata.       |
| Transport max length                 | Set an optional maximum object size that can be sent. Leaving it blank means that the default cluster value is used. (typically 16384000)                                                       |
| Execute query for each incoming row? | This will cause the query to be executed repeatedly: once per input row.                                                                                                                        |
| CQL                                  | The Cassandra Query Language statement you want to use. For more information on CQL, see [Introduction to Cassandra Query Language](https://docs.datastax.com/en/cql-oss/3.x/cql/cqlIntro.html) |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:54 +0200

</div>

</div>

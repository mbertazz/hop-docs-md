<div id="header">

# <span class="image image-doc-icon">![Insert / Update transform Icon](../assets/images/transforms/icons/insertupdate.svg)</span> Insert / Update

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
<p>The Insert/Update transform first looks up a row in a table using one or more lookup keys. If a table row for the specified keys can’t be found, a new row is inserted.</p>
</div>
<div class="paragraph">
<p>If it can be found and the fields to update are the same, nothing is done.</p>
</div>
<div class="paragraph">
<p>If they are not all the same, the row in the table is updated.</p>
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

| Option                    | Description                                                                                                                                                                 |
| ------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Commit size               | The number of rows to change (insert / update) before running a commit.                                                                                                     |
| Connection                | The database connection to which data is written                                                                                                                            |
| Don’t perform any updates | If enabled, the values in the database are never updated;only inserts are performed.                                                                                        |
| Key Lookup table          | Allows you to specify a list of field values and comparators. You can use the following comparators: =, = \~NULL, \<\>, \<, ⇐, \>, \>=, LIKE, BETWEEN, IS NULL, IS NOT NULL |
| SQL button                | Click SQL to generate the SQL to create the table and indexes for correct operation.                                                                                        |
| Transform name            | Name of the transform; this name has to be unique in a single pipeline.                                                                                                     |
| Target schema             | The name of the Schema for the table to which data is written. This is important for data sources that allow for table names with periods in them.                          |
| Target table              | Name of the table in which you want to do the insert or update.                                                                                                             |
| Update Fields             | Allows you to specify all fields in the table you want to insert/update including the keys. Avoid updates on certain fields by specifying N in the update column.           |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:28 +0200

</div>

</div>

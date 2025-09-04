<div id="header">

# <span class="image image-doc-icon">![Update transform Icon](../assets/images/transforms/icons/update.svg)</span> Update

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
<p>The Update transform looks up a row in a table using one or more lookup keys and updates it if needed.</p>
</div>
<div class="paragraph">
<p>If the row can’t be found, nothing is done.</p>
</div>
<div class="paragraph">
<p>If the row is found the row in the table is updated.</p>
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

| Option                 | Description                                                                                                                                                                 |
| ---------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Commit size            | The number of rows to update before running a commit.                                                                                                                       |
| Use batch updates?     | Allows the use of batch updates.                                                                                                                                            |
| Skip lookup            | Skips the row lookup.                                                                                                                                                       |
| Ignore lookup failure? | Allows the transform to skip lookup failures.                                                                                                                               |
| Flag field (key found) | Field which contains whether the key was found or not.                                                                                                                      |
| Connection             | The database connection to which data is written.                                                                                                                           |
| Key Lookup table       | Allows you to specify a list of field values and comparators. You can use the following comparators: =, = \~NULL, \<\>, \<, ⇐, \>, \>=, LIKE, BETWEEN, IS NULL, IS NOT NULL |
| SQL button             | Click SQL to generate the SQL to create the table and indexes for correct operation.                                                                                        |
| Transform name         | Name of the transform; this name has to be unique in a single pipeline.                                                                                                     |
| Target schema          | The name of the Schema for the table to which data is written. This is important for data sources that allow for table names with periods in them.                          |
| Target table           | Name of the table in which you want to do the update.                                                                                                                       |
| Update Fields          | Allows you to specify all fields in the table you want to update.                                                                                                           |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:21 +0200

</div>

</div>

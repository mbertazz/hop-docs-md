<div id="header">

# <span class="image image-doc-icon">![Dynamic SQL row transform Icon](../assets/images/transforms/icons/dynamicsqlrow.svg)</span> Dynamic SQL row

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
<p>The Dynamic SQL Row transform allows you to execute a SQL statement that is defined in a database field.</p>
</div>
<div class="paragraph">
<p>The lookup values returned by the transform are added as new fields onto the stream.</p>
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

| Option                          | Description                                                                                                                                                             |
| ------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                  | Name of the transform; This name has to be unique in a single pipeline                                                                                                  |
| Connection                      | Select a database connection for the lookup                                                                                                                             |
| SQL field name                  | Specify the field that contains the SQL to execute                                                                                                                      |
| Number of rows to return        | Specify the number of records to return. 0 means, return all rows                                                                                                       |
| Outer Join                      | \- false: don’t return rows where nothing is found - true: at least return one source row, the rest is NULL                                                             |
| Replace variables               | In case you want to use variables in the SQL, e.g. ${table\_name}, this option needs to be checked.                                                                     |
| Query only on parameters change | If your SQL statements do not change a lot, check this option to reduce the number of physical database queries.                                                        |
| Template SQL                    | In Hop meta and data are separate so you have to specify the meta part in template SQL (field name and type). I mean any statement that returns the same row structure. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:07 +0200

</div>

</div>

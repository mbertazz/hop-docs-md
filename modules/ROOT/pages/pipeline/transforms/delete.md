<div id="header">

# <span class="image image-doc-icon">![Delete transform Icon](../assets/images/transforms/icons/delete.svg)</span> Delete

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
<p>The Delete transform deletes rows of data from a database.</p>
</div>
<div class="paragraph">
<p>This transform is similar to the update family of transforms in that it takes one or more key fields to determine the rows to delete.</p>
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

<div class="imageblock">

<div class="content">

![delete](../assets/images/transforms/delete/delete.png)

</div>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                              | Description                                                                                                                                        |
| ----------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                      | Name of the transform. This name has to be unique in a single pipeline.                                                                            |
| Connection                          | The database connection to which data is written                                                                                                   |
| Target schema                       | The name of the Schema for the table to which data is written. This is important for data sources that allow for table names with periods in them. |
| Target table                        | Name of the table in which you want to do the insert or update.                                                                                    |
| Commit size                         | The number of rows to change (insert / update) before running a commit.                                                                            |
| The keys(s) to look up the value(s) | Specify fields to delete the corresponding rows for                                                                                                |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:04 +0200

</div>

</div>

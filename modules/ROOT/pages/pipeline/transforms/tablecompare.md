<div id="header">

# <span class="image image-doc-icon">![Table Compare transform Icon](../assets/images/transforms/icons/tablecompare.svg)</span> Table Compare

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
<p>The Table Compare transform compares the data from two tables (provided they have the same lay-out), finds differences between the data in the two tables and logs it.</p>
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

<div class="sect2">

### Reference/Comparison data tab

| Option                                        | Description                                                                                                                                     |
| --------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| Reference connection / Compare connection     | Database connections from which the reference/compare table data will come.                                                                     |
| Reference schema field / Compare schema field | contain the schema names for the reference/compare table.                                                                                       |
| Reference table field / Compare table field   | contain the actual table names. This means that you could compare two tables with a different name, as long as they have the same column names. |

</div>

<div class="sect2">

### Other fields tab

| Option               | Description                                                                                                                                                                                                                  |
| -------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Key fields field     | should contain a comma separated list of they fields that make up the 'primary' key of the table(s) you are comparing. The primary key is needed because without this information the two tables cannot be correctly joined. |
| Exclude fields field | contains a comma separated list of columns that you want to exclude from the comparison. E.g. because they exist in the first table, but not in the second.                                                                  |

</div>

<div class="sect2">

### Additional fields tab

| Option                                             | Description                                                                                                                               |
| -------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Number of errors field                             | allows you to specify the name of the output column that will contain the total number of errors found for the comparison of your tables. |
| Number of reference/compare table records field    | allows you to specify the name of the field that will contain the actual number of records found in each table.                           |
| Number of left/inner/right join errors field       | allows you to specify the name of the field(s) that will contain the number of errors found for each join type.                           |
| Error handling key description input field         | allows you specify the name of the output field for the 'where clause" of the record that gave an error.                                  |
| Error handling reference/compare value input field | allows you to specify the output field names for the actual values that differ.                                                           |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:16 +0200

</div>

</div>

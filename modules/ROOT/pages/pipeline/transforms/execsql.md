<div id="header">

# <span class="image image-doc-icon">![Execute SQL script transform Icon](../assets/images/transforms/icons/sql.svg)</span> Execute SQL script

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
<p>The Execute SQL Script transform runs a SQL script either once, during the initialization phase of the pipeline, or once for every input-row that the transform receives.</p>
</div>
<div class="paragraph">
<p>When used for every input row, parameters can be passed to the SQL scripts specified in the transform.</p>
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

| Option                        | Description                                                                                                                                                                                                            |
| ----------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                | Name of the transform; This name has to be unique in a single pipeline                                                                                                                                                 |
| Connection                    | Select a database connection to use                                                                                                                                                                                    |
| SQL script to execute         | Specify the SQL to execute. Separate statements by ; and use question marks as place holders for parameter.                                                                                                            |
| Execute for each row?         | Select this option to execute the SQL for each incoming row. In this case paramters can be used. When this option is unchecked, the SQL statement is executed at the transform initialization phase.                   |
| Execute as a single statement | This option does not split the statements by ; and will send the whole SQL to the database.                                                                                                                            |
| Variable substitution         | In case you want to use variables in the SQL, e.g. ${table\_name}, this option needs to be checked. If you are using Parameter fields, they are only used in conjunction with "question marks" in the SQL (see below). |
| Bind parameters?              | Check this option to bind parameters using prepared statements, otherwise this transform will perform a literal string replacement of the parameters.                                                                  |
| Quote Strings?                | This option adds quotes around the string according to the database dialect and also escapes special characters like CR, LF and the quote character itself.                                                            |
| Parameters                    | The list of parameters that will replace the question marks in the query in the given order. So the first question mark will be replaced by the first parameter, the second question mark by the second parameter etc. |
| Field to contain insert stats | Optional: If you want to get an additional field in our stream with the number or records that where inserted, please define the field name here.                                                                      |
| Field to contain update stats | Same as insert stats, but for updated rows.                                                                                                                                                                            |
| Field to contain delete stats | Same as insert stats, but for deleted rows.                                                                                                                                                                            |
| Field to contain read stats   | Same as insert stats, but for read rows.                                                                                                                                                                               |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:11 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![Execute row SQL script transform Icon](../assets/images/transforms/icons/execsqlrow.svg)</span> Execute row SQL script

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
<p>The Execute Row SQL Script transform executes an SQL script for every input row the transform receives.</p>
</div>
<div class="paragraph">
<p>The SQL to execute can be passed as pipeline fields or read from a file.</p>
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

| Option                        | Description                                                                                                                                                                              |
| ----------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                | Name of the transform; This name has to be unique in a single pipeline                                                                                                                   |
| Connection                    | Select a database connection to use                                                                                                                                                      |
| Commit                        | Number of rows to send before doing a database commit                                                                                                                                    |
| SQL field name                | The field that either contains the SQL to execute or optionally specifies the path to a file that contains SQL to execute                                                                |
| Read SQL from file            | If checked, then the SQL field name option specifies a file that contains SQL to execute, otherwise the SQL field name option specifies the actual SQL to execute. (Available since 5.0) |
| Field to contain insert stats | Optional: If you want to get an additional field in our stream with the number or records that where inserted, please define the field name here.                                        |
| Field to contain update stats | Same as insert stats, but for updated rows.                                                                                                                                              |
| Field to contain delete stats | Same as insert stats, but for deleted rows.                                                                                                                                              |
| Field to contain read stats   | Same as insert stats, but for read rows.                                                                                                                                                 |

</div>

</div>

<div class="sect1">

## Notes

<div class="sectionbody">

<div class="paragraph">

Because of the scripting/dynamic nature of the transform, it does not use prepared statements and thus is not intended to work fast or optimal. For good performance turn to dedicated transforms like Table Output (insert into), Table Input (Select), Update, Delete, etc.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:12 +0200

</div>

</div>

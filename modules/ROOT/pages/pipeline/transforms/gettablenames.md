<div id="header">

# <span class="image image-doc-icon">![Get table names transform Icon](../assets/images/transforms/icons/gettablenames.svg)</span> Get table names

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
<p>The Get Table Names transform gets table names from a database connection.</p>
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

| Option                     | Description                                                          |
| -------------------------- | -------------------------------------------------------------------- |
| Transform name             | Name of this transform as it appears in the pipeline workspace       |
| Connection                 | The connection to use                                                |
| Schema name                | The schema to use                                                    |
| Get schema from field      | Allows passing a field containing the schema name                    |
| Schema name field          | The field containing the schema name                                 |
| Include catalogs           | Includes catalogs in the output                                      |
| Include schemas            | Includes schemas in the output                                       |
| Include views              | Includes views in the output                                         |
| Include procedures         | Includes procedures in the output                                    |
| Include synonyms           | Include synonyms in the output                                       |
| Add schema in object name  | Adds the schema to the object name                                   |
| Tablename fieldname        | Output field containing the table name                               |
| Object type fieldname      | Output field containing the object type (catalog, schema, table, …​) |
| Is system object fieldname | Output field containing boolean: is object a system object           |
| Creation SQL fieldname     | Output field containing create statement for object                  |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:22 +0200

</div>

</div>

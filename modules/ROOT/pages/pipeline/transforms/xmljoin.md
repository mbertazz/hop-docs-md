<div id="header">

# <span class="image image-doc-icon">![XML Join transform Icon](../assets/images/transforms/icons/XJN.svg)</span> XML Join

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
<p>The XML Join transform adds XML tags from one stream into a leading XML structure from a second stream.</p>
</div>
<div class="paragraph">
<p>The target stream must have only one row, since it represents an XML document. The other stream can consist of many rows, and the tags from all rows are added to the target document by the join.</p>
</div>
<div class="paragraph">
<p>Only one row is produced after the join. This single row contains the fields of the target transform plus the result field of the join.</p>
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

| Option                    | Description                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name            | Name of the transform.                                                                                                                                                                                                                                                                                                                                                                                                            |
| Target XML Transform      | Transform that sends the target document to the join.                                                                                                                                                                                                                                                                                                                                                                             |
| Target XML Field          | Field that contains the XML structure.                                                                                                                                                                                                                                                                                                                                                                                            |
| Source XML Transform      | Transform that send the XML structure(s) to the join that need to be added to the target.                                                                                                                                                                                                                                                                                                                                         |
| Source XML Field          | Field that contains the XML structures that get added to the target.                                                                                                                                                                                                                                                                                                                                                              |
| XPath Statement           | An XPath statement used to find the node in the target document where the new tags start to be inserted. When the complex join is enabled, a single ? character is used as a placeholder.                                                                                                                                                                                                                                         |
| Complex Join              | Flag to enable the complex join syntax, using the placeholder in the XPath Statment                                                                                                                                                                                                                                                                                                                                               |
| Join Comparison Field     | Field that contains the values that get replaced in the XPath Statement                                                                                                                                                                                                                                                                                                                                                           |
| Result XML field          | The field that will contain the result.                                                                                                                                                                                                                                                                                                                                                                                           |
| Encoding                  | Character encoding to be used in the XML Header and to transform the XML                                                                                                                                                                                                                                                                                                                                                          |
| Omit XML header           | Whether the XML header is omitted from the output. The character encoding of the target XML is preserved regardless of whether the header is included.                                                                                                                                                                                                                                                                            |
| Omit null values from XML | Whether null values are removed fro the output. If this option is not selected, null values are included in the XML output as an empty element, such as \<abc/\>. When this option is selected, the null values are completely omitted from the output and no empty elements exist. This is useful to save space in the output file (for high volume transactions) or to use the empty tags for special conditions in the output. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:26 +0200

</div>

</div>

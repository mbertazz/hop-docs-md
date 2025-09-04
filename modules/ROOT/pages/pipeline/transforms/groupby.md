<div id="header">

# <span class="image image-doc-icon">![Group By transform Icon](../assets/images/transforms/icons/groupby.svg)</span> Group By

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
<p>The Group By transform groups rows from a source, based on a specified field or collection of fields. A new row is generated for each group.</p>
</div>
<div class="paragraph">
<p>It can also generate one or more aggregate values for the groups.</p>
</div>
<div class="paragraph">
<p>Common uses are calculating the average sales per product and counting the number of an item you have in stock.</p>
</div>
<div class="paragraph">
<p>The Group By transform is designed for sorted inputs.</p>
</div>
<div class="paragraph">
<p>If your input is not sorted, only double consecutive rows are grouped correctly.</p>
</div>
<div class="paragraph">
<p>If you sort the data outside of Hop, the case sensitivity of the data in the fields may produce unexpected grouping results.</p>
</div>
<div class="paragraph">
<p>You can use the <a href="pipeline/transforms/memgroupby.BH80E8IHKj">Memory Group By</a> transform to handle non-sorted input.</p>
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

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Transform name</p></td>
<td><p>Name of the transform.</p></td>
</tr>
<tr class="even">
<td><p>Include all rows?</p></td>
<td><p>Enable if you want all rows in the output, not just the aggregation; to differentiate between the two types of rows in the output, a flag is required in the output. You must specify the name of the flag field in that case (the type is boolean).</p></td>
</tr>
<tr class="odd">
<td><p>Temporary files directory</p></td>
<td><p>The directory in which the temporary files are stored (needed when the Include all rows option is enabled and the number or grouped rows exceed 5000 rows); the default is the standard temporary directory for the system</p></td>
</tr>
<tr class="even">
<td><p>TMP-file prefix</p></td>
<td><p>Specify the file prefix used when naming temporary files</p></td>
</tr>
<tr class="odd">
<td><p>Add line number, restart in each group</p></td>
<td><p>Enable to add a line number that restarts at 1 in each group</p></td>
</tr>
<tr class="even">
<td><p>Line number field name</p></td>
<td><p>The name of the field added to contain the line numbers.</p></td>
</tr>
<tr class="odd">
<td><p>Always give back a row</p></td>
<td><p>If you enable this option, the Group By transform will always give back a result row, even if there is no input row. This can be useful if you want to count the number of rows. Without this option you would never get a count of zero (0).</p></td>
</tr>
<tr class="even">
<td><p>Group fields table</p></td>
<td><p>Specify the fields over which you want to group. Click Get Fields to add all fields from the input stream(s).</p></td>
</tr>
<tr class="odd">
<td><p>Aggregates table</p></td>
<td><div class="content">
<div class="paragraph">
<p>Specify the fields that must be aggregated, the method and the name of the resulting new field. Here are the available aggregation methods :</p>
</div>
<div class="ulist">
<ul>
<li><p>Sum</p></li>
<li><p>Average (Mean)</p></li>
<li><p>Median</p></li>
<li><p>Percentile</p></li>
<li><p>Minimum</p></li>
<li><p>Maximum</p></li>
<li><p>Number of values (N)</p></li>
<li><p>Concatenate strings separated by , (comma)</p></li>
<li><p>First non-null value</p></li>
<li><p>Last non-null value</p></li>
<li><p>First value (including null)</p></li>
<li><p>Last value (including null)</p></li>
<li><p>Cumulative sum (all rows option only!)</p></li>
<li><p>Cumulative average (all rows option only!)</p></li>
<li><p>Standard deviation (population)</p></li>
<li><p>Concatenate strings separated by &lt;Value&gt;: specify the separator in the Value column (This supports <a href=":variables.BH80E8IHKj#_hexadecimal_values">hexadecimals</a>)</p></li>
<li><p>Number of distinct values</p></li>
<li><p>Number of rows (without field argument)</p></li>
<li><p>Standard deviation (sample)</p></li>
<li><p>Percentile (nearest-rank method)</p></li>
<li><p>Concatenate string separated by new line (CRLF)</p></li>
<li><p>Concatenate distinct values separated by &lt;Value&gt;: specify the separator in the Value column (This supports <a href=":variables.BH80E8IHKj#_hexadecimal_values">hexadecimals</a>)</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:24 +0200

</div>

</div>

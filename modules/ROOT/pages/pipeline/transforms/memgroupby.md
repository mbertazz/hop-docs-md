<div id="header">

# <span class="image image-doc-icon">![Memory Group By transform Icon](../assets/images/transforms/icons/memorygroupby.svg)</span> Memory Group By

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
<p>The Memory Group By transform builds aggregates in a group by fashion.</p>
</div>
<div class="paragraph">
<p>This transform processes all rows within memory and therefore does not require a sorted input. However, it <strong>does</strong> require all data to fit into memory.</p>
</div>
<div class="admonitionblock tip">
<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>When the number of rows is too large to fit into memory, use a combination of <a href="pipeline/transforms/sort.QdupyEprUo">Sort Rows</a> and <a href="pipeline/transforms/groupby.QdupyEprUo">Group By</a> transforms.</td>
</tr>
</tbody>
</table>
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
<td><p>Name of the transform. This name has to be unique in a single pipeline,</p></td>
</tr>
<tr class="even">
<td><p>Always give back a result row</p></td>
<td><p>If you enable this option, the Group By transform will always give back a result row, even if there is no input row.</p>
<p>This can be useful if you want to count the number of rows. Without this option you would never get a count of zero (0).</p></td>
</tr>
<tr class="odd">
<td><p>The fields that make up the group</p></td>
<td><p>Specify the fields over which you want to group. Click Get Fields to add all fields from the input stream(s).</p></td>
</tr>
<tr class="even">
<td><p>Aggregates</p></td>
<td><p>Specify the fields that must be aggregated, the method and the name of the resulting new field. Click Get lookup fields to add all fields from the input stream(s). Here are the available aggregation methods:</p>
<p>- Sum - Average (Mean) - Median - Percentile - Minimum - Maximum - Number of values (N) - Concatenate strings separated by , (comma) - First non-null value - Last non-null value - First value (including null) - Last value (including null) - Standard deviation - Concatenate strings separated by &lt;Value&gt;: specify the separator in the Value column (This supports hexadecimals) - Number of distinct values - Number of rows (without field argument) - Concatenate distinct values separated by &lt;Value&gt;: specify the separator in the Value column (This supports hexadecimals)</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:36 +0200

</div>

</div>

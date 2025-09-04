<div id="header">

# <span class="image image-doc-icon">![Unique Rows (HashSet) transform Icon](../assets/images/transforms/icons/uniquerowsbyhashset.svg)</span> Unique Rows (HashSet)

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
<p>The Unique Rows (HashSet) transform removes duplicate rows and filters only the unique rows as input data for the transform.</p>
</div>
<div class="paragraph">
<p>This transform differs from the <a href="pipeline/transforms/uniquerows.vjs3Lg4dhm">Unique Rows</a> pipeline transform by keeping track of the duplicate rows in memory and does not require a sorted input to process duplicate rows.</p>
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
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
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

<div class="admonitionblock warning">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Warning
</div></td>
<td>When using this transform on larger sets of data there is a risk of hash collisions unless &quot;Compare using stored row values&quot; is enabled.</td>
</tr>
</tbody>
</table>

</div>

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
<td><p>Transform Name</p></td>
<td><p>Name of the transform this name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Compare using stored row values</p></td>
<td><p>Select this option to store values for the selected fields in memory for every record. Storing row values requires more memory, but it prevents possible false positives if there are hash collisions.</p></td>
</tr>
<tr class="odd">
<td><p>Redirect duplicate row</p></td>
<td><p>Select this option to process duplicate rows as an error and redirect them to the error stream of the transform. If you do not select this option, the duplicate rows are deleted.</p></td>
</tr>
<tr class="even">
<td><p>Error description</p></td>
<td><p>Specify the error handling description that displays when the transform detects duplicate rows. This description is only available when Redirect duplicate row is selected.</p></td>
</tr>
<tr class="odd">
<td><p>Fields to compare table</p></td>
<td><p>Specify the field names for which you want to find unique values.</p>
<p>-OR-</p>
<p>Select Get to insert all the fields from the input stream.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:20 +0200

</div>

</div>

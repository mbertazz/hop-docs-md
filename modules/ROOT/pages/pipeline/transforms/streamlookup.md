<div id="header">

# <span class="image image-doc-icon">![Stream Lookup transform Icon](../assets/images/transforms/icons/streamlookup.svg)</span> Stream Lookup

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
<p>The Stream Lookup transform type allows you to look up data using information coming from other transforms in the pipeline.</p>
</div>
<div class="paragraph">
<p>The data coming from the Source transform is first read into memory and is then used to look up data from the main stream.</p>
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
<td>Since this transform loads the lookup data into memory, it can be an extremely fast way to look up data. However, the entire lookup data set needs to fit in your available memory.</td>
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
<td><p>Name of the transform this name has to be unique in a single pipeline</p></td>
</tr>
<tr class="even">
<td><p>Lookup Transform</p></td>
<td><p>The Transform name where the lookup data is coming from</p></td>
</tr>
<tr class="odd">
<td><p>The keys to lookup…​</p></td>
<td><p>Allows you to specify the names of the fields that are used to look up values. Values are always searched using the &quot;equal&quot; comparison</p></td>
</tr>
<tr class="even">
<td><p>Fields to retrieve</p></td>
<td><p>You can specify the names of the fields to retrieve here, as well as the default value in case the value was not found or a new field name in case you didn’t like the old one.</p>
<p><strong>Please note</strong> that since version 2.15.0 this transform is capable of resolving variable expressions for the default value. This means that in the unlikely case you used variable expressions in a previous version, this transform will now try to resolve them.</p></td>
</tr>
<tr class="odd">
<td><p>Preserve memory</p></td>
<td><p>Encodes rows of data to preserve memory while sorting. (Technical background: Hop will store the lookup data as raw bytes in a custom storage object that uses a hashcode of the bytes as the key. More CPU cost related to calculating the hashcode, less memory needed.)</p></td>
</tr>
<tr class="even">
<td><p>Key and value are exactly one integer field</p></td>
<td><p>Preserves memory while executing a sort by . Note: Works only when &quot;Preserve memory&quot; is checked. Cannot be combined with the &quot;Use sorted list&quot; option.</p></td>
</tr>
<tr class="odd">
<td><p>Use sorted list</p></td>
<td><p>Enable to store values using a sorted list; this provides better memory usage when working with data sets containing wide row. Note: Works only when &quot;Preserve memory&quot; is checked. Cannot be combined with the &quot;Key and value are exactly one integer field&quot; option.</p></td>
</tr>
<tr class="even">
<td><p>Get fields</p></td>
<td><p>Automatically fills in the names of all the available fields on the source side (A); you can then delete all the fields you don’t want to use for lookup.</p></td>
</tr>
<tr class="odd">
<td><p>Get lookup fields</p></td>
<td><p>Automatically inserts the names of all the available fields on the lookup side (B). You can then delete the fields you don’t want to retrieve</p></td>
</tr>
</tbody>
</table>

<div class="paragraph">

For guidance on preventing deadlocks when using the Stream Lookup transform, refer to this how-to guide: **[Avoiding deadlocks](how-to-guides/avoiding-deadlocks.FjErX4xNma)**

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:13 +0200

</div>

</div>

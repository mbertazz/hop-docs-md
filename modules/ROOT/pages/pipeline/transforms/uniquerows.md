<div id="header">

# <span class="image image-doc-icon">![Unique Rows transform Icon](../assets/images/transforms/icons/uniquerows.svg)</span> Unique Rows

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
<p>The Unique Rows transform removes duplicate rows from the (sorted) input stream(s).</p>
</div>
<div class="paragraph">
<p>For unsorted input streams, check the <a href="pipeline/transforms/uniquerowsbyhashset.BMZM12ATAM">Unique Rows By Hashset</a> transform.</p>
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

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                  | Description                                                                                                                                                                                  |
| ----------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform Name          | Name of the transform this name has to be unique in a single pipeline.                                                                                                                       |
| Add counter to output?  | Check this option to add a counter field to the stream.                                                                                                                                      |
| Counter field           | Define the counter field name.                                                                                                                                                               |
| Redirect duplicate row  | Processes duplicate rows as an error and redirect rows to the error stream of the transform. Requires you to set error handling for this transform.                                          |
| Error Description       | Sets the error handling description to display when duplicate rows are detected. Only available when Redirect duplicate row is checked.                                                      |
| Fields to compare table | Specify the field names on which you want to force uniqueness or click Get to insert all fields from the input stream(s) You can choose to ignore case by setting the Ignore case flag to Y. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:20 +0200

</div>

</div>

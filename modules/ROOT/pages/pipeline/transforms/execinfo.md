<div id="header">

# <span class="image image-doc-icon">![Execution Information Icon](../assets/images/transforms/icons/execinfo.svg)</span> Execution Information

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
<p>The Execution Information transform allows you to read (or delete) information from an <a href="metadata-types/execution-information-location.1otVmIwo2K">Execution Information Location</a>. Depending on which operation you select, different input options will be enabled. The output of the transform will be different as well. This means that this transform always needs input-rows in order to produce output.</p>
</div>
<div class="paragraph">
<p><strong>Example to delete 200 Execution Id’s:</strong> First use Generate rows to create your fields and values to use (children: Boolean = true) and (limit: Integer = 200). Then use a first transform to get the ids (Operation: Get execution IDs), and a second connected transform to delete them (Operation: Delete execution). Optionally you can also delete by other fields such as date and ID. It can take a while to query the Execution Information, so keep an eye on the Duration column.</p>
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
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Maybe Supported" width="24" /></span></p>
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

| Option                         | Description                                                                                                 |
| ------------------------------ | ----------------------------------------------------------------------------------------------------------- |
| Transform name                 | Name of the transform; this name has to be unique in a single pipeline                                      |
| Execution Information Location | Select the [location](metadata-types/execution-information-location.1otVmIwo2K) that you want to work with. |
| Operation type                 | Select the operation you want to perform.                                                                   |
| Execution ID field             | The input field that will contain the execution ID                                                          |
| Execution parent ID field      | The input field that will contain the execution parent ID                                                   |
| Execution name field           | The input field that will contain the execution name to look for                                            |
| Execution type field           | The input field that will contain the execution type to look for                                            |
| Include children field         | The input field that will contain the boolean which indicates to include children in the search             |
| Limit field                    | The input field that will contain the limit with which to search                                            |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:10 +0200

</div>

</div>

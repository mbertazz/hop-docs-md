<div id="header">

# <span class="image image-doc-icon">![Append Streams Icon](../assets/images/transforms/icons/append.svg)</span> Append Streams

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
<p>The Append Streams transform reads the data from two transforms, only processing the second stream after the first one is finished.</p>
</div>
<div class="paragraph">
<p>As always, the row layout for the input data coming from both transforms has to be identical: the same row lengths, the same data types, the same fields at the same field indexes in the row.</p>
</div>
<div class="paragraph">
<p><strong>Important</strong>: If you don’t care about the order in which the output rows occur, you can use any transform to create a union of 2 or more data streams.</p>
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

| Option         | Description                                                                   |
| -------------- | ----------------------------------------------------------------------------- |
| Transform name | Name of the transform. Note: This name has to be unique in a single pipeline. |
| Head hop       | The name of the transform from which will be read the first stream.           |
| Tail hop       | The name of the transform from which will be read the second stream.          |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:41 +0200

</div>

</div>

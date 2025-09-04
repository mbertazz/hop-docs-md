<div id="header">

# <span class="image image-doc-icon">![Simple Mapping transform Icon](../assets/images/transforms/icons/MAP.svg)</span> Simple Mapping

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
<p>The Simple Mapping transform allows you to re-use a series of transforms in the form of a &quot;re-usable pipeline&quot; also known as a &quot;Mapping&quot;.</p>
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

<div class="paragraph">

Think of it as a re-usable function in programming – you pass some data into the function and it returns data back. In the Simple Mapping transform you can specify one [Mapping Input](pipeline/transforms/mapping-input.0QIxt7hI9p) transform to pass data to and one [Mapping Output](pipeline/transforms/mapping-output.0QIxt7hI9p) transform to retrieve rows of data from, as well as parameters to pass to the mapping.

</div>

<div class="paragraph">

Use this transform if you find yourself repeating the same logic multiple times over several different pipelines.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="paragraph">

The options are fairly self-explanatory:

</div>

<div class="ulist">

  - Transform name: a unique name in your pipeline

  - Pipeline: The name of the mapping (sub-) pipeline to embed. This pipeline is executed separately and is considered a separate entity. It is always executed with a standard local Hop pipeline run configuration since that is currently the only one capable of streaming data into and out of transforms.

  - Parameters tab: specify the parameters you want to pass to the mapping pipeline

  - Input tab: specify which fields to pass to the [Mapping Input](pipeline/transforms/mapping-input.0QIxt7hI9p) transform in the mapping. You can map (hence the name) field names.

  - Output tab: specify how to rename output fields retrieved from the [Mapping Output](pipeline/transforms/mapping-output.0QIxt7hI9p) transform.

</div>

</div>

</div>

<div class="sect1">

## Sample

<div class="sectionbody">

<div class="paragraph">

In the samples project you can find two examples of the Simple Mapping transform, the transforms/files/simple-mapping-child.hpl and simple-mapping-parent.hpl pipelines.

</div>

<div class="paragraph">

In the sample files discussed above, the parent pipeline sends first and last name fields to the child, a calculation is performed and then a field is populated with the calculation and sent back.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:08 +0200

</div>

</div>

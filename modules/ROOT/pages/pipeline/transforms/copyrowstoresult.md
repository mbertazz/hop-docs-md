<div id="header">

# <span class="image image-doc-icon">![Copy rows to result transform Icon](../assets/images/transforms/icons/rowstoresult.svg)</span> Copy rows to result

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
<p>The Copy Rows To Result transform allows you to transfer rows of data (in memory) to the next pipeline (or workflow action) in a workflow via an internal result row set.</p>
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

## Usage

<div class="sectionbody">

<div class="paragraph">

The Copy Rows To Result transform can be paired with the Get Rows from Result transform to retrieve the result row set in a pipeline. In some cases, the Get rows from Result transform is not required to retrieve the result set such as a pipeline transform in a workflow. Data rows can be passed from and to pipelines on a workflow, but data rows cannot be accessed directly in a workflow.

</div>

<div class="paragraph">

This transform can be used by the Get Rows from Result transform and some workflow actions that allow to process the internal result row set.

</div>

<div class="admonitionblock note">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Note
</div></td>
<td>this transform is mainly available for historical reasons. There are newer and better ways to create loops in Hop, check the <a href="best-practices/index.uUGGm618t3">Best Practices</a> for more information.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option         | Description                                                            |
| -------------- | ---------------------------------------------------------------------- |
| Transform name | Name of the transform this name has to be unique in a single pipeline. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:00 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![Files to result transform Icon](../assets/images/transforms/icons/filestoresult.svg)</span> Files to result

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
<p>The Files To Result transform allows you to set filenames in the internal result files of a pipeline.</p>
</div>
<div class="paragraph">
<p>Subsequent workflow actions can then use this information as it routes the list of files to the result files stream e.g. by using the Get files from result transform or some workflow actions that can process on the list of result files.</p>
</div>
<div class="paragraph">
<p>For example, the Mail workflow action can use this list of files to attach to a mail, so perhaps you don’t want all files sent, but only a certain selection.</p>
</div>
<div class="paragraph">
<p>For this, you can create a pipeline that sets exactly those files you want to attach.</p>
</div>
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
<td>the Files To Result is available for historical reasons. Check the <a href="best-practices/index.qeGTisArXd">Best Practices</a> for better ways to build loops in your Hop pipelines.</td>
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

| Option          | Description                                                         |
| --------------- | ------------------------------------------------------------------- |
| Transform name  | The name of this transform as it appears in the pipeline workspace. |
| Filename field  | Field that contains the filenames of the files to copy.             |
| Type of file to | Select the type of file to set in results.                          |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:15 +0200

</div>

</div>

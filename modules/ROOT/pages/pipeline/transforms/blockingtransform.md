<div id="header">

# <span class="image image-doc-icon">![Blocking transform Icon](../assets/images/transforms/icons/blockingtransform.svg)</span> Blocking transform

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
<p>The Blocking transform blocks all output until the very last row is received from the previous transform.</p>
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
<td>the transform blocks until it gets the last row. It does <strong>not</strong> block until the previous transform is finished 100% which is functionality found in the other transform <a href="pipeline/transforms/blockuntiltransformsfinish.XAo2TATe5Z">Blocking until transforms finish</a>.</td>
</tr>
</tbody>
</table>
</div>
<div class="paragraph">
<p>At that point, the last row is sent to the next transform or the complete input is sent off to the next transform. Use the Blocking transform for triggering plugins, stored procedures, Java scripts, …​ or for synchronization purposes.</p>
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
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
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

| Option                | Description                                                                                                                     |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| Transform name        | Name of the transform; this name has to be unique in a single pipeline.                                                         |
| Pass all rows?        | Determines whether to pass one row or all rows                                                                                  |
| Spool directory       | The directory in which the temporary files are stored if needed; the default is the standard temporary directory for the system |
| Spool-file prefix     | Choose a recognizable prefix to identify the files when they appear in the temp directory                                       |
| Cache size            | The more rows you can store in memory, the faster the transform works                                                           |
| Compress spool files? | Compresses temporary files when they are needed                                                                                 |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:52 +0200

</div>

</div>

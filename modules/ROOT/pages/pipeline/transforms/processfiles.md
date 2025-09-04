<div id="header">

# <span class="image image-doc-icon">![Process files transform Icon](../assets/images/transforms/icons/processfiles.svg)</span> Process files

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
<p>The Process Files transform copies, moves or deletes files by giving the source and target file names in the data stream.</p>
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

| Option                        | Description                                                                                                                                       |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                | Name of the transform.                                                                                                                            |
| Operation                     | This defines the operation: Copy, Move or Delete                                                                                                  |
| Create target parent folder   | When this option is checked, the target parent folder is created. Otherwise it throws an exception when the target parent folder is not existing. |
| Overwrite target file         | When this option is checked and the target file exists, it will be overwritten. Otherwise it will not be overwritten and silently ignored.        |
| Add target filename to result | When this option is checked, add the copied, moved or deleted files to the list of result files.                                                  |
| Set simulation mode           | For testing purposes: No action will be taken at the end and no file will be copied, moved or deleted.                                            |
| Source filename field         | This defined the field that contains the complete path to the source file for copy or move or the file to be deleted.                             |
| Target filename field         | This defined the field that contains the complete path to the target file. This field must not be given in the Delete mode.                       |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:51 +0200

</div>

</div>

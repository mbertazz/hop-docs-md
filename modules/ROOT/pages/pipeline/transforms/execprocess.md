<div id="header">

# <span class="image image-doc-icon">![Execute a process transform Icon](../assets/images/transforms/icons/execprocess.svg)</span> Execute a process

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
<p>The Execute A Process transform executes a shell script (on the host that runs the pipeline).</p>
</div>
<div class="paragraph">
<p>The transform is similar to the <a href="workflow/actions/shell.FRkI8SvokZ">Shell</a> workflow action, but can be used in a pipeline to execute for every row.</p>
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

| Option                | Description                                                                                                                                                                                                                                                    |
| --------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name        | Name of the transform; this name has to be unique in a single pipeline                                                                                                                                                                                         |
| Process field         | The field name in the data stream that defines the process to start (shell script / batch file to start). Arguments can also be used.                                                                                                                          |
| Fail if not success   | Checking this option means if the exit status is different than zero the transform fails. You can use error handling to get these rows.                                                                                                                        |
| Output line delimiter | Without defining a line delimiter, all returned lines are collapsed into a single string with no line delimiters. You can set to any line delimiter and special characters can be set with the format $\[value\], e.g. $\[0D\] for CR or $\[0D,0A\] for CR/LF. |
| Result fieldname      | Specify here the name of the result fieldname (STRING) added to the output stream of the pipeline. This field is populated by the output stream (stdout) of the process.                                                                                       |
| Error fieldname       | Specify here the name of the error fieldname (STRING) added to the output stream of the pipeline. This field is filled by the error stream (stderr) of the process.                                                                                            |
| Exit value            | Specify here the name of the exit fieldname (INTEGER) added to the output stream of the pipeline. This field is filled by the exit output of the process.                                                                                                      |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:11 +0200

</div>

</div>

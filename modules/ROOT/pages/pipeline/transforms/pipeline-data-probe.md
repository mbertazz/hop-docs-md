<div id="header">

# <span class="image image-doc-icon">![Pipeline Probe icon](../assets/images/icons/probe.svg)</span> Pipeline Data Probe

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
<p>The Pipeline Data Probe transform receives data probe data configured by a <a href="metadata-types/pipeline-probe.j9QyJu7O6T">Pipeline Probe</a> metadata type.</p>
</div>
<div class="paragraph">
<p>Check the <a href="metadata-types/pipeline-probe.j9QyJu7O6T">Pipeline Probe</a> metadata type for more information.</p>
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

<div class="paragraph">

The pipeline data probe transform doesn’t require any configuration except for the transform name.

</div>

<div class="paragraph">

This transform receives data from the [Pipeline Probe](metadata-types/pipeline-probe.j9QyJu7O6T) metadata type and produces the following output:

</div>

| sourcePipelineName          | the name of the pipeline passing data to this pipeline data probe transform.                                |
| --------------------------- | ----------------------------------------------------------------------------------------------------------- |
| sourceTransformLogChannelId | the id for the log channel passing data to this pipeline data probe transform.                              |
| sourceTransformName         | the name of the transform in the source pipeline passing data to this pipeline data probe transform.        |
| sourceTransformCopy         | the copy number of the transform in the source pipeline passing data to this pipeline data probe transform. |
| rowNr                       | the row number in the source pipeline passing data to this pipeline data probe transform.                   |
| fieldName                   | the field name of the field in the source pipeline passing data to this pipeline data probe transform.      |
| fieldType                   | the field type of the field in the source pipeline passing data to this pipeline data probe transform.      |
| fieldFormat                 | the field format of the field in the source pipeline passing data to this pipeline data probe transform.    |
| fieldLength                 | the field length of the field in the source pipeline passing data to this pipeline data probe transform.    |
| fieldPrecision              | the field precision of the field in the source pipeline passing data to this pipeline data probe transform. |
| value                       | the value of the transform in the source pipeline passing data to this pipeline data probe transform.       |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:49 +0200

</div>

</div>

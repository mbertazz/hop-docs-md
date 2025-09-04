<div id="header">

# <span class="image image-doc-icon">![Pipeline logging transform Icon](../assets/images/icons/pipeline-log.svg)</span> Pipeline Logging

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
<p>The pipeline logging transform provides detailed logging information about a pipeline and its transforms. This transform receives input from a <a href="metadata-types/pipeline-log.FwJSeqsddv">Pipeline Log</a> metadata item.</p>
</div>
<div class="paragraph">
<p>The transform requires very little configuration, but provides a lot of information.</p>
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

## Related Plugins

<div class="sectionbody">

<div class="ulist">

  - [Pipeline Log](metadata-types/pipeline-log.FwJSeqsddv)

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<table>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Transform name</p></td>
<td><p>Name of this transform</p></td>
</tr>
<tr class="even">
<td><p>Also log transform details</p></td>
<td><div class="content">
<div class="ulist">
<ul>
<li><p>checked: the transform outputs both pipeline and transform logging and metrics. In this case, the logging will contain one line per transform. For each transform, the pipeline logging and metrics information is repeated.</p></li>
<li><p>unchecked: the transform only outputs pipeline logging and metrics.</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Output Fields

<div class="sectionbody">

Fieldname

</div>

</div>

</div>

Type

Description

**Pipeline Logging Fields**

loggingDate

Date

the date and time this pipeline was executed

loggingPhase

String

the phase this pipeline is in at the time of logging (e.g. 'end')

pipelineName

String

the logged pipeline name

pipelineFilename

String

the logged pipeline file name

pipelineStart

Date

execution start date for the logged pipeline

pipelineEnd

Date

execution end date for the logged pipeline

pipelineLogChannelId

String

logging channel id for the logged pipeline

parentLogChannelId

String

parent logging channel id for the logged pipeline (e.g. the channel id of the parent workflow)

pipelineLogging

String

full logging text for the logged pipeline

pipelineErrorCount

Integer

number of errors that occurred in the logged pipeline execution

pipelineStatusDescription

String

status description for the logged pipeline (e.g. 'Finished')

**Transform Logging Fields**

transformName

String

the name of the transform in the logged pipeline

transformCopyNr

Integer

the copy number of the current transform

transformStatusDescription

String

status of the current transform (e.g. 'Finished')

transformLogChannelId

String

log channel id for the current transform

transformLoggingText

String

logging text for the current transform

transformLinesRead

Integer

lines read for the current transform

transformLinesWritten

Integer

lines read for the current transform

transformLinesInput

Integer

input lines for the current transform

transformLinesOutput

Integer

output lines for the current transform

transformLinesUpdated

Integer

updated lines for the current transform

transformLinesRejected

Integer

rejected lines for the current transform

transformErrors

Integer

number of errors for the current transform

transformStart

Date

start date and time for the current transform

transformEnd

Date

end date and time for the current transform

transformDuration

Integer

total duration for the current transform

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:50 +0200

</div>

</div>

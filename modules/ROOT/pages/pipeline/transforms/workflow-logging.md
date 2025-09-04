<div id="header">

# <span class="image image-doc-icon">![Workflow logging transform Icon](../assets/images/icons/workflow-log.svg)</span> Workflow logging

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
<p>The Workflow Logging transform receives its input from a <a href="metadata-types/workflow-log.ilc7LwvzG0">Workflow Log</a> metadata item.</p>
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

  - [Workflow Log](metadata-types/workflow-log.ilc7LwvzG0)

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
<td><p>Also log action details</p></td>
<td><div class="content">
<div class="ulist">
<ul>
<li><p>checked: the transform outputs both workflow and action logging and metrics. In this case, the logging will contain one line per action. For each action, the workflow logging and metrics information is repeated.</p></li>
<li><p>unchecked: the transform only outputs workflow logging and metrics.</p></li>
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

**Workflow Logging Fields**

loggingDate

Date

the date and time this workflow was executed

loggingPhase

String

the phase this workflow is in at the time of logging (e.g. 'end')

workflowName

String

the logged workflow name

workflowFilename

String

the logged workflow file name

workflowStart

Date

execution start date for the logged workflow

workflowEnd

Date

execution end date for the logged workflow

workflowLogChannelId

String

logging channel id for the logged workflow

parentLogChannelId

String

parent logging channel id for the logged workflow (e.g. the channel id of the parent workflow)

workflowLogging

String

full logging text for the logged workflow

workflowErrorCount

Integer

number of errors that occurred in the logged workflow execution

workflowStatusDescription

String

status description for the logged workflow (e.g. 'Finished')

**Action Logging Fields**

actionName

String

the name of the action in the logged pipeline

actionNr

Integer

the number of the current action

actionResult

Boolean

the result (exit code, Y/N) of the current action

actionLogChannelId

String

log channel id for the current action

actionLoggingText

String

logging text for the current action

actionErrors

Integer

number of errors for the current action

actionLogDate

String

status of the current action (e.g. 'Finished')

actionDuration

Integer

total duration for the current action

actionExitStatus

Integer

exit status of the current action

actionNrFilesRetrieved

Integer

the number of files retrieved by the current transform (if applicable)

actionFilename

String

the filename to use for the current action, e.g. the workflow or pipeline the current action runs.

actionComment

String

an optional comment added to the logs, e.g. 'Workflow execution finished'

actionReason

String

an optional reason provided by the current action

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:25 +0200

</div>

</div>

<div id="header">

# Start

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Start` action is a special action, as it is the starting point for all workflow executions.

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
<td>Every workflow needs to have one and only one start action.</td>
</tr>
</tbody>
</table>

</div>

<div class="imageblock">

<div class="content">

![The alt text of the image](../assets/images/actions/action-start-dialog.png)

</div>

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
<td>The start action has additional options to repeat a workflow. This works in both the local and remote workflow engine, but is mainly available for historical reasons and shouldn’t be considered as an alternative to <code>cron</code>, Apache Airflow or any other type of scheduling.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

When you activate the repeat option the workflow will continue to run and restart based on the interval you specify. This can be on a fixed day with a specific timestamp. Or every x seconds/minutes

</div>

<div class="paragraph">

While this does not replace a scheduler it can be used for basic scheduling. Please note that using this will keep the workflow in a running state meaning the Java process will continue to exist and use resources on the system.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:29 +0200

</div>

</div>

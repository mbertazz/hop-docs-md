<div id="header">

# Workflow

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Workflow` action executes a previously defined workflow as a child workflow of the current one.

</div>

<div class="paragraph">

For ease of use, it is also possible to create a new workflow within the dialog, pressing the New Workflow button.

</div>

<div class="paragraph">

Use the Workflow action to execute a previously defined workflow.

</div>

<div class="paragraph">

This allows you to perform "functional decomposition." That is, you use them to break out workflows into more manageable units.

</div>

<div class="paragraph">

For example, you should not write a data warehouse load using one workflow that contains 500 actions.

</div>

<div class="paragraph">

It is better to create smaller workflows and compose them.

</div>

<div class="paragraph">

See also:

</div>

<div class="ulist">

  - The [Pipeline action](workflow/actions/pipeline.qofIL6Vnzg) that executes a pipeline from a workflow.

  - The [Workflow Executor transform](pipeline/transforms/workflow-executor.qofIL6Vnzg) that executes a workflow from a pipeline.

  - The [Pipeline Executor transform](pipeline/transforms/pipeline-executor.qofIL6Vnzg) that executes a sub-pipeline from a pipeline.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### Main workflow options

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Action name</p></td>
<td><p>Name of the action.</p></td>
</tr>
<tr class="even">
<td><p>Workflow Filename</p></td>
<td><div class="content">
<div class="paragraph">
<p>Specify the XML file name of the workflow to execute. Click to browse through your local files.</p>
</div>
<div class="paragraph">
<p>The selected workflow will automatically converted to a path relative to your <code>${PROJECT_HOME}</code>.</p>
</div>
<div class="paragraph">
<p>For example, if your <code>${PROJECT_HOME}</code> is <code>/home/admin/hop/project/</code> and you select a workflow <code>/home/admin/hop/project/subfolder/sub.hwf</code> than the path will automatically be converted to <code>${PROJECT_HOME}/subfolder/sub.hwf</code>.</p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Run configuration</p></td>
<td><div class="content">
<div class="paragraph">
<p>The <a href="metadata-types/workflow-run-config.qofIL6Vnzg">workflow run configuration</a> to use for this workflow action.</p>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Options Tab

| Option                                  | Description                                                                                                                                                                                                                                                         | Default |
| --------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| Execute for every input row?            | Implements looping; if the previous workflow action returns a set of result rows, the workflow executes once for every row found. One row is passed to the workflow at every execution. For example, you can execute a workflow for each file found in a directory. | false   |
| Wait for the remote workflow to finish? | Enable to block until the workflow on the Hop Server has finished                                                                                                                                                                                                   | true    |

</div>

<div class="sect2">

### Logging Settings Tab

<div class="paragraph">

By default, if you do not set logging, Hop will take log actions that are being generated and create a log record inside the workflow.

</div>

<div class="paragraph">

For example, suppose a workflow has three pipelines to run and you have not set logging. The pipelines will not output logging information to other files, locations, or special configuration.

</div>

<div class="paragraph">

In this instance, the workflow executes and puts logging information into its master workflow log.

</div>

<div class="paragraph">

In most instances, it is acceptable for logging information to be available in the workflow log.  
For example, if you have load dimensions, you want logs for your load dimension runs to display in the workflow logs. If there are errors in the pipelines, they will be displayed in the workflow logs. If, however, you want all your log information kept in one place, you must set up logging.

</div>

| Option                   | Description                                                                                                                       |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------------------- |
| Specify logfile?         | Enable to specify a separate logging file for the execution of this workflow                                                      |
| Name of logfile          | The directory and base name of the log file; for example `C:\logs`                                                                |
| Extension of logfile     | The file name extension; for example, log or txt                                                                                  |
| Loglevel                 | Specifies the logging level for the execution of the workflow. See [Logging](logging/logging-basics.qofIL6Vnzg) for more details. |
| Append logfile?          | Enable to append to the logfile as opposed to creating a new one                                                                  |
| Create parent folder     | Create the parent folder for the log file if it does not exist                                                                    |
| Include date in logfile? | Adds the system date to the filename with format YYYYMMDD (eg 20051231).                                                          |
| Include time in logfile? | Adds the system time to the filename with format HHMMSS (eg 235959). See also the logging window in Logging.                      |

</div>

<div class="sect2">

### Parameters Tab

<div class="paragraph">

Specify which parameters will be passed to the sub-workflow:

</div>

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Copy results to parameter</p></td>
<td><p>results from previous workflows or pipelines are passed down to this workflows action’s parameters</p></td>
</tr>
<tr class="even">
<td><p>Pass parameter values down to the sub-workflow</p></td>
<td><p>Enable this option to pass all parameters of the workflow down to the sub-workflow.</p></td>
</tr>
<tr class="odd">
<td><p>Parameters</p></td>
<td><p>Specify the parameter names that will be passed to the workflow.</p></td>
</tr>
<tr class="even">
<td><p>Stream column name</p></td>
<td><p>Allows you to capture fields of incoming records of a result set as a parameter.</p></td>
</tr>
<tr class="odd">
<td><p>Value</p></td>
<td><div class="content">
<div class="paragraph">
<p>Allows you to specify the values for the sub-workflow’s parameters. You can do this by:</p>
</div>
<div class="ulist">
<ul>
<li><p>Manually typing some text (Ex: ETL workflow)</p></li>
<li><p>Using a parameter to set the value (Ex: <code>${Internal.workflow.Name}</code>)</p></li>
<li><p>Using a combination of manually specified text and parameter values (Ex: <code>${FILE_PREFIX}_${FILE_DATE}.txt</code>)</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:34 +0200

</div>

</div>

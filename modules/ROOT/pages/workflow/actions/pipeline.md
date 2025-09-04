<div id="header">

# Pipeline

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Pipeline` action runs a previously-defined pipeline within a workflow.

</div>

<div class="paragraph">

This action is the access point from your workflow to your actual data processing activity (pipeline).

</div>

</div>

</div>

<div class="sect1">

## Usage

<div class="sectionbody">

<div class="paragraph">

An example of a common workflow includes getting FTP files, checking existence of a necessary target database table, running a pipeline that populates that table, and e-mailing an error log if a pipeline fails. For this example, the Pipeline action defines which pipeline to run to populate the table.

</div>

<div class="paragraph">

See also:

</div>

<div class="ulist">

  - The [Workflow action](workflow/actions/workflow.eDWxp9N47n) that executes a sub-workflow from a workflow.

  - The [Workflow Executor transform](pipeline/transforms/workflow-executor.eDWxp9N47n) that executes a workflow from a pipeline.

  - The [Pipeline Executor transform](pipeline/transforms/pipeline-executor.eDWxp9N47n) that executes a sub-pipeline from a pipeline.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General

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
<td><p>Pipeline</p></td>
<td><p>Specify your pipeline by entering in its path or clicking Browse.</p>
<p>The selected pipelines will automatically converted to a path relative to your <code>${PROJECT_HOME}</code>.<br />
For example, if your <code>${PROJECT_HOME}</code> is <code>/home/admin/hop/project/</code> and you select a pipeline <code>/home/admin/hop/project/subfolder/sub.hpl</code> than the path will automatically be converted to <code>${PROJECT_HOME}/subfolder/sub.hpl</code>.</p></td>
</tr>
<tr class="odd">
<td><p>Run Configuration</p></td>
<td><p>The pipeline can run in different types of <a href="metadata-types/pipeline-run-config.eDWxp9N47n">pipeline configurations</a>. Select the desired run configuration to control where and how the pipeline is executed.</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Options tab

| Option                                | Description                                                                                                                      |
| ------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| Execute for every result row          | Runs the pipeline once for every result row from a previous pipeline (or workflow) in the current workflow.                      |
| Clear results rows before execution   | Makes sure the results rows are cleared before the pipeline starts.                                                              |
| Clear results files before execution  | Makes sure the results files are cleared before the pipeline starts.                                                             |
| Wait for remote pipeline to finish    | If you selected Server as your environment type, choose this option to block the workflow until the pipeline runs on the server. |
| Follow local abort to remote pipeline | If you selected Server as your environment type, choose this option to send the local abort signal remotely.                     |

</div>

<div class="sect2">

### Logging tab

<div class="paragraph">

By default, if you do not set logging, Apache Hop will take generated log entries and create a log record inside the workflow. For example, suppose a workflow has three pipelines to run and you have not set logging. The pipelines will not log information to other files, locations, or special configurations. In this instance, the workflow runs and logs information into its master workflow log.

</div>

<div class="paragraph">

In most instances, it is acceptable for logging information to be available in the workflow log. For example, if you have load dimensions, you want logs for your load dimension runs to display in the workflow logs. If there are errors in the pipelines, they will be displayed in the workflow logs. However, you want all your log information kept in one place, you must then set up logging.

</div>

| Option                   | Description                                                                                                              |
| ------------------------ | ------------------------------------------------------------------------------------------------------------------------ |
| Specify logfile          | Specifies a separate logging file for running this pipeline.                                                             |
| Name                     | Specifies the directory and base name of the log file (C:\\logs for example).                                            |
| Extension                | Specifies the file name extension (.log or .txt for example).                                                            |
| Log level                | Specifies the logging level for running the pipeline. See [Logging](logging/logging-basics.eDWxp9N47n) for more details. |
| Append logfile           | Appends the logfile as opposed to creating a new one.                                                                    |
| Create parent folder     | Creates a parent folder for the log file if it does not exist.                                                           |
| Include date in filename | Adds the system date to the filename with format YYYYMMDD (\_20051231).                                                  |
| Include time in filename | Adds the system time to the filename with format HHMMSS (\_235959).                                                      |

</div>

<div class="sect2">

### Parameters tab

<div class="paragraph">

**Pass params downstream**: On the Parameters tab, select the pipeline transform checkbox to `Pass parameter values to sub pipeline`. The parameter must already exist in the pipeline (in pipeline properties for example) or alternatively, on the Parameters tab, you can specify new parameters. The Parameters tab allows you to override existing parameter values or NULL them by leaving the value empty.

</div>

<div class="paragraph">

**Pass field values upstream**: The sub pipeline requires a Copy rows to result transform to send a row upstream. This requires a row to exist in the sub pipeline. Note that that rows do not exist in a workflow, but you can use a Get variables in a subsequent sub pipeline to use the first sub pipeline’s field values.

</div>

<div class="paragraph">

Use Set variables if you want to pass a single value upstream from a pipeline to the workflow and act upon that variable. In this case, you can choose a scope of “valid in the parent workflow”.

</div>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Copy results to parameters</p></td>
<td><p>Copies the results from a previous pipeline as parameters of the pipeline using the Copy rows to result transform.</p></td>
</tr>
<tr class="even">
<td><p>Pass parameter values to sub pipeline</p></td>
<td><p>Pass all parameters of the workflow down to the sub-pipeline.</p></td>
</tr>
<tr class="odd">
<td><p>Parameter</p></td>
<td><p>Specify the parameter name passed to the pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Stream column name</p></td>
<td><p>Specify the field of an incoming record from a previous pipeline as the parameter.</p></td>
</tr>
<tr class="odd">
<td><p>Value</p></td>
<td><p>Specify pipeline parameter values through one of the following actions:<br />
- Manually entering a value (ETL workflow for example).<br />
- Using another parameter to set the value (${Internal.workflow.Name} for example).<br />
- Using a combination of manually specified values and parameter values ({openvar}FILE_PREFIX}_${FILE_DATE}.txt for example).</p></td>
</tr>
<tr class="even">
<td><p>Get Parameters</p></td>
<td><p>Get the existing parameters already associated by the pipeline.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:22 +0200

</div>

</div>

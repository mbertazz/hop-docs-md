<div id="header">

# <span class="image image-doc-icon">![Workflow Executor transform Icon](../assets/images/transforms/icons/workflow.svg)</span> Workflow Executor

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
<p>The Workflow Executor transform execute a Hop workflow from within a pipeline.</p>
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

## Usage

<div class="sectionbody">

<div class="paragraph">

By default, the specified workflow will be executed once for each input row (this can be changed in the Row Grouping tab).

</div>

<div class="paragraph">

Fields from the data row(s) can be used to set parameters and variables and it is passed to the workflow in the form of a result row. Remember that all parameters must be defined at least once in each pipeline or workflow (Edit pipeline/workflow properties). You are passing a parameter when you send a field/parameter/variable to a workflow executor from the Parameters tab.

</div>

<div class="paragraph">

You can also allow a group of records to be passed based on the value in a field (when the value changes the workflow is executed) or on time. In these cases, the first row of the group or rows is used to set parameters or variables in the workflow.

</div>

<div class="paragraph">

It is possible to launch multiple copies of this transform to facilitate parallel workflow processing.

</div>

<div class="paragraph">

See also:

</div>

<div class="ulist">

  - The [Workflow action](workflow/actions/workflow.aDUqlvAjrH) that executes a sub-workflow from a workflow.

  - The [Pipeline action](workflow/actions/pipeline.aDUqlvAjrH) that executes a pipeline from a workflow.

  - The [Pipeline Executor transform](pipeline/transforms/pipeline-executor.aDUqlvAjrH) that executes a sub-pipeline from a pipeline.

  - The [Loops in Apache Hop](how-to-guides/loops-in-apache-hop.aDUqlvAjrH) how-to guide.

</div>

<div class="paragraph">

Samples (samples project)

</div>

<div class="ulist">

  - loops/workflow-executor.hpl

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General

| Option            | Description                                                        |
| ----------------- | ------------------------------------------------------------------ |
| Transform name    | Name of the transform.                                             |
| Workflow          | Use this option to specify a workflow stored in a file (.hwf file) |
| Run configuration | Specify the Workflow Run Configuration to be used for execution.   |

</div>

<div class="sect2">

### Parameters Tab

<div class="paragraph">

In this tab you can specify which field to use to set a certain parameter or variable value. If you specify an input field to use, the static input value is not used. If multiple rows are passed to the workflow, the first row is taken to set the parameters or variables.

</div>

<div class="paragraph">

There is a button in the lower right corner of the tab that will insert all the defined parameters of the specified workflow. For information the description of the parameter is inserted into the static input value field.

</div>

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>If you leave the &quot;Inherit all variables from pipeline&quot; option checked (it is by default), all the variables defined in the current pipeline are passed to child workflow.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

The `Get Parameters` button in the lower right corner of the tab that will insert all the defined parameters with their description for the specified workflow

</div>

<div class="paragraph">

The `Map Parameters` button in the lower right corner of the tab lets you map fields in the current pipeline to parameters in the child workflow.

</div>

</div>

<div class="sect2">

### Row Grouping Tab

<div class="paragraph">

On this tab you can specify the amount of input rows that are passed to the workflow in the form of result rows.

</div>

<div class="paragraph">

Specify how to group the result rows by using one of the following methods:

</div>

<div class="ulist">

  - Specific number of rows.

  - Specific field.

  - Specified duration of time.

</div>

<div class="paragraph">

You can use the result rows in a pipeline or workflow action, or you can retrieve the records directly by using the **Get rows from result** action in a pipeline.

</div>

<div class="paragraph">

To access the **Field to group rows on** or **Duration time when collecting rows** options, remove the default value (1) in the **Number of rows to send to pipeline** option.

</div>

| Option                                 | Description                                                                                                                                                                                                                   |
| -------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Number of rows to send to pipeline** | Specify a number. After every **n** number of rows, the workflow will be executed, and these **n** rows will be passed to the pipeline. Default value: 1                                                                      |
| **Field to group rows on**             | Specify a field for grouping rows. Rows will be accumulated in a group as long as the field value stays the same. If the value changes the workflow will be executed and the accumulated rows will be passed to the workflow. |
| **Duration time when collecting rows** | Specify a duration in milliseconds. This is time the transform will spend accumulating rows prior to the execution of the workflow.                                                                                           |

<div class="paragraph">

Please note that you can only specify one method of grouping.

</div>

</div>

<div class="sect2">

### Execution Results Tab

<div class="paragraph">

You can specify result fields and to which transform to send them. If you don’t need a certain result simply leave a blank input field.

</div>

| Option                                     | Description                                                                                                                    | Default Value           |
| ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------ | ----------------------- |
| Target transform for the execution results | Use the drop-down menu to select a transform in the pipeline as the target transform to receive the results from the workflow. | N/A                     |
| Execution time (ms)                        | Specify the field name for the workflow execution time.                                                                        | ExecutionTime           |
| Execution result                           | Specify the field name for the workflow execution result.                                                                      | ExecutionResult         |
| Number of errors                           | Specify the field name for the number of errors during the execution of the workflow.                                          | ExecutionNrErrors       |
| Number of rows read                        | Specify the field name for the total number of rows read during the execution of the workflow.                                 | ExecutionLinesRead      |
| Number of rows written                     | Specify the field name for the total number of rows written during the execution of the workflow.                              | ExecutionLinesWritten   |
| Number of rows input                       | Specify the field name for the total number of input rows during the execution of the workflow.                                | ExecutionLinesInput     |
| Number of rows output                      | Specify the field name for the total number of output rows during the execution of the workflow.                               | ExecutionLinesOutput    |
| Number of rows rejected                    | Specify the field name for the total number of rows rejected during the execution of the workflow.                             | ExecutionLinesRejected  |
| Number of rows updated                     | Specify the field name for the total number of rows updated during the execution of the workflow.                              | ExecutionLinesUpdated   |
| Number of rows deleted                     | Specify the field name for the total number of rows deleted during the execution of the workflow.                              | ExecutionLinesDeleted   |
| Number of files retrieved                  | Specify the field name for the total number of files retrieved during the execution of the workflow.                           | ExecutionFilesRetrieved |
| Exit status                                | Specify the field name for the exit status of the execution of the workflow.                                                   | ExecutionExitStatus     |
| Execution logging text                     | Specify the field name for the logging text from the execution of the workflow.                                                | ExecutionLogText        |
| Log channel ID                             | Specify the field name for the log channel ID used during the execution of the workflow.                                       | ExecutionLogChannelID   |

</div>

<div class="sect2">

### Result Rows Tab

<div class="paragraph">

In the "Result rows" tab you can specify the layout of the expected result rows of this workflow and to which transform to send them after execution.

</div>

<div class="paragraph">

The workflow executor performs a consistency check over the fields we declared in this tab as the fields that want to receive in output. The check will be performed by making sure the fields we require are really present in the results stream and that type of each fields is really the type we expected to be. If there are any differences an error will be thrown. The error will give you the complete picture about which fields are missing and/or which fields were declared by considering a wrong datatype.

</div>

| Option                           | Description                                                                                    |
| -------------------------------- | ---------------------------------------------------------------------------------------------- |
| Target transform for result rows | Use the drop-down menu to select a transform in the pipeline as the target transform.          |
| Field name                       | Specify the name of the field.                                                                 |
| Data type                        | Use the drop-down menu to specify the data type of the field, such as number, date, or string. |
| Length                           | If applicable, specify the length of the field.                                                |
| Precision                        | If applicable, specify the precision to use.                                                   |

<div class="paragraph">

**Note**: remember that currently this transform always give you a result row back even if the pipelines started in the sub-workflow don’t return any result. In this case, the result row that you will get back will contain only the fields provided by the flow as input of this transform.

</div>

</div>

<div class="sect2">

### Result Files Tab

<div class="paragraph">

Here you can specify where to send the result files from the workflow execution.

</div>

| Option                                        | Description                                                                           |
| --------------------------------------------- | ------------------------------------------------------------------------------------- |
| Target transform for result files information | Use the drop-down menu to select a transform in the pipeline as the target transform. |
| Result file name field                        | Specify the name of the field for the result files.                                   |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:24 +0200

</div>

</div>

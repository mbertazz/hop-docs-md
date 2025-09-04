<div id="header">

# <span class="image image-doc-icon">![Pipeline Executor transform Icon](../assets/images/transforms/icons/pipelineexecutor.svg)</span> Pipeline Executor

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
<p>The Pipeline Executor transform allows you to execute a Hop pipeline from within a pipeline. It is similar to the Workflow Executor transform, but works with pipelines.</p>
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
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
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

The pipeline executor transform by default sends rows to the child pipeline one by one. This default behavior can be changed in the "Row grouping" tab.

</div>

<div class="paragraph">

Optionally, you can use a "Get rows from result" transform in a pipeline to fetch the previous rows from a sub pipeline. You do not need to define any fields in the Get rows transform to retrieve all data row fields.

</div>

<div class="paragraph">

You can either run the same pipeline for each row by specifying a pipeline name to execute, or accept a pipeline name from an incoming field (from a table for example). You can launch multiple copies of the transform to run in parallel.

</div>

<div class="paragraph">

**Parameters**: Can map sub pipeline parameters to fields in your current pipeline. If you enable the "Inherit all variables from pipeline" option, all the parameters/variables defined in the parent pipeline are passed to the pipeline. However, only the parameters defined on the Parameters tab are set per data input row to the pipeline.

</div>

<div class="paragraph">

**Output hop connector options**: If you select the incorrect output option for the pipeline executor, it may not return the data expected.

</div>

<div class="ulist">

  - **This output will contain the execution results**: Returns stats on the execution and does not limit fields, variables, or parameters in the output. It’s a good idea to at least check if there have been any issues in one of your child pipelines with the ExecutionResult, ExecutionExitStatus or ExecutionNrErrors fields.

  - **This output will contain the result rows after execution**: Outputs a rowset that was copied to memory by the child pipeline, e.g. with a Copy rows to result transform. Use the "Result rows" tab in the pipeline executor transform to specify which fields you expect to receive from the child pipelines. This option is also required for setting variables downstream and working with the variables upstream if valid in the your scope.

  - **The output will contain result file names after execution**: Outputs a rowset that will contain any filenames that were copied to the results, e.g. with the Add filenames to result in the Content tab of the Text file input^ transform.

  - **The output will contain a copy of the executor transform’s input data**: Outputs the rowset as it was received by the pipeline executor transform.

  - **Main output of transform**: Outputs a rowset that mimics the input for the pipeline executor transform.

</div>

<div class="paragraph">

Depending on your requirements, the Pipeline Executor transform can be configured to function in any of the following ways:

</div>

<div class="ulist">

  - By default, the specified pipeline will be executed once for each input row. You can use the input row to set parameters and variables. The executor transform then passes this row to the pipeline in the form of a result row.

  - You can also pass a group of records based on the value in a field, so that when the field value changes dynamically, the specified pipeline is executed. In these cases, the first row in the group of rows is used to set parameters or variables in the pipeline.

  - You can launch multiple copies of this transform to assist in parallel pipeline processing.

</div>

<div class="paragraph">

See also:

</div>

<div class="ulist">

  - The [Workflow action](workflow/actions/workflow.soyT5Ic3J8) that executes a sub-workflow from a workflow.

  - The [Pipeline action](workflow/actions/pipeline.soyT5Ic3J8) that executes a pipeline from a workflow.

  - The [Workflow Executor transform](pipeline/transforms/workflow-executor.soyT5Ic3J8) that executes a workflow from a pipeline.

  - The [Loops in Apache Hop](how-to-guides/loops-in-apache-hop.soyT5Ic3J8) how-to guide.

</div>

<div class="paragraph">

Samples (samples project):

</div>

<div class="ulist">

  - loops/pipeline-executor.hpl

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
<td><p>Transform name</p></td>
<td><p>Name of the transform.</p></td>
</tr>
<tr class="even">
<td><p>Pipeline</p></td>
<td><div class="content">
<div class="paragraph">
<p>Use this section to specify the pipeline to execute. You have the following options to specify the pipeline:</p>
</div>
<div class="ulist">
<ul>
<li><p>Use a file for the pipeline: when this option is enabled, you can enter the the .hpl file that is to be used as pipeline. The filename may contain variables (for example, you can use the built-in Internal.Pipeline.Filename.Directory variable to construct a filename relative to the current pipeline), or you can use the &quot;Browse&quot; button to select a file using a file browser.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Pipeline from field?</p></td>
<td><p>Enable to specify the pipeline file name(s) in a field in the input stream</p></td>
</tr>
<tr class="even">
<td><p>Pipeline field</p></td>
<td><p>When the previous option is enabled, you can specify the field that will contain the pipeline filename(s) at runtime. The filename may contain variables.</p>
<p><strong>NOTE:</strong> It must be considered that, by specifying the pipeline file name using this option, we can experience a little performance penalty because the pipeline that will be executed will be initialized at runtime and not during the initialization phase as usual. On the other side this option gives greater flexibility in specifying the pipeline filename dynamically and this could be useful for many use-cases.</p></td>
</tr>
<tr class="odd">
<td><p>Run configuration</p></td>
<td><p>Specify the Pipeline Run Configuration to be used for execution.</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Parameters Tab

<div class="paragraph">

In this tab you can specify which field to use to set a certain parameter or variable value. If multiple rows are passed to the workflow, the first row is taken to set the parameters or variables. TIP: If you leave the "Inherit all variables from pipeline" option checked (it is by default), all the variables defined in the current pipeline are passed to the child pipeline.

</div>

<div class="paragraph">

You can pass **parameters and variables** downstream only. You can’t pass params/variables between pipelines unless they are started new. For example, you can pass params/variables between pipelines, when each named pipeline is started in a pipeline executor – once per row.

</div>

<div class="paragraph">

Though you cannot pass parameters and variables upstream (in nested or sequential pipelines) you can pass data rows back up a pipeline via the following pattern. See project: samples/loops/pipeline-executor.hpl

</div>

<div class="ulist">

  - The **parent pipeline executor** specifies the row field name defined in the child pipeline row under the tab “Result rows”. The output of the parent pipeline executor is option “result rows after execution”.

  - **Child pipeline**: A data row is generated with the same field name and type that is defined in the parent pipeline executor tab “Results rows” in the child pipeline. The last transform of the child pipeline is “copy rows to result”.

</div>

<div class="paragraph">

Remember that all parameters must be defined (in edit pipeline/workflow properties) at least once in each pipeline or workflow.

</div>

| Option                    | Description                                                                                                                                        |
| ------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| Variable / Parameter name | The Parameters tab allows you to define or pass Hop variables down to the pipeline.                                                                |
| Field to use              | Specify which field to use to set a certain parameter or variable value. If you specify an input field to use, the static input value is not used. |
| Static input value        | Instead of a field to use you can specify a static value here.                                                                                     |

<div class="paragraph">

The `Get Parameters` button in the lower right corner of the tab that will insert all the defined parameters with their description for the specified pipeline.

</div>

<div class="paragraph">

The `Map Parameters` button in the lower right corner of the tab lets you map fields in the current pipeline to parameters in the child pipeline.

</div>

</div>

<div class="sect2">

### Row Grouping Tab

<div class="paragraph">

On this tab you can specify the amount of input rows that are passed to the pipeline in the form of result rows. You can use the result rows in a Get rows from result transform in a pipeline.

</div>

| Option                                            | Description                                                                                                                                                                                |
| ------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| The number of rows to send to the pipeline        | after every X rows the pipeline will be executed and these X rows will be passed to the pipeline                                                                                           |
| Field to group rows on                            | Rows will be accumulated in a group as long as the field value stays the same. If the value changes the pipeline will be executed and the accumulated rows will be passed to the pipeline. |
| The time to wait collecting rows before execution | This is time in Milliseconds the transform will spend accumulating rows prior to the execution of the pipeline.                                                                            |

</div>

<div class="sect2">

### Execution Results Tab

<div class="paragraph">

You can specify result fields and to which transform to send them. If you don’t need a certain result simply leave a blank input field.

</div>

| Option                                     | Description                                                                                                                                      | Default Value           |
| ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------- |
| Target transform for the execution results | Use the drop-down menu to select a transform in the current pipeline as the target transform to receive the results from the specified pipeline. | N/A                     |
| Execution time (ms)                        | Specify the field name for the pipeline execution time.                                                                                          | ExecutionTime           |
| Execution result                           | Specify the field name for the pipeline execution result.                                                                                        | ExecutionResult         |
| Number of errors                           | Specify the field name for the number of errors during the execution of the pipeline.                                                            | ExecutionNrErrors       |
| Number of rows read                        | Specify the field name for the total number of rows read during the execution of the pipeline.                                                   | ExecutionLinesRead      |
| Number of rows written                     | Specify the field name for the total number of rows written during the execution of the pipeline.                                                | ExecutionLinesWritten   |
| Number of rows input                       | Specify the field name for the total number of input rows during the execution of the pipeline.                                                  | ExecutionLinesInput     |
| Number of rows output                      | Specify the field name for the total number of output rows during the execution of the pipeline.                                                 | ExecutionLinesOutput    |
| Number of rows rejected                    | Specify the field name for the total number of rows rejected during the execution of the pipeline.                                               | ExecutionLinesRejected  |
| Number of rows updated                     | Specify the field name for the total number of rows updated during the execution of the pipeline.                                                | ExecutionLinesUpdated   |
| Number of rows deleted                     | Specify the field name for the total number of rows deleted during the execution of the pipeline.                                                | ExecutionLinesDeleted   |
| Number of files retrieved                  | Specify the field name for the total number of files retrieved during the execution of the pipeline.                                             | ExecutionFilesRetrieved |
| Exit status                                | Specify the field name for the exit status of the execution of the pipeline.                                                                     | ExecutionExitStatus     |
| Execution logging text                     | Specify the field name for the logging text from the execution of the pipeline.                                                                  | ExecutionLogText        |
| Log channel ID                             | Specify the field name for the log channel ID used during the execution of the pipeline.                                                         | ExecutionLogChannelID   |

</div>

<div class="sect2">

### Result Rows Tab

<div class="paragraph">

In the "Result rows" tab you can specify the layout of the expected result rows of this pipeline and to which transform to send them after execution.

</div>

| Option                           | Description                                                                                    |
| -------------------------------- | ---------------------------------------------------------------------------------------------- |
| Target transform for result rows | Use the drop-down menu to select a transform in the current pipeline as the target transform.  |
| Field name                       | Specify the name of the field.                                                                 |
| Data type                        | Use the drop-down menu to specify the data type of the field, such as number, date, or string. |
| Length                           | If applicable, specify the length of the data type specified.                                  |
| Precision                        | If applicable, specify the precision to use.                                                   |

<div class="paragraph">

Please note that this transform will verify that the data type of the result row fields are identical to what is specified. If there is a difference an error will be thrown.

</div>

</div>

<div class="sect2">

### Result Files Tab

<div class="paragraph">

Here you can specify where to send the result files from the pipeline execution.

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

Last updated 2025-09-04 18:22:49 +0200

</div>

</div>

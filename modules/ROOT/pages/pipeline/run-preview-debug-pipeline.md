<div id="header">

# Run, Preview and Debug a Pipeline

</div>

<div id="content">

<div class="sect1">

## Running a Pipeline

<div class="sectionbody">

<div class="paragraph">

Running a pipeline to see how it performs can be done by completing one of the following tasks:

</div>

<div class="ulist">

  - Using the Run <span class="image">![Run](../assets/images/getting-started/icons/run.svg)</span> icon

  - Select Run and Start execution from the top menu

  - Pressing F8

</div>

<div class="paragraph">

In the pipeline run dialog, hit the 'New' button in the upper right corner to create a new 'Pipeline run configuration'.

</div>

<div class="imageblock text-left">

<div class="content">

![Hop Configuration Selection](../assets/images/run-configuration/configuration-selection.png)

</div>

</div>

<div class="paragraph">

In the dialog that pops up, add 'Local Pipeline' as the pipeline configuration name and choose the 'Local pipeline engine' as engine type.

</div>

<div class="imageblock text-left">

<div class="content">

![Run configuration pipeline](../assets/images/hop-gui/pipeline/run-configuration-pipeline.png)

</div>

</div>

<div class="paragraph">

Click 'Ok' to return to the pipeline run dialog.

</div>

<div class="paragraph">

Choose the logging level as described below.

</div>

| LogLevel  | Description                                               |
| --------- | --------------------------------------------------------- |
| Nothing   | Do not record any logging output.                         |
| Error     | Only record errors in logging output.                     |
| Minimal   | Only use minimal logging.                                 |
| Basic     | This is the default logging level.                        |
| Detailed  | This logging level gives a detailed logging output.       |
| Debugging | Results in a very detailed output for debugging purposes. |
| Row Level | Logging at row level.                                     |

<div class="paragraph">

Make sure your configuration is selected and hit 'Launch'.

</div>

<div class="paragraph">

When a pipeline has run succesfully green check marks are displayed in the right upper corner on the transforms.

</div>

<div class="imageblock text-left">

<div class="content">

![Executed pipeline](../assets/images/hop-gui/pipeline/executed-pipeline.png)

</div>

</div>

<div class="paragraph">

The transforms also show a little table icon, giving you access to a preview of the results of that transform.

</div>

<div class="imageblock text-left">

<div class="content">

![Preview pipeline](../assets/images/hop-gui/pipeline/preview-pipeline.png)

</div>

</div>

<div class="paragraph">

When a pipeline fails, a red triangle is shown in the upper right corner of the failed transform. Hover your mouse over the red error triangle to take a quick peek at the error message. The full stacktrace is available in the logs. Check [pipeline error handling](pipeline/errorhandling.fK13J3HtuL) to learn about how you can handle errors in your pipeline gracefully (which is not necessarily what you want).

</div>

<div class="imageblock text-left">

<div class="content">

![Failed pipeline](../assets/images/hop-gui/pipeline/failed-pipeline.png)

</div>

</div>

<div class="paragraph">

After each run the execution results are displayed in the panel on the bottom of your window. The Execution Results contains two tabs:

</div>

<div class="ulist">

  - Transform Metrics

  - Logging

</div>

<div class="paragraph">

The Transform Metrics tab displays metrics per transform.

</div>

<div class="imageblock text-left">

<div class="content">

![Transform Metrics pipeline](../assets/images/hop-gui/pipeline/transform-metrics-pipeline.png)

</div>

</div>

<div class="paragraph">

Following metrics are displayed:

</div>

<div class="paragraph">

Unresolved directive in tmp.Y9K0ArDEvf - include::../snippets/pipeline-metrics-table.adoc\[\]

</div>

<div class="paragraph">

The logging tab displays the log of the pipeline according to the log level choosen on execution.

</div>

<div class="imageblock text-left">

<div class="content">

![Logging pipeline](../assets/images/hop-gui/pipeline/logging-pipeline.png)

</div>

</div>

</div>

</div>

<div class="sect1">

## Preview a pipeline

<div class="sectionbody">

<div class="paragraph">

Preview the result off a pipeline to see how it performs can be done by completing one of the following tasks:

</div>

<div class="ulist">

  - Using the preview <span class="image">![Run](../assets/images/getting-started/icons/view.svg)</span> icon

  - Select Run and Preview from the top menu

  - Select Preview from the transform action Menu

  - Click on the tiny bottom right icon after running the pipeline

</div>

<div class="imageblock text-left">

<div class="content">

![Preview Menu pipeline](../assets/images/hop-gui/pipeline/preview-menu-pipeline.png)

</div>

</div>

<div class="paragraph">

In the pipeline preview dialog the transform from which the result must be previewed can be selected. Furthermore the number of rows to preview can be determined as well as a pause condition. When finished press the Quick Launch button. If you want to change the Pipeline run configuration click Configure. The result is displayed in ascending order. The result is previewed as displayed below.

</div>

<div class="imageblock text-left">

<div class="content">

![Preview pipeline](../assets/images/hop-gui/pipeline/preview-pipeline.png)

</div>

</div>

</div>

</div>

<div class="sect1">

## Debug a pipeline

<div class="sectionbody">

<div class="paragraph">

Debugging a pipeline to eliminate errors can be done by completing one of the following tasks:

</div>

<div class="ulist">

  - Using the debug <span class="image">![Run](../assets/images/getting-started/icons/debug.svg)</span> icon

  - Select Run and Debug from the top menu

  - Select Debug output from the transform action Menu

</div>

<div class="paragraph">

The same dialog is displayed as when using the preview functionality, only the enabled options are different.

</div>

<div class="imageblock text-left">

<div class="content">

![Debug pipeline](../assets/images/hop-gui/pipeline/debug-pipeline.png)

</div>

</div>

<div class="paragraph">

In the pipeline debug dialog the transform from which the result must be debugged can be selected. Furthermore the number of rows can be determined as well as a pause condition. When finished press the Quick Launch button. If you want to change the Pipeline run configuration click Configure. The result is displayed in descending order.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:35 +0200

</div>

</div>

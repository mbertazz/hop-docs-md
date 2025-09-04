<div id="header">

# Run and Debug a Workflow

</div>

<div id="content">

<div class="sect1">

## Run your first Workflow

<div class="sectionbody">

<div class="paragraph">

As with designing workflows, the steps to run a workflow are very similar to running a pipeline.

</div>

<div class="paragraph">

Click the 'run' button <span class="image">![Run](../assets/images/getting-started/icons/run.svg)</span> in your workflow toolbar

</div>

<div class="paragraph">

In the workflow run dialog, hit the 'New' button in the upper right corner to create a new 'Workflow run configuration'.

</div>

<div class="imageblock text-left">

<div class="content">

![Hop - New Workflow Config](../assets/images/getting-started/getting-started-run-workflow-dialog.png)

</div>

</div>

<div class="paragraph">

In the dialog that pops up, add 'Local Workflow' as the workflow configuration name and choose the 'Local workflow engine'.

</div>

<div class="imageblock text-left">

<div class="content">

![Hop - New Workflow Config Dialog](../assets/images/getting-started/getting-started-run-workflow-config-dialog.png)

</div>

</div>

<div class="paragraph">

Click 'OK' to return to the workflow run dialog.

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

<div class="imageblock text-left">

<div class="content">

![Hop - New Workflow With Config Dialog](../assets/images/getting-started/getting-started-run-workflow-with-config.png)

</div>

</div>

<div class="paragraph">

This workflow with our very basic pipeline should execute in less than one second. You’ll now have the execution results pane which again looks very similar to the pipeline execution results.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:38 +0200

</div>

</div>

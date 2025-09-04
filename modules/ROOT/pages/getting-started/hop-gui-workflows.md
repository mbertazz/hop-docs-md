<div id="header">

# Workflows

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

In [Concepts](getting-started/hop-concepts.XE9j5jy0Os), we walked through workflows, actions and hops. Let’s remember:

</div>

<div class="ulist">

  - A *workflow* is by default a sequential process that has a starting point and one or more endpoints.

  - An *action* is an item of workflow functionality that executes pipelines already implemented or any other element that allows orchestrating the execution of the data integration processes.

  - A *hop* in a *workflow* can conditionally connect *actions* and determine which *action* the *workflow* needs to execute next.

</div>

</div>

</div>

<div class="sect1">

## Create a Workflow

<div class="sectionbody">

<div class="paragraph">

There are two ways to create a workflow.

</div>

<div class="ulist">

  - Click on the New option on the Horizontal toolbar and select the Workflow option.

</div>

<div class="paragraph">

<span class="image">![gs hop gui create workflow 1](../assets/images/getting-started/gs-hop-gui-create-workflow-1.png)</span>

</div>

<div class="ulist">

  - File → New → Workflow

</div>

<div class="paragraph">

<span class="image">![gs hop gui create workflow 2](../assets/images/getting-started/gs-hop-gui-create-workflow-2.png)</span>

</div>

<div class="paragraph">

<span class="image">![gs hop gui create workflow 3](../assets/images/getting-started/gs-hop-gui-create-workflow-3.png)</span>

</div>

<div class="paragraph">

Your new workflow is created, and you’ll see the dialog below.

</div>

<div class="paragraph">

<span class="image">![gs hop gui create workflow 4](../assets/images/getting-started/gs-hop-gui-create-workflow-4.png)</span>

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
<td>Note that when you create a workflow, Apache Hop automatically adds <a href="http://localhost:1313/manual/latest/workflow/actions/start.html">Start</a> action by default.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Add and connect actions

<div class="sectionbody">

<div class="sect2">

### Add Actions

<div class="paragraph">

Now you are ready to add the first action. Click anywhere in the workflow canvas, the area where you’ll see the image below.

</div>

<div class="paragraph">

<span class="image">![gs hop gui create workflow 5](../assets/images/getting-started/gs-hop-gui-create-workflow-5.png)</span>

</div>

<div class="paragraph">

After clicking you will see a dialog:

</div>

<div class="paragraph">

<span class="image">![gs hop gui create workflow 6](../assets/images/getting-started/gs-hop-gui-create-workflow-6.png)</span>

</div>

<div class="paragraph">

Just like you did with pipelines, use the search box in this dialog to find the actions you need. Click or use the arrow keys and hit enter to add an action to your workflow.

</div>

<div class="paragraph">

For now, add a [Pipeline](workflow/actions/pipeline.XE9j5jy0Os) action to your workflow.

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
<td>check the <a href="workflow/actions.XE9j5jy0Os">full list of actions</a>. There are over 50 actions available in Hop 0.70, but you’ll soon get to know the most commonly used ones.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect2">

### Create a hop

<div class="paragraph">

Creating a hop is identical to creating a hop in a pipeline:

</div>

<div class="ulist">

  - **shift-drag**: while holding down the shift key on your keyboard. Click on an action, while holding down your primary mouse button, drag to the second action. Release the primary mouse button and the shift key.

  - **scroll-drag**: scroll-click on an action , while holding down your mouse’s scroll button, drag to the second action. Release the scroll button.

  - click on an action in your pipeline to open the '**click anywhere**' dialog. Click the 'Create hop' <span class="image">![Create hop](../assets/images/getting-started/icons/HOP.svg)</span> button and select the action you want to create the hop to.

</div>

<div class="paragraph">

<span class="image">![gs hop gui create workflow add pipeline action](../assets/images/getting-started/gs-hop-gui-create-workflow-add-pipeline-action.png)</span>

</div>

<div class="paragraph">

Save your workflow:

</div>

<div class="paragraph">

<span class="image">![gs hop gui create workflow save](../assets/images/getting-started/gs-hop-gui-create-workflow-save.png)</span>

</div>

<div class="paragraph">

At first, we have the Workflow run configuration session. A Workflow Run Configuration is a metadata object in Apache Hop and defines where the workflow is executed.

</div>

<div class="paragraph">

Select the 'local' workflow runtime configuration that is available by default in your Hop installation and click 'Launch'.

</div>

<div class="paragraph">

<span class="image">![gs hop gui create workflow run](../assets/images/getting-started/gs-hop-gui-create-workflow-run.png)</span>

</div>

<div class="paragraph">

You’ll now have an execution results pane very similar to the pipeline execution results.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:39 +0200

</div>

</div>

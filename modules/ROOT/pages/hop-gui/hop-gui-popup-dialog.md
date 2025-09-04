<div id="header">

# Hop Gui Popup (Context) Dialog

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

The Hop Gui popup dialog is a contextual dialog that allows you to perform a lot of operations on metadata, workflows and pipelines.

</div>

<div class="paragraph">

The popup dialog was designed to enable fast development through search and single clicks.

</div>

<div class="paragraph">

Hover over any of the available options in the popup dialog to see a description of that option. The example below shows the description for the `Copy as workflow action` option from the workflow popup.

</div>

<div class="paragraph">

<span class="image">![Hop Gui Popup Dialog - Description](../assets/images/hop-gui/popup-description.png)</span>

</div>

<div class="paragraph">

The search bar at the top of the dialog enables Hop developers to

</div>

<div class="ulist">

  - search the available items in the dialog. The list of available items is updated as you type. Navigate to the item you need using the arrow keys and hit enter or single-click on an item to select an item or add an action or transform to your workflow or pipeline.

  - collapse or expand all categories

  - show categories: show the available items in a categorized list, or as one large list of items

  - fixed width: display all items in a fixed with, tabular layout

</div>

<div class="paragraph">

<span class="image">![Hop Gui Popup Dialog - Toolbar](../assets/images/hop-gui/popup-toolbar.png)</span>

</div>

<div class="paragraph">

<span class="image">![Hop Gui Popup Dialog - Collapsed](../assets/images/hop-gui/popup-collapsed.png)</span>

</div>

<div class="paragraph">

<span class="image">![Hop Gui Popup Dialog - No categories](../assets/images/hop-gui/popup-no-categories-no-fixed-width.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Creating Items

<div class="sectionbody">

<div class="paragraph">

When you create a new item, the dialog will show you a list of metadata items that can be created with a single click of a button.

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
<td>Create a new item either by clicking the <span class="image"><img src="../assets/images/icons/add.svg" alt="plus" /></span> in the upper left corner, through File → New or by hitting <code>CTRL-N</code></td>
</tr>
</tbody>
</table>

</div>

<div class="ulist">

  - File
    
    <div class="ulist">
    
      - [Pipeline](pipeline/create-pipeline.kvQjWcAVIb)
    
      - [Workflow](workflow/create-workflow.kvQjWcAVIb)
    
    </div>

  - Metadata
    
    <div class="ulist">
    
      - [Beam File Definition](metadata-types/beam-file-definition.kvQjWcAVIb)
    
      - [Cassandra Connection](metadata-types/cassandra/cassandra-connection.kvQjWcAVIb)
    
      - [Data Set](metadata-types/data-set.kvQjWcAVIb)
    
      - [Hop Server](metadata-types/hop-server.kvQjWcAVIb)
    
      - [MongoDB Connection](metadata-types/mongodb-connection.kvQjWcAVIb)
    
      - [Neo4j Connection](metadata-types/neo4j/neo4j-connection.kvQjWcAVIb)
    
      - [Neo4j Graph Model](metadata-types/neo4j/neo4j-graphmodel.kvQjWcAVIb)
    
      - [Partition Schema](metadata-types/partition-schema.kvQjWcAVIb)
    
      - [Pipeline Log](metadata-types/pipeline-log.kvQjWcAVIb)
    
      - [Pipeline Probe](metadata-types/pipeline-probe.kvQjWcAVIb)
    
      - [Pipeline Run Configuration](metadata-types/pipeline-run-config.kvQjWcAVIb)
    
      - [Pipeline Unit Test](metadata-types/pipeline-unit-test.kvQjWcAVIb)
    
      - [Relational Database Connection](metadata-types/rdbms-connection.kvQjWcAVIb)
    
      - [Splunk Connection](metadata-types/splunk-connection.kvQjWcAVIb)
    
      - [Web Service](hop-server/web-service.kvQjWcAVIb)
    
      - [Workflow Log](metadata-types/workflow-log.kvQjWcAVIb)
    
      - [Workflow Run Configuration](metadata-types/workflow-run-config.kvQjWcAVIb)
    
    </div>

</div>

<div class="paragraph">

<span class="image">![Hop Gui Popup Dialog - Create Items](../assets/images/hop-gui/popup-create-item.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Workflow Options

<div class="sectionbody">

<div class="paragraph">

The 'Basic' category contains a number of operations you can perform on the current workflow.

</div>

<div class="ulist">

  - **edit workflow**: edit this workflow’s properties: description, parameters etc.

  - **create a note**: add a note to this workflow

  - **paste from the clipboard**: paste actions, notes or an entire workflow from the clipboard

  - **copy as workflow action**: copy this workflow to the clipboard as a workflow action, so you can paste it in another workflow as a pre-configured [workflow](workflow/actions/workflow.kvQjWcAVIb) action

</div>

<div class="paragraph">

All other categories contain the actions you can add to your workflow.

</div>

<div class="paragraph">

Check the [full list](workflow/actions.kvQjWcAVIb) of actions for detailed information on the available action options.

</div>

<div class="paragraph">

<span class="image">![Hop Gui Popup Dialog - Workflow Options](../assets/images/hop-gui/popup-workflow.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Workflow Action Options

<div class="sectionbody">

<div class="paragraph">

When clicking on an action icon, the popup contains a number of actions to work with actions:

</div>

<div class="ulist">

  - Basic
    
    <div class="ulist">
    
      - **Open: *Action Type***: open the selected action type. This is available for workflow, pipeline actions etc.
    
      - **Copy Action to clipboard**: copy this action to the clipboard, so you can paste it in the current or another workflow.
    
      - **Edit the action**: edit the current action’s properties
    
      - **Create hop**: this option closes the dialog and adds an open hop. Click on any other action icon in your workflow to create a hop to that action.
    
      - **Detach action**: remove all hops to and from this action. If this action connects 2 other actions through hops, a hop between these actions will be created.
    
      - **Edit action description**: opens the description dialog for this action
    
      - **Delete this action**: delete this action from the workflow. No new hops will be created if this action was connected to other actions.
    
    </div>

  - Advanced
    
    <div class="ulist">
    
      - **Parallel execution**: enable or disable parallel execution for actions after the current action.
    
    </div>

  - Logging
    
    <div class="ulist">
    
      - **Edit Custom Logging**: set a custom logging level for the current action
    
      - **Clear Custom Logging**: reset the logging level for this action back to `Basic`
    
    </div>

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
<td>Two shortcuts to open the workflow or pipeline specified in an action are to hover over the icon and hit the <code>z</code> key, or <code>CTRL-SHIFT-click</code> on the action icon.</td>
</tr>
</tbody>
</table>

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
<td>Click on an action icon to open the popup dialog. Click on the action name to directly open the action’s properties. This is a shortcut to clicking on the icon and selecting <code>Edit</code> from the popup dialog.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

<span class="image">![Hop Gui Popup Dialog - Workflow Action Options](../assets/images/hop-gui/popup-action.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Pipeline Options

<div class="sectionbody">

<div class="paragraph">

The 'Basic' category contains a number of operations you can perform on the current pipeline.

</div>

<div class="ulist">

  - **edit pipeline**: edit this pipeline’s properties: description, parameters etc.

  - **create**: add a note to this pipeline

  - **paste from the clipboard**: paste transforms, notes or an entire pipeline from the clipboard

  - **copy as pipeline action**: copy this pipeline to the clipboard as a workflow action, so you can paste it in a workflow as a pre-configured [pipeline](workflow/actions/pipeline.kvQjWcAVIb) action

</div>

<div class="paragraph">

<span class="image">![Hop Gui Popup Dialog - Pipeline Options](../assets/images/hop-gui/popup-pipeline.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Pipeline Transform Options

<div class="sectionbody">

<div class="paragraph">

When clicking on a transform icon, the popup contains a number of actions to work with transforms:

</div>

<div class="ulist">

  - Basic
    
    <div class="ulist">
    
      - **Edit**: edit the current transform’s properties
    
      - **Copy to clipboard**: copy this transform to the clipboard, so you can paste it in the current or another pipeline.
    
      - **Create hop**: this option closes the dialog and adds an open hop. Click on any other transform icon in your pipeline to create a hop to that transform.
    
      - **Detach transform**: remove all hops to and from this transform. If this transform connects 2 other transforms through hops, a hop between these transforms will be created.
    
      - **Show input fields**: show all the fields entering this transform
    
      - **Show output fields**: show all output fields resulting from this transform
    
      - **Edit description**: opens the description dialog for this transform
    
      - **Delete**: delete this transform from the pipeline. No new hops will be created if this transform was connected to other transforms.
    
    </div>

  - Data Routing
    
    <div class="ulist">
    
      - [**Specify copies**](pipeline/specify-copies.kvQjWcAVIb): set the number of transform copies to use during execution
    
      - **Copy/distribute rows**: make the transform copy/distribute rows during execution. The option is contextual: if the transform is copying rows, only the distribute option will be shown and vice versa.
    
      - **Set [partitioning](pipeline/partitioning.kvQjWcAVIb)**: specify how rows of data need to be grouped in partitions allowing parallel execution where similar rows need to end up on the same transform copy.
    
      - **Error handling**: configure error handling for this transform (for supported transforms)
    
      - **Add web service**: use the output of this transform as a [web service](hop-server/web-service.kvQjWcAVIb) with [Hop Server](hop-server/index.kvQjWcAVIb).
    
    </div>

  - Preview
    
    <div class="ulist">
    
      - **View output**: view output of this transform in a running or finished pipeline.
    
      - **Preview output**: execute the pipeline and see the output of this transform
    
      - **Debug output**: execute the pipeline and debug the output of this transform. Execution will pause when the debugging conditions are met.
    
      - **Sniff output**: take a look at 50 rows of output from the selected transform in a running pipeline
    
      - **Add data probe**: streams the output rows of this transform to a pipeline defined in a [pipeline probe](metadata-types/pipeline-probe.kvQjWcAVIb).
    
    </div>

  - Logging
    
    <div class="ulist">
    
      - **Edit Custom Logging**: set a custom logging level for the current transform
    
      - **Clear Custom Logging**: reset the logging level for this transform back to `Basic`
    
    </div>

  - Unit Testing
    
    <div class="ulist">
    
      - **Unit testing**: create an empty [data set](metadata-types/data-set.kvQjWcAVIb) with the output fields and layout for this transform
    
      - **Write rows to data set**: run the current pipeline and write the output of the current transform to a data set.
    
    </div>

</div>

<div class="paragraph">

<span class="image">![Hop Gui Popup Dialog - Workflow Transform Options](../assets/images/hop-gui/popup-transform.png)</span>

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
<td>The options shown for Unit Testing are just a subset of the available options. Check the <a href="pipeline/pipeline-unit-testing.kvQjWcAVIb">unit testing</a> docs for a detailed explanation of all the unit testing options.</td>
</tr>
</tbody>
</table>

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
<td>Click on a transform icon to open the popup dialog. Click on the transform name to directly open the transform properties. This is a shortcut to clicking on the icon and selecting <code>Edit</code> from the popup dialog.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Hop Options

<div class="sectionbody">

<div class="paragraph">

The Hop options, available from both the workflow and pipeline editors, offer a number of operations you can perform on one or more hops.

</div>

<div class="paragraph">

For pipelines, the dialog offers the following options:

</div>

<div class="ulist">

  - Basic
    
    <div class="ulist">
    
      - **disable/enable hop**: enable the current hop (if disabled) or disable the current hop (if enabled). This option will only show the applicable options (e.g. 'enable hop' won’t be shown for active hops and vice versa)
    
      - **delete hop**: delete the current hop
    
    </div>

  - Bulk
    
    <div class="ulist">
    
      - **Enable downstream hops**: enable the current hop, and all hops that follow later in the workflow (or pipeline).
    
      - **Disable downstream hops**: disable the current hop and all hops that follow later in the current workflow (or pipeline).
    
    </div>

</div>

<div class="paragraph">

<span class="image">![Hop Gui Popup Dialog - Pipeline Hop Options](../assets/images/hop-gui/popup-hop-pipeline.png)</span>

</div>

<div class="paragraph">

When working in a workflow, the hops popup dialog has all the options as the pipeline hop dialog, with one additional category:

</div>

<div class="ulist">

  - Routing
    
    <div class="ulist">
    
      - **Unconditional hop**: make the current hop unconditional (ignore the result of the previous action and follow this hop anyway)
    
      - **Success hop**: make the current hop a success hop (only follow if the result of the previous action is 'success')
    
      - **Failure hop**: make the current hop a failure hop (only follow if the result of the previous action is 'failure')
    
    </div>

</div>

<div class="paragraph">

<span class="image">![Hop Gui Popup Dialog - Workflow Hop Options](../assets/images/hop-gui/popup-hop-workflow.png)</span>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:44 +0200

</div>

</div>

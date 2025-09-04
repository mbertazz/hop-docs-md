<div id="header">

# Execution Information Perspective

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Icon: <span class="image">![execution](../assets/images/icons/execution.svg)</span>

</div>

</div>

</div>

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The Execution Information perspective provides an overview of execution information for previously executed workflows and pipelines. The perspective allows you to browse the list of executions and drill up or down to parent or child workflows and/or pipelines. Additionally, this perspective provides information about the execution status, logging information, (pipeline) metrics and the profiled data.

</div>

</div>

</div>

<div class="sect1">

## Information collection

<div class="sectionbody">

<div class="paragraph">

The execution information displayed in this perspective is not collected automatically. You need to specify to which [location](metadata-types/execution-information-location.jGMzN0DebE) you want to send execution information in the [Pipeline run configuration](metadata-types/pipeline-run-config.jGMzN0DebE) or [Workflow run configuration](metadata-types/workflow-run-config.jGMzN0DebE) of your choice.

</div>

</div>

</div>

<div class="sect1">

## Navigation

<div class="sectionbody">

<div class="paragraph">

You can navigate to it by clicking the <span class="image">![execution](../assets/images/icons/execution.svg)</span> icon from the vertical perspective toolbar in the Hop GUI.

</div>

<div class="paragraph">

The Keyboard shortcut to do the same is: `CTRL-Shift-I`.

</div>

<div class="paragraph">

If you want to view information regarding the *last* execution of the currently loaded pipeline (from the data orchestration perspective), you can hit the location icon in the toolbar:

</div>

<div class="imageblock">

<div class="content">

![execution information perspective pipeline toolbar icon](../assets/images/execution-information-perspective-pipeline-toolbar-icon.png)

</div>

</div>

<div class="paragraph">

If you’re editing a workflow you can do the same:

</div>

<div class="imageblock">

<div class="content">

![execution information perspective workflow toolbar icon](../assets/images/execution-information-perspective-workflow-toolbar-icon.png)

</div>

</div>

</div>

</div>

<div class="sect1">

## Usage

<div class="sectionbody">

<div class="sect2">

### Left-hand side panel

<div class="paragraph">

The left-hand side panel of the perspective contains a tree with all the defined [Execution Information Location](metadata-types/execution-information-location.jGMzN0DebE) metadata elements. Below the names of these locations you’ll see the icon, name and registration date of the pipelines and workflow for which there is information. For example:

</div>

<div class="imageblock">

<div class="content">

![An example left panel](../assets/images/execution-information-perspective-left-panel-example.png)

</div>

</div>

<div class="paragraph">

Possible action:

</div>

| Action                             | Result                                                                                                                        |
| ---------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| Double-click on a listed execution | The information about the pipeline or workflow will be loaded into a new tab on the right-hand side of the perspective.       |
| Click on the refresh icon          | The last 100 executions without parent will be loaded from the location                                                       |
| Click on the delete icon           | The currently selected execution will be deleted or all executions from the currently selected location (after confirmation). |

</div>

<div class="sect2">

### Right-hand side tab folder

<div class="paragraph">

On the right side are the executions opened in different tabs. For example, here is a single execution information tab of a completed workflow:

</div>

<div class="imageblock">

<div class="content">

![Overview of a right-hand side of the execution information perspective](../assets/images/execution-information-perspective-right-workflow-overview.png)

</div>

</div>

<div class="paragraph">

At the bottom you have different tabs:

</div>

| Tab     | Description                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Info    | Here you’ll find general information regarding the pipeline or workflow you’re looking at                                                                                                                                                                                                                                                                                                                                      |
| Metrics | In case you’re examining a pipeline execution you can see the overall transform metrics if there are any.                                                                                                                                                                                                                                                                                                                      |
| Log     | Here you can find the pipeline or workflow logging text. The logging text is loaded lazily when the tab is selected. The first part of the log is shown up to the limit specified in the configuration perspective under the option `Maximum execution logging text size` which is specified in number of characters.                                                                                                          |
| Data    | During the execution of a pipeline or workflow Hop can capture all sorts of data. Which data depends on the type of work that is being done and on how capturing is configured. For example the amount of data captured depends on the [Execution Data Profile](metadata-types/execution-data-profile.jGMzN0DebE) you set for a pipeline or whether of not there was interesting information after the execution of an action. |

</div>

<div class="sect2">

### Selecting an icon

<div class="paragraph">

If you click on a transform or workflow icon the perspective will automatically try to load all the data it has for it. It will switch to the "Data" tab at the bottom. There you will find a list of data sets that you can look at.

</div>

<div class="paragraph">

Here are available data sets for workflow actions:

</div>

| Data set                   | Description                                                                                                     |
| -------------------------- | --------------------------------------------------------------------------------------------------------------- |
| Result details of action   | You will find out if there were any errors, what the result (true/false) was or whether the action was stopped. |
| Result files of action     | If the action result contains any file names they will be in this data set                                      |
| Result rows of action      | If the action result contains any rows they will be in this data set                                            |
| Variables before execution | The list of interesting (different from the start of the workflow) variables before the action was executed.    |
| Variables after execution  | The list of interesting variables (and their values) after the action was executed.                             |

<div class="paragraph">

Here are some data sets you can capture in workflow transforms using an [Execution Data Profile](metadata-types/execution-data-profile.jGMzN0DebE):

</div>

| Data set                 | Description                                                                                                                 |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------------- |
| First rows of …​         | Shows the first rows that were written by the transform.                                                                    |
| Last rows of …​          | Shows the last rows that were written by the transform.                                                                     |
| Random rows of …​        | Shows a random selection of rows written by the transform                                                                   |
| Data profiling data sets | Depending on the data profiling options you enabled you can find per-column statistical information as well as sample rows. |

</div>

<div class="sect2">

### Drill down

<div class="paragraph">

If you want to know what went on during the execution of a particular action or transform you can select it and hit the arrow down in the toolbar:

</div>

<div class="imageblock">

<div class="content">

![drill down in the execution information perspective](../assets/images/execution-information-perspective-drill-down-toolbar-icon.png)

</div>

</div>

<div class="paragraph">

If the transform executed a pipeline or workflow in multiple copies you can choose which execution you want to follow. The same goes for workflows or pipelines that got executed multiple times in a [repeat](workflow/actions/repeat.jGMzN0DebE) action or a [Start](workflow/actions/start.jGMzN0DebE) loop. The result will be that the underlying execution will be opened in a new tab in the perspective.

</div>

</div>

<div class="sect2">

### Navigate to parent

<div class="paragraph">

If you are looking at the execution that got started by another pipeline or workflow you can navigate to this parent by clicking on the "arrow up" toolbar icon:

</div>

<div class="imageblock">

<div class="content">

![go to the parent execution](../assets/images/execution-information-perspective-to-parent-toolbar-icon.png)

</div>

</div>

</div>

<div class="sect2">

### Edit the pipeline or workflow

<div class="paragraph">

If you want to quickly navigate from the execution information of a pipeline or workflow to its editor, you can click on the data orchestration icon in the toolbar:

</div>

<div class="imageblock">

<div class="content">

![navigate to the editor](../assets/images/execution-information-perspective-to-editor-toolbar-icon.png)

</div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:46 +0200

</div>

</div>

<div id="header">

# Logging

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Every workflow or pipeline you execute through Hop Gui or Hop Run and a lot of the other tools generate logging as logging text in the most obvious form.

</div>

<div class="paragraph">

Hop allows data developers to influence how, where and at which level of detail logging information is generated and where it is written to.

</div>

</div>

</div>

<div class="sect1">

## Levels

<div class="sectionbody">

<div class="sect2">

### Descriptions

<div class="paragraph">

The amount of text logging generated depends on the logging level which is used when executing a workflow or pipeline:

</div>

| Level    | Description                                                                 |
| -------- | --------------------------------------------------------------------------- |
| NOTHING  | No logging is generated                                                     |
| ERROR    | Only errors are reported                                                    |
| MINIMAL  | The bare essential, nothing more                                            |
| BASIC    | The standard logging which tries to be concise and informative              |
| DETAILED | More logging information about what happens behind the scenes is reported   |
| DEBUG    | A lot of information is produced, often with specific values being reported |
| ROWLEVEL | Values are reported on an individual row level                              |

</div>

<div class="sect2">

### Runtime levels

<div class="paragraph">

The logging level can be specified when executing using hop-run or in the Hop GUI. It is also possible to use the debug plugin to set custom logging levels on a transform:

</div>

<div class="imageblock text-left">

<div class="content">

![Transform action - show logging options](../assets/images/logging/custom-logging-actions.png)

</div>

</div>

<div class="paragraph">

You can set a custom logging level for this particular transform and only for certain rows of data:

</div>

<div class="imageblock text-left">

<div class="content">

![Setting a custom transform logging level](../assets/images/logging/custom-transform-logging-level.png)

</div>

</div>

<div class="paragraph">

You can do likewise for a workflow:

</div>

<div class="imageblock text-left">

<div class="content">

![Setting a custom action logging level](../assets/images/logging/custom-action-logging-level.png)

</div>

</div>

</div>

</div>

</div>

<div class="sect1">

## Hop GUI logging

<div class="sectionbody">

<div class="paragraph">

The logging file of the Hop GUI is saved in the `audit/` folder (or in the folder set by `HOP_AUDIT_FOLDER`) in the `hopui.log` file.

</div>

</div>

</div>

<div class="sect1">

## Tools logging

<div class="sectionbody">

<div class="paragraph">

If you want to send logging of tools like hop-run or hop-conf to a logging file you need to do this simply by piping the text stream to a file.

</div>

</div>

</div>

<div class="sect1">

## Logging plugins

<div class="sectionbody">

<div class="sect2">

### Actions

<div class="sect3">

#### Write to log

<div class="paragraph">

The Write to log acction writes a specific string to the Hop logging system.

</div>

<div class="paragraph">

Check the [Write To Log](../workflow/actions/writetolog.d1vO9l3mzO) page for more details.

</div>

</div>

</div>

<div class="sect2">

### Metadata Types

<div class="sect3">

#### Pipeline Log

<div class="paragraph">

A pipeline log allows to log the activity of a pipeline with another pipeline.

</div>

<div class="paragraph">

Check the [pipeline log](../metadata-types/pipeline-log.d1vO9l3mzO) and [logging reflection](../logging/logging-reflection.d1vO9l3mzO) pages for more details.

</div>

</div>

<div class="sect3">

#### Workflow Log

<div class="paragraph">

Allows to log the activity of a workflow with a pipeline.

</div>

<div class="paragraph">

Check the [workflow log](../metadata-types/workflow-log.d1vO9l3mzO) and [logging reflection](../logging/logging-reflection.d1vO9l3mzO) pages for more details.

</div>

</div>

</div>

<div class="sect2">

### Perspectives

<div class="sect3">

#### Neo4j

<div class="paragraph">

Hop can write execution logs for workflows and pipelines to a Neo4j database.

</div>

<div class="paragraph">

Check [Neo4j Perspective](../hop-gui/perspective-neo4j.d1vO9l3mzO) page for more details.

</div>

</div>

</div>

<div class="sect2">

### Transforms

<div class="sect3">

#### Write to Log

<div class="paragraph">

This transform writes information to the Hop logging system.

</div>

<div class="paragraph">

Check the [Write To Log](../pipeline/transforms/writetolog.d1vO9l3mzO) page for more details.

</div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:06 +0200

</div>

</div>

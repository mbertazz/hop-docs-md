<div id="header">

# Workflow Log

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

<span class="image">![workflow log](../assets/images/icons/workflow-log.svg)</span>

</div>

<div class="paragraph">

Allows to log the activity of a workflow with a pipeline.

</div>

<div class="paragraph">

A workflow log streams logging information from a running workflow to a pipeline.

</div>

<div class="paragraph">

The only requirement for the receiving pipeline is that it starts with a [Workflow Logging](pipeline/transforms/workflow-logging.MSjuE7s9Zj) transform. Other than that, the logging pipeline is "just another pipeline". In this logging pipeline, you can process the logging information and e.g. write to a relational or NoSQL database, a Kafka topic etc

</div>

</div>

</div>

<div class="sect1">

## Samples

<div class="sectionbody">

<div class="paragraph">

The samples project comes with an example workflow log.

</div>

<div class="paragraph">

Check the metadata perspective for the workflow log `workflow-log-example`. This workflow log is configured to send logging information for the workflow `${PROJECT_HOME}/reflection/generate-fake-books.hwf` to the logging pipeline `${PROJECT_HOME}/reflection/workflow-log-example.hpl`.

</div>

<div class="paragraph">

<span class="image">![Workflow Log](../assets/images/metadata-types/workflow-log.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Related Plugins

<div class="sectionbody">

<div class="ulist">

  - [Workflow Logging](pipeline/transforms/workflow-logging.MSjuE7s9Zj)

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                                 | Default                                   | Description                                                                                                                                                   |
| -------------------------------------- | ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Name                                   | The name to be used for this workflow log |                                                                                                                                                               |
| Enabled?                               | true                                      |                                                                                                                                                               |
| Logging parent workflow only           | false                                     | If you enable this, only the parent workflow, executed by Hop Run, GUI, Server or API will be logged. When disabled, every workflow execution will be logged. |
| Pipeline executed to capture logging   |                                           | the pipeline to process the logging information for this workflow log                                                                                         |
| Execute at the start of the workflow?  | true                                      | Should this workflow log be executed at the start of a workflow run                                                                                           |
| Execute at the end of the workflow?    | false                                     | Should this workflow log be executed at the end of a workflow run                                                                                             |
| Execute periodically during execution? | true                                      | Should this workflow log be executed periodically during a workflow run                                                                                       |
| Interval in seconds                    | 30                                        | if executed periodically, indicates the interval at which the workflow log is executed                                                                        |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:21 +0200

</div>

</div>

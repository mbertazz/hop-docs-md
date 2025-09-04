<div id="header">

# Pipeline Log

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

<span class="image">![pipeline log](../assets/images/icons/pipeline-log.svg)</span>

</div>

<div class="paragraph">

Allows to log the activity of a pipeline with another pipeline.

</div>

<div class="paragraph">

A pipeline log streams logging information from a running pipeline to another pipeline.

</div>

<div class="paragraph">

The only requirement for the receiving pipeline is that it starts with a [Pipeline Logging](pipeline/transforms/pipeline-logging.53l6nFZrCd) transform. Other than that, the logging pipeline is "just another pipeline". In this logging pipeline, you can process the logging information and e.g. write to a relational or NoSQL database, a Kafka topic etc

</div>

</div>

</div>

<div class="sect1">

## Samples

<div class="sectionbody">

<div class="paragraph">

The samples project comes with an example pipeline log.

</div>

<div class="paragraph">

Check the metadata perspective for the pipeline log `pipeline-log-example`. This pipeline log is configured to send logging information for the pipeline `${PROJECT_HOME}/reflection/generate-fake-books.hpl` to the logging pipeline `${PROJECT_HOME}/reflection/pipeline-log-example.hpl`.

</div>

<div class="paragraph">

<span class="image">![Pipeline Log](../assets/images/metadata-types/pipeline-log.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Related Plugins

<div class="sectionbody">

<div class="ulist">

  - [Pipeline Logging](pipeline/transforms/pipeline-logging.53l6nFZrCd)

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                                 | Default                                   | Description                                                                                                                                                    |
| -------------------------------------- | ----------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Name                                   | The name to be used for this pipeline log |                                                                                                                                                                |
| Enabled?                               | true                                      |                                                                                                                                                                |
| Logging parent pipelines only          | false                                     | If you enable this, only the parent pipelines, executed by Hop Run, GUI, Server or API will be logged. When disabled, every pipeline execution will be logged. |
| Pipeline executed to capture logging   |                                           | the pipeline to process the logging information for this pipeline log                                                                                          |
| Execute at the start of the pipeline?  | true                                      | Should this pipeline log be executed at the start of a pipeline run                                                                                            |
| Execute at the end of the pipeline?    | false                                     | Should this pipeline log be executed at the end of a pipeline run                                                                                              |
| Execute periodically during execution? | true                                      | Should this pipeline log be executed periodically during a pipeline run                                                                                        |
| Interval in seconds                    | 30                                        | if executed periodically, indicates the interval at which the pipeline log is executed                                                                         |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:16 +0200

</div>

</div>

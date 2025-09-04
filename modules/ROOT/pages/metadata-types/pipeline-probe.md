<div id="header">

# Pipeline Probe

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

<span class="image">![probe](../assets/images/icons/probe.svg)</span>

</div>

<div class="paragraph">

The Pipeline Probe metadata type allows to stream output rows of a pipeline to another pipeline.

</div>

<div class="paragraph">

This receiving pipeline can then process this data for e.g. data quality, data profiling, data lineage etc.

</div>

<div class="paragraph">

The Pipeline Probe metadata type works by specifying a receiving pipeline (`Pipeline executed to capture logging`). This receiving pipeline is "just another pipeline" that takes a [Pipeline Data Probe](pipeline/transforms/pipeline-data-probe.sHibC98Xzg) as the input transform.

</div>

<div class="paragraph">

The receiving pipeline can then continue to process the probe data with all the functionality Apache Hop pipelines have to offer.

</div>

</div>

</div>

<div class="sect1">

## Related Plugins

<div class="sectionbody">

<div class="ulist">

  - Pipeline Probe

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                                     | Default | Description                                              |
| ------------------------------------------ | ------- | -------------------------------------------------------- |
| Name                                       |         | The name to be used for this pipeline probe              |
| Enabled                                    | true    |                                                          |
| Pipeline executed to capture logging       |         | the pipeline to process the data for this pipeline probe |
| Capture output of the following transforms |         | list of pipelines and transforms to capture logging for  |

</div>

</div>

<div class="sect1">

## Samples

<div class="sectionbody">

<div class="paragraph">

The samples project comes with a preconfigured data probe metadata item, a probing (receiving) pipeline and a source pipeline.

</div>

<div class="ulist">

  - pipeline probe: metadata perspective -→ pipeline probes -→ pipeline-probe-example

  - probing (receiving) pipeline: `${PROJECT_HOME}/pipeline-probe/pipeline-probe-example.hpl`

  - source pipeline: `${PROJECT_HOME}/pipeline-probe/pipeline-probe-generate-fake-books.hpl`

</div>

<div class="paragraph">

To run this sample and see the pipeline probe in action, all it takes is to run the source pipeline `${PROJECT_HOME}/pipeline-probe/pipeline-probe-generate-fake-books.hpl`.

</div>

<div class="paragraph">

This pipeline will generate 10.000 lines of fake books data. The pipeline probe will read the last transform in the pipeline (`dummy`) and pass the data that flows through this transform to the receiving (probing) transform.

</div>

<div class="paragraph">

The receiving (probing) pipeline (`${PROJECT_HOME}/pipeline-probe/pipeline-probe-example.hpl`) has a [Pipeline Data Probe](pipeline/transforms/pipeline-data-probe.sHibC98Xzg) as input. This pipeline will then denormalize the received data to field, count the number of books per genre, sort the results and writes the final data out to a file (`${PROJECT_HOME}/books-per-genre/probe-data.csv`).

</div>

<div class="paragraph">

After `pipeline-probe-generate-fake-books.hpl` finished, check the `pipeline-probe/output` folder in your samples project for the csv file that contains these results. You’ll find the data that was generated in `${PROJECT_HOME}/pipeline-probe/pipeline-probe-generate-fake-books.hpl`, aggregated by book genre.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:16 +0200

</div>

</div>

<div id="header">

# Pipelines

</div>

<div id="content">

<div class="sect1">

## Pipelines overview

<div class="sectionbody">

<div class="paragraph">

Pipelines, together with workflows, are the main building blocks in Hop. Pipelines perform the heavy data lifting: in a pipeline, you read data from one or more sources, perform a number of operations (joins, lookups, filters and lots more) and finally write the processed data to one or more target platforms.

</div>

<div class="paragraph">

Pipelines are a network of [transforms](pipeline/transforms.0Nf11JFuxg), connected by hops. Just like the [actions](workflow/actions.0Nf11JFuxg) in a workflow, each transform is a small piece of functionality. The combination of a number of transforms allow Hop developers to build powerful data processing and, in combination with workflows, orchestration solutions.

</div>

<div class="paragraph">

Even though there is some visual resemblance, workflows and pipelines operate very differently.

</div>

<div class="paragraph">

The core principles of pipelines are:

</div>

<div class="ulist">

  - pipelines are networks. Each transform in a pipeline is part of the network.

  - a pipeline runs all of its transforms in parallel. All transforms are started and process data simultaneously. In a simple pipeline where you read data from a large file, do some processing and finally write to a database table, you’re typically still reading from the file while you’re already loading data to the database.

  - data flows through the various transforms in a pipeline over hops. In contrast to workflow hops, pipeline hops typically don’t have an exit status. Pipelines do have some routing capabilities through e.g. [Filter Rows](pipeline/transforms/filterrows.0Nf11JFuxg) transform and [error handling](pipeline/errorhandling.0Nf11JFuxg), but the core pipeline principle still applies: the pipeline is a network, and data flow through the network in parallel.

</div>

</div>

</div>

<div class="sect1">

## Example pipeline walk-through

<div class="sectionbody">

<div class="paragraph">

The example below shows a very basic pipeline. This is what happens when we run this pipeline:

</div>

<div class="ulist">

  - the pipeline has 7 transforms. All 7 of these transforms become active when we start the pipeline.

  - the "read-25M-records" transform starts reading data from a file, and pushes that data down the stream to "perform-calculations" and the following transforms. Since reading 25 million records takes a while, some data may already have finished processing while we’re still reading records from the file.

  - the "lookup-sql-data" matches data we read from the file with data we retrieved from the "read-sql-data" transform. The [Stream Lookup](pipeline/transforms/streamlookup.0Nf11JFuxg) accepts input from the "read-sql-data", which is shown with the information icon <span class="image">![info](../assets/images/icons/info.svg)</span> on the hop.

  - once the data from the file and sql query are matched, we check a condition with the [Filter Rows](pipeline/transforms/filterrows.0Nf11JFuxg) transform in "condition?". The output of this data is passed to "write-to-table" or "write-to-file", depending on whether the condition outcome was true or false.

</div>

<div class="paragraph">

<span class="image">![Pipelines - basic pipeline](../assets/images/hop-gui/pipeline/basic-pipeline.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Next steps

<div class="sectionbody">

<div class="paragraph">

Pipelines are an extensive topic. Check the pages below to learn more about working with pipelines:

</div>

<div class="ulist">

  - [Pipeline Editor](pipeline/hop-pipeline-editor.0Nf11JFuxg)

  - [Create a Pipeline](pipeline/create-pipeline.0Nf11JFuxg)

  - [Run, Preview and Debug a Pipeline](pipeline/run-preview-debug-pipeline.0Nf11JFuxg)

  - [Pipeline Run Configurations](pipeline/pipeline-run-configurations/pipeline-run-configurations.0Nf11JFuxg)

  - [Metadata Injection](pipeline/metadata-injection.0Nf11JFuxg)

  - [Partitioning](pipeline/partitioning.0Nf11JFuxg)

  - [Getting started with Apache Beam](pipeline/beam/getting-started-with-beam.0Nf11JFuxg)

  - [Transforms](pipeline/transforms.0Nf11JFuxg)

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:34 +0200

</div>

</div>

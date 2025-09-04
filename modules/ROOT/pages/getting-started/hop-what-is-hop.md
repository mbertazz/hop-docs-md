<div id="header">

# What is Apache Hop?

</div>

<div id="content">

<div class="sect1">

## Visual Design and Metadata

<div class="sectionbody">

<div class="paragraph">

Apache Hop, short for **H**op **O**rchestration **P**latform, is a data orchestration and data engineering platform that aims to facilitate all aspects of data and metadata orchestration. Hop lets you focus on the problem you’re trying to solve without technology getting in the way. Simple tasks should be easy, complex tasks need to be possible.

</div>

<div class="paragraph">

Hop allows data professionals to work **visually**, using **metadata** to describe how data should be processed. Visual design enables data developers to focus on **what** they want to do instead of **how** that task needs to be done. This focus on the task at hand lets Hop developers be more productive than they would be when writing code.

</div>

</div>

</div>

<div class="sect1">

## Architecture

<div class="sectionbody">

<div class="paragraph">

Hop was designed to be as flexible as possible: at the core is the small but powerful Hop engine. All functionality is added through plugins: the default Hop installation comes with about 400 plugins. You can remove or add third-party plugins according to your needs to tailor Hop to be exactly what you need. Hop is designed to work in any scenario, from IoT to huge volumes of data, on-prem, in the cloud, on a bare OS or in containers and kubernetes.

</div>

</div>

</div>

<div class="sect1">

## Flexible Runtimes

<div class="sectionbody">

<div class="paragraph">

Hop developers create **workflows** and **pipelines** in a visual development environment called Hop Gui. These workflows and pipelines can be executed on a variety of engines: workflows and pipelines can run on the native Hop engine, both locally and remotely. Pipelines can also run on Apache Spark, Apache Flink and Google Dataflow through the Apache Beam runtime configurations.  

</div>

<div class="paragraph">

In workflows and pipelines, hundreds of operations can be applied on the data: read from and write to a variety of source and target platforms, but also combine, enrich, clean and in many other ways manipulate data. Depending on the engine and selected functionality, your data can be processed in batch, streaming or in a batch/streaming hybrid.

</div>

</div>

</div>

<div class="sect1">

## Use Cases

<div class="sectionbody">

<div class="paragraph">

A number of common use cases for Hop are:

</div>

<div class="ulist">

  - Loading large data sets into databases taking advantage of the cloud, clustered, and massively parallel processing environments.

  - Data warehouse population with built-in support for Slowly Changing Dimensions (SCD), Change Data Capture (CDC), and surrogate key creation.

  - Integrate between diverse data architectures, combining relational databases, files, NoSQL databases like Neo4j, MongoDB, Cassandra etc

  - Data migration between different databases and applications.

  - Data profiling and data cleansing.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:41 +0200

</div>

</div>

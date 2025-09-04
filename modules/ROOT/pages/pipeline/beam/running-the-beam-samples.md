<div id="header">

# Running the Apache Beam samples

<div id="toc" class="toc">

<div id="toctitle">

Table of Contents

</div>

  - [Prerequisites](#prerequisites)
      - [Java](#_java)
      - [the samples project](#_the_samples_project)
      - [Build your Hop Fat Jar](#_build_your_hop_fat_jar)
      - [Flink and Spark: export your project metadata](#_flink_and_spark_export_your_project_metadata)
  - [Running the samples for Direct runner, Flink and Spark](#_running_the_samples_for_direct_runner_flink_and_spark)

</div>

</div>

<div id="content">

<div class="sect1">

## Prerequisites

<div class="sectionbody">

<div class="paragraph">

The steps on this page and the detail pages for Spark, Flink and Google Dataflow will set up everything you need to run the pipelines in the Hop samples project.

</div>

<div class="sect2">

### Java

<div class="paragraph">

You’ll already have Java installed to run Apache Hop. Both Apache Hop and Beam require a Java 17 environment.

</div>

<div class="paragraph">

Double-check your java version with the `java -version` command. Your output should look similar to the one below.

</div>

<div class="listingblock">

<div class="content">

``` highlight
openjdk version "17.0.10" 2024-01-16
OpenJDK Runtime Environment Temurin-17.0.10+7 (build 17.0.10+7)
OpenJDK 64-Bit Server VM Temurin-17.0.10+7 (build 17.0.10+7, mixed mode)
```

</div>

</div>

</div>

<div class="sect2">

### the samples project

<div class="paragraph">

The Hop samples project comes with a number of sample pipelines for Apache Beam. Your default Hop installation comes with the samples project by default. If your Hop installation doesn’t come with this project, create a new project and point its Home folder to `<HOP>/config/projects/samples`.

</div>

<div class="paragraph">

The Samples project contains the following pipeline run configurations

</div>

<div class="ulist">

  - local: the native local run configuration. We’ll be ignoring this run configuration in the context of this guide.

  - Dataflow: the Apache Beam run configuration for Google Cloud Dataflow.

  - Direct: the direct runner Apache Beam run configuration. The [Direct Runner](https://beam.apache.org/documentation/runners/direct/) executes pipelines on your machine and is designed to validate that pipelines adhere to the Apache Beam model as closely as possible. Instead of focusing on efficient pipeline execution, the Direct Runner performs additional checks to ensure that users do not rely on semantics that are not guaranteed by the model.

  - Flink: the Apache Beam run configuration for Apache Flink.

  - Spark:the Apache Beam run configuration for Apache Spark.

</div>

<div class="paragraph">

<span class="image">![Apache Beam Run Configurations in Apache Hop](../assets/images/beam/beam-run-configurations.png)</span>

</div>

</div>

<div class="sect2">

### Build your Hop Fat Jar

<div class="paragraph">

Apache Beam requires a so-called `fat jar` that bundles all required Java classes and their dependencies into a single jar file.

</div>

<div class="paragraph">

Build this jar for your Hop installation through `Tools → Generate a Hop fat jar`.

</div>

<div class="paragraph">

Save this file in a convenient location and file name. Either store this outside of your project folder or add it to your `.gitignore`. You don’t want to accidentally add hundreds of MB to your git repository.

</div>

</div>

<div class="sect2">

### Flink and Spark: export your project metadata

<div class="paragraph">

You’ll need to pass your project’s metadata to JSON to pass it to either `spark-submit` or `flink run`.

</div>

<div class="paragraph">

Export your project metadata through `Tools → Export metadata to JSON`.

</div>

<div class="paragraph">

Save this file in a convenient location and file name. Either store this outside of your project folder or add it to your `.gitignore`. Your project’s metadata folder should already be in version control , you don’t want to add this full metadata point-in-time export once again.

</div>

</div>

</div>

</div>

<div class="sect1">

## Running the samples for Direct runner, Flink and Spark

<div class="sectionbody">

<div class="ulist">

  - [Direct Runner](pipeline/beam/beam-samples-direct-runner.NOwdPfKmCq)

  - [Apache Flink](pipeline/beam/beam-samples-flink.NOwdPfKmCq)

  - [Apache Spark](pipeline/beam/beam-samples-spark.NOwdPfKmCq)

  - [Google Cloud Dataflow](pipeline/beam/beam-samples-dataflow.NOwdPfKmCq)

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:27 +0200

</div>

</div>

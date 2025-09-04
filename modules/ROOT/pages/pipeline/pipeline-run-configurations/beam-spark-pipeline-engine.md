<div id="header">

# Apache Beam Spark Pipeline Engine

</div>

<div id="content">

<div class="sect1">

## Beam Spark

<div class="sectionbody">

<div class="paragraph">

The Apache Spark Runner can be used to execute Beam pipelines using Apache Spark version 3.1.

</div>

<div class="paragraph">

The Spark Runner executes Beam pipelines on top of Apache Spark, providing:

</div>

<div class="ulist">

  - Batch and streaming (and combined) pipelines.

  - The same fault-tolerance guarantees as provided by RDDs and DStreams.

  - The same security features Spark provides.

  - Built-in metrics reporting using Spark’s metrics system, which reports Beam Aggregators as well.

  - Native support for Beam side-inputs via spark’s Broadcast variables

</div>

<div class="paragraph">

Check the [Apache Beam Spark runner docs](https://beam.apache.org/documentation/runners/spark/) for more information.

</div>

<div class="sect2">

### Options

| Option                                       | Description                                                                                                                                                                                                                                                                                            | Default           |
| -------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------- |
| The Spark master                             | The url of the Spark Master. This is the equivalent of setting SparkConf\#setMaster(String) and can either be local\[x\] to run local with x cores, spark://host:port to connect to a Spark Standalone cluster, mesos://host:port to connect to a Mesos cluster, or yarn to connect to a yarn cluster. | local\[4\]        |
| Streaming: batch interval (ms)               | The StreamingContext’s batchDuration - setting Spark’s batch interval.                                                                                                                                                                                                                                 | 1000              |
| Streaming: checkpoint directory              | A checkpoint directory for streaming resilience, ignored in batch. For durability, a reliable filesystem such as HDFS/S3/GS is necessary.                                                                                                                                                              | local dir in /tmp |
| Streaming: checkpoint duration (ms)          |                                                                                                                                                                                                                                                                                                        |                   |
| Enable Metrics sink                          | A servlet within the existing Spark UI to serve metrics data as JSON data.                                                                                                                                                                                                                             |                   |
| Streaming: maximum records per batch         | The maximum records per batch interval.                                                                                                                                                                                                                                                                |                   |
| Streaming: minimum read time (ms)            | Mimimum elapsed read time.                                                                                                                                                                                                                                                                             |                   |
| Bundle size                                  | The maximum number of elements in a bundle.                                                                                                                                                                                                                                                            |                   |
| User agent                                   | A user agent string as per [RFC2616](https://tools.ietf.org/html/rfc2616), describing the pipeline to external services.                                                                                                                                                                               |                   |
| Temp location                                | Path for temporary files.                                                                                                                                                                                                                                                                              |                   |
| Plugins to stage (, delimited)               | Comma separated list of plugins.                                                                                                                                                                                                                                                                       |                   |
| Transform plugin classes                     | List of transform plugin classes.                                                                                                                                                                                                                                                                      |                   |
| XP plugin classes                            | List of extensions point plugins.                                                                                                                                                                                                                                                                      |                   |
| Streaming Hop transforms flush interval (ms) | The amount of time after which the internal buffer is sent completely over the network and emptied.                                                                                                                                                                                                    |                   |
| Hop streaming transforms buffer size         | The internal buffer size to use.                                                                                                                                                                                                                                                                       |                   |
| Fat jar file location                        | Fat jar location.                                                                                                                                                                                                                                                                                      |                   |

</div>

</div>

</div>

<div class="sect1">

## Running from GUI or Hop Server

<div class="sectionbody">

<div class="paragraph">

You can start Apache Spark pipelines when Hop is running directly on the master node. This means that you can run spark jobs directly from hop when a cluster is available on localhost. This also means you can deploy a Hop Server on your spark master node and use this as a jumphost to start Spark jobs on an Apache Spark cluster.

</div>

</div>

</div>

<div class="sect1">

## Running remotely

<div class="sectionbody">

<div class="paragraph">

Since execution of a pipeline on Spark is only possible from the Spark Master it is possible to start a Hop server on the master. Then you can remotely execute from anywhere on your Spark master of choice. Make sure that any referencable artifacts like the fat-jar you want to use is available to the Hop server and that you have configured your installation as described in the previous section.

</div>

</div>

</div>

<div class="sect1">

## Running with Spark Submit

<div class="sectionbody">

<div class="paragraph">

You can also execute using the 'spark-submit' tool. There is a main class you can use:

</div>

<div class="listingblock">

<div class="content">

``` highlight
org.apache.hop.beam.run.MainBeam
```

</div>

</div>

<div class="paragraph">

It accepts 3 or 4 arguments:

</div>

| Argument     | Description                                                                                                                                                                                        |
| ------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1            | The filename of the pipeline to execute.                                                                                                                                                           |
| 2            | The filename of the metadata to load (JSON). You can export metadata in the Hop GUI under the tools menu (part of the Beam plugin in `plugins/engines/beam` )                                      |
| 3            | The name of the pipeline run configuration to use                                                                                                                                                  |
| 4 (optional) | The name of the environment file (JSON) containing the variables you want to set in the pipeline. The format is identical to what is used in hop-config.json or an environment configuration file. |

<div class="paragraph">

Spark-submit also needs a fat jar. This can be generated in the Hop GUI under the tools menu or using command:

</div>

<div class="listingblock">

<div class="content">

``` highlight
sh hop-config.sh -fj /path/to/fat.jar
```

</div>

</div>

<div class="paragraph">

**Important** : project configurations, environments and these things are not valid in the context of the Spark runtime. This is a TODO for the Hop community to think how we can do this best. Your input is welcome. In the meantime pass variables to the JVM with the option:

</div>

<div class="listingblock">

<div class="content">

``` highlight
--driver-java-options '-DPROJECT_HOME=/path/to/project-home'
```

</div>

</div>

<div class="paragraph">

In general, it is better not to use relative paths like `${Internal.Entry.Current.Folder}` when specifying filenames when executing pipelines remotely. It’s usually better to pick a few root folders as variables. PROJECT\_HOME is as good as any variable to use.

</div>

<div class="paragraph">

An example spark-submit command might look like this:

</div>

<div class="listingblock">

<div class="content">

``` highlight
spark-submit \
  --master spark://master-host:7077 \
  --class org.apache.hop.beam.run.MainBeam \
  --driver-java-options '-DPROJECT_HOME=/my/project/home' \
  hop-fat.jar \
  /my/project/home/pipeline.hpl \
  metadata-export.json \
  SparkRunConfig
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Spark embedded

<div class="sectionbody">

<div class="paragraph">

You can specify a master of `local[4]` to run using an embedded Spark engine. It’s primarily used for testing locally. The number 4 in the example is the desired number of threads to use when executing. You can also specify `*` to automatically figure that out for your system.

</div>

<div class="paragraph">

Please note that you can get an error like the following:

</div>

<div class="listingblock">

<div class="content">

``` highlight
Cannot assign requested address: Service 'sparkDriver' failed after 16 retries
```

</div>

</div>

<div class="paragraph">

In this case you can set system environment variable `SPARK_LOCAL_IP` to `127.0.0.1`.

</div>

<div class="listingblock">

<div class="content">

``` highlight
export SPARK_LOCAL_IP="127.0.0.1"
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Possible errors

<div class="sectionbody">

<div class="paragraph">

When you receive a stack trace looking lik this, it usually means it can not find the spark master.

</div>

<div class="listingblock">

<div class="content">

``` highlight
Caused by: java.lang.NullPointerException
    at org.apache.spark.SparkContext.<init>(SparkContext.scala:640)
    at org.apache.spark.api.java.JavaSparkContext.<init>(JavaSparkContext.scala:58)
    at org.apache.beam.runners.spark.translation.SparkContextFactory.createSparkContext(SparkContextFactory.java:101)
    at org.apache.beam.runners.spark.translation.SparkContextFactory.getSparkContext(SparkContextFactory.java:67)
    at org.apache.beam.runners.spark.SparkRunner.run(SparkRunner.java:215)
    at org.apache.hop.beam.engines.BeamPipelineEngine.executePipeline(BeamPipelineEngine.java:243)
```

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:32 +0200

</div>

</div>

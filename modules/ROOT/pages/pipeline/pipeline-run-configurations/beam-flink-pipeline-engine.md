<div id="header">

# Apache Beam Flink Pipeline Engine

</div>

<div id="content">

<div class="sect1">

## Beam Flink

<div class="sectionbody">

<div class="paragraph">

This runner allows you to run Hop pipelines on [Apache Flink](https://flink.apache.org) version 1.13.

</div>

<div class="paragraph">

The Flink runner supports two modes: Local Direct Flink Runner and Flink Runner.

</div>

<div class="paragraph">

The Flink Runner and Flink are suitable for large scale, continuous jobs, and provide:

</div>

<div class="ulist">

  - A streaming-first runtime that supports both batch processing and data streaming programs

  - A runtime that supports very high throughput and low event latency at the same time

  - Fault-tolerance with exactly-once processing guarantees

  - Natural back-pressure in streaming programs

  - Custom memory management for efficient and robust switching between in-memory and out-of-core data processing algorithms

  - Integration with YARN and other components of the Apache Hadoop ecosystem

</div>

<div class="paragraph">

Check the [Apache Beam Flink runner docs](https://beam.apache.org/documentation/runners/flink/) for more information.

</div>

<div class="sect2">

### Options

| Option                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Default              |
| ----------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------- |
| The Flink master                                | Address of the Flink Master where the Pipeline should be executed. Can either be of the form "host:port" or one of the special values \[local\], \[collection\] or \[auto\]                                                                                                                                                                                                                                                                                                                                          | auto                 |
| Parallelism                                     | The pipeline wide maximum degree of parallelism to be used. The maximum parallelism specifies the upper limit for dynamic scaling and the number of key groups used for partitioned state.                                                                                                                                                                                                                                                                                                                           | \-1                  |
| Checkpointing interval                          | The interval in milliseconds at which to trigger checkpoints of the running pipeline.                                                                                                                                                                                                                                                                                                                                                                                                                                | No checkpointing, -1 |
| Checkpointing timeout (ms)                      | The maximum time in milliseconds that a checkpoint may take before being discarded.                                                                                                                                                                                                                                                                                                                                                                                                                                  | \-1                  |
| Minimum pause between checkpoints               | The minimal pause in milliseconds before the next checkpoint is triggered                                                                                                                                                                                                                                                                                                                                                                                                                                            | \-1                  |
| Fail on checkpointing errors                    | Sets the expected behaviour for tasks in case that they encounter an error in their checkpointing procedure. If this is set to true, the task will fail on checkpointing error. If this is set to false, the task will only decline a the checkpoint and continue running                                                                                                                                                                                                                                            | true                 |
| Number of execution retries                     | Sets the number of times that failed tasks are re-executed. A value of zero effectively disables fault tolerance. A value of -1 indicates that the system default value (as defined in the configuration) should be used.                                                                                                                                                                                                                                                                                            | \-1                  |
| Execution retry delay (ms)                      | Sets the delay in milliseconds between executions. A value of {@code -1} indicates that the default value should be used.                                                                                                                                                                                                                                                                                                                                                                                            | \-1                  |
| Object re-use                                   | Sets the behavior of reusing objects. Enabling the object reuse mode will instruct the runtime to reuse user objects for better performance.                                                                                                                                                                                                                                                                                                                                                                         | false                |
| Disable metrics                                 | Disable Beam metrics in Flink Runner                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | \-1                  |
| Retain externalized checkpoints on cancellation | Sets the behavior of externalized checkpoints on cancellation.                                                                                                                                                                                                                                                                                                                                                                                                                                                       | false                |
| Maximum bundle size                             | The maximum number of elements in a bundle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | 1000                 |
| Maximum bundle time (ms)                        | The maximum time to wait before finalising a bundle (in milliseconds).                                                                                                                                                                                                                                                                                                                                                                                                                                               | 1000                 |
| Shutdown sources on final watermark             | Shuts down sources which have been idle for the configured time of milliseconds. Once a source has been shut down, checkpointing is not possible anymore. Shutting down the sources eventually leads to pipeline shutdown (=Flink job finishes) once all input has been processed. Unless explicitly set, this will default to Long.MAX\_VALUE when checkpointing is enabled and to 0 when checkpointing is disabled. See [FLINK-2491](https://issues.apache.org/jira/browse/FLINK-2491) for progress on this issue. |                      |
| Latency tracking interval                       | Interval in milliseconds for sending latency tracking marks from the sources to the sinks. Interval value ⇐ 0 disables the feature.                                                                                                                                                                                                                                                                                                                                                                                  | 0                    |
| Auto watermark interval                         | The interval in milliseconds for automatic watermark emission.                                                                                                                                                                                                                                                                                                                                                                                                                                                       |                      |
| Batch execution mode                            | Flink mode for data exchange of batch pipelines. Reference {@link org.apache.flink.api.common.ExecutionMode}. Set this to BATCH\_FORCED if pipelines get blocked, see [FLINK-10672](https://issues.apache.org/jira/browse/FLINK-10672)                                                                                                                                                                                                                                                                               | P                    |
| User agent                                      | A user agent string as per [RFC2616](https://tools.ietf.org/html/rfc2616), describing the pipeline to external services.                                                                                                                                                                                                                                                                                                                                                                                             |                      |
| Temp location                                   | Path for temporary files.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |                      |
| Plugins to stage (, delimited)                  | Comma separated list of plugins.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |                      |
| Transform plugin classes                        | List of transform plugin classes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |                      |
| XP plugin classes                               | List of extensions point plugins.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |                      |
| Streaming Hop transforms flush interval (ms)    | The amount of time after which the internal buffer is sent completely over the network and emptied.                                                                                                                                                                                                                                                                                                                                                                                                                  |                      |
| Hop streaming transforms buffer size            | The internal buffer size to use.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |                      |
| Fat jar file location                           | Fat jar location.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |                      |

</div>

</div>

</div>

<div class="sect1">

## Running with Flink Run

<div class="sectionbody">

<div class="paragraph">

You can also execute using the 'bin/flink run' command. There is a main class you can use with the `--class` option of the run command:

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

The Flink run command also needs a fat jar as an argument. This can be generated in the Hop GUI under the tools menu or using command:

</div>

<div class="listingblock">

<div class="content">

``` highlight
sh hop-config.sh -fj /path/to/fat.jar
```

</div>

</div>

<div class="paragraph">

**Important** : project configurations, environments and these things are not valid in the context of the Flink runtime. This is a TODO for the Hop community to think how we can do this best. Your input is welcome. In the meantime pass variables to the JVM by setting these in the conf/flink-conf.yml file by adding a line:

</div>

<div class="listingblock">

<div class="content">

``` highlight
env.java.opts: -DPROJECT_HOME=/path/to/project-home
```

</div>

</div>

<div class="paragraph">

In general, it is better not to use relative paths like `${Internal.Entry.Current.Folder}` when specifying filenames when executing pipelines remotely. It’s usually better to pick a few root folders as variables. PROJECT\_HOME is as good as any variable to use.

</div>

<div class="paragraph">

An example Flink run command might look like this:

</div>

<div class="listingblock">

<div class="content">

``` highlight
bin/flink run \
  --class org.apache.hop.beam.run.MainBeam \
  --parallelism 2 \
  -D PROJECT_HOME=/my/project/home \
  /path/to/apache-hop-fat.jar \
  /my/project/home/pipeline.hpl \
  metadata-export.json \
  FlinkRunConfig
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Flink embedded

<div class="sectionbody">

<div class="paragraph">

You can specify a master of `[local]` to run using an embedded Flink engine. It’s primarily used for testing locally.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:31 +0200

</div>

</div>

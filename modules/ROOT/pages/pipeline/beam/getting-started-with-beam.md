<div id="header">

# Getting started with Apache Beam

<div id="toc" class="toc">

<div id="toctitle">

Table of Contents

</div>

  - [What is Apache Beam?](#_what_is_apache_beam)
  - [How does it work?](#_how_does_it_work)
  - [How is Hop using Beam?](#_how_is_hop_using_beam)
  - [What software versions are supported](#supportedversions)
  - [How are my pipelines executed?](#_how_are_my_pipelines_executed)
      - [Beam specific transforms](#_beam_specific_transforms)
      - [Universal transforms](#_universal_transforms)
      - [Unsupported transforms](#_unsupported_transforms)
      - [All others](#_all_others)
  - [Fat jars?](#_fat_jars)
  - [Beam File definitions](#_beam_file_definitions)
  - [Current limitations](#_current_limitations)

</div>

</div>

<div id="content">

<div class="sect1">

## What is Apache Beam?

<div class="sectionbody">

<div class="paragraph">

[Apache Beam](https://beam.apache.org) is an advanced unified programming model that allows you to implement batch and streaming data processing jobs that run on any execution engine. Popular execution engines are for example [Apache Spark](https://spark.apache.org), [Apache Flink](https://flink.apache.org) or [Google Cloud Platform Dataflow](https://cloud.google.com/dataflow).

</div>

</div>

</div>

<div class="sect1">

## How does it work?

<div class="sectionbody">

<div class="paragraph">

Apache Beam allows you to create programs in a variety of programming languages like Java, Python and Go using a standard [Beam API](https://beam.apache.org/documentation/programming-guide/). These programs build data [pipelines](https://beam.apache.org/documentation/programming-guide/#creating-a-pipeline) which can then be executed using Beam [runners](https://beam.apache.org/documentation/runners/capability-matrix/) on the various execution engines.

</div>

</div>

</div>

<div class="sect1">

## How is Hop using Beam?

<div class="sectionbody">

<div class="paragraph">

Hop is using the Beam API to create Beam pipelines based off of your visually designed Hop pipelines. The terminology of Hop and Beam are aligned because they mean the same thing. Hop provides 4 standard ways to execute a pipeline that you designed on Spark, Flink, Dataflow or on the Direct runner.

</div>

<div class="paragraph">

Here is the documentation for the relevant plugins:

</div>

<div class="ulist">

  - [Beam Spark pipeline engine](pipeline/pipeline-run-configurations/beam-spark-pipeline-engine.zu8vjKR4TM)

  - [Beam Flink pipeline engine](pipeline/pipeline-run-configurations/beam-flink-pipeline-engine.zu8vjKR4TM)

  - [Beam Dataflow pipeline engine](pipeline/pipeline-run-configurations/beam-dataflow-pipeline-engine.zu8vjKR4TM)
    
    <div class="ulist">
    
      - [Dataflow pipeline template](pipeline/beam/dataflowPipeline/google-dataflow-pipeline.zu8vjKR4TM)
    
    </div>

  - [Beam Direct pipeline engine](pipeline/pipeline-run-configurations/beam-direct-pipeline-engine.zu8vjKR4TM)

</div>

</div>

</div>

<div class="sect1">

## What software versions are supported

<div class="sectionbody">

| Hop version | Beam version | Spark version      | Flink version       |
| ----------- | ------------ | ------------------ | ------------------- |
| 2.9.0       | 2.56.0       | 3.4.X (scala 2.12) | 1.17.x              |
| 2.8.0       | 2.50.0       | 3.4.X (scala 2.12) | 1.16.x              |
| 2.7.0       | 2.50.0       | 3.4.X (scala 2.12) | 1.16.x              |
| 2.6.0       | 2.50.0       | 3.4.X (scala 2.12) | 1.16.x              |
| 2.5.0       | 2.48.0       | 3.4.X (scala 2.12) | 1.16.x              |
| 2.4.0       | 2.46.0       | 3.3.X (scala 2.12) | 1.15.x              |
| 2.3.0       | 2.43.0       | 3.3.X (scala 2.12) | 1.15.x              |
| 2.2.0       | 2.43.0       | 3.3.X (scala 2.12) | 1.15.x              |
| 2.1.0       | 2.41.0       | 3.3.0 (scala 2.12) | 1.15.2              |
| 2.0.0       | 2.38.0       | 3.1.3 (scala 2.12) | 1.14.4 (scala 2.11) |
| 1.2.0       | 2.35.0       | 3.1.2 (scala 2.12) | 1.13 (scala 2.11)   |
| 1.1.0       | 2.35.0       | 3.1.2              | 1.13                |
| 1.0.0       | 2.32.0       | 2.4.8              | 1.11                |

</div>

</div>

<div class="sect1">

## How are my pipelines executed?

<div class="sectionbody">

<div class="paragraph">

An Apache Hop pipeline is just metadata. The various beam pipeline engine plugins look at this metadata one transform at a time. It decides what to do with it based on a Hop transform handler which is provided. The transforms are in general split into a different types described below.

</div>

<div class="paragraph">

Important to remember is that Beam pipelines try to solve every action in an 'embarrassingly parallel' way. This means that every transform can and usually will run in more than 1 copy. On large clusters you should expect a lot of copies of the same code to run at any given time.

</div>

<div class="sect2">

### Beam specific transforms

<div class="paragraph">

There are a number of Beam specific transforms available which only work on the provided Beam pipeline execution engines. For example: [Beam Input](pipeline/transforms/beamfileinput.zu8vjKR4TM) which reads text file data from one or more files or [Beam BigQuery Output](pipeline/transforms/beambigqueryoutput.zu8vjKR4TM) which writes data to BigQuery.

</div>

<div class="paragraph">

You can find these transforms in the `Big Data` category and their names all start with `Beam` to make is easy to recognize them.

</div>

<div class="paragraph">

Here is an example of a simple pipeline which read files in a folder (on `gs://`), filters out data from California, removes and renames a few fields and writes the data back to another set of files:

</div>

<div class="imageblock">

<div class="content">

![Beam input-process-output-sample](../assets/images/getting-started-input-process-output-sample.png)

</div>

</div>

</div>

<div class="sect2">

### Universal transforms

<div class="paragraph">

There are a few transforms which are translated into Beam variations:

</div>

<div class="ulist">

  - [Memory Group By](pipeline/transforms/memgroupby.zu8vjKR4TM): This transform allows you to aggregate data across large data volumes. When using the Beam engines it uses `org.apache.beam.sdk.transforms.GroupByKey`.

  - [Merge Join](pipeline/transforms/mergejoin.zu8vjKR4TM): You can join 2 data sources with this transform. The main difference is that in the Beam engines the input data doesn’t need to be sorted. The Beam class used to perform this is: `org.apache.beam.sdk.extensions.joinlibrary.Join`.

  - [Generate Rows](pipeline/transforms/rowgenerator.zu8vjKR4TM): This transform is used to generate (empty/static) rows of data. It can be either a fixed number, or it can generate rows indefinitely. When using the Beam engines it uses `org.apache.beam.sdk.io.synthetic.SyntheticBoundedSource` or `org.apache.beam.sdk.io.synthetic.SyntheticUnboundedSource`.

</div>

</div>

<div class="sect2">

### Unsupported transforms

<div class="paragraph">

A few transforms are simply not supported because we haven’t found a good way to do this on Beam yet:

</div>

<div class="ulist">

  - [Unique Rows](pipeline/transforms/uniquerows.zu8vjKR4TM)

  - [Group By](pipeline/transforms/groupby.zu8vjKR4TM) : Use the `Memory Group By` instead

  - [Sort Rows](pipeline/transforms/sort.zu8vjKR4TM)

</div>

<div class="paragraph">

The [Denormaliser](pipeline/transforms/rowdenormaliser.zu8vjKR4TM) transform works technically correct on Apache Beam in release 1.1.0 and later. Even so you need to consider that the aggregation of the key-value pairs in that transform (in the general case) only happens on a sub-set of the rows. That is because in a Beam pipeline the order in which rows arrive is lost because they are continuously re-shuffled to maximize parallelism. This is different from the behavior of the "Local" Hop pipeline engine.

</div>

<div class="paragraph">

To get around this issue you can apply a [Memory Group By](pipeline/transforms/memgroupby.zu8vjKR4TM) transform across the whole dataset to grab the first non-null value of every field you de-normalised. This will produce the correct result.

</div>

</div>

<div class="sect2">

### All others

<div class="paragraph">

All other transforms are simply supported. They are wrapped in a bit of code to make the exact same code that runs on the Hop local pipeline engine work in a Beam pipeline. There are a few things to mention though.

</div>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Special case</th>
<th>Solution</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Info transforms</p></td>
<td><p>Some transforms like <code>Stream Lookup</code> read data from other transforms. This is handled by <a href="https://beam.apache.org/documentation/patterns/side-inputs/">side-inputs</a> for the data in the Beam API and is as such fully supported.</p></td>
</tr>
<tr class="even">
<td><p>Target transforms</p></td>
<td><p>Sometimes you want to target specific transforms like in <code>Switch Case</code> or <code>Filter Rows</code>. This is fully supported as well and handled by the Beam API which handles <a href="https://beam.apache.org/documentation/programming-guide/#additional-outputs">additional outputs</a>.</p></td>
</tr>
<tr class="odd">
<td><p>Non-Beam input transforms</p></td>
<td><p>When you’re reading data using a non-beam transform (see <code>Beam specific transforms</code> above) we need to make sure that this transform is executed in exactly one thread. Otherwise, you might read your XML or JSON document many times by the inherently parallel intentions of the various engines. This is handled by doing a Group By over a single value. You’ll see the following in for example your Dataflow pipeline: <code>Create.Values</code> → <code>WithKeys</code> → <code>GroupByKey</code> → <code>Values</code> → <code>Flatten.Iterables</code> → <code>ParDo</code> …​ and all this is just done to make sure we only ever execute our transform once.</p>
<p><span class="image"><img src="../assets/images/beam-getting-started-input-transforms-on-dataflow.png" alt="Non-Beam input transforms on Dataflow" style="width:30.0%" /></span></p></td>
</tr>
<tr class="even">
<td><p>Non-Beam Output transforms</p></td>
<td><p>The insistence of a Beam pipeline to run work in an embarrassingly parallel way can trip you up on the output side. In general, it is NOT possible to limit the number of copies of a particular transform. What Hop tries to do is perform a series of operations to try and force a single thread. However, this does not work on all runners. Flink for example insists on doing even this in parallel: <code>GroupByKey(Void)</code> → <code>Values()</code> → <code>Flatten()</code>.</p>
<p>You can set the number of copies string of a transform to include <strong><code>SINGLE_BEAM</code></strong> (click on the transform and select <code>Number of copies</code> in the Hop GUI).</p>
<p>A better way to deal with this problem is NOT to insist on creating a single file. You can include the unique ID of a transform in the filename with variable <code>${Internal.Transform.ID}</code>. This will allow the various transform copies to write unique files to the same folder.</p></td>
</tr>
<tr class="odd">
<td><p>Row batching with non-Beam transforms</p></td>
<td><p>A lot of target databases like to receive rows in batches of records. So if you have a transform like for example <code>Table Output</code> or <code>Neo4j Output</code> you might see that performance is not that great. This is because by default the <a href="https://beam.apache.org/documentation/runtime/model/">Beam programming model</a> is designed to stream rows of data through a pipeline in <code>bundles</code> and the Hop API only knows about a single record at once. For these transforms you can include <strong><code>BATCH</code></strong> in the number of copies string of a transform click on the transform and select <code>Number of copies</code> in the Hop GUI). For these flagged transforms you can then specify 2 parameters in your Beam pipeline run configurations. When you set these you can determine how long rows are kept behind before being forced to the transforms in question</p>
<p><strong>Streaming Hop transform flush interval</strong>: how long in time are rows kept and batched up? If you care about latency make this lower (500 or lower). If you have a long-running batching pipeline, make it higher (10000 or higher perhaps).</p>
<p><strong>Hop streaming transforms buffer size</strong>: how many rows are being batched? Consider making it the same as the batching size you use in your transform metadata (e.g. <code>Table Output</code>, <code>Neo4j Cypher</code>, …​)</p>
<p>Please note that these are maximum values. If the end of a bundle is reached in a pipeline rows are always forced to the transform code and as such pushed to the target system. To get an idea of how many times a batching buffer is flushed to the underlying transform code (and as such to for example a remote database) we added a <code>Flushes</code> metric. You will notice this in your metrics view in the Hop GUI when executing.</p>
<p><span class="image"><img src="../assets/images/beam-getting-started-flushes-metric.png" alt="Beam Flushes Metrics" style="width:75.0%" /></span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Fat jars?

<div class="sectionbody">

<div class="paragraph">

A fat jar is often used to package up all the code you need for a particular project. The Spark, Flink and Dataflow execution engines like it since it massively simplifies the Java classpath when executing pipelines. Apache Hop allows you to create a fat jar in the Hop GUI with the `Tools/Generate a Hop fat jar…​` menu or using the following command:

</div>

<div class="listingblock">

<div class="content">

``` highlight
sh hop-config.sh -fj /path/to/fat.jar
```

</div>

</div>

<div class="paragraph">

The path to this fat jar can then be referenced in the various Beam runtime configurations. Note that the current version of Hop and all its plugins are used to build the fat jar. If you install or remove plugins or update Hop itself make sure to remember to generate a new fat jar or to update it.

</div>

</div>

</div>

<div class="sect1">

## Beam File definitions

<div class="sectionbody">

<div class="paragraph">

The [Beam Input](pipeline/transforms/beamfileinput.zu8vjKR4TM) and [Beam Output](pipeline/transforms/beamfileoutput.zu8vjKR4TM) transforms expect you to define the layout of the file(s) being read or written.

</div>

<div class="imageblock">

<div class="content">

![Beam File Definition example](../assets/images/beam-getting-started-beam-file-definition.png)

</div>

</div>

</div>

</div>

<div class="sect1">

## Current limitations

<div class="sectionbody">

<div class="paragraph">

There are some specific advantages to using engines like Spark, Flink and Dataflow. However, with it come some limitations as well…​

</div>

<div class="ulist">

  - Previewing data is not available (yet). Because of the distributed nature of execution we don’t have a great way to acquire preview data.

  - Unit testing: not available for similar reasons compared to previewing or debugging. To test your Beam pipelines pick up data after a pipeline is done and compare that to a golden data set in another pipeline running with a "Local Hop" pipeline engine.

  - Debugging or pausing a pipeline is not supported

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:26 +0200

</div>

</div>

<div id="header">

# Running the Apache Beam samples With the Beam Direct Runner

</div>

<div id="content">

<div class="paragraph">

The Direct Runner executes pipelines on your machine and is designed to validate that pipelines adhere to the Apache Beam model as closely as possible. Instead of focusing on efficient pipeline execution, the Direct Runner performs additional checks to ensure that users do not rely on semantics that are not guaranteed by the model.

</div>

<div class="paragraph">

Using the Direct Runner for testing and development helps ensure that pipelines are robust across different Beam runners. In addition, debugging failed runs can be a non-trivial task when a pipeline executes on a remote cluster. Instead, it is often faster and simpler to perform local unit testing on your pipeline code. Unit testing your pipeline locally also allows you to use your preferred local debugging tools.

</div>

<div class="paragraph">

check the [Apache Beam Direct Runner docs](https://beam.apache.org/documentation/runners/direct/) for more details.

</div>

<div class="paragraph">

The default settings for the direct runner should work by default, all you need to do is specify your fat jar location.

</div>

<div class="paragraph">

<span class="image">![Apache Beam Direct run config](../assets/images/beam/beam-direct-run-config.png)</span>

</div>

<div class="paragraph">

Contrary to the [Flink](pipeline/beam/beam-samples-flink.5ZIaVTxhjG) and [Spark](pipeline/beam/beam-samples-spark.5ZIaVTxhjG) runners, the direct runner can be started directly from Hop Gui.

</div>

<div class="paragraph">

The output from `beam/pipelines/generate-synthetic-data.hpl` (with a reduced number of rows) is shown below.

</div>

<div class="listingblock">

<div class="content">

``` highlight
2022/02/11 11:28:36 - Hop - Projects enabled
2022/02/11 11:28:36 - Hop - Enabling project : 'samples'
2022/02/11 11:29:24 - Hop - Pipeline opened.
2022/02/11 11:29:24 - Hop - Launching pipeline [generate-synthetic-data]...
2022/02/11 11:29:24 - Hop - Started the pipeline execution.
2022/02/11 11:29:26 - General - Created Apache Beam pipeline with name 'generate-synthetic-data'
2022/02/11 11:29:26 - General - Handled transform (ROW GENERATOR) : 100M rows
2022/02/11 11:29:26 - General - Handled generic transform (TRANSFORM) : random data, gets data from 1 previous transform(s), targets=0, infos=0
2022/02/11 11:29:26 - General - Handled transform (OUTPUT) : generate-synthetic-data, gets data from random data
2022/02/11 11:29:26 - generate-synthetic-data - Executing this pipeline using the Beam Pipeline Engine with run configuration 'Direct'
2022/02/11 11:30:44 - generate-synthetic-data - Beam pipeline execution has finished.
```

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:24 +0200

</div>

</div>

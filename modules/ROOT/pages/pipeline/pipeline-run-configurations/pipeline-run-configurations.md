<div id="header">

# Pipeline Run Configurations

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

Run configurations decouple the design and execution phases of Hop pipeline development. A pipeline is a definition of *how* data is processed, a run configurations defines *where* the pipeline is executed. Hop comes supports a number of different runtime engines, each of which will be described in more detail in this section. Each run configuration comes with its own set of parameters and configuration options, all of which are stored as Hop Metadata.

</div>

</div>

</div>

<div class="sect1">

## Choosing a Run Configuration

<div class="sectionbody">

<div class="paragraph">

When starting a new pipeline click **New** next to 'Pipeline run configuration'. All run configurations have a name, description and an engine type, each engine type has its own set of configuration options.

</div>

<div class="paragraph">

Once created, run configurations are available from the 'Pipeline run configuration' list and are ready to use.

</div>

<div class="paragraph">

<span class="image">![Hop Configuration Selection](../assets/images/run-configuration/configuration-selection.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### Main Tab

<div class="paragraph">

The main tab contains the name, description and the dropdown list for the available engine types.

</div>

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Name</p></td>
<td><p>The name you want to use for this pipeline run configuration.</p></td>
</tr>
<tr class="even">
<td><p>Description</p></td>
<td><p>A description you want to use for this pipeline run configuration (optional).</p></td>
</tr>
<tr class="odd">
<td><p>Execution information location</p></td>
<td><p>The <a href="metadata-types/execution-information-location.Ack4WEV53G" class="uri">metadata-types/execution-information-location.Ack4WEV53G</a> to use with this pipeline run configuration.</p></td>
</tr>
<tr class="even">
<td><p>Execution data profile</p></td>
<td><p>The <a href="metadata-types/execution-data-profile.Ack4WEV53G" class="uri">metadata-types/execution-data-profile.Ack4WEV53G</a> to use with this pipeline run configuration.</p></td>
</tr>
<tr class="odd">
<td><p>Engine type</p></td>
<td><div class="content">
<div class="paragraph">
<p>The available engine types are:</p>
</div>
<div class="ulist">
<ul>
<li><p><strong><a href="pipeline/pipeline-run-configurations/beam-dataflow-pipeline-engine.Ack4WEV53G">Beam DataFlow pipeline engine</a></strong>: this configuration runs pipelines on Google DataFlow over Apache Beam</p></li>
<li><p><strong><a href="pipeline/pipeline-run-configurations/beam-direct-pipeline-engine.Ack4WEV53G">Beam Direct pipeline engine</a></strong>: this configuration runs pipelines on the direct Beam runner (mainly for testing purposes)</p></li>
<li><p><strong><a href="pipeline/pipeline-run-configurations/beam-flink-pipeline-engine.Ack4WEV53G">Beam Flink pipeline engine</a></strong>: this configuration runs pipelines on Apache Flink over Apache Beam</p></li>
<li><p><strong><a href="pipeline/pipeline-run-configurations/beam-spark-pipeline-engine.Ack4WEV53G">Beam Spark pipeline engine</a></strong>: this configuration runs pipelines on Apache Spark over Apache Beam</p></li>
<li><p><strong><a href="pipeline/pipeline-run-configurations/native-local-pipeline-engine.Ack4WEV53G">Hop local pipeline engine</a></strong>: this configuration runs pipelines locally in the native Hop engine</p></li>
<li><p><strong><a href="pipeline/pipeline-run-configurations/native-remote-pipeline-engine.Ack4WEV53G">Hop remote pipeline engine</a></strong>: this configuration runs pipelines in the native Hop engine on a remote machine</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>Check the <a href="https://beam.apache.org/documentation/runners/capability-matrix/">Beam Capability Matrix</a> to help you decide which Beam engine works best for your pipeline.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect2">

### Variables Tab

<div class="paragraph">

This tab allows Hop developers to specify a set of variables to be used in the run configurations.

</div>

| Option        | Description                                                                  |
| ------------- | ---------------------------------------------------------------------------- |
| Variable name | A variable name.                                                             |
| Value         | The variable value.                                                          |
| Description   | A description for the variable. The description is optional but recommended. |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:33 +0200

</div>

</div>

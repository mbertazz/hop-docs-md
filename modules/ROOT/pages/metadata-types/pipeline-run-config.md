<div id="header">

# Pipeline Run Configuration

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

<span class="image">![pipeline run config](../assets/images/icons/pipeline_run_config.svg)</span>

</div>

<div class="paragraph">

Describes how and with which engine a pipeline is to be executed.

</div>

<div class="paragraph">

Pipelines can be executed on a variety of runtime engines. Check [Pipeline Run Configurations](pipeline/pipeline-run-configurations/pipeline-run-configurations.9TjcdxjYbp) for more details.

</div>

</div>

</div>

<div class="sect1">

## Related Plugins

<div class="sectionbody">

<div class="paragraph">

None/All

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
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
<td><p>the name to be used for this pipeline run configuration</p></td>
</tr>
<tr class="even">
<td><p>Description</p></td>
<td><p>the description to be used for this pipeline run configuration</p></td>
</tr>
<tr class="odd">
<td><p>Execution information location</p></td>
<td><p>The <a href="metadata-types/execution-information-location.9TjcdxjYbp" class="uri">metadata-types/execution-information-location.9TjcdxjYbp</a> to use with this pipeline run configuration.</p></td>
</tr>
<tr class="even">
<td><p>Execution data profile</p></td>
<td><p>The <a href="metadata-types/execution-data-profile.9TjcdxjYbp" class="uri">metadata-types/execution-data-profile.9TjcdxjYbp</a> to use with this pipeline run configuration.</p></td>
</tr>
<tr class="odd">
<td><p>Engine Type</p></td>
<td><div class="content">
<div class="paragraph">
<p>The available pipeline engines are listed below. Detailed configuration depends on the <a href="pipeline/pipeline-run-configurations/pipeline-run-configurations.9TjcdxjYbp">selected engine</a>.</p>
</div>
<div class="ulist">
<ul>
<li><p><strong><a href="pipeline/pipeline-run-configurations/beam-dataflow-pipeline-engine.9TjcdxjYbp">Beam DataFlow pipeline engine</a></strong></p></li>
<li><p><strong><a href="pipeline/pipeline-run-configurations/beam-direct-pipeline-engine.9TjcdxjYbp">Beam Direct pipeline engine</a></strong></p></li>
<li><p><strong><a href="pipeline/pipeline-run-configurations/beam-flink-pipeline-engine.9TjcdxjYbp">Beam Flink pipeline engine</a></strong></p></li>
<li><p><strong><a href="pipeline/pipeline-run-configurations/beam-spark-pipeline-engine.9TjcdxjYbp">Beam Spark pipeline engine</a></strong></p></li>
<li><p><strong><a href="pipeline/pipeline-run-configurations/native-local-pipeline-engine.9TjcdxjYbp">Hop local pipeline engine</a></strong></p></li>
<li><p><strong><a href="pipeline/pipeline-run-configurations/native-remote-pipeline-engine.9TjcdxjYbp">Hop remote pipeline engine</a></strong></p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Samples

<div class="sectionbody">

<div class="paragraph">

Your Hop installation comes with a default 'local' pipeline run configuration.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:17 +0200

</div>

</div>

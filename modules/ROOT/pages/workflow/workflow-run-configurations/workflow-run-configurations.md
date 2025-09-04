<div id="header">

# Workflow Run Configurations

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

Run configurations decouple the design and execution phases of Hop workflow development. A workflow is a definition of *how* data is processed, a run configurations defines *where* the workflow is executed. Hop supports a number of different runtime engines, each of which will be described in more detail in this section. Each run configuration comes with its own set of parameters and configuration options, all of which are stored as Hop Metadata.

</div>

</div>

</div>

<div class="sect1">

## Choosing a Run Configuration

<div class="sectionbody">

<div class="paragraph">

When starting a new workflow click **New** next to 'Workflow run configuration'. All run configurations have a name, description and an engine type, each engine type has its own set of configuration options.

</div>

<div class="paragraph">

Once created, run configurations are available from the 'Workflow run configuration' list and are ready to use.

</div>

<div class="paragraph">

<span class="image">![Workflow Run configuration](../assets/images/hop-gui/workflow/workflow-run-configuration.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="paragraph">

The tab contains the name, description and the dropdown list for the workflow engine types.

</div>

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 80%" />
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
<td><p>The name you want to use for this workflow run configuration.</p></td>
</tr>
<tr class="even">
<td><p>Description</p></td>
<td><p>A description you want to use for this workflow run configuration (optional).</p></td>
</tr>
<tr class="odd">
<td><p>Execution information location</p></td>
<td><p>The <a href="metadata-types/execution-information-location.5nYoYgol3e" class="uri">metadata-types/execution-information-location.5nYoYgol3e</a> to use with this workflow run configuration.</p></td>
</tr>
<tr class="even">
<td><p>Engine type</p></td>
<td><div class="content">
<div class="paragraph">
<p>The available engine types are:</p>
</div>
<div class="ulist">
<ul>
<li><p><a href="workflow/workflow-run-configurations/native-local-workflow-engine.5nYoYgol3e">Local workflow engine</a>: this configuration runs pipelines on your machine</p></li>
<li><p><a href="workflow/workflow-run-configurations/native-remote-workflow-engine.5nYoYgol3e">Remote workflow engine</a>: this configuration runs workflows on a Hop Server using a defined Run Configuration.</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:39 +0200

</div>

</div>

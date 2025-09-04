<div id="header">

# <span class="image image-doc-icon">![Set Variables transform Icon](../assets/images/transforms/icons/setvariable.svg)</span> Set Variables

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 75%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="content">
<div class="sect1">
<h2 id="_description">Description</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Set Variables allows you to set variables from fields. By clicking the Get Fields button it will automatically fill in all the fields from the data row and fill in variable names in all-caps. Verify the scope is correct.</p>
</div>
</div>
</div>
</div></td>
<td><div class="content">
<div class="sect1">
<h2 id="_supported_engines">Supported Engines</h2>
<div class="sectionbody">
<table>
<tbody>
<tr class="odd">
<td><p>Hop Engine</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Spark</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
</tbody>
</table>
</div>
</div>
</div></td>
</tr>
</tbody>
</table>

<div class="paragraph">

This transform accepts one (and only one) row of data to set the value of a variable. It is important to isolate a single row for this transform, a simple way to do this is using the [Blocking transform](pipeline/transforms/blockingtransform.iMExKwex4X)

</div>

<div class="paragraph">

Variables have no type in Hop (casted as strings). If working with formulas for example, it may not have a type so be sure to convert to string if necessary (can use the TEXT function).

</div>

<div class="paragraph">

**Variables set with Set Variable are not available to use in the current pipeline.** If set values are needed in the current pipeline the values will have to come from fields.

</div>

<div class="paragraph">

Note that variables cannot be passed upstream between pipelines. Parameters are best passed downstream to avoid threading issues. A nested pipeline is technically the same pipeline, so variables are inherited in the initialization phase.

</div>

<div class="paragraph">

Though you cannot pass parameters and variables upstream (in nested or sequential pipelines) you can pass data rows back up a pipeline via the following pattern in the samples project: samples/loops/pipeline-executor.hpl

</div>

<div class="paragraph">

A variable can be set in one pipeline and be available in the next pipeline (named pipeline) that is in the loop of a pipeline executor. If you are using a pipeline executor child, the parent pipeline does not restart and does not get any set variables. The new variable name to set in a child pipeline is shown below in the second column.

</div>

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
<td>This transform accepts one (and only one) row of data to set the value of a variable. If you want to set a variable from a pipeline that processes multiple lines of data, make sure you isolate a single row before setting a variable.</td>
</tr>
</tbody>
</table>

</div>

<div class="admonitionblock warning">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Warning
</div></td>
<td>You can’t set and use a variable in the same pipeline. Since all transforms in a pipeline run in parallel, there is no way a transform in a pipeline can use a variable that is set in another transform in that same pipeline.</td>
</tr>
</tbody>
</table>

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
<td><p>Transform name</p></td>
<td><p>Name of the transform.</p></td>
</tr>
<tr class="even">
<td><p>Apply formatting</p></td>
<td><p>When this option is set, it formats the value (date, numbers etc.) according to the format options. Otherwise no formatting is done.</p></td>
</tr>
<tr class="odd">
<td><p>Field Name</p></td>
<td><p>Name of the field that is used</p></td>
</tr>
<tr class="even">
<td><p>Variable Name</p></td>
<td><p>Name of the variable to set (without ${…​} or %%…​%% sigils)</p></td>
</tr>
<tr class="odd">
<td><p>Variable scope type</p></td>
<td><div class="content">
<div class="paragraph">
<p>Define the scope of the variable, possible options are:</p>
</div>
<div class="ulist">
<ul>
<li><p>Valid in the Java Virtual Machine: the complete virtual machine will know about this variable.</p></li>
<li><p>Valid in the parent workflow: the variable is only valid in the parent workflow.</p></li>
<li><p>Valid in the grand-parent workflow: the variable is valid in the grand-parent workflow and all the child workflows and pipelines.</p></li>
<li><p>Valid in the root workflow: the variable is valid in the root workflow and all the child workflows and pipelines.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Default value</p></td>
<td><p>Value that will be set for empty rows</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:07 +0200

</div>

</div>

<div id="header">

# Execution Data Profile

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

An Apache Hop Execution Data Profile builds data profiles as data flow through pipelines. A number of data profilers can be selected and configure the fine tune the type and detail of the data that is profiled.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option               | Description                                                                           |
| -------------------- | ------------------------------------------------------------------------------------- |
| Name                 | The name to be used for this Execution Data Profile                                   |
| Description          | A description to be used for this Execution Data Profile                              |
| Data Samplers to use | One or more data samplers to use with this Execution Data Profile. See details below. |

</div>

</div>

<div class="sect1">

## Data Samplers

<div class="sectionbody">

<table>
<thead>
<tr class="header">
<th>Data Sampler</th>
<th>Description</th>
<th>Options</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Data profile output rows</p></td>
<td><p>Allow for some basic data profiling to be performed on transform output rows</p></td>
<td><div class="content">
<div class="ulist">
<ul>
<li><p>Sample size: This is the maximum number of sample rows kept for any discovered profiling result (default: 25)</p></li>
<li><p>Last transforms only: only perform data profiling on pipeline endpoints (last transforms)? (default: true)</p></li>
<li><p>Minima: store the minimum value for this data profile (default: true)</p></li>
<li><p>Maxima: store the maximum value for this data profile (default: true)</p></li>
<li><p>Count nulls: count null values for this data profile (default: true)</p></li>
<li><p>Count non-nulls: count non-null values for this data profile (default: true)</p></li>
<li><p>Min length: store the minimum lengths for this data profile (default: true)</p></li>
<li><p>Max length: store the maximum lengths for this data profile (default: true)</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>First output rows</p></td>
<td><p>Samples the first rows of a transform output</p></td>
<td><p>Sample size (default: 100)</p></td>
</tr>
<tr class="odd">
<td><p>Last output rows</p></td>
<td><p>Samples the last rows of a transform output</p></td>
<td><p>Sample size (default: 100)</p></td>
</tr>
<tr class="even">
<td><p>Random output rows</p></td>
<td><p>Do reservoir sampling on the output rows of a transform</p></td>
<td><p>Sample size (default: 100)</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:11 +0200

</div>

</div>

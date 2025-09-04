<div id="header">

# <span class="image image-doc-icon">![Reservoir Sampling transform Icon](../assets/images/transforms/icons/reservoirsampling.svg)</span> Reservoir Sampling

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
<p>The Reservoir Sampling transform allows you to sample a fixed number of rows from an incoming data stream when the total number of incoming rows is not known in advance.</p>
</div>
<div class="paragraph">
<p>The transform uses uniform sampling; all incoming rows have an equal chance of being selected.</p>
</div>
<div class="paragraph">
<p>This transform is particularly useful when used in conjunction with the ARFF output transform in order to generate a suitable sized data set to be used by WEKA.</p>
</div>
<div class="paragraph">
<p>The reservoir sampling transform uses <a href="https://en.wikipedia.org/wiki/Reservoir_sampling">Algorithm R</a> by Jeffery Vitter.</p>
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

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option         | Description                                                                                                                                                    |
| -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name | Name of the transform this name has to be unique in a single pipeline.                                                                                         |
| Sample size    | Select how many rows to sample from an incoming stream. Setting a value of 0 will cause all rows to be sampled; setting a negative value will block all rows.  |
| Random seed    | Choose a seed for the random number generator. Repeating a pipeline with a different value for the seed will result in a different random sample being chosen. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:54 +0200

</div>

</div>

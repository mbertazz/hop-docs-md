<div id="header">

# <span class="image image-doc-icon">![Blocking until finish Icon](../assets/images/transforms/icons/blockinguntiltransformsfinish.svg)</span> Blocking until transforms finish

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
<p>This transform simply waits until all the transform copies that are specified in the dialog have finished.</p>
</div>
<div class="paragraph">
<p>You can use it to avoid the natural concurrency (parallelism) that exists between pipeline transform copies.</p>
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

| Option                         | Description                                                                                                            |
| ------------------------------ | ---------------------------------------------------------------------------------------------------------------------- |
| Transform name                 | Name of the transform.                                                                                                 |
| Watch the following transforms | Use this grid to specify the transforms to wait for.                                                                   |
| Get transforms                 | Push this button to auto-fill the "Watch the following transforms" grid with all transforms available in the pipeline. |

| Option         | Description                                                                                                                                                                                                                                                                                                                                                                     |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name | The name of the transform to wait for.                                                                                                                                                                                                                                                                                                                                          |
| CopyNr         | The (0-based) copy number of the transform. If the named transform has an explicit setting for "Change number of copies to start", and you want to wait for all copies to finish, you’ll need to enter one row in the grid for each copy, and use this column to specify which copy of the transform to wait for. For the default number of copies (1), the CopyNr is always 0. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:53 +0200

</div>

</div>

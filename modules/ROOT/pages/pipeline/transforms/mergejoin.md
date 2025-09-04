<div id="header">

# <span class="image image-doc-icon">![Merge Join transform Icon](../assets/images/transforms/icons/mergejoin.svg)</span> Merge Join

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
<p>The Merge Join transform performs a classic merge join between data sets with data coming from two different input transforms.</p>
</div>
<div class="paragraph">
<p>This transform assumes your data is sorted on the join keys. Use <a href="pipeline/transforms/sort.3SRfu9Xoml">Sort Rows</a> transforms on the incoming streams to enforce sorting if necessary.</p>
</div>
<div class="paragraph">
<p>Join options include INNER, LEFT OUTER, RIGHT OUTER, and FULL OUTER.</p>
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
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
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

| Option           | Description                                                                                                   |
| ---------------- | ------------------------------------------------------------------------------------------------------------- |
| First Transform  | The first transform to read data from (left hand side of the join)                                            |
| Second Transform | The second transform to read data from (right hand side of the join)                                          |
| Join type        | The join type that should be used; INNER, LEFT OUTER, RIGHT OUTER, and FULL OUTER                             |
| Key Field        | The fields used for the join key, this only supports equal joins (key first transform = key second transform) |

<div class="paragraph">

For guidance on preventing deadlocks when using the Merge Join transform, refer to this how-to guide: **[Avoiding deadlocks](how-to-guides/avoiding-deadlocks.3SRfu9Xoml)**

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:36 +0200

</div>

</div>

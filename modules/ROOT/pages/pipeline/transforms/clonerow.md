<div id="header">

# <span class="image image-doc-icon">![Clone row transform Icon](../assets/images/transforms/icons/clonerow.svg)</span> Clone row

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
<p>The Clone Row transform creates copies (clones) of a row and outputs them directly after the original row to the next transforms.</p>
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
<td><p>Name of the transform. Note: This name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Nr clones</p></td>
<td><p>The number of clones you want to add after the original row.</p></td>
</tr>
<tr class="odd">
<td><p>Add clone flag</p></td>
<td><div class="content">
<div class="paragraph">
<p>Check this option if you want to add a boolean field in the output indicating if the row is a clone or not.</p>
</div>
<div class="ulist">
<ul>
<li><p>N / false : this is not a cloned row, it’s the original row</p></li>
<li><p>Y / true : this is a cloned row, a copy of the original row</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Clone flag field</p></td>
<td><p>The name of the clone flag field</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:57 +0200

</div>

</div>

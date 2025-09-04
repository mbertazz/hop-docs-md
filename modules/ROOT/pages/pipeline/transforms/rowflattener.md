<div id="header">

# <span class="image image-doc-icon">![Row Flattener transform Icon](../assets/images/transforms/icons/flattener.svg)</span> Row Flattener

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
<p>The Row Flattener transform allows you to flatten data sequentially.</p>
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

| Option               | Description                                                            |
| -------------------- | ---------------------------------------------------------------------- |
| Transform name       | Name of the transform; this name has to be unique in a single pipeline |
| The field to flatten | The field that must be flattened into different target fields          |
| Target fields        | The name of the target field to which the field is flattened           |

</div>

</div>

<div class="sect1">

## Example

<div class="sectionbody">

<div class="paragraph">

In the sample below, if you begin with the following data set…​

</div>

| Field1 | Field2 | Field3 | Flatten |
| ------ | ------ | ------ | ------- |
| A      | B      | C      | One     |
| Z      | Y      | X      | Two     |
| D      | E      | F      | Three   |
| W      | V      | U      | Four    |

<div class="paragraph">

The data set can be flattened to the example shown below:

</div>

| Field1 | Field2 | Field3 | Target1 | Target2 |
| ------ | ------ | ------ | ------- | ------- |
| A      | B      | C      | One     | Two     |
| D      | E      | F      | Three   | Four    |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:55 +0200

</div>

</div>

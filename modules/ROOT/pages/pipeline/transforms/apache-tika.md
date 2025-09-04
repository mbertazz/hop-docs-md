<div id="header">

# <span class="image image-doc-icon">![Apache Tika Icon](../assets/images/transforms/icons/tika.svg)</span> Apache Tika

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
<p>The Apache Tika transform parses files in all sorts of formats and extracts the text content as well as available metadata it can extract. This transform uses the <a href="http://tika.apache.org">Apache Tika</a> libraries to do the parsing.</p>
</div>
<div class="paragraph">
<p>The extracted metadata is given in JSON format. If you need specific pieces of information from this metadata, you can extract those with a <a href="pipeline/transforms/jsoninput.JAEw8X6zah">JSON Input</a> transform.</p>
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

| Option            | Description                                                                                                     |
| ----------------- | --------------------------------------------------------------------------------------------------------------- |
| Transform name    | Name of the transform. Note: This name has to be unique in a single pipeline.                                   |
| File tab          | Here you can specify which files will be read and examined.                                                     |
| Content tab       | This tab has various content settings. For example, you can specify the file encoding, output format and so on. |
| Output fields tab | On this tab you can simply type in the names of the fields you want in the output.                              |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:40 +0200

</div>

</div>

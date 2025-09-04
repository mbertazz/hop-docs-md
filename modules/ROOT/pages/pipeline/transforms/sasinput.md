<div id="header">

# <span class="image image-doc-icon">![SAS Input transform Icon](../assets/images/transforms/icons/sas.svg)</span> SAS Input

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
<p>The SAS Input transform reads files in sas7bdat format created by SAS software (SAS Institute, Inc.).</p>
</div>
<div class="paragraph">
<p>The functionality is backed by the <a href="https://github.com/epam/parso">Parso java library</a>.</p>
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

| Option                                | Description                                                                                                                                                                                                                                                                                                                                                                                                              |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Transform name                        | Name of the transform this name has to be unique in a single pipeline.                                                                                                                                                                                                                                                                                                                                                   |
| Field in the input to use as filename | Select the input field that will contain the filename at runtime. For example, you can use a "Get file names" transform to drive the content of this field.                                                                                                                                                                                                                                                              |
| The selected fields from the files    | If you use the "Get Fields" button you can populate this data grid. Please note that even though the sas7bdat file format only contains certain formats, that you can specify any desired data type and that Apache Hop will convert for you. Also note that not all fields need to be specified and that you can re-order fields and give them new names. The selection of the fields will be based on the name column. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:03 +0200

</div>

</div>

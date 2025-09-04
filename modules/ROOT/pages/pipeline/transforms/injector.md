<div id="header">

# <span class="image image-doc-icon">![Injector transform Icon](../assets/images/transforms/icons/injector.svg)</span> Injector

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
<p>The Injector transform is used for special purpose pipelines where you want to 'inject' rows into the pipeline using the Hop API and Java, or from streaming input transforms like the <a href="pipeline/transforms/kafkaconsumer.LDPJ9XeOUb">Kafka Consumer</a> transform.</p>
</div>
<div class="paragraph">
<p>Among other things you can build 'headless' pipelines with it: pipelines that have no input at design time: do not read from file or database.</p>
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

| Option         | Description                                                                                                                                        |
| -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name | Name of the transform.                                                                                                                             |
| Fieldname      | Specify the field name of the rows to inject.                                                                                                      |
| Type           | Specify the type of data.                                                                                                                          |
| Length         | For Number: Total number of significant figures in a number; For String: total length of string; For Date: length of printed output of the string. |
| Precision      | For Number: Number of floating point digits; For String, Date, Boolean: unused.                                                                    |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:27 +0200

</div>

</div>

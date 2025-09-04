<div id="header">

# <span class="image image-doc-icon">![Avro Encode Icon](../assets/images/transforms/icons/avro_encode.svg)</span> Avro Encode

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
<p>The Avro Encode transform allows you to encode a new Avro Record field using a selection of Hop fields. The Avro schema will be part of the value metadata for this Avro Record field.</p>
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

| Option                                         | Description                                                                                                                                                                            |
| ---------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                                 | Name of the transform. Note: This name has to be unique in a single pipeline.                                                                                                          |
| Output field name                              | Choose a name for the Avro Record output field.                                                                                                                                        |
| Schema name                                    | The name of the schema included in the output Avro record                                                                                                                              |
| Namespace                                      | An optional schema namespace                                                                                                                                                           |
| Documentation                                  | An optional schema documentation (doc) element                                                                                                                                         |
| The fields to encode in a generic Avro record: | You can specify the names of the Hop input fields to be included in the output Avro record field. Optionally you can store the values under a different name (key) in the Avro record. |
| Get fields button                              | You can use the "Get fields" button to retrieve the fields to be included in the Avro record.                                                                                          |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:41 +0200

</div>

</div>

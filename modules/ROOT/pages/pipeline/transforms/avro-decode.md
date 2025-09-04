<div id="header">

# <span class="image image-doc-icon">![Avro Decode Icon](../assets/images/transforms/icons/avro_decode.svg)</span> Avro Decode

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
<p>The Avro Decode transform allows you to decode an Avro field and convert it to Hop fields.</p>
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

| Option            | Description                                                                                                                                                                                                                                                                                                                                                                |
| ----------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name    | Name of the transform. Note: This name has to be unique in a single pipeline.                                                                                                                                                                                                                                                                                              |
| Source field      | Select the name of the field (of type: Avro) to convert                                                                                                                                                                                                                                                                                                                    |
| Source fields     | You can specify the names of the Avro fields to select from the Avro records. You can also specify to which Hop data type you want to convert to. Please note that complex data types like Map and Record are converted into JSON which you can then parse further in subsequent transforms. Note: The "Avro type" column is informational only. It’s not used at runtime. |
| Get fields button | You can use the "Get fields" button to retrieve the fields from the schema present in the metadata of the specified Avro Record source field. If there’s no metadata in this field, in case of sourcing from a Kafka consumer for example, you can opt to read from an Avro file.                                                                                          |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:41 +0200

</div>

</div>

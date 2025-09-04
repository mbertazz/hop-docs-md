<div id="header">

# <span class="image image-doc-icon">![Avro File Output Icon](../assets/images/transforms/icons/avro_output.svg)</span> Avro File Output

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
<p>The Avro File Output transform can write Apache Avro messages to a file or field</p>
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

| Option                           | Description                                                                                                                                         |
| -------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                   | Name of the transform. Note: This name has to be unique in a single pipeline.                                                                       |
| Output Type                      | The type of output you want, this can be binary file, binary message or a JSON message. When selecting message it will be sent to the Output Field. |
| Filename                         | The filepath where to save the avro data file.                                                                                                      |
| Output Field                     | When not writing to a file this is the fieldname used to output the message to.                                                                     |
| Automatically create schema      | You can either select an existing schema or create a schema based on the fields in the fields tab.                                                  |
| Write schema to file             | Select this to write the schema to a separate file.                                                                                                 |
| Avro namespace                   | Namespace used in the Avro file.                                                                                                                    |
| Avro record name                 | Name used for the Avro record.                                                                                                                      |
| Avro documentation               |                                                                                                                                                     |
| Schema filename                  | Filepath to write or read the schema from.                                                                                                          |
| Create parent folder             | When creating a file, select this if you want to create the parent folder.                                                                          |
| Compression codec                | Compression used for the avro messages when writing to a file.                                                                                      |
| Include transform nr in filename | Add the Transform instance number to the filename.                                                                                                  |
| Include partition nr in filename | Add the Partition number to the filename.                                                                                                           |
| Include date in filename         | Include the date when the file was created in the filename                                                                                          |
| Include time in filename         | Include the time when the file was created in the filename                                                                                          |
| Specify date format              | Specify a custom date and format to attach to the filename                                                                                          |
| Date time format                 | Date time specification used for the formatting                                                                                                     |
| Add filenames to result          | Add the resulting filenames that are created to the filename results                                                                                |

<div class="paragraph">

Fields tab:

</div>

| Option           | Description                                                                                                                               |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Name             | The source field in the stream.                                                                                                           |
| Avro Schema Path | The destination field, when an existing schema is specified this is populated with the fields from the schema to map the input fields to. |
| Avro Type        | The Avro type of the field in the Avro destination file.                                                                                  |
| Nullable         | Is the field nullable?                                                                                                                    |

</div>

</div>

<div class="sect1">

## Metadata Injection Support

<div class="sectionbody">

<div class="paragraph">

To inject the Avro field type use following codes

</div>

<div class="paragraph">

AVRO\_TYPE\_NONE = 0  
AVRO\_TYPE\_BOOLEAN = 1  
AVRO\_TYPE\_DOUBLE = 2  
AVRO\_TYPE\_FLOAT = 3  
AVRO\_TYPE\_INT = 4  
AVRO\_TYPE\_LONG = 5  
AVRO\_TYPE\_STRING = 6  
AVRO\_TYPE\_ENUM = 7

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:42 +0200

</div>

</div>

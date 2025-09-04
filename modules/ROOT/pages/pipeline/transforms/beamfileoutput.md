<div id="header">

# <span class="image image-doc-icon">![Beam Output Icon](../assets/images/transforms/icons/beam-output.svg)</span> Beam File Output

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
<p>The Beam File Output transform writes files using a file definition with the Beam execution engine.</p>
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
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
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

| Option                 | Description                                                             |
| ---------------------- | ----------------------------------------------------------------------- |
| Transform name         | Name of the transform, this name has to be unique in a single pipeline. |
| Output location        | The output location.                                                    |
| File prefix            | Text which has to precede the file name.                                |
| File suffix            | Text which has to succeed the file name.                                |
| Windowed writes?       | Writes a file per window. Use together with the Beam Window transform.  |
| File definition to use | The file definition to use stored in a metastore.                       |
| Edit                   | Edits an existing file definition.                                      |
| New                    | Creates a new file definition.                                          |
| Manage                 | Opens the MetaStore Explorer.                                           |

</div>

</div>

<div class="sect1">

## File Definition

<div class="sectionbody">

<div class="paragraph">

A file definition can be used to define a file structure definition.

</div>

| Option            | Description                          |
| ----------------- | ------------------------------------ |
| Name              | The file definition name.            |
| Description       | The file definition description.     |
| Field separator   | The character separating the fields. |
| Field enclosure   | The character enclosing fields.      |
| Field definitions | A list of fields.                    |
| Field name        | The field name.                      |
| Type              | The field data type.                 |
| Format            | The field format.                    |
| Length            | The field length.                    |
| Precision         | The field precisiom.                 |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:47 +0200

</div>

</div>

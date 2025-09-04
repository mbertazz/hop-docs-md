<div id="header">

# <span class="image image-doc-icon">![Select Values transform Icon](../assets/images/transforms/icons/selectvalues.svg)</span> Select Values

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
<p>The Select Values transform is useful for selecting, removing, renaming, changing data types and configuring the length and precision of the fields on the stream.</p>
</div>
<div class="paragraph">
<p>These operations are organized into different categories:</p>
</div>
<div class="ulist">
<ul>
<li><p><strong>Select &amp; Alter</strong> — Specify the exact order and name in which the fields have to be placed in the output rows</p></li>
<li><p><strong>Remove</strong> — Specify the fields that have to be removed from the output rows</p></li>
<li><p><strong>Meta-data</strong> - Change the name, type, length and precision (the metadata) of one or more fields</p></li>
</ul>
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

<div class="sect2">

### General settings

| Option         | Description                                                            |
| -------------- | ---------------------------------------------------------------------- |
| Transform Name | Name of the transform: this name has to be unique in a single pipeline |

</div>

<div class="sect2">

### Select & Alter tab

<div class="paragraph">

This tab contains options for selecting the fields to forward to the next transform, as well as changing their order. The `Get fields to select` button will retrieve available fields based on the existing input transforms and populate the entries in this tab.

</div>

| Option                                      | Description                                                                                                                              |
| ------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Fieldname                                   | The name of the field from the input stream                                                                                              |
| Rename to                                   | The new name of the field. Leave blank if you do not wish to rename the field                                                            |
| Length                                      | The field length                                                                                                                         |
| Precision                                   | The precision option depends on the field type, but only Number is supported; it returns the number of floating point digits             |
| Include unspecified fields, ordered by name | Enable if you want to implicitly select all other fields from the input stream(s) that are not explicitly selected in the Fields section |

<div class="admonitionblock note">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Note
</div></td>
<td>To copy a field, simply specify the same field name multiple times with different rename values.</td>
</tr>
</tbody>
</table>

</div>

<div class="sect3">

#### Edit Mapping

<div class="paragraph">

The Edit Mapping dialog allows you to easily define multiple mappings between source and target fields.

</div>

| Option        | Description                                                                                                                            |
| ------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| Source fields | A list of input fields available to map. Select a field to begin mapping                                                               |
| Target fields | A list of fields that source fields can be mapped to. Once you have selected a source field, select a target field to create a mapping |
| Add           | Adds a source and target field mapping pair to the Mappings section                                                                    |
| Delete        | Removes a selected Mappings entry                                                                                                      |

</div>

</div>

<div class="sect2">

### Remove tab

<div class="paragraph">

This tab allows you to remove fields from the input stream. Click `Get fields to remove` to import fields from previous transforms (this will populate the table with all the fields, you’ll probably need to remove those you want to keep in the stream).

</div>

</div>

<div class="sect2">

### Meta-data tab

<div class="paragraph">

Options under this tab allow you to rename input fields, convert them to different data types, and alter their length, and precision. Click `Get fields to change` to import fields from previous transforms.

</div>

| Option                    | Description                                                                                                                                                                                                                                                                                       |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Fieldname                 | The name of the input field                                                                                                                                                                                                                                                                       |
| Rename to                 | If you want to rename this field, this is where you put the new name                                                                                                                                                                                                                              |
| Type                      | The data type for this field                                                                                                                                                                                                                                                                      |
| Length                    | The field length                                                                                                                                                                                                                                                                                  |
| Precision                 | The precision option depends on the field type, but only Number is supported; it returns the number of floating point digits                                                                                                                                                                      |
| Binary to Normal?         | Converts a string to a numeric data type, when appropriate                                                                                                                                                                                                                                        |
| Format                    | The format mask (number type or date format)                                                                                                                                                                                                                                                      |
| Date Format Lenient?      | Determines whether the date parser is strict or lenient. Leniency means that invalid date values are processed. If set to N, only strictly valid date values will be accepted; if set to Y, the parser will attempt to determine the intention of an incorrect date, if possible, and correct it. |
| Date Locale               | Specifies the date locale to use for date conversions and calculations. Leave blank to use the default encoding on your system or chose from the populated this list accordingly.                                                                                                                 |
| Date Time Zone            | Specifies the date time zone to use for date conversions and calculations. Leave blank to use the default encoding on your system or chose from the populated list accordingly.                                                                                                                   |
| Lenient number conversion | When this option is set to Y, numbers get parsed until it finds a non-numeric value (e.g. a dash or slash) and stops parsing without reporting an error. When set to N, numbers get parsed strictly throwing an error in case invalid numbers are in the input.                                   |
| Encoding                  | Specifies the text file encoding to use. Leave blank to use the default encoding on your system. To use Unicode, specify UTF-8 or UTF-16. On first use, Hop searches your system for available encodings and populates this list accordingly.                                                     |
| Decimal                   | A decimal point; this is either a dot or a comma                                                                                                                                                                                                                                                  |
| Grouping                  | A method of separating units of thousands in numbers of four digits or larger. This is either a dot or a comma.                                                                                                                                                                                   |
| Currency                  | Symbol used to represent currencies                                                                                                                                                                                                                                                               |
| Rounding type             | This option allows you to define how Numbers are rounded when they are converted to String. This happens when previewing the data, but also when data is bulk loaded or converted to a string in scripts.                                                                                         |

</div>

</div>

</div>

<div class="sect1">

## Special use cases

<div class="sectionbody">

<div class="sect2">

### Duplicating fields

<div class="paragraph">

You can send multiple copies of a single field to the next transform, provided that they have different names. Just enter the field to replicate in multiple rows of the **Select & Alter** tab, and assign each one a different name in the `Rename to` column.

</div>

</div>

<div class="sect2">

### Use of multiple tabs

<div class="paragraph">

Although discouraged for better clarity and simplicity of use, filling more than one tab is possible. They will be processed in the following order:

</div>

<div class="olist arabic">

1.  first the **Select & Alter** tab is processed: if populated, the fields will be filtered, renamed and reordered as specified

2.  then the **Remove** tab is processed, but you cannot remove fields that haven’t been selected in the previous step: if you renamed them, you must use the new name in the `Fieldname` column

3.  finally the **Meta-data** tab is processed: you cannot change unselected (step 1) and removed (step 2) fields, and if you renamed them you must use the new name in the `Fieldname` column

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:04 +0200

</div>

</div>

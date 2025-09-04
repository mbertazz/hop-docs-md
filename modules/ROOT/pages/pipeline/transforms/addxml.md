<div id="header">

# <span class="image image-doc-icon">![Add XML Icon](../assets/images/transforms/icons/add_xml.svg)</span> Add XML

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
<p>The Add XML transform allows you to encode the content of a number of fields in a row in XML. This XML is added to the row in the form of a String field.</p>
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

### Content Tab

| Option                               | Description                                                                                                 |
| ------------------------------------ | ----------------------------------------------------------------------------------------------------------- |
| Transform name                       | Name of the transform.                                                                                      |
| Encoding                             | The encoding to use; this encoding is specified in the header of the XML file                               |
| Output Value                         | The name of the new field that contains the XML                                                             |
| Root XML element                     | The name of the root element in the generated element                                                       |
| Omit XML header                      | Enable to not include the XML header in the output.                                                         |
| Omit null values from the XML result | Do not add elements or attributes with null values. This is often used to limit the size of the target XML. |

</div>

<div class="sect2">

### Fields Tab

<div class="paragraph">

The Fields tab is where you configure the output fields and their formats. The table below describes each of the available properties for a field.

</div>

| Option                | Description                                                                                                                                                                                     |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Fieldname             | Name of the field                                                                                                                                                                               |
| Element name          | The name of the element in the XML file to use                                                                                                                                                  |
| Type                  | Type of the field can be either String, Date, or Number                                                                                                                                         |
| Format                | Select the date or number format to apply to the values in the field                                                                                                                            |
| Length                | Output string is padded to this length if it is specified                                                                                                                                       |
| Precision             | The number of decimal places used to display floating point numbers.                                                                                                                            |
| Currency              | Symbol used to represent currencies like $10,000.00 or E5.000,00                                                                                                                                |
| Decimal               | The symbol used to represent the decimal point in floating point numbers, typically "." (10.75) or "," (5,25)                                                                                   |
| Grouping              | The symbol used to represent a thousands separator, typically "," (10,000.00) or "." (5.000,00)                                                                                                 |
| Null                  | The string to use in case the field value is null.                                                                                                                                              |
| Attribute             | If Y, makes this field an attribute. Otherwise, makes it an element.                                                                                                                            |
| Attribute parent name | You can specify the name of the parent element to add the attribute to if previous parameter attribute is set to Y. If no parent name is specified, the attribute is set in the parent element. |

</div>

</div>

</div>

<div class="sect1">

## Use case

<div class="sectionbody">

<div class="paragraph">

Below is data that comes in a variety of classes and which needs to be stored as XML in a database. You want to turn the raw data into the database layout below.

</div>

<div class="sect2">

### Raw data

| Shape  | Colour | Id | X | Y | Radius |
| ------ | ------ | -- | - | - | ------ |
| circle | blue   | 1  | 3 | 5 | 5      |
| circle | red    | 2  | 1 | 3 | 5      |
| circle | blue   | 5  | 5 | 9 | 5      |
| circle | blue   | 6  | 8 | 2 | 5      |
| circle | red    | 7  | 9 | 7 | 5      |

| Shape     | Colour | Id | X | Y | Length | Width |
| --------- | ------ | -- | - | - | ------ | ----- |
| rectangle | blue   | 3  | 3 | 1 | 6      | 4     |
| rectangle | red    | 6  | 2 | 4 | 6      | 4     |
| rectangle | blue   | 10 | 8 | 2 | 6      | 4     |
| rectangle | red    | 12 | 7 | 8 | 6      | 4     |
| rectangle | blue   | 14 | 5 | 2 | 6      | 4     |

</div>

<div class="sect2">

### Output Sample

| Id | X | Y | Class data                                                                                                |
| -- | - | - | --------------------------------------------------------------------------------------------------------- |
| 3  | 4 | 7 | \<SHAPE type="circle"\>\<COLOUR\>blue\</COLOUR\>\<RADIUS\> 5\</RADIUS\>\</SHAPE\>                         |
| 1  | 6 | 3 | \<SHAPE type="rectangle"\>\<COLOUR\>blue\</COLOUR\>\<WIDTH\> 4\</WIDTH\>\<LENGTH\> 6\</LENGTH\>\</SHAPE\> |
| 2  | 8 | 8 | \<SHAPE type="rectangle"\>\<COLOUR\>blue\</COLOUR\>\<WIDTH\> 4\</WIDTH\>\<LENGTH\>6\</LENGTH\>\</SHAPE\>  |
| 5  | 5 | 2 | \<SHAPE type="circle"\>\<COLOUR\>blue\</COLOUR\>\<RADIUS\> 5\</RADIUS\>\</SHAPE\>                         |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:39 +0200

</div>

</div>

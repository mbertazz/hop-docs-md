<div id="header">

# <span class="image image-doc-icon">![Row Normaliser transform Icon](../assets/images/transforms/icons/normaliser.svg)</span> Row Normaliser

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
<p>The Row Normaliser transform converts the columns of an input stream into rows.</p>
</div>
<div class="paragraph">
<p>You can use this transform to normalize repeating groups of columns.</p>
</div>
<div class="paragraph">
<p><strong>Important</strong>: When combining multiple columns with different meta types (e.g., String and Integer) into a new field, no automatic type conversion is performed. Instead the first meta type is set. This lack of conversion may lead to issues with subsequent transformations on the resulting data rows. It is strongly advised to ensure that the data types of values being put into the same field are aligned before normalization.</p>
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

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Transform name</p></td>
<td><p>Name of the transform, this name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Typefield</p></td>
<td><p>The name of the type field (<strong>key</strong> in the example below).</p></td>
</tr>
<tr class="odd">
<td><p>Fields table</p></td>
<td><p>A list of the fields you want to normalize; you must set the following properties for each selected field:</p>
<p>* Fieldname: Name of the fields to normalize, as you get them from the input transform. * Type: Give a string to classify the field (you can use the same field names, or input custom strings). * New field: You can give one or more fields where the new value should transferred to (<strong>value</strong> in our example).</p></td>
</tr>
<tr class="even">
<td><p>Get Fields</p></td>
<td><p>Click to retrieve a list of all fields coming in on the stream(s).</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Example

<div class="sectionbody">

<div class="sect2">

### Input data

| RecordID    | FirstName | LastName      | City        |
| ----------- | --------- | ------------- | ----------- |
| 345-12-0000 | Mitchel   | Runolfsdottir | Jerryside   |
| 976-67-7113 | Elden     | Welch         | Lake Jamaal |
| 824-21-0000 | Rory      | Ledner        | Scottieview |

</div>

<div class="sect2">

### Normalized data (example 1)

<div class="paragraph">

Set **Typefield** = "key" and use the **Get Fields** button to load all the fields for normalization, set also **New field** = "value" in all rows. The result is:

</div>

| key       | value         |
| --------- | ------------- |
| RecordID  | 345-12-0000   |
| FirstName | Mitchel       |
| LastName  | Runolfsdottir |
| City      | Jerryside     |
| RecordID  | 976-67-7113   |
| FirstName | Elden         |
| LastName  | Welch         |
| City      | Lake Jamaal   |
| RecordID  | 824-21-0000   |
| FirstName | Rory          |
| LastName  | Ledner        |
| City      | Scottieview   |

</div>

<div class="sect2">

### Normalized data (example 2)

<div class="paragraph">

Similar to example 1, but remove the **RecordID** field from the **Fields table**. The result is:

</div>

| RecordID    | key       | value         |
| ----------- | --------- | ------------- |
| 345-12-0000 | FirstName | Mitchel       |
| 345-12-0000 | LastName  | Runolfsdottir |
| 345-12-0000 | City      | Jerryside     |
| 976-67-7113 | FirstName | Elden         |
| 976-67-7113 | LastName  | Welch         |
| 976-67-7113 | City      | Lake Jamaal   |
| 824-21-0000 | FirstName | Rory          |
| 824-21-0000 | LastName  | Ledner        |
| 824-21-0000 | City      | Scottieview   |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:56 +0200

</div>

</div>

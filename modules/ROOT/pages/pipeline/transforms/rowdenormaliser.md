<div id="header">

# <span class="image image-doc-icon">![Row Denormaliser transform Icon](../assets/images/transforms/icons/denormaliser.svg)</span> Row Denormaliser

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
<p>The De-normalizer transform allows you de-normalize data by looking up key-value pairs, with the option to convert data types in the process.</p>
</div>
<div class="paragraph">
<p>Note: make sure to check the notes on this transform in the <a href="pipeline/beam/getting-started-with-beam.KpN9nANcDy#_unsupported_transforms">Getting started with Beam</a> documentation.</p>
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

|                |                                                                                                                                                                                                                                                                                                                                                                      |
| -------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name | Name of the transform. This name has to be unique in a single pipeline.                                                                                                                                                                                                                                                                                              |
| Key field      | The field that defined the key of the output row.                                                                                                                                                                                                                                                                                                                    |
| Group fields   | Specify the fields that make up the grouping here.                                                                                                                                                                                                                                                                                                                   |
| Target fields  | Select the fields to de-normalize by specifying the String value for the key field (see above). Options are provided to convert data types. Strings are most common as key-value pairs so you must often convert to Integer, Number or Date. If you get key-value pair collisions (key is not unique for the group specified) specify the aggregation method to use. |

</div>

</div>

<div class="sect1">

## Metadata Injection Support

<div class="sectionbody">

<div class="paragraph">

You can use the Metadata Injection supported fields with ETL Metadata Injection transform to pass metadata to your pipeline at runtime. All fields can be injected, the values used for the aggregation field are the following

</div>

|                           |                                     |
| ------------------------- | ----------------------------------- |
| key                       | value                               |
| TYPE\_AGGR\_NONE          | No Aggregation is done              |
| TYPE\_AGGR\_SUM           | Sum all values                      |
| TYPE\_AGGR\_AVERAGE       | Calculate the average               |
| TYPE\_AGGR\_MIN           | Take the minimal value of the group |
| TYPE\_AGGR\_MAX           | Take the maximum value of the group |
| TYPE\_AGGR\_COUNT\_ALL    | Count rows                          |
| TYPE\_AGGR\_CONCAT\_COMMA | Aggragate values separated by comma |

</div>

</div>

<div class="sect1">

## Example

<div class="sectionbody">

<div class="sect2">

### Input data

<div class="paragraph">

The input data must be ordered by the grouping keys (**RecordID** in this example), use a [Sort rows](pipeline/transforms/sort.KpN9nANcDy) transform if needed:

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

<div class="sect2">

### Denormalized data

<div class="paragraph">

Set **The key field** = "key" and add **RecordID** in **The fields that make up the grouping**. Compile the **Target fields** table as follows:

</div>

| Target fieldname | Value fieldname | Key value | Type   |
| ---------------- | --------------- | --------- | ------ |
| FirstName        | value           | FirstName | String |
| LastName         | value           | LastName  | String |
| City             | value           | City      | String |

<div class="paragraph">

The result is:

</div>

| RecordID    | FirstName | LastName      | City        |
| ----------- | --------- | ------------- | ----------- |
| 345-12-0000 | Mitchel   | Runolfsdottir | Jerryside   |
| 976-67-7113 | Elden     | Welch         | Lake Jamaal |
| 824-21-0000 | Rory      | Ledner        | Scottieview |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:55 +0200

</div>

</div>

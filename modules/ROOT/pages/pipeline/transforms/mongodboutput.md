<div id="header">

# <span class="image image-doc-icon">![MongoDB Output transform Icon](../assets/images/transforms/icons/mongodb-output.svg)</span> MongoDB Output

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
<p>The MongoDB Output transform can output data to a MongoDB database <a href="http://docs.mongodb.org/manual/reference/glossary/">collection</a>.</p>
</div>
<div class="paragraph">
<p>For additional information about MongoDB, see the MongoDB <a href="http://www.mongodb.org/">documentation</a>.</p>
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

<div class="sect2">

### General

<div class="paragraph">

Transform name : Specify the unique name of the MongoDB Output transform in the pipeline.

</div>

</div>

<div class="sect2">

### Output options tab

<div class="paragraph">

The Output options tab provides controls for inserting data into a MongoDB collection. If the specified collection does not exist, it is created before a document is inserted.

</div>

<div class="paragraph">

Enter the following information in the fields on this tab:

</div>

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
<td><p>MongoDB Connection</p></td>
<td><p>the <a href="metadata-types/mongodb-connection.tXmTmq9Kbu">MongoDB connection</a> to use for this MongoDB Output transform.</p></td>
</tr>
<tr class="even">
<td><p>Collection</p></td>
<td><p>Specify the target collection for the output. When a valid hostname and port has been set, you can click Get Collections to retrieve the names of existing collections within a selected database. If the specified collection does not exist, it will be created before data is inserted.</p></td>
</tr>
<tr class="odd">
<td><p>Batch insert size</p></td>
<td><p>Specify the batch size for bulk insert operations. The default value is 100 rows.</p></td>
</tr>
<tr class="even">
<td><p>Truncate collection</p></td>
<td><p>Select to delete existing data in the target collection before inserting new data.</p></td>
</tr>
<tr class="odd">
<td><p>Update</p></td>
<td><p>Sets the update write method for the specified database and collection.</p>
<p><strong>The Upsert and Modifier update options are not available unless the Update field is selected.</strong></p></td>
</tr>
<tr class="even">
<td><p>Upsert</p></td>
<td><p>Select to change the write method from insert to upsert. The upsert method replaces a matched record with an entire new record based on all the incoming fields specified in the Mongo document fields tab. A new record is created if match conditions fail for an update.</p></td>
</tr>
<tr class="odd">
<td><p>Multi-update</p></td>
<td><p>Select to update all matching documents for each update or upsert operation.</p></td>
</tr>
<tr class="even">
<td><p>Modifier update</p></td>
<td><p>Select to enable modifiers ($ operators) to be used to modify individual fields within matching documents. All matching documents are updated when the Multi-update option is selected.</p>
<p>To update more than one matching document, select Modifier update and Upsert. Selecting Modifier update, Upsert, and Multi-update applies updates to all matching documents, instead of just the first.</p></td>
</tr>
<tr class="odd">
<td><p>Number of retries for write operations</p></td>
<td><p>Specify the number of times that a write operation is attempted.</p></td>
</tr>
<tr class="even">
<td><p>Delay, in seconds, between retry attempts</p></td>
<td><p>Specify the number of seconds to wait before the next retry.</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Mongo document fields tab

<div class="paragraph">

Use the Mongo document fields tab to define how field values coming into the transform are written to a Mongo document. The Modifier policy column controls when the execution of a modifier operation affects a particular field. You can use modifier policies when the data for one Mongo document is split over several incoming Hop rows or when it is not possible to execute different modifier operations that affect the same field simultaneously.

</div>

<div class="paragraph">

There are 2 helper buttons you can use: \* **Get fields** :Populates the Name column of the table with the names of the incoming fields. \* **Preview document structure** : Opens a dialog showing the structure that will be written to MongoDB in JSON format.

</div>

<div class="paragraph">

Enter the following information in the fields on this tab:

</div>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Column</th>
<th>Field Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Name</p></td>
<td><p>Names of the incoming fields.</p></td>
</tr>
<tr class="even">
<td><p>Mongo document path</p></td>
<td><p>The hierarchical path to fields in a document in dot notation format.</p></td>
</tr>
<tr class="odd">
<td><p>Use field name</p></td>
<td><p>Whether to use the incoming field name as the final entry in the path. The values are Y (use incoming field names) and N (do not use incoming field names). When set to Y, a preceding period (.) is assumed.</p></td>
</tr>
<tr class="even">
<td><p>NULL values</p></td>
<td><p>Specifies whether to insert null values in the database. The values are:</p>
<p>- Insert NULL</p>
<p>- Ignore</p></td>
</tr>
<tr class="odd">
<td><p>JSON</p></td>
<td><p>Indicates the incoming value is a JSON document.</p></td>
</tr>
<tr class="even">
<td><p>Match field for update</p></td>
<td><p>Indicates whether to match a field when performing an upsert operation. The first document in the collection that matches all fields tagged as Y in this column is replaced with the new document constructed with incoming values for all the defined field paths. If a matching document does not exist, then a new document is inserted into the collection.</p></td>
</tr>
<tr class="odd">
<td><p>Modifier operation</p></td>
<td><p>Specify in-place modifications of existing document fields.</p>
<p>The modifiers are:</p>
<p>- N/A</p>
<p>- <code>$set</code> : Sets the value of a field.</p>
<p>- <code>$inc</code> : Sets the value of a field if the field does not exist. If the field exists, increases (or decreases, with a negative value) the value of a field.</p>
<p>- <code>$push</code> : Sets the value of a field if the field does not exist. If the field exists, appends the value of a field.</p>
<p>- <code>$</code> : (the positional operator for matching inside of arrays).</p></td>
</tr>
<tr class="even">
<td><p>Modifier policy</p></td>
<td><p>Controls when execution of a modifier operation affects a field. The values are:</p>
<p>- <code>Insert&amp;Update</code> : The operation is executed whether or not a match exists in the collection (default). The Insert&amp;Update modifier policy (upsert) allows you to specify fields to match when performing an upsert operation. Upsert only replaces the first matching document. Modifier upserts can be used to replace certain field values in multiple documents.</p>
<p>- <code>Insert</code> : The operation is executed on an insert only (when the match conditions fail)</p>
<p>- <code>Update</code> : The operation is executed when match conditions succeed.</p></td>
</tr>
</tbody>
</table>

<div class="sect3">

#### Example

<div class="paragraph">

Here is an example of how you can define a document structure with an arbitrary hierarchy. Use the following input data and document field definitions to create the example document structure in MongoDB:

</div>

<div class="sect4">

##### Input data

<div class="listingblock">

<div class="content">

``` highlight
first, last, address, age
Bob, Jones ,"13 Bob Street", 34
Fred, Flintstone, "10 Rock Street",50
Zaphod, Beeblebrox, "Beetlejuice 1", 356
Noddy,Puppet,"Noddy Land",5
```

</div>

</div>

</div>

<div class="sect4">

##### Document field definitions

| Name    | Mongo document path | Use field name | NULL values | JSON | Match field for update | Modifier operation | Modifier policy |
| ------- | ------------------- | -------------- | ----------- | ---- | ---------------------- | ------------------ | --------------- |
| first   | top1                | Y              |             | N    | N                      | N/A                | Insert\&Update  |
| last    | array\[O\]          | Y              |             | N    | N                      | N/A                | Insert\&Update  |
| address | array\[O\]          | Y              |             | N    | N                      | N/A                | Insert\&Update  |
| age     | array\[O\]          | Y              |             | N    | N                      | N/A                | Insert\&Update  |

<div class="sect5">

###### Document structure

<div class="listingblock">

<div class="content">

``` highlight
{
  "top1" : {
    "first" : "<string val>"
   },
  "array" : [ { "last" : "<string val>" , "address" : "<string val>"}],
  "age" : "<integer val>"
}
```

</div>

</div>

</div>

</div>

</div>

</div>

<div class="sect2">

### Create/drop indexes tab

<div class="paragraph">

Use the Create/drop indexes tab to create and drop indexes on one or more fields. Unless unique indexes are being used, MongoDB allows duplicate records to be inserted. Indexing is performed after all rows have been processed by the transform.

</div>

<div class="paragraph">

You can use the **Show indexes button** to display a list of existing indexes.

</div>

<div class="paragraph">

Enter the following information in the fields in this tab:

</div>

| Field        | Description                                                                                                                                                                                                                                                                                                           |
| ------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Index fields | Specify a single index (using one field) or a compound index (using multiple fields). Compound indexes are specified by a comma-separated list of paths. Use dot notation to specify the path to a field to use in the index. An optional direction indicator can be specified: 1 for ascending or -1 for descending. |
| Index opp    | Specify whether to create or drop an index.                                                                                                                                                                                                                                                                           |
| Unique       | Specify whether to index only fields with unique values.                                                                                                                                                                                                                                                              |
| Sparse       | Specify whether to index only documents that have the indexed field.                                                                                                                                                                                                                                                  |

<div class="sect3">

#### Create/drop indexes example

<div class="paragraph">

The following options defines the creation of a compound index of the "first" and "age" fields in ascending order:

</div>

| Index fields   | Index opp | Unique | Sparse |
| -------------- | --------- | ------ | ------ |
| top1.first,age | Create    | N      | N      |

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:40 +0200

</div>

</div>

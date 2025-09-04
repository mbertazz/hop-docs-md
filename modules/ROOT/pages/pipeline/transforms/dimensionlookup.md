<div id="header">

# <span class="image image-doc-icon">![Dimension lookup/update transform Icon](../assets/images/transforms/icons/dimensionlookup.svg)</span> Dimension lookup/update

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
<p>The Dimension Lookup/Update transform allows you to implement Ralph Kimball’s <a href="https://en.wikipedia.org/wiki/Slowly_changing_dimension">slowly changing dimension</a> for both types: Type I (update) and Type II (insert) together with some additional functions.</p>
</div>
<div class="paragraph">
<p>This transform can be used to populate a dimension table or to look up values in a slowly changing dimension without making any changes.</p>
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

### Common fields

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Option</p></td>
<td><p>Description</p></td>
</tr>
<tr class="even">
<td><p>Transform name</p></td>
<td><p>Name of the transform.</p></td>
</tr>
<tr class="odd">
<td><p>Update the dimension?</p></td>
<td><p>Enable to update the dimension based on the information in the input stream; if not enabled, the dimension only performs lookups and adds the technical key field to the streams.</p></td>
</tr>
<tr class="even">
<td><p>Connection</p></td>
<td><p>Name of the database connection on which the dimension table resides.</p></td>
</tr>
<tr class="odd">
<td><p>Target schema</p></td>
<td><p>This allows you to specify a schema name.</p></td>
</tr>
<tr class="even">
<td><p>Target table</p></td>
<td><p>Name of the dimension table.</p></td>
</tr>
<tr class="odd">
<td><p>Commit size</p></td>
<td><p>Define the commit size, e.g. setting commit size to 10 generates a commit every 10 inserts or updates.</p></td>
</tr>
<tr class="even">
<td><p>Caching</p></td>
<td><div class="content">
<div class="ulist">
<ul>
<li><p>Enable the cache? Enable this option if you want to enable data caching in this transform; set a cache size of &gt;=0 in previous versions or -1 to disable caching.</p></li>
<li><p>Pre-load cache? You can enhance performance by reading the complete contents of a dimension table prior to performing lookups. Performance is increased by the elimination of the round trips to the database and by the sorted list lookup algorithm.</p></li>
<li><p>Cache size in rows: The cache size in number of rows that will be held in memory to speed up lookups by reducing the number of round trips to the database.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Get Fields button</p></td>
<td><p>Fills in all the available fields on the input stream, except for the keys you specified.</p></td>
</tr>
<tr class="even">
<td><p>SQL button</p></td>
<td><p>Generates the SQL to build the dimension and allows you to execute this SQL.</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Keys tab

<div class="paragraph">

Specify the names of the keys in the stream and in the dimension table. This will enable the transform to perform the lookup.

</div>

| Option          | Description                                                                          |
| --------------- | ------------------------------------------------------------------------------------ |
| Dimension field | Key field used in the source system. For example: customer numbers, product id, etc. |
| Stream field    | Stream field containing the value get from the source system key field.              |

</div>

<div class="sect2">

### Fields tab

<div class="paragraph">

For each of the fields you must have in the dimension, you can specify whether you want the values to be updated (for all versions, this is a Type I operation) or you want to have the values inserted into the dimension as a new version. In the example we used in the screenshot the birth date is something that’s not variable in time, so if the birth date changes, it means that it was wrong in previous versions. It’s only logical then, that the previous values are corrected in all versions of the dimension entry.

</div>

| Option                       | Description                                                                        |
| ---------------------------- | ---------------------------------------------------------------------------------- |
| Dimension field              | Fields containing the actual information of a dimension..                          |
| Stream field to compare with | Stream field containing the incoming value to assign to that table’s field.        |
| Type of dimension update     | Type of update applied (see details below in the section Update of this document). |

</div>

<div class="sect2">

### Technical key tab

<div class="paragraph">

These tab contains the details related to the creation of the surrogate key of the dimension’s record.

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
<td><p>Technical key field</p></td>
<td><p>The primary key of the dimension; also referred to as Surrogate Key. Use the new name option to rename the technical key after a lookup. For example, if you need to lookup different types of products like ORIGINAL_PRODUCT_TK, REPLACEMENT_PRODUCT_TK, …​</p></td>
</tr>
<tr class="even">
<td><p>Creation of technical key</p></td>
<td><div class="content">
<div class="paragraph">
<p>Indicates how the technical key is generated, options that are not available for your connection type will be grayed out:</p>
</div>
<div class="ulist">
<ul>
<li><p>Use table maximum + 1: A new technical key will be created from the maximum key in the table. Note that the new maximum is always cached, so that the maximum does not need to be calculated for each new row.</p></li>
<li><p>Use sequence: Specify the sequence name if you want to use a database sequence on the table connection to generate the technical key (typical for Oracle e.g.).</p></li>
<li><p>Use auto increment field: Use an auto increment field in the database table to generate the technical key (supported e.g. by DB2).</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Versioning tab

<div class="paragraph">

These tabs defines the way the record’s version is generated

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
<td><p>Version field</p></td>
<td><p>The name of the field in which to store the version (revision number).</p></td>
</tr>
<tr class="even">
<td><p>Stream Datefield</p></td>
<td><p>If you have the date at which the dimension entry was last changed, you can specify the name of that field here. It allows the dimension entry to be accurately described for what the date range concerns. If you don’t have such a date, the system date will be taken. When the dimension entries are looked up (Update the dimension is not selected) the date field entered into the stream datefield is used to select the appropriate dimension version based on the date from and date to dates in the dimension record.</p></td>
</tr>
<tr class="odd">
<td><p>Date range start field</p></td>
<td><p>Specify the names of the dimension entries start range.</p></td>
</tr>
<tr class="even">
<td><p>Use an alternative start date?</p></td>
<td><div class="content">
<div class="paragraph">
<p>When enabled, you can choose an alternative to the &quot;Min. Year&quot;/01/01 00:00:00 date that is used. You can use any of the following:</p>
</div>
<div class="ulist">
<ul>
<li><p>System date: Use the system date as a variable date/time</p></li>
<li><p>Start date of pipeline: Use the system date, taken at start of the pipeline for the start date</p></li>
<li><p>Empty (null) value</p></li>
<li><p>Column value: Select a column from which to take the value.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Table date range end</p></td>
<td><p>The names of the dimension entries end range</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## General considerations

<div class="sectionbody">

<div class="paragraph">

As a result of the lookup or update operation of this transform type, a field is added to the stream containing the technical key of the dimension. In case the field is not found, the value of the dimension entry for not found (0 or 1, based on the type of database) is returned.

</div>

<div class="paragraph">

A number of optional fields (in the "Fields" tab) are automatically managed by the transform. You can specify the table field name in the "Dimension Field" column. These are the optional fields:

</div>

<div class="ulist">

  - Date of last insert or update (without stream field as source) : adds and manges a Date field

  - Date of last insert (without stream field as source) : adds and manges a Date field

  - Date of last update (without stream field as source) : adds and manges a Date field

  - Last version (without stream field as source) : adds and manges a Boolean field. (converted into Char(1) or boolean database data type depending on your database connection settings and availability of such data type)

  - This acts as a current valid dimension entry entry indicator for the last version: So when a type II attribute changes and a new version is created (to keep track of the history) the 'Last version' attribute in the previous version is set to 'False/N' and the new record with the latest version is set to 'True/Y'.

</div>

</div>

</div>

<div class="sect1">

## Functionality

<div class="sectionbody">

<div class="paragraph">

As the name of the transform suggests, the functionality of the transform falls into 2 categories, Lookup and Update…​

</div>

<div class="sect2">

### Lookup

<div class="paragraph">

In read-only mode (update option is disabled), the transform only performs lookups in a slowly changing dimension. The transform will perform a lookup in the dimension table on the specified database connection and in the specified schema. To do the lookup it uses not only the specified natural keys (with an "equals" condition) but also the specified "Stream datefield" (see below). The condition that is applied is:

</div>

<div class="exampleblock">

<div class="content">

<div class="paragraph">

"Start of table date range" ⇐ "Stream datefield" AND "End of table date range" \> "Stream datefield"

</div>

</div>

</div>

<div class="paragraph">

When no "Stream datefield" is specified we use the current system date to find the correct dimension version record.

</div>

<div class="paragraph">

When no row is found, the "unknown" key is returned. (The "unknown" key will be 0 or 1 depending on whether or not you selected an auto-increment field for the technical key field). Please note that we don’t make a difference between "Unknown", "Not found", "Empty", "Illegal format", etc. These nuances can be added manually however. Nothing prevents you from flushing out these types before the data hits this transform with a Filter, regular expression, etc. We suggest you manually add values -1, -2, -3, etc for these special dimension entry cases, just like you would add the specific details of the "Unknown" row prior to population of the dimension table.

</div>

<div class="ulist">

  - Do not use NULL values for your natural key(s). Null values can’t be compared and are not indexed by most databases. Even if we would support null values in keys (something that doesn’t make a lot of sense anyway), it would most likely cause severe lookup performance problems.

  - Be aware of data conversion issues that occur if you have data types in your input streams that are different from the data types in your natural key(s). If you are have Strings in the transforms input and in the database you use an Integer for example, make sure you are capable of converting the String to number. See it as a best practice to do this before this transform to make sure it works as planned. Another typical example of problems is with floating point number comparisons. Stay away from those. We recommend you use sane data types like Integer or long integers. Stay away from Double, Decimal or catch-all data types like Oracle’s Number (without length or precision; it implicitly uses precision 38 causing us to use the slower BigNumber data type).

</div>

</div>

<div class="sect2">

### Update

<div class="paragraph">

In update mode (update option is enabled) the transform first performs a lookup of the dimension entry as described in the "Lookup" section above. The result of the lookup is different though. Not only the technical key is retrieved from the query, but also the dimension attribute fields. A field-by-field comparison then follows. The result can be one of the following situations:

</div>

<div class="ulist">

  - The record was not found, we insert a new record in the table.

  - The record was found and any of the following is true:
    
    <div class="ulist">
    
      - One or more attributes were different and had an "Insert" (Kimball Type II) setting: A new dimension record version is inserted.
    
      - One or more attributes were different and had a "Punch through" (Kimbal Type I) setting: These attributes in all the dimension record versions are updated.
    
      - One or more attributes were different and had an "Update" setting: These attributes in the last dimension record version are updated.
    
      - All the attributes (fields) were identical: No updates or insertions are performed.
    
    </div>

  - Insertion of new rows are performed in the following transforms:
    
    <div class="ulist">
    
      - The current row is updated with "date\_to" updated with the "Stream date field"
    
      - The new row is inserted where the changes in attributes are recorded according to rule in previous paragraph. "date\_from" field is updated with the "Stream date field" and the "date\_to" is updated with the Max date of the table range end date.
    
      - The version number of the new row in incremented by 1.
    
      - Stream date field" cannot be before the earliest start date of the currently valid rows.
    
      - select min(date\_from) from dim\_table where date\_to = "2199-12-31 23:59:59.999"
    
      - It is important to ensure that the incoming rows are sorted by the "Stream date field"
    
    </div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:06 +0200

</div>

</div>

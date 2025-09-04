<div id="header">

# <span class="image image-doc-icon">![MongoDB Delete transform Icon](../assets/images/transforms/icons/mongodb-delete.svg)</span> MongoDB Delete

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
<p>The MongoDB Delete transform enables you to delete <a href="http://docs.mongodb.org/manual/reference/glossary/">documents</a> or <a href="http://docs.mongodb.org/manual/reference/glossary/">records</a> from a collection within MongoDB.</p>
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

Transform name : Specify the unique name of the MongoDB Input transform in the pipeline.

</div>

</div>

<div class="sect2">

### Delete options tab

|                                           |                                                                                                                                                  |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| Field                                     | Description                                                                                                                                      |
| MongoDB connection                        | the [MongoDB connection](metadata-types/mongodb-connection.Xq2G66h1b7) to use for the MongoDB Delete transform.                                  |
| Collection                                | Name of the collection to delete data from. Click Get collections to populate the drop-down menu with a list of collections within the database. |
| Number of retries for write operations    | The number of retries for write operations                                                                                                       |
| Delay (in seconds) between retry attempts | Delay (in seconds) between retry attempts                                                                                                        |

</div>

<div class="sect2">

### Delete query

<div class="ulist">

  - use JSON query:
    
    <div class="ulist">
    
      - when disabled (default), the transform deletes documents based on key/value pair comparisons. The table requires the following fields:
        
        <div class="ulist">
        
          - Mongo document path: the document path to delete
        
          - Comparator: `=`,`<>`,`,`,`<`,`⇐`,`>`,`>=`,`BETWEEN`,`IS NULL`,`IS NOT NULL`
        
          - Incoming field 1: a first comparison stream field
        
          - Incoming fields 2: a second comparison stream field (for use with `BETWEEN`)
        
        </div>
    
      - when enabled:
        
        <div class="ulist">
        
          - a delete query is passed to MongoDB for deletion.
        
          - execute for each row: pass the delete query to the database for each incoming row
        
        </div>
    
    </div>

</div>

</div>

<div class="sect2">

### Delete query examples:

<div class="paragraph">

Delete based on document paths and stream fields (`use JSON query` disabled):

</div>

|                     |            |                  |                  |
| ------------------- | ---------- | ---------------- | ---------------- |
| Mongo document path | Comparator | Incoming field 1 | Incoming field 2 |
| name                | \=         | lastname         |                  |
| firstname           | \=         | firstname        |                  |

<div class="paragraph">

Delete based on JSON query (`use JSON query` enabled):

</div>

<div class="listingblock">

<div class="content">

``` highlight
`{$or: [{"name": "${NAME1}"},{"name": "${NAME2}"}, {"name": "${NAME3}"} ]}`
```

</div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:39 +0200

</div>

</div>

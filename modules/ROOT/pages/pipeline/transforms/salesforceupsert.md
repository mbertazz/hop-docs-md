<div id="header">

# <span class="image image-doc-icon">![Salesforce Upsert transform Icon](../assets/images/transforms/icons/SFU.svg)</span> Salesforce Upsert

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
<p>The Salesforce Upsert transform updates existing records and inserts new records into your Salesforce database using the Salesforce Web Service.</p>
</div>
<div class="paragraph">
<p>You can also use the following other transforms to modify your Salesforce database:</p>
</div>
<div class="ulist">
<ul>
<li><p><a href="pipeline/transforms/salesforceinput.x7xNGSCUvc">Salesforce Input</a>: Reads records directly from your Salesforce database.</p></li>
<li><p><a href="pipeline/transforms/salesforceinsert.x7xNGSCUvc">Salesforce Insert</a>: Inserts records directly into your Salesforce database.</p></li>
<li><p><a href="pipeline/transforms/salesforceupdate.x7xNGSCUvc">Salesforce Update</a>: Updates records directly into your Salesforce database.</p></li>
<li><p><a href="pipeline/transforms/salesforcedelete.x7xNGSCUvc">Salesforce Delete</a>: Deletes records directly from your Salesforce database.</p></li>
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

## General

<div class="sectionbody">

<div class="paragraph">

Enter the following information in the transform name field:

</div>

<div class="ulist">

  - Transform name: Specifies the unique name of the Salesforce Upsert transform on the canvas. You can customize the name or leave it as the default.

</div>

<div class="paragraph">

Unresolved directive in tmp.DM5kW4F6q4 - include::salesforce-connection.adoc\[\]

</div>

<div class="paragraph">

Unresolved directive in tmp.DM5kW4F6q4 - include::salesforce-settings.adoc\[\]

</div>

|                         |                                                                                                                                                       |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| Upsert Comparison Field | Specify the Salesforce ID of the field to use as a basis of comparison to determine if you are updating an existing record or inserting a new record. |

<div class="sect2">

### Output Fields

<div class="paragraph">

Enter the output information in the following transform option:

</div>

<div class="paragraph">

Salesforce ID fieldname: Specifies the field to contain the Salesforce ID of the first record in the set of records (batch) you updated and inserted.

</div>

<div class="paragraph">

Unresolved directive in tmp.DM5kW4F6q4 - include::salesforce-fields.adoc\[\]

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:02 +0200

</div>

</div>

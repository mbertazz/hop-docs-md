<div id="header">

# <span class="image image-doc-icon">![Salesforce Delete transform Icon](../assets/images/transforms/icons/SFD.svg)</span> Salesforce Delete

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
<p>The Salesforce Delete transform deletes records directly from your Salesforce database using the Salesforce Web Service.</p>
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

## Usage

<div class="sectionbody">

<div class="paragraph">

You can delete a batch of records by indicating a starting point (Fieldname id) and the amount of records (Batch Size) to delete.

</div>

<div class="paragraph">

You can also use the following other transforms to modify your Salesforce database:

</div>

<div class="ulist">

  - [Salesforce Input](pipeline/transforms/salesforceinput.QZ49wCGUjU): Reads records directly from your Salesforce database.

  - [Salesforce Insert](pipeline/transforms/salesforceinsert.QZ49wCGUjU): Inserts records directly into your Salesforce database.

  - [Salesforce Update](pipeline/transforms/salesforceupdate.QZ49wCGUjU): Updates records directly into your Salesforce database.

  - [Salesforce Upsert](pipeline/transforms/salesforceupsert.QZ49wCGUjU): Updates existing records and inserts new records into your Salesforce database.

</div>

</div>

</div>

<div class="sect1">

## General

<div class="sectionbody">

<div class="paragraph">

Enter the following information in the transform name field:

</div>

<div class="ulist">

  - Transform name: Specifies the unique name of the Salesforce Delete transform on the canvas. You can customize the name or leave it as the default.

</div>

<div class="paragraph">

Unresolved directive in tmp.R1b7aFPwPA - include::salesforce-connection.adoc\[\]

</div>

<div class="paragraph">

Unresolved directive in tmp.R1b7aFPwPA - include::salesforce-settings.adoc\[\]

</div>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Fieldname id</p></td>
<td><div class="content">
<div class="paragraph">
<p>Select the name of the field containing the Salesforce ID of the first record in the set of records (batch) you want to delete.<br />
</p>
</div>
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
<td>This list is populated with field names received from the previous transform in a pipeline. For example, you can use the Salesforce Input transform to get field names.</td>
</tr>
</tbody>
</table>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:00 +0200

</div>

</div>

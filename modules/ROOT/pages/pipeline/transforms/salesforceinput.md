<div id="header">

# <span class="image image-doc-icon">![Salesforce Input transform Icon](../assets/images/transforms/icons/SFI.svg)</span> Salesforce Input

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
<p>The Salesforce Input transform reads data directly from Salesforce using the Salesforce Web Service.</p>
</div>
<div class="paragraph">
<p>You can also use the following transforms for various ways to modify your Salesforce database:</p>
</div>
<div class="ulist">
<ul>
<li><p><a href="pipeline/transforms/salesforceinsert.HKjYbF7XIq">Salesforce Insert</a>: Inserts records directly into your Salesforce database</p></li>
<li><p><a href="pipeline/transforms/salesforceupdate.HKjYbF7XIq">Salesforce Update</a>: Updates records directly into your Salesforce database.</p></li>
<li><p><a href="pipeline/transforms/salesforceupsert.HKjYbF7XIq">Salesforce Upsert</a>: Updates existing records and inserts new records into your Salesforce database.</p></li>
<li><p><a href="pipeline/transforms/salesforcedelete.HKjYbF7XIq">Salesforce Delete</a>: Deletes records directly from your Salesforce database.</p></li>
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

  - Transform name: Specifies the unique name of the Salesforce Input transform on the canvas. You can customize the name or leave it as the default.

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
<td>If your organization has enabled My Domain, you may see 'Restricted Domain' in your Salesforce login history when attempting to use the default URL, as described <a href="https://help.salesforce.com/s/articleView?id=000387792&amp;type=1">here</a>. See below for options.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="paragraph">

Unresolved directive in tmp.XkELGT4dC9 - include::salesforce-connection.adoc\[\]

</div>

</div>

</div>

<div class="sect1">

## Settings

<div class="sectionbody">

<div class="paragraph">

In this panel, you can set the module to query from as well as the query conditions.

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
<td><p>Specify query</p></td>
<td><p>Select this check box to manually execute a query based on your own SOQL statements.</p></td>
</tr>
<tr class="even">
<td><p>Module</p></td>
<td><div class="content">
<div class="paragraph">
<p>Select the module (table) from which you want to retrieve data.<br />
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
<td>This list will be populated upon successfully authenticating to Salesforce using the Test Connection button.</td>
</tr>
</tbody>
</table>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Query Condition</p></td>
<td><div class="content">
<div class="paragraph">
<p>Enter any query filters you want to apply. Variables are allowed. For example, 'fieldname=myvalue AND fieldname2=myvalue2'.<br />
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
<td>You do not need to include WHERE in your condition statement.</td>
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

<div class="sect1">

## Content Tab

<div class="sectionbody">

<div class="paragraph">

The content tab allows you to optionally include additional descriptive fields in the result set.

</div>

<div class="sect2">

### Advanced

<div class="paragraph">

Use these options to further refine the data returned from the queries specified in the Settings tab. For example, you may want to only query deleted records within a specified date range. The Advanced panel includes the following fields:

</div>

| Option            | Description                                                                                                                                                 |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Retrieve          | Select which records you want to retrieve to further define your pool of data. You can select All, Updated, or Deleted.                                     |
| Query all records | Select the check box to query all the records you are retrieving. Clear the check box to use the date fields (below) to define a range of records to query. |
| Start date        | Specify the starting date for retrieving the records in the date range. The format is 'yyyy-MM-dd HH:mm:ss'.                                                |
| End date          | Specify the end date for retrieving the records in the date range. The format is 'yyyy-MM-dd HH:mm:ss'.                                                     |

</div>

<div class="sect2">

### Additional Fields

<div class="paragraph">

This panel includes the following fields:

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
<td><p>Include URL in output? &amp; URL fieldname</p></td>
<td><p>Select this check box, then enter the URL used to retrieve the data.</p></td>
</tr>
<tr class="even">
<td><p>Include Module in output? &amp; Module fieldname</p></td>
<td><p>Select this check box, then enter the name of the module from which the data was retrieved.</p></td>
</tr>
<tr class="odd">
<td><p>Include SQL in output? &amp; SQL fieldname</p></td>
<td><p>Select this check box, then enter the SQL used to generate the result set.</p></td>
</tr>
<tr class="even">
<td><p>Include timestamp in output? &amp; Timestamp fieldname</p></td>
<td><p>Select this check box, then enter the timestamp for when the record was retrieved.</p></td>
</tr>
<tr class="odd">
<td><p>Include Rownum in output? &amp; Rownum fieldname</p></td>
<td><p>Select this check box, then enter the row number for each record retrieved.</p></td>
</tr>
<tr class="even">
<td><p>Include deletion date in output? &amp; Deletion date fieldname</p></td>
<td><div class="content">
<div class="paragraph">
<p>Select this check box, then enter the deletion date for when the record was removed.<br />
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
<td>This set of fields is only enabled when the Advanced&gt; Retrieve option is set to ‘Deleted’.</td>
</tr>
</tbody>
</table>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Other fields

<div class="paragraph">

Enter information for the remaining fields on the Content tab.

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
<td><p>Time out</p></td>
<td><p>Specify the timeout interval in milliseconds before the transform times out.</p></td>
</tr>
<tr class="even">
<td><p>Use compression</p></td>
<td><p>Select to compress (.gzip) the data when connecting between Hop and Salesforce.</p></td>
</tr>
<tr class="odd">
<td><p>Limit</p></td>
<td><div class="content">
<div class="paragraph">
<p>Specify the maximum number of records to retrieve.<br />
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
<td>When you set the limit to '0', there is no limit on the number of records that can be retrieved.</td>
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

<div class="sect1">

## Fields tab

<div class="sectionbody">

<div class="paragraph">

The fields tab displays the fields that are read from the Salesforce module selected on the Settings tab. You will need to go to the Fields tab and press the Get Fields button to populate the fields returned before you can preview the rows returned.

</div>

<div class="paragraph">

The following are the properties display in the Fields tab:

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
<td><p>Name</p></td>
<td><p>The name of the input field.</p></td>
</tr>
<tr class="even">
<td><p>Field</p></td>
<td><p>The name of the field that contains the record.</p></td>
</tr>
<tr class="odd">
<td><p>IsIdLookup?</p></td>
<td><p>Specify if the field will be used as a fieldname ID (links to an External ID) when accessing the database to perform other calls, such as delete, insert, update, and upsert. Select ‘Y’(es) or ‘N’(o).</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>The data type of the field.</p></td>
</tr>
<tr class="odd">
<td><p>Format</p></td>
<td><p>An optional mask for converting the format of the original field.</p></td>
</tr>
<tr class="even">
<td><p>Length</p></td>
<td><div class="content">
<div class="paragraph">
<p>The length of the field depends on the following field types:</p>
</div>
<div class="ulist">
<ul>
<li><p>Number: Total number of significant figures in a number</p></li>
<li><p>String: Total length of string</p></li>
<li><p>Date: Length of printed output of the string (for example, four is a length for a year)</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Precision</p></td>
<td><p>Number of floating point digits for number-type fields.</p></td>
</tr>
<tr class="even">
<td><p>Currency</p></td>
<td><p>Symbol used to represent currencies ($5,000.00 or €5.000,00 for example).</p></td>
</tr>
<tr class="odd">
<td><p>Decimal</p></td>
<td><p>A decimal point can be a &quot;.&quot; or &quot;,&quot; (5,000.00 or 5.000,00 for example).</p></td>
</tr>
<tr class="even">
<td><p>Group</p></td>
<td><p>A grouping can be a &quot;,&quot; or &quot;.&quot; (5,000.00 or 5.000,00 for example).</p></td>
</tr>
<tr class="odd">
<td><p>Trim type</p></td>
<td><p>The trimming method to apply to a string. Trimming only works when no field length is specified.</p></td>
</tr>
<tr class="even">
<td><p>Repeat</p></td>
<td><p>If the corresponding value in this row is empty, repeat the one from the last time it was not empty. Select ‘Y’(es) or ‘N’(o).</p></td>
</tr>
</tbody>
</table>

<div class="paragraph">

Salesforce Input

</div>

<div class="sect2">

### Example Case: Retrieving Deleted Records from Salesforce

<div class="sect3">

#### Scenario

<div class="paragraph">

You want to retrieve all deleted records from Salesforce, even when the dataset exceeds the default pagination size of 2000 records.

</div>

</div>

<div class="sect3">

#### Steps

<div class="olist arabic">

1.  **Set "Retrieve" to "Deleted"**: In the **Advanced** section of the transform, select the "Retrieve" option and set it to **Deleted**.

2.  **Enable "Query all records"**:
    
    <div class="ulist">
    
      - Check the box labeled **Query all records** in the **Advanced** section.
    
      - This allows the transform to retrieve all available records across multiple pages.
    
    </div>

3.  **Add a Query Condition**:
    
    <div class="ulist">
    
      - In the **Settings** tab, include the following query condition: `IsDeleted = true`
    
      - This ensures the transform retrieves only deleted records.
    
    </div>

</div>

</div>

<div class="sect3">

#### Note on Pagination

<div class="paragraph">

If "Query all records" is not enabled, the transform will retrieve only the first 2000 records due to Salesforce’s default pagination settings. Enabling "Query all records" ensures that the system processes all pages of data until all matching records are retrieved.

</div>

</div>

<div class="sect3">

#### Example Use Case

<div class="paragraph">

You want to retrieve all customer records deleted within the past 30 days. Configure your transform as follows:

</div>

<div class="ulist">

  - Retrieve: Set to `Deleted`.

  - Query Condition: `IsDeleted = true AND LastModifiedDate >= LAST_N_DAYS:30`

</div>

</div>

<div class="sect3">

#### Troubleshooting

<div class="ulist">

  - If the transform retrieves fewer records than expected, verify that **Query all records** is enabled.

  - Ensure your Salesforce user has appropriate permissions to access deleted records.

</div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:00 +0200

</div>

</div>

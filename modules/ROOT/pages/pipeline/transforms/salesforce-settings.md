<div id="header">

</div>

<div id="content">

<div class="sect2">

### Settings

<div class="paragraph">

Enter the insert process settings in the following transform options:

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
<td><p>Select to compress (.gzip) data when connecting between Hop and Salesforce.</p></td>
</tr>
<tr class="odd">
<td><p>Rollback all changes on</p></td>
<td><p>Revert changes unless all records are processed successfully. When you select this option, records without errors are inserted, while records with errors are marked as failed in the insertion results. The default behavior is to allow partial success of insertion.</p></td>
</tr>
<tr class="even">
<td><p>Batch Size</p></td>
<td><p>Indicate the maximum number of records to collect before the insert is committed.</p></td>
</tr>
<tr class="odd">
<td><p>Module</p></td>
<td><div class="content">
<div class="paragraph">
<p>Select the module (table) in which you want to insert records.<br />
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
</tbody>
</table>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:59 +0200

</div>

</div>

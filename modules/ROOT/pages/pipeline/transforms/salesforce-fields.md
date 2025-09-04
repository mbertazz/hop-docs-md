<div id="header">

</div>

<div id="content">

<div class="sect2">

### Fields

<div class="paragraph">

You can specify what fields to insert into your Salesforce database through the Fields table. Click Get fields to populate the table with input from the Hop data stream.

</div>

<div class="paragraph">

The table contains the following columns:

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
<td><p>Module field</p></td>
<td><p>The name of the field within the Module</p></td>
</tr>
<tr class="even">
<td><p>Stream field</p></td>
<td><p>The name of the field in the Hop data stream</p></td>
</tr>
<tr class="odd">
<td><p>Use External id?</p></td>
<td><div class="content">
<div class="paragraph">
<p>The flag indicating if the field links to an external ID. To resolve the ID, Salesforce needs the object type, column name, and relationship name in the following syntax:<br />
</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight"><code>Object name:column name/relationship</code></pre>
</div>
</div>
</div></td>
</tr>
</tbody>
</table>

<div class="paragraph">

Optionally, click Edit mapping to specify custom mapping. For example, you can map a single Hop field to multiple Salesforce fields.

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:59 +0200

</div>

</div>

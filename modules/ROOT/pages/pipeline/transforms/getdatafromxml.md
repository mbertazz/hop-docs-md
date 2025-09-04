<div id="header">

# <span class="image image-doc-icon">![Get Data From XML transform Icon](../assets/images/transforms/icons/GXD.svg)</span> Get Data From XML

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
<p>The Get Data From XML transform provides the ability to read data from any type of XML file using XPath specifications.</p>
</div>
<div class="paragraph">
<p>Get Data From XML can read data from 3 kind of sources (files, stream and url) in 2 modes (static or dynamic).</p>
</div>
<div class="paragraph">
<p>See also:</p>
</div>
<div class="ulist">
<ul>
<li><p><a href="pipeline/transforms/xmlinputstream.Hl9sCzOM5d">XML Input Stream (StAX)</a> transform.</p></li>
</ul>
</div>
<div class="paragraph">
<p>Samples (Samples project):</p>
</div>
<div class="ulist">
<ul>
<li><p>transforms/get-data-from-xml.hpl</p></li>
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

## Options

<div class="sectionbody">

<div class="sect2">

### Files Tab

<div class="paragraph">

The files tab is where you define the location of the XML files from which you want to read. The table below contains options associated with the Files tab.

</div>

Option

</div>

</div>

</div>

</div>

Description

Transform name

Name of the transform. This must be unique within the pipeline.

XML Source from field

XML source is defined in a field

The XML data to use is present ina field in the input stream.

XML source is a filename

The XML data is available in and read from a file.

Read source as URL

The XML data is read from the location specified by a URL.

Get XML source from a field

Specify the field to that contains the XML data, filename or URL from.

File or directory

Specifies the location and/or name of the input text file.

Add

Click to add the file/directory/wildcard combination to the list of selected files (grid) below.

Browse

Click to browse to the file’s location.

Regular expression

Specifies a regular expression used to select multiple files in the directory specified in the previous option.

Selected Files

Contains a list of selected files (or wildcard selections) and a property specifying if file is required or not. If a file is required and it is not found, an error is generated;otherwise, the file name is skipped.

Delete

Click to remove the selected file in the table.

Edit

Click to modify the selected file in the table.

Show filename(s)…​

Displays a list of all files that will be loaded based on the current selected file definitions

<div class="sect2">

### Content Tab

Option

</div>

Description

Settings

Loop XPath

For every matching entry in the XML file(s) or data, one row of data is added to the output. This is the main specification used to flatten the XML file(s). You can use the "Get XPath nodes" button to search for the possible repeating nodes in the XML document, however, if the XML document is large, this can take a while.

Encoding

The XML filename encoding, in case none is specified in the XML documents.

Namespace aware?

Enable if the XML document requires namespaces to be considered while parsing.

Ignore comments?

Enable to ignore all comments in the XML document while parsing.

Validate XML?

Enable to validate the XML prior to parsing. Use a token when you want to replace dynamically in a Xpath field value. A token is between @\_ and - (@\_fieldname-). Please see the Example 1 to see how it works.

Use token

Enable to use a token for validating the XML.

Ignore empty file

Enable to ignore any files with no content. These are not valid XML documents.

Do not raise an error if no files

Enable to do nothing if no files are found. Otherwise, an error is returned.

Limit

Specify a maximum number of rows to return. Zero (0) returns all rows.

Prune path to handle large files

Specifies a path, similar to the Loop XPath, used to process chunks of data from the XML file. Each matching value defines a chunk of data that is read and processed. Use the prune path to speed up processing of large files. You can also use this parameter to avoid multiple HTTP URL requests. You can also do this using the [XML Input Stream (StAX)](pipeline/transforms/xmlinputstream.Hl9sCzOM5d) transform.

Additional fields

Include filename in output?

Allows you to specify a field name to include the file name (String) in the output of this transform.

Filename fieldname

The field to read the file name value from.

Rownum in output?

Allows you to specify a field name to include the row number (Integer) in the output of this transform.

Rownum fieldname

The field to read the row number value from.

\+2

Add to result filename

Add files to result filename

<div class="sect2">

### Fields Tab

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
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
<td><p>The name of the output field</p></td>
</tr>
<tr class="even">
<td><p>XPath</p></td>
<td><p>The path to the element node or attribute to read</p></td>
</tr>
<tr class="odd">
<td><p>Element</p></td>
<td><p>The element type to read: Node or Attribute</p></td>
</tr>
<tr class="even">
<td><p>Result Type</p></td>
<td><div class="content">
<div class="paragraph">
<p>Either &quot;Value of&quot; or &quot;Single node&quot;</p>
</div>
<div class="ulist">
<ul>
<li><p>Value of: retrieve the value of your XPath expression, e.g. the contents of an element or the value of an attribute.</p></li>
<li><p>Single node: retrieve the XML contents returned by an XPath expression. Contrary to &quot;Value of&quot;, the result of &quot;Single node&quot; is an XML snippet.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Type</p></td>
<td><p>The data type to convert to</p></td>
</tr>
<tr class="even">
<td><p>Format</p></td>
<td><p>The format or conversion mask to use in the data type conversion</p></td>
</tr>
<tr class="odd">
<td><p>Length</p></td>
<td><p>The maximum number of characters in the the output data value</p></td>
</tr>
<tr class="even">
<td><p>Precision</p></td>
<td><p>The number of decimal places used to display numbers in the output data</p></td>
</tr>
<tr class="odd">
<td><p>Currency</p></td>
<td><p>The currency symbol to use for monetary values.</p></td>
</tr>
<tr class="even">
<td><p>Decimal</p></td>
<td><p>The numeric decimal symbol to use for floating-point numbers.</p></td>
</tr>
<tr class="odd">
<td><p>Group</p></td>
<td><p>The numeric grouping symbol to use for separating thousands in the data</p></td>
</tr>
<tr class="even">
<td><p>Trim type</p></td>
<td><p>How whitespace characters are removed from values, either from the left (trims leading spaces), right (trims trailing spaces), both (trims all whitespace), or none (no trimming is done)</p></td>
</tr>
<tr class="odd">
<td><p>Repeat</p></td>
<td><p>Repeat the column value of the previous row if the column value is empty (null)</p></td>
</tr>
<tr class="even">
<td><p>Get fields</p></td>
<td><p>Click to populate the table with fields from the input stream.</p></td>
</tr>
<tr class="odd">
<td><p>Select fields from snippet</p></td>
<td><p>Click to populate the table with fields corresponding to a Loop Xpath and an XML document that must be provided in the popup dialog.</p></td>
</tr>
</tbody>
</table>

<div class="paragraph">

\===Additional output fields tab

</div>

| Option                  | Description                                                                           |
| ----------------------- | ------------------------------------------------------------------------------------- |
| Short filename field    | The field used to store the file name, without the path or file extension.            |
| Extension field         | The field used to store the file extension.                                           |
| Path field              | The field used to stare the path to the file.                                         |
| Size field              | The field used to store the file size.                                                |
| Is hidden field         | The field used to specify whether the file is hidden.                                 |
| Last modification field | The field used to store the date the file was last modified.                          |
| Uri field               | The field used to store the XML document’s source URL.                                |
| Root uri field          | The field used to store the XML document’s namespace URL, taken from the root element |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:18 +0200

</div>

</div>

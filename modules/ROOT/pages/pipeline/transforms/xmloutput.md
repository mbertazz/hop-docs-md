<div id="header">

# <span class="image image-doc-icon">![XML Output transform Icon](../assets/images/transforms/icons/XOU.svg)</span> XML Output

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
<p>The XML Output transform allows you to write rows from any source to one or more XML files.</p>
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

### File Tab

<div class="paragraph">

The file tab is where you set general properties for the XML output file format.

</div>

| Option                          | Description                                                                                                                                                               |
| ------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                  | Name of the transform.                                                                                                                                                    |
| Filename                        | Specifies the file name and location of the output text file.                                                                                                             |
| Do not create file at start     | Enable to avoid empty files when no rows are getting processed.                                                                                                           |
| Pass output to servlet          | Enable this option to return the data via a web service instead writing into a file (see Hop data over web service).                                                      |
| Extension                       | Adds a period and the extension to the end of the file name (.xml).                                                                                                       |
| Include transformnr in filename | If you run the transform in multiple copies (see also Launching Several Copies of a transform), the copy number is included in the file name, before the extension (\_0). |
| Include date in filename        | Includes the system date in the file name (\_20041231).                                                                                                                   |
| Include time in filename        | Includes the system date in the file name (\_235959).                                                                                                                     |

</div>

<div class="sect2">

### Content Tab

| Option               | Description                                                                               |
| -------------------- | ----------------------------------------------------------------------------------------- |
| Zipped               | Check this if you want the XML file to be stored in a ZIP archive.                        |
| Encoding             | The encoding to use. This encoding is specified in the header of the XML file.            |
| Parent XML element   | The name of the root element in the XML document.                                         |
| Row XML element      | The name of the row element to use in the XML document.                                   |
| Split every …​ rows. | The maximum number of rows of data to put in a single XML file before another is created. |

</div>

<div class="sect2">

### Fields Tab

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
<td><p>Fieldname</p></td>
<td><p>The name of the field.</p></td>
</tr>
<tr class="even">
<td><p>Elementname</p></td>
<td><p>The name of the element in the XML file to use.</p></td>
</tr>
<tr class="odd">
<td><p>Content Type</p></td>
<td><p>Is the field an attribute or Element</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Type of the field can be either String, Date, or Number.</p></td>
</tr>
<tr class="odd">
<td><p>Format</p></td>
<td><p>The format mask used to convert the values</p></td>
</tr>
<tr class="even">
<td><p>Length</p></td>
<td><div class="content">
<div class="paragraph">
<p>The length option depends on the field type follows:</p>
</div>
<div class="ulist">
<ul>
<li><p>Number - Total number of significant figures in a number</p></li>
<li><p>String - total length of string</p></li>
<li><p>Date - length of printed output of the string (e.g. 4 only gives back year)</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Precision</p></td>
<td><div class="content">
<div class="paragraph">
<p>The precision option depends on the field type as follows:</p>
</div>
<div class="ulist">
<ul>
<li><p>Number - Number of floating point digits</p></li>
<li><p>String - unused</p></li>
<li><p>Date - unused</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Currency</p></td>
<td><p>Symbol used to represent currencies such as $10,000.00 or E5.000,00</p></td>
</tr>
<tr class="odd">
<td><p>Decimal</p></td>
<td><p>A decimal point can be a &quot;.&quot; (10,000.00) or &quot;,&quot; (5.000,00)</p></td>
</tr>
<tr class="even">
<td><p>Group</p></td>
<td><p>A grouping can be a &quot;,&quot; (10,000.00) or &quot;.&quot; (5.000,00)</p></td>
</tr>
<tr class="odd">
<td><p>Null</p></td>
<td><p>If the value of the field is null, insert this string into the textfile</p></td>
</tr>
<tr class="even">
<td><p>Get fields</p></td>
<td><p>Click to retrieve the list of fields from the input stream(s).</p></td>
</tr>
<tr class="odd">
<td><p>Minimal width</p></td>
<td><p>Alter the options in the fields tab in such a way that the resulting width of lines in the text file is minimal; for example instead of save 0000001, &quot;1&quot; is written, and so on. String fields are not padded to their specified length.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:27 +0200

</div>

</div>

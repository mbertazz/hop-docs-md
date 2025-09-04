<div id="header">

# <span class="image image-doc-icon">![Text File Output transform Icon](../assets/images/transforms/icons/textfileoutput.svg)</span> Text File Output

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
<p>The Text File Output transform is used to export data to text file format.</p>
</div>
<div class="paragraph">
<p>This is commonly used to generate Comma Separated Values (CSV files) that can be read by spreadsheet applications.</p>
</div>
<div class="paragraph">
<p>It is also possible to generate fixed width files by setting lengths on the fields in the fields tab.</p>
</div>
<div class="paragraph">
<p>You can choose to use a <a href="metadata-types/static-schema-definition.H8vxEGu91c">Schema Definition</a> or to define the required fields' layout manually. If you decide to define the fields layout by using a <a href="metadata-types/static-schema-definition.H8vxEGu91c">Schema Definition</a>, use the <a href="pipeline/transforms/schemamapping.H8vxEGu91c">Schema Mapping</a> transform to adjust the incoming stream according to the chosen <a href="metadata-types/static-schema-definition.H8vxEGu91c">Schema Definition</a></p>
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

The File tab is where you define basic properties about the file being created, such as:

</div>

| Option                            | Description                                                                                                                                                                                                                         |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                    | Name of the transform. This name has to be unique in a single pipeline.                                                                                                                                                             |
| Filename                          | Specifies the filename and location of the output text file. Click Browse to select a location.                                                                                                                                     |
| Pass output to servlet            | Enable this to return the data via a web service instead writing into a file.                                                                                                                                                       |
| Create parent folder              | Enable this to create the parent folder when the file is created. Otherwise the folder must already exist or the write fails.                                                                                                       |
| Do not create file at start       | Enable this to avoid empty files when no rows are getting processed. Otherwise the file is created before any data is processed, and might produce an empty file.                                                                   |
| Accept file name from field?      | Enable this to specify the file name(s) in a field in the input stream                                                                                                                                                              |
| File name field                   | When the previous option is enabled, specify the field that will contain the filename(s) at runtime.                                                                                                                                |
| Extension                         | Specifies the file extension. This automatically adds the period character in between the filename and the extension when the file is created. For example, name.txt.                                                               |
| Include transform nr in filename  | If you run the transform in multiple copies (Launching several copies of a transform), the copy number is included in the filename, before the extension and separated from the file name with an underscore. For example, name\_0. |
| Include partition nr in filename? | Includes the data partition number in the filename, or null if the data is not partitioned.                                                                                                                                         |
| Include date in filename          | Includes the system date in the filename. This is separated from the filename with an underscore, and by default uses the format YYYYMMDD. For example, name\_20230405.                                                             |
| Include time in filename          | Includes the system time in the filename. This is separated from the filename with an underscore, and by default uses the format hhmmss. For example, name\_235959.                                                                 |
| Specify Date time format          | Enable to specify the date and time format. Otherwise, these components use the defaults.                                                                                                                                           |
| Date time format                  | Select the date and time format from the list to apply to the date and time values appended to the filename.                                                                                                                        |
| Show filename(s)                  | View a list of the files that will be generated.                                                                                                                                                                                    |
| Add file name to result           | This adds all processed filenames to the internal result filename set to allow for further processing.                                                                                                                              |

</div>

<div class="sect2">

### Content Tab

<div class="paragraph">

The content tab contains the following options for describing the content being read:

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
<td><p>Append</p></td>
<td><p>Check this to append lines to the end of the specified file. Otherwise the file is replaced.</p></td>
</tr>
<tr class="even">
<td><p>Separator</p></td>
<td><p>Specify the character that separates the fields in a single line of text. Typically this is ; or a tab.</p></td>
</tr>
<tr class="odd">
<td><p>Insert TAB</p></td>
<td><p>Click to insert a tab into the Separator field.</p></td>
</tr>
<tr class="even">
<td><p>Enclosure</p></td>
<td><p>A pair of strings can enclose some fields. This allows separator or enclosure characters in fields. The enclosure string is optional.</p></td>
</tr>
<tr class="odd">
<td><p>Force the enclosure around fields?</p></td>
<td><p>This option forces all fields of an incoming string type (independent of the eventually changed field type within the Text File Output field definition) to be enclosed with the character specified in the Enclosure property above.</p></td>
</tr>
<tr class="even">
<td><p>Disable the enclosure fix?</p></td>
<td><p>When a string field contains an enclosure it gets enclosed and the enclosing characters are escaped. When a string field contains a separator, it gets enclosed. Check this option, if this logic is not wanted. It has also an extra performance burden since the strings are scanned for enclosures and separators. So when you are sure there is no such logic needed since your strings don’t have these characters in there and you want to improve performance, un-check this option.</p></td>
</tr>
<tr class="odd">
<td><p>Header</p></td>
<td><p>Enable this option if you want the text file to have a header row. (First line in the file).</p></td>
</tr>
<tr class="even">
<td><p>Footer</p></td>
<td><p>Enable this option if you want the text file to have a footer row. (Last line in the file). Note: Be careful using this option when in Append mode, because it is not possible to remove footers from the file contents before appending new rows. There are use cases where this option is wanted, e.g. to have a footer after each run of a pipeline to separate sections within the file.</p></td>
</tr>
<tr class="odd">
<td><p>Format</p></td>
<td><p>This can be either DOS or UNIX. UNIX files have lines are separated by linefeeds.</p>
<p>DOS files have lines separated by carriage returns and line feeds.</p>
<p>The options are: CR+LF terminated (Windows, DOS) / LF terminated (Unix) / CR terminated / No new-line terminator</p></td>
</tr>
<tr class="even">
<td><p>Encoding</p></td>
<td><p>Specify the text file encoding to use, or leave blank to use the default encoding on your system.</p>
<p>To use Unicode specify UTF-8 or UTF-16.</p></td>
</tr>
<tr class="odd">
<td><p>Compression</p></td>
<td><p>Allows you to compress the file and specify the type of compression, either .zip or .gzip, to use when compressing the output.</p>
<p>Note: Only one file is placed in a single compressed archive.</p></td>
</tr>
<tr class="even">
<td><p>Right pad fields</p></td>
<td><p>Add spaces to the end of the fields (or remove characters at the end) until they have the length specific on the Fields tab.</p></td>
</tr>
<tr class="odd">
<td><p>Fast data dump (no formatting)</p></td>
<td><p>Improves the performance when dumping large amounts of data to a text file by not including any formatting information.</p></td>
</tr>
<tr class="even">
<td><p>Split every …​ rows</p></td>
<td><p>Specify a number of rows to split the file into chunks of that many rows.</p></td>
</tr>
<tr class="odd">
<td><p>Add Ending line of file</p></td>
<td><p>Specify an alternate ending row to the output file.</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Fields Tab

<div class="paragraph">

The fields tab is where you define properties for the fields being exported. The table below describes each of the options for configuring the field properties:

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
<td><p>Schema Definition</p></td>
<td><p>Name of the <a href="metadata-types/static-schema-definition.H8vxEGu91c">Schema Definition</a> that we want to reference.</p></td>
</tr>
<tr class="even">
<td><p>Name</p></td>
<td><p>The name of the field.</p></td>
</tr>
<tr class="odd">
<td><p>Type</p></td>
<td><p>Data type of the field. This can be either String, Date or Number.</p></td>
</tr>
<tr class="even">
<td><p>Format</p></td>
<td><p>Select a format to apply to the field value. Only applies to numbers and dates.</p></td>
</tr>
<tr class="odd">
<td><p>Length</p></td>
<td><div class="content">
<div class="paragraph">
<p>The length option depends on the field type:</p>
</div>
<div class="ulist">
<ul>
<li><p>Number - Total number of significant figures in a number</p></li>
<li><p>String - total length of string</p></li>
<li><p>Date - length of printed output of the string (e.g. . only gives back year)</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Precision</p></td>
<td><p>For numbers, specifies the number of floating point digits</p></td>
</tr>
<tr class="odd">
<td><p>Currency</p></td>
<td><p>Symbol used to represent currencies, such as dollars ($10,000.00) or Euros (E5.000,00)</p></td>
</tr>
<tr class="even">
<td><p>Decimal</p></td>
<td><p>The character used to represent the decimal point in a floating-point number. A decimal point can be a &quot;.&quot; (10,000.00) or &quot;,&quot; (5.000,00).</p></td>
</tr>
<tr class="odd">
<td><p>Group</p></td>
<td><p>The character used to represent the thousands separator in numbers. This can be a &quot;,&quot; (10,000.00) or &quot;.&quot; (5.000,00)</p></td>
</tr>
<tr class="even">
<td><p>Trim type</p></td>
<td><p>The trimming method used to remove blank spaces from string values. This can be left (removes leading spaces), right (removes trailing spaces), both, or none.</p>
<p>Note: Trimming only works when there is no field length given.</p></td>
</tr>
<tr class="odd">
<td><p>Null</p></td>
<td><p>Specify a value to insert in the field if the field value is null.</p></td>
</tr>
<tr class="even">
<td><p>Get Fields</p></td>
<td><p>Click to retrieve the list of fields from the input fields stream(s).</p></td>
</tr>
<tr class="odd">
<td><p>Rounding Type</p></td>
<td><p>When writing numbers to a file you can specify the Rounding type being used by default <code>Half Even</code> is used, for more information look at the Rounding Types section</p></td>
</tr>
<tr class="even">
<td><p>Minimal width</p></td>
<td><p>Alter the options in the fields tab in such a way that the resulting width of lines in the text file is minimal.</p>
<p>So instead of a string value being 0000001, we write 1, etc. String fields will no longer be padded to their specified length.</p></td>
</tr>
</tbody>
</table>

<div class="paragraph">

Unresolved directive in tmp.JXvzjukc3e - include::../../snippets/rounding-types.adoc\[\]

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:19 +0200

</div>

</div>

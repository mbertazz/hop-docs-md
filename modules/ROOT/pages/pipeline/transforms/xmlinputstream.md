<div id="header">

# <span class="image image-doc-icon">![XML Input Stream (StAX) transform Icon](../assets/images/transforms/icons/xml_input_stream.svg)</span> XML Input Stream (StAX)

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
<p>The XML Input Stream (StAX) transform reads data from XML files using the Streaming API for the XML (StAX) parser.</p>
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

This transform is optimal for quickly processing large and complex data structures.

</div>

<div class="paragraph">

Unlike the [Get Data from XML](pipeline/transforms/getdatafromxml.MLoOGxImHa) transform, which uses in-memory processing and can require the purging of parts of files, the XML Input Stream (StAX) transform moves the processing logic into the pipeline.

</div>

<div class="paragraph">

The transform itself provides the raw XML data stream together with additional processing information.

</div>

<div class="paragraph">

This streaming transform is recommended when you have limitations with other transforms or need to parse XML when:

</div>

<div class="ulist">

  - You need fast data loads which are independent of the memory regardless of the file size.

  - You need flexibility in reading various parts of the XML file in different ways, and do not want to repeatedly parse the file.

</div>

<div class="paragraph">

Because the processing logic of some XML files can be complex, you should have a good knowledge of the existing Hop transforms when using this transform.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

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
<td><p>Transform name</p></td>
<td><p>Name of the transform.</p></td>
</tr>
<tr class="even">
<td><p>Filename</p></td>
<td><p>File name of the input XML file. Specify your file name by entering its path or clicking Browse. If you connect to a transform that precedes the XML Input Stream transform, the Browse button is hidden, and the text box becomes a drop-down menu that is populated with the fields from the preceding transform. Select a value from the drop-down menu to use as the path to an XML file. You can use internal variables to specify the path.</p></td>
</tr>
<tr class="odd">
<td><p>Source is from a previous transform</p></td>
<td><p>Accept data from a field in a previous transform.</p></td>
</tr>
<tr class="even">
<td><p>Source field name</p></td>
<td><p>Selects a field from the previous transform to use as XML data.</p></td>
</tr>
<tr class="odd">
<td><p>Add filename to result?</p></td>
<td><p>Adds the processed XML filename to the result of this pipeline by passing the filename of the XML input file as a value on each result row. You can then use it in subsequent transforms where you want to use the filename as a value.</p></td>
</tr>
<tr class="even">
<td><p>Skip (Elements/Attributes)</p></td>
<td><p>Number of elements or attributes that should be skipped. Use this field for starting the processing at a specific location in a file. The file will still be loaded by the parser, but the rows will not be produced.</p></td>
</tr>
<tr class="odd">
<td><p>Limit (Elements/Attributes)</p></td>
<td><p>Limits the number of elements or attributes to process. With the Skip and Limit properties, you can enable chunk loading that is defined in an outer loop.</p></td>
</tr>
<tr class="even">
<td><p>Default String Length</p></td>
<td><p>The default string length for the XML data name and value fields.</p></td>
</tr>
<tr class="odd">
<td><p>Encoding</p></td>
<td><p>Encodes the XML file data in the specified encoding.</p></td>
</tr>
<tr class="even">
<td><p>Add Namespace information?</p></td>
<td><p>Adds the XML data type NAMESPACE to the stream. You can add an optional prefix (defined in the XML data name) and URI information (defined in the XML data value). This option adds a defined prefix in the ELEMENT data type to the XML data name, for example, prefix:product. Due to the extra namespace handling, this option slows down the processing throughput.</p></td>
</tr>
<tr class="odd">
<td><p>Trim strings?</p></td>
<td><p>Trims all name/value elements and attributes. It eliminates white spaces, tabs, carriage returns, and line feed characters at the beginning and end of the string.</p></td>
</tr>
<tr class="even">
<td><p>Include filename in output? / Fieldname</p></td>
<td><p>Adds the processed file name to the specified field name.</p></td>
</tr>
<tr class="odd">
<td><p>Row number in output? / Fieldname</p></td>
<td><p>Adds the processed row number (starting with 1) to the specified field name.</p></td>
</tr>
<tr class="even">
<td><p>XML data type (numeric) in output? / Fieldname</p></td>
<td><div class="content">
<div class="paragraph">
<p>Adds the processed data type in numeric format to the specified field name.</p>
</div>
<div class="paragraph">
<p>The following data types are defined:</p>
</div>
<div class="ulist">
<ul>
<li><p>0 - &quot;UNKNOWN&quot; (Reserved)</p></li>
<li><p>1 - &quot;START_ELEMENT&quot;</p></li>
<li><p>2 - &quot;END_ELEMENT&quot;</p></li>
<li><p>3 - &quot;PROCESSING_INSTRUCTION&quot; (Reserved)</p></li>
<li><p>4 - &quot;CHARACTERS&quot;</p></li>
<li><p>5 - &quot;COMMENT&quot; (Reserved)</p></li>
<li><p>6 - &quot;SPACE&quot; (Reserved)</p></li>
<li><p>7 - &quot;START_DOCUMENT&quot;</p></li>
<li><p>8 - &quot;END_DOCUMENT&quot;</p></li>
<li><p>9 - &quot;ENTITY_REFERENCE&quot; (Reserved)</p></li>
<li><p>10-&quot;ATTRIBUTE&quot;</p></li>
<li><p>11-&quot;DTD&quot; (Reserved)</p></li>
<li><p>12-&quot;CDATA&quot; (Reserved)</p></li>
<li><p>13-&quot;NAMESPACE&quot; (When namespace information is selected)</p></li>
<li><p>14-&quot;NOTATION_DECLARATION&quot; (Reserved)</p></li>
<li><p>15-&quot;ENTITY_DECLARATION&quot; (Reserved).</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>XML data type (description) in output? / Fieldname</p></td>
<td><p>Adds the processed data type in text format to the specified field name. This option should be used instead of the numeric data type for better readability of the pipeline. See the XML data type (numeric) description above for a list of values.</p>
<p>Because this option can cause slower processing of strings and extra memory consumption, it is recommended to use the numeric data type format for big data loads</p></td>
</tr>
<tr class="even">
<td><p>XML location line in output? / Fieldname</p></td>
<td><p>Adds the processed source XML location line to the specified field name.</p></td>
</tr>
<tr class="odd">
<td><p>XML location column in output? / Fieldname</p></td>
<td><p>Adds the processed source XML location column to the specified field name.</p></td>
</tr>
<tr class="even">
<td><p>XML element ID in output? / Fieldname</p></td>
<td><p>Adds the processed element number (starting with '0') to the specified field name. In contrast to adding the Row number, this field number is incremented by the count of each new element and not the row number. This numbering ensures that the nesting between levels is correct.</p></td>
</tr>
<tr class="odd">
<td><p>XML parent element ID in output? / Fieldname</p></td>
<td><p>Adds the parent element number to the specified field name. When you use the XML element ID with the XML parent element ID, a complete XML element tree is available for later usage.</p></td>
</tr>
<tr class="even">
<td><p>XML element level in output? / Fieldname</p></td>
<td><p>Adds the processed element level to the specified field name, starting with '0' for the root START_ and END_DOCUMENT.</p></td>
</tr>
<tr class="odd">
<td><p>XML path in output? / Fieldname</p></td>
<td><p>Adds the processed XML path to the specified field name.</p></td>
</tr>
<tr class="even">
<td><p>XML parent path in output? / Fieldname</p></td>
<td><p>Adds the processed XML parent path to the specified field name.</p></td>
</tr>
<tr class="odd">
<td><p>XML data name in output? / Fieldname</p></td>
<td><p>Adds the processed data name of elements, attributes, and optional namespace prefixes to the specified field name.</p></td>
</tr>
<tr class="even">
<td><p>XML data value in output? / Fieldname</p></td>
<td><p>Adds the processed data value of elements, attributes and optional namespace URIs to the specified field name.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:26 +0200

</div>

</div>

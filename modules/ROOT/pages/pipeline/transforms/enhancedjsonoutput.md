<div id="header">

# <span class="image image-doc-icon">![Enhanced JSON Output transform Icon](../assets/images/transforms/icons/JSO.svg)</span> Enhanced JSON Output

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
<p>The Enhanced JSON Output transform allows you to generate JSON blocks based on input transform values.</p>
</div>
<div class="paragraph">
<p>Output JSON will be available as a Javascript array or Javascript object depending on transform settings.</p>
</div>
<div class="admonitionblock tip">
<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>Because this transform loops over the fields defined as Group Key and serializes JSON output accordingly, it is extremely important to sort the input data by the group key. Failing to do so may return incorrect or unexpected data.</td>
</tr>
</tbody>
</table>
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

### General Tab

<div class="paragraph">

General tab allows to specify the type of transform operation (output JSON for the next transform and/or in a file), as well as the transform behaviour.

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
<td><p>Transform name</p></td>
<td><p>Name of the transform; this name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Operation</p></td>
<td><div class="content">
<div class="paragraph">
<p>Specify transform operation type. Currently three types of operation are available:</p>
</div>
<div class="olist arabic">
<ol>
<li><p>Output value - only pass output JSON as a transform output field, do not dump to output file</p></li>
<li><p>Write to file - only write to file, do not pass to output field</p></li>
<li><p>Output value and write to file - dump to file and pass generated JSON as a transform output field</p></li>
</ol>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>JSON block name</p></td>
<td><p>If specified, the output of the transform will always be a JSON object with a single first-level node, whose name will be this value.</p>
<p>If empty, the transform can output a JSON array or object, depending on the settings in the other tabs.</p></td>
</tr>
<tr class="even">
<td><p>Output value</p></td>
<td><p>The name of the output field (if enabled) for the generated JSON block.</p></td>
</tr>
<tr class="odd">
<td><p>Force arrays in JSON</p></td>
<td><p>If checked, the output will be an array even when the transform result is a single JSON (object) fragment.</p></td>
</tr>
<tr class="even">
<td><p>Force single grouped Item</p></td>
<td><p>If checked, values will be grouped by column and all the values will be enclosed in an array. If unchecked, a JSON object fragment will be created for each input row, and then they will be grouped into an array.</p></td>
</tr>
<tr class="odd">
<td><p>Pretty Print JSON</p></td>
<td><p>If checked, JSON output will be pretty printed.</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Output File

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
<td><p>Filename</p></td>
<td><p>full path to output file</p></td>
</tr>
<tr class="even">
<td><p>Append</p></td>
<td><p>If not checked - new file will be created every time transform is running. If file with specified name exists already, it will be replaced by a new one. If checked - new JSON output will be appended to the end of existing file. Or if file does not exist, it will be created as in previous case.</p>
<p>TIP: If you want to create a ND-JSON (Newline-Delimited JSON) file, you may get better results by outputting the JSON rows and then printing them with a <a href="pipeline/transforms/textfileoutput.SE14ggbaJ8">Text file output</a> transform</p></td>
</tr>
<tr class="odd">
<td><p>Split JSON after n rows</p></td>
<td><p>If this number N is larger than zero, split the resulting JSON file into multiple parts of N rows.</p></td>
</tr>
<tr class="even">
<td><p>Create Parent folder</p></td>
<td><p>Check this option to create the folders structure, if some of them are missing in the provided path. If this option is not checked and the full path cannot be found, the transform will fail.</p></td>
</tr>
<tr class="odd">
<td><p>Do not open create at start</p></td>
<td><p>If not checked - file (and in some cases parent folder) will be created/opened to write during pipeline initialization. If checked - file and parent folder will be created only after transform gets any first input data.</p></td>
</tr>
<tr class="even">
<td><p>Extension</p></td>
<td><p>Output file extension. Default value is 'js'</p></td>
</tr>
<tr class="odd">
<td><p>Encoding</p></td>
<td><p>Output file encoding</p></td>
</tr>
<tr class="even">
<td><p>Include date in filename?</p></td>
<td><p>If checked - output file name will contain File name value + current date. This may help to generate unique output files.</p></td>
</tr>
<tr class="odd">
<td><p>Include time in filename</p></td>
<td><p>If checked - output file name will contain file creation time. Same as for 'Include date in filename' option</p></td>
</tr>
<tr class="even">
<td><p>Show filename(s) button</p></td>
<td><p>Can be useful to test full output file path</p></td>
</tr>
<tr class="odd">
<td><p>Add file to result filenames?</p></td>
<td><p>If checked - created output file path will be accessible from transform result files</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Group Key Tab

<div class="paragraph">

This tab is used to define the key fields used for grouping the rows in JSON fragments.

</div>

<div class="paragraph">

Rows with the same values in the key fields allow you to generate JSON fragments from the row data, and group them in a single JSON array. The key fields defined here will also be forwarded to the next transform as they are.

</div>

<div class="paragraph">

If no group field is defined, all the rows will be grouped in a JSON array and the transform output will be a single row and a single column.

</div>

| Option       | Description                                                                                                         |
| ------------ | ------------------------------------------------------------------------------------------------------------------- |
| Fieldname    | Input transform field name that will contribute to define the input transform fields key.                           |
| Element name | JSON element name. For example "A":"B" - A is a element name, B is actual input value mapped for this Element name. |

</div>

<div class="sect2">

### Fields Tab

<div class="paragraph">

This tab is used to map input transform fields to output JSON fragments.

</div>

<div class="paragraph">

The selected fields will be converted in a JSON fragment (usually a JSON object) that can also include the fields used for grouping (those will assume the same values in all fragments).

</div>

<div class="paragraph">

The fragments will then be grouped in JSON arrays, based on the rules defined in the Group Key tab above.

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
<td><p>Fieldname</p></td>
<td><p>Input transform field name. Use 'Get Fields' button to discover available input fields</p></td>
</tr>
<tr class="even">
<td><p>Element name</p></td>
<td><p>The key name to use in JSON for this field (it can be different from the actual field name).</p>
<p>For example &quot;A&quot;:&quot;B&quot; - A is an element name, B is actual input value mapped for this Element name.</p></td>
</tr>
<tr class="odd">
<td><p>JSON Fragment</p></td>
<td><p>If the value is set to Y the value contained in the filed is a JSON chunk and will be treated accordingly. You can use this option (and a chain of transforms, see the example pipeline in the <a href="#_notes">Notes</a> below) to generate complex JSON structures.</p></td>
</tr>
<tr class="even">
<td><p>Remove Element name</p></td>
<td><p>If the value is set to Y it will ignore the Element name and insert the JSON Fragment without wrapping it. Only works with JSON Fragment = Y</p></td>
</tr>
<tr class="odd">
<td><p>Remove if Blank</p></td>
<td><p>If the value is set to Y and value in incoming field is null, the related attribute will be omitted from JSON output</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Notes

<div class="sectionbody">

<div class="paragraph">

Look at the sample provided *json-output-generate-nested-structure.hpl* for a better understanding about how the transform works

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:09 +0200

</div>

</div>

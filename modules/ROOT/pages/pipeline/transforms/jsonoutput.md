<div id="header">

# <span class="image image-doc-icon">![JSON Output transform Icon](../assets/images/transforms/icons/JSO.svg)</span> JSON Output

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
<p>The JSON Output transform allows you to generate JSON blocks based on input transform values.</p>
</div>
<div class="paragraph">
<p>Output JSON will be available as a javascript array or a javascript object depending on the transform settings.</p>
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

### General Tab

<div class="paragraph">

General tab allows to specify type of transform operation, output json structure, transform output file. This file will be used to dump all generated json.

</div>

<div class="sect3">

#### Settings Section

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
<td><div class="content">
<div class="paragraph">
<p>Transform name</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Name of the transform; this name has to be unique in a single pipeline.</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><div class="content">
<div class="paragraph">
<p>Operation</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Specify transform operation type. Currently available 3 types of operation:</p>
</div>
<div class="olist arabic">
<ol>
<li><p>Output value - only pass output json as a transform output field, do not dump to output file</p></li>
<li><p>Write to file - only write to fie, do not pass to output field</p></li>
<li><p>Output value and write to file - dump to file and pass generated json as a transform output file</p></li>
</ol>
</div>
</div></td>
</tr>
<tr class="odd">
<td><div class="content">
<div class="paragraph">
<p>Json block name</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>This value will be used as a name for json block.</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><div class="content">
<div class="paragraph">
<p>Nr. rows in a block</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Number of rows that are combined as one JSON Array<br />
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
<td>A new file will be generated for each block</td>
</tr>
</tbody>
</table>
</div>
</div></td>
</tr>
<tr class="odd">
<td><div class="content">
<div class="paragraph">
<p>Output value</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Output field name</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><div class="content">
<div class="paragraph">
<p>Compatibility mode</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Mode to be backwards compatible, more information <a href="#compat-mode">here</a></p>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

<div class="sect3">

#### Output File Section

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
<td><div class="content">
<div class="paragraph">
<p>Filename</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>full path to output file</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><div class="content">
<div class="paragraph">
<p>Append</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>When checked new rows will be appended to the existing files</p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><div class="content">
<div class="paragraph">
<p>Create Parent folder</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>When checked the parent folders will be created when they do not exist, else the transform will fail if the folder does not exist</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><div class="content">
<div class="paragraph">
<p>Do not open create at start</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>If not checked:<br />
file (and in some cases parent folder) will be created/opened to write during pipeline initialization.<br />
If checked:<br />
file and parent folder will be created only after transform will get any first input data.</p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><div class="content">
<div class="paragraph">
<p>Extension</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Output file extension. Default value is 'json'</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><div class="content">
<div class="paragraph">
<p>Encoding</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Output file encoding</p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><div class="content">
<div class="paragraph">
<p>Pass output to servlet</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Enable this option to return the data via a web service instead writing into a file.</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><div class="content">
<div class="paragraph">
<p>Include date in filename?</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>If checked - output file name will contains File name value + current date. This may help to generate unique output files.</p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><div class="content">
<div class="paragraph">
<p>Include time in filename</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>If checked - output file name will contains file creation time. Same as for 'Include date in filename' option</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><div class="content">
<div class="paragraph">
<p>Show filename(s) button</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Can be useful to test full output file path</p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><div class="content">
<div class="paragraph">
<p>Add file to result filenames?</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>If checked - created output file path will be accessible form transform result</p>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect2">

### Fields Tab

<div class="paragraph">

This tab is used to map input transform fields to output json values

</div>

| Option       | Description                                                                                                                  |
| ------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| Element name | Json element name as a key. For example "A":"B" - A is a element name, B is actual input value mapped for this Element name. |
| Fieldname    | Input transform field name. Use 'Get Fields' button to discover available input fields                                       |

</div>

</div>

</div>

<div class="sect1">

## Compatibility mode

<div class="sectionbody">

<div class="paragraph">

This part of the documentation will explain the differences when turning on compatibility mode. For all new development this mode is **not** recommended. Imagine we are generating a simple \<key,value\> list with keynames "name" and "value" and there corresponding values.

</div>

<div class="paragraph">

We will be using following settings:

</div>

<div class="ulist">

  - Json block name = "data"

  - Nr rows in block = 3

  - Compatibility mode = NOT checked (and this is the default option)

</div>

<div class="paragraph">

This will output:

</div>

<div class="paragraph">

First file:

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
  "data" : [ {
    "name" : "item 1",
    "value" : "value 1"
  }, {
    "name" : "item 2",
    "value" : "value 2"
  }, {
    "name" : "item 3",
    "value" : "value 3"
  } ]
}
```

</div>

</div>

<div class="paragraph">

Second file:

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
  "data" : [ {
    "name" : "item 4",
    "value" : "value 4"
  } ]
}
```

</div>

</div>

<div class="paragraph">

If compatibility mode is enabled and the transform has the following settings:

</div>

<div class="ulist">

  - Json block name = "data"

  - Nr rows in block = 3

  - 'Compatibility mode' is checked

</div>

<div class="paragraph">

This will output:

</div>

<div class="paragraph">

First file:

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
    "data": [
        {
            "name": "item 1"
        },
        {
            "value": "value 1"
        },
        {
            "name": "item 2"
        },
        {
            "value": "value 2"
        },
        {
            "name": "item 3"
        },
        {
            "value": "value 3"
        }
    ]
}
```

</div>

</div>

<div class="paragraph">

Second file:

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
    "data": [
        {
            "name": "item 4"
        },
        {
            "value": "value 4"
        }
    ]
}
```

</div>

</div>

<div class="paragraph">

As you can see when turning compatibility mode on, each field will be handles as a separate object.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:31 +0200

</div>

</div>

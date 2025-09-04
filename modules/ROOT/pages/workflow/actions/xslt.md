<div id="header">

# XSL pipeline

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `XSL pipeline` action transforms XML documents into other documents (XML or other format, such as HTML or plain text) using Extensible Stylesheet Language Transformations or [XSLT](http://en.wikipedia.org/wiki/XSLT).

</div>

<div class="paragraph">

The original document is not changed; rather, a new document is created based on the content of the XML file.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General tab

Option

</div>

</div>

</div>

</div>

Description

Action name

The name of the workflow action.

Files

Get filenames from previous result

When this option is checked, the XML File name, XSL File name and Output File name are read from the previous result set. When multilpe rows exists, it will loop. At this time XML File name is the first field in the result set, XSL File name the second fields and Output File name the third field.

XML File name

The full name of the source XML file

XSL File name

The full name of the XSL file

Output File name

The full name of the created document (result of XSL transformation)

Settings

Transformer Factory

You can select JAXP or SAXON as the transformer factory.

If file exists

<div class="content">

<div class="paragraph">

Define the behavior when an output file with the same name exists. The available options are:

</div>

<div class="ulist">

  - Create new with unique name : a new output file will be created

  - Do nothing : nothing will be done

  - Fail : the workflow will fail

</div>

</div>

Add files to result files name

Add the target file names to the list of result files of this workflow action for use in the next workflow actions.

<div class="sect2">

### Advanced tab

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
<td><p>Output properties</p></td>
<td><div class="content">
<div class="paragraph">
<p>A table with possible properties for the output of the XSL pipeline. The options are:</p>
</div>
<div class="ulist">
<ul>
<li><p>method</p></li>
<li><p>version</p></li>
<li><p>encoding</p></li>
<li><p>standalone</p></li>
<li><p>indent</p></li>
<li><p>omit-xml-declaration</p></li>
<li><p>doctype-public</p></li>
<li><p>doctype-system</p></li>
<li><p>media-type</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Parameters</p></td>
<td><p>a list of parameter names and values to pass to the XSL pipeline</p></td>
</tr>
</tbody>
</table>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:36 +0200

</div>

</div>

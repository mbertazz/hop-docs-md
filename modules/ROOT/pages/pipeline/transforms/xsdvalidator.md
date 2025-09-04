<div id="header">

# <span class="image image-doc-icon">![XSD Validator transform Icon](../assets/images/transforms/icons/XOU.svg)</span> XSD Validator

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
<p>The XSD Validator transform performs an XSD validation against data in a file or in an input field.</p>
</div>
<div class="paragraph">
<p>XSD is short for <a href="http://en.wikipedia.org/wiki/XML_Schema_(W3C)">XML Schema Definition</a>.</p>
</div>
<div class="paragraph">
<p>As such, there are 2 entities at work here:</p>
</div>
<div class="ulist">
<ul>
<li><p>The XML you want to validate the layout for</p></li>
<li><p>The XSD (Schema) file that describes what the XML file should look like.</p></li>
</ul>
</div>
<div class="paragraph">
<p>To make matters more complex, it’s possible to store the XSD inside the XML itself.</p>
</div>
<div class="paragraph">
<p>See also the <a href="workflow/actions/xsdvalidator.n6Mfiyx5Mh">XSD Validator workflow action</a>.</p>
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
<td><p>XML Source</p></td>
<td><div class="content">
<div class="ulist">
<ul>
<li><p>XML source is a file : check this if the XML file is defined as a filename in the XML field</p></li>
<li><p>XML field : the field to read that contains the XML filename or the XML content itself</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Output fields</p></td>
<td><div class="content">
<div class="ulist">
<ul>
<li><p>Result fieldname : the name of the result field</p></li>
<li><p>Output String field : check this option if you want to specify specific messages after validation:</p>
<div class="ulist">
<ul>
<li><p>Display if XML is valid : the message if the XML was valid.</p></li>
<li><p>Display if XML is not valid : the message if the XML wasn’t valid.</p></li>
</ul>
</div></li>
<li><p>Add validation msg in output : check this if you want to add a validation message in the output.</p></li>
<li><p>Validation msg field: the name of the validation message field.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>XML schema definition</p></td>
<td><div class="content">
<div class="paragraph">
<p>XSD source : select one of these options:</p>
</div>
<div class="ulist">
<ul>
<li><p>The XSD source is a file, let me specify the filename (specify below in the XSD filename field).</p></li>
<li><p>The XSD source is a file, defined in a field (specify below in the XSD filename field).</p></li>
<li><p>The XSD source is defined inside the source XML.</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:27 +0200

</div>

</div>

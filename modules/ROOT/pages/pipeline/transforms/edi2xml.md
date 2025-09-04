<div id="header">

# <span class="image image-doc-icon">![Edi to XML transform Icon](../assets/images/transforms/icons/edi2xml.svg)</span> Edi to XML

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
<p>The Edi To XML transform converts EDI message text (conforming to the ISO 9735 standard, <a href="https://en.wikipedia.org/wiki/EDIFACT">read more</a>) to generic XML.</p>
</div>
<div class="paragraph">
<p>The XML text is more accessible and allows for selective data extraction using XPath and the <a href="pipeline/transforms/getdatafromxml.LEKprTmpjy">Get Data From XML</a> transform.</p>
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

<div class="paragraph">

The transform configuration requires the field name containing the EDI text, and an output field name for the XML text. If the output field name is left empty, the EDI text is going to be replaced by the XML text.

</div>

<div class="paragraph">

The structure of the XML output follows the following pattern:

</div>

<div class="listingblock">

<div class="content">

``` highlight
<edifact>
    <SEGMENT>
        <element>
            <value></value>
            ...
        </element>
        ...
    </SEGMENT>
    ...
</edifact>
```

</div>

</div>

<div class="paragraph">

The conversion rules are:

</div>

<div class="ulist">

  - the root of the document is the "edifact" tag

  - each segment in the edifact message is converted to a tag, using the segment name as the tag name.

  - each field within a segment is represented by an "element" tag

  - each value within a field is represented by an "value" tag

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:08 +0200

</div>

</div>

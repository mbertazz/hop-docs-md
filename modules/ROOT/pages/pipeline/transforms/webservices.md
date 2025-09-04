<div id="header">

# <span class="image image-doc-icon">![Web services lookup transform Icon](../assets/images/transforms/icons/webservice.svg)</span> Web services lookup

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
<p>The Web Services Lookup transform performs a Web Services lookup using the Web Services Description Language (WSDL).</p>
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

| Option                      | Description                                                                                                                                                                                                                                                                                                               |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform Name              | Name of the transform this name has to be unique in a single pipeline.                                                                                                                                                                                                                                                    |
| URL                         | The base URL pointing to the WSDL document that will be retrieved                                                                                                                                                                                                                                                         |
| Load (button)               | The load button loads the WSDL at the specified URL and tries to automatically populate the input and output tabs and fields. NOTE: If this doesn’t work, you can still try to manually specify the input and output fields using the "Add Input" and "Add Output" buttons.                                               |
| The number of rows per call | The number of rows to send with each WSDL call                                                                                                                                                                                                                                                                            |
| Pass input data to output   | If you disable this, the input will be eaten and only the WSDL output will be passed along to the next transforms. v2.x/3.x compatibility mode We improved the parsing engine of the 3.x engine dramatically. For compatibility reasons, we kept the old engine around to make sure older transforms would still work OK. |
| Repeating element name      | Specify the name of the repeating element in the output XML (if any).                                                                                                                                                                                                                                                     |
| HTTP authentication         | Here you can put the username and password if these are required for the web service.                                                                                                                                                                                                                                     |
| Proxy to use                | Here you can optionally put the proxy host and port information.                                                                                                                                                                                                                                                          |
| Add Input / Add Output      | These buttons will allow you to manually specify the input and output specifications of the WSDL service. Note: The data of the input fields can be escaped by the Calculator transform and the function "Mask XML content from string A"                                                                                 |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:24 +0200

</div>

</div>

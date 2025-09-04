<div id="header">

# <span class="image image-doc-icon">![HTTP client transform Icon](../assets/images/transforms/icons/http.svg)</span> HTTP client

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
<p>The HTTP Client transform performs a simple call to a base URL with additional options.</p>
</div>
<div class="exampleblock">
<div class="content">
<div class="paragraph">
<p><a href="http://%3CURL%3E?param1=value1&amp;param2=value2&amp;param3" class="uri bare">http://&lt;URL&gt;?param1=value1&amp;param2=value2&amp;param3</a>..</p>
</div>
</div>
</div>
<div class="paragraph">
<p>The result is stored in a String field with the specified name.</p>
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

| Option                                  | Description                                                                                                                                        |
| --------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                          | Name of the transform; this name has to be unique in a single pipeline                                                                             |
| URL                                     | The base URL string                                                                                                                                |
| Accept URL from field?                  | Enable this option if you want to get the URL from a previous transform. Enabling this will also allow you to specify the name of the input field. |
| URL field name                          | The name of the incoming field that contains the URL                                                                                               |
| Connection timeout                      |                                                                                                                                                    |
| Socket timeout                          | The number of seconds to wait if no data is returned from the server.                                                                              |
| Connection close wait time              |                                                                                                                                                    |
| Result fieldname                        | The name of the field to store results                                                                                                             |
| HTTP status code field name             | The name of the field to store the HTTP response code (e.g. 200, 404)                                                                              |
| Response time (milliseconds) field name | The name of the field to store the response time                                                                                                   |
| Http Login                              | The username to be passed during HTTP (Basic) authentication                                                                                       |
| HTTP Password                           | The password to be passed during HTTP (Basic) authentication                                                                                       |
| Proxy Host                              | The hostname of the Proxy Server to be used                                                                                                        |
| Proxy Port                              | The port number of the Proxy Server to be used                                                                                                     |
| Parameters                              | Area where you define the parameter name-value pairs to pass on the URL                                                                            |
| Custom HTTP Headers                     | Area where you define optional HTTP headers                                                                                                        |

</div>

</div>

<div class="sect1">

## FAQ

<div class="sectionbody">

<div class="sect2">

### The HTTP client transform doesn’t do anything

<div class="paragraph">

**Q**: The HTTP client transform doesn’t do anything, how do I make it work?

</div>

<div class="paragraph">

**A**: The HTTP client transform needs to be triggered. Use a Row generator transform generating e.g. 1 empty row and link that with a hop to the HTTP client transform.

</div>

</div>

<div class="sect2">

### The HTTP client transform and SOAP

<div class="paragraph">

**Q**: Does the HTTP client support SOAP?

</div>

<div class="paragraph">

**A**: No, it just calls an URL with arguments. Future transforms may provide SOAP functionality, Work is underway on a WebService transform supporting WSDL.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:25 +0200

</div>

</div>

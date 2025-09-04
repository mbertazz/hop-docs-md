<div id="header">

# <span class="image image-doc-icon">![Check if webservice is available transform Icon](../assets/images/transforms/icons/webserviceavailable.svg)</span> Check if webservice is available

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
<p>The Check If Webservice Is Available transform checks if a webservice URL in the data stream is valid, can be connected to and can be read. If it connects within the given time and data can be read, it returns 'true' as a boolean result value, otherwise 'false'. Further information of the failing reason can be found in the log when debug logging is enabled.</p>
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

| Option               | Description                                                                                                                                                                |
| -------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name       | Name of the transform.                                                                                                                                                     |
| URL field            | Specifies the URL fieldname in the data stream. The URL is checked for every row that is coming into this transform.                                                       |
| Connect timeout (ms) | The connect timeout in ms. The value is depending on the quality of service of this URL and experiences.                                                                   |
| Read timeout (ms)    | After connection, the transform tries to read data. This value gives the read timeout in ms. The value is depending on the quality of service of this URL and experiences. |
| Result fieldname     | If it connects within the given timeout and data can be read, it returns 'true' as a boolean result value, otherwise 'false'                                               |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:56 +0200

</div>

</div>

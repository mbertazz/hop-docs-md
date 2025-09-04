<div id="header">

# <span class="image image-doc-icon">![Abort Icon](../assets/images/transforms/icons/abort.svg)</span> Abort

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
<p>The Abort tranform aborts a running pipeline as soon as it receives input data. The main use case for this transform is to throw an error when an unexpected or unwanted situation occurs.</p>
</div>
<div class="paragraph">
<p>For example, you can use this transform so that a pipeline can be aborted after x number of rows flow to over an error hop.</p>
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

|                |                                                               |
| -------------- | ------------------------------------------------------------- |
| Transform name | Specify the unique name of the Abort transform on the canvas. |

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                     | Description                                                                                                                                                                      |
| -------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Abort the running pipeline | Stops the pipeline when the Abort threshold is reached.                                                                                                                          |
| Abort and log as an error  | Logs an error report when the Abort transform stops the pipeline. Useful when a parent transform executes a sub-pipeline containing the Abort transform.                         |
| Stop input processing      | Stops input transforms when the Abort threshold is reached, but processes already retrieved records.                                                                             |
| Abort threshold            | Specifies the number of rows at which to abort the pipeline after an error is detected. For example, `0` stops after the first row, `5` stops after the sixth row. Default: `0`. |

</div>

</div>

<div class="sect1">

## Logging

<div class="sectionbody">

<div class="paragraph">

The Abort transform features the following logging options:

</div>

| Option          | Description                                                                                                                                                                                                                              |
| --------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Abort message   | The message to put in the log upon aborting. If not filled in a default message will be used.                                                                                                                                            |
| Always log rows | Always log the rows processed by the Abort transform. This allows the rows to be logged although the log level of the pipeline would normally not do it. This way you can always see in the log which rows caused the pipeline to abort. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:36 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![Files from result transform Icon](../assets/images/transforms/icons/filesfromresult.svg)</span> Files from result

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
<p>The Files From Result transform reads filenames and additional metadata that were added through the 'add filename to result' in other transforms.</p>
</div>
<div class="paragraph">
<p>Every time a file gets processed, used or created in a pipeline or a workflow, the details of the file, the workflow action, the transform, etc. is captured and added to an internal result set when the option 'Add file names to result' is set, e.g. in a Text File Output transform.</p>
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
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
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

| Option         | Description                                   |
| -------------- | --------------------------------------------- |
| Transform name | The unique transform name within the pipeline |

</div>

</div>

<div class="sect1">

## Output fields

<div class="sectionbody">

| Field name   | Type   | Example                              |
| ------------ | ------ | ------------------------------------ |
| type         | String | Normal, Log, Error, Error-line, etc. |
| filename     | String | somefile.txt                         |
| path         | String | C:\\Foo\\Bar\\somefile.txt           |
| parentorigin | String | Process files pipeline               |
| origin       | String | Text File Input                      |
| comment      | String | Read by text file input              |
| timestamp    | Date   | 2006-06-23 12:34:56                  |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:14 +0200

</div>

</div>

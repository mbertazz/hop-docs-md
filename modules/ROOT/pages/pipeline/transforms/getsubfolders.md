<div id="header">

# <span class="image image-doc-icon">![Get SubFolder names transform Icon](../assets/images/transforms/icons/getsubfolders.svg)</span> Get SubFolder names

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
<p>The Get Subfolder Names transform gets subfolder names from a directory.</p>
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

### Folder tab

| Option                        | Description                                                    |
| ----------------------------- | -------------------------------------------------------------- |
| Transform name                | Name of this transform as it appears in the pipeline workspace |
| Accept foldername from field? | Allows a foldername to be passed as a field.                   |
| Foldername field              | The field which contains the folder name.                      |
| Selected directories          | The directories from which to get the subfolders.              |
| Browse                        | Uses the local file browser to get a path.                     |
| Add                           | Adds the path defined in the Directory field.                  |
| Delete                        | Deletes the path                                               |
| Edit                          | Change the path                                                |

</div>

<div class="sect2">

### Settings tab

| Option                    | Description                                      |
| ------------------------- | ------------------------------------------------ |
| Include rownum in output? | Allows the row number to be added to the output. |
| Rownum fieldname          | The field which contains the row number.         |
| Limit                     | Limits the output rows.                          |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:21 +0200

</div>

</div>

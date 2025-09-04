<div id="header">

# <span class="image image-doc-icon">![File Metadata transform Icon](../assets/images/transforms/icons/filemetadata.svg)</span> File Metadata

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
<p>The File Metadata transform scans a file to determine its metadata structure or layout.</p>
</div>
<div class="paragraph">
<p>Use this transforms in situations where you need to read a structured text file (e.g. CSV, TSV) when you don’t know the exact layout in advance.</p>
</div>
<div class="paragraph">
<p>The information provided in this file can be used to actually read the file later, e.g. through metadata injection.</p>
</div>
<div class="paragraph">
<p>The layout detected depends on the number of rows scanned.</p>
</div>
<div class="paragraph">
<p>For example, if the first 100 rows of a file are scanned and the first field is detected as an integer, there is a possibility this field contains alphanumerical characters in later rows. Using 0 rows for 'limit scanned rows' is a way to make sure the entire file is scanned and the layout is detected correctly, even though this may be time consuming or even impossible for large files.</p>
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

| Option               | Description                                                                                                  |
| -------------------- | ------------------------------------------------------------------------------------------------------------ |
| Transform name       | The name for this transform                                                                                  |
| Filename             | The filename to scan for metadata                                                                            |
| Filename in a field? | Enable to specify the file name(s) in a field in the input stream                                            |
| Filename field       | When the previous option is enabled, you can specify the field that will contain the filename(s) at runtime. |
| Limit scanned rows   | The number of rows to limit the scan to (default 10,000). Use 0 rows to scan the entire file.                |
| Fallback charset     | Charset to use while scanning the file                                                                       |
| Delimiter candidates | List of delimiters to try while detecting the file layout. Tab, semicolon, comma are provided by default.    |
| Enclosure candidates | List of delimiters to try while detecting the file layout. Double and single quote are provided by default.  |

</div>

</div>

<div class="sect1">

## Output Fields

<div class="sectionbody">

<div class="paragraph">

The fields returned by this transform are

</div>

<div class="ulist">

  - charset

  - delimiter

  - field\_count

  - skip\_header\_lines

  - skip\_footer\_lines

  - header\_line\_present

  - name

  - type

  - length

  - precision

  - mask

  - decimal\_symbol

  - grouping\_symbol

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:14 +0200

</div>

</div>

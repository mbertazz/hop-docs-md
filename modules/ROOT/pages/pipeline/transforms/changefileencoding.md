<div id="header">

# <span class="image image-doc-icon">![Change file encoding transform Icon](../assets/images/transforms/icons/changefileencoding.svg)</span> Change file encoding

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
<p>The Change File Encoding transform changes a text file from one encoding to another.</p>
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

<div class="ulist">

  - Transform name : the name of the transform, unique in a pipeline

  - Source file
    
    <div class="ulist">
    
      - Filename field : the name of the input field which will carry the file names at runtime
    
      - Source encoding: the encoding of the text files
    
      - Add source filename to the result filenames? : Check this if you want to add the source file(s) automatically to the files list of the result of the pipeline.
    
    </div>

  - Target file
    
    <div class="ulist">
    
      - Target filename field: the name of the input field which will contain the target (output) file name at runtime
    
      - Create parent folder: checking this field automatically creates the output folder specified in the target filename field.
    
      - Target encoding: you can select the target encoding here
    
      - Add target filename to the result filenames? : Check this if you want to add the target file(s) automatically to the files list of the result of the pipeline.
    
    </div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:55 +0200

</div>

</div>

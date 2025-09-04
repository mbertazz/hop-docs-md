<div id="header">

# <span class="image image-doc-icon">![Token Replacement transform Icon](../assets/images/transforms/icons/token.svg)</span> Token Replacement

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
<p>The Token Replacement transform replaces tokens in an input string or file.</p>
</div>
<div class="paragraph">
<p>The transform can then output this data either to a file or a field on the stream.</p>
</div>
<div class="paragraph">
<p>A token contains a start string, a name, and an end string.</p>
</div>
<div class="paragraph">
<p>For example ${my_token} could be a token.</p>
</div>
<div class="paragraph">
<p>The start string, and end string are configurable and can be any series of characters.</p>
</div>
<div class="paragraph">
<p>When replacing tokens in a file, this transform reads the entire file. It does not operate on a single line at a time. When replacing tokens in a file it is a best practice to output to a file also to prevent Hop from having to read the entire file into memory.</p>
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

### Input Tab

<div class="ulist">

  - Input Type - Where to read the field to do the token replacement from. Either text, field, or file.

  - Input Type Text
    
    <div class="ulist">
    
      - Input Text - The text to token replace
    
    </div>

  - Input Type Field
    
    <div class="ulist">
    
      - Input Field - The input field to token replace
    
    </div>

  - Input Type File
    
    <div class="ulist">
    
      - Input filename - The name of the file to token replace
    
      - Filename is in field?
        
        <div class="ulist">
        
          - Is the name of the file to token replace in a field?
        
        </div>
    
      - Input filename field - The field the name of the file is in.
    
      - Add Input filename to result?
        
        <div class="ulist">
        
          - Add the input filename(s) to the result files list.
        
        </div>
    
    </div>

</div>

</div>

<div class="sect2">

### Output Tab

<div class="ulist">

  - Output Type - Where to put the token replaced string. Either field or file.

  - Output Type Field
    
    <div class="ulist">
    
      - Output field name - The name of the field to put the token replaced string in.
    
    </div>

  - Output Type File
    
    <div class="ulist">
    
      - Output filename - The name of the file to write to.
    
      - Filename is in field?
        
        <div class="ulist">
        
          - Is the name of the output file in a field?
        
        </div>
    
      - Output filename field - The name of the field the output filename is in.
    
      - Append output file?
        
        <div class="ulist">
        
          - If the output file already exists should it be appended to. If not checked, Apache Hop will overwrite the file if it exists.
        
        </div>
    
      - Create parent folder?
        
        <div class="ulist">
        
          - Should Apache Hop create the parent folder?
        
        </div>
    
      - Output format - The format of the new line delimiter for the output file.
    
      - Output encoding - The character encoding to use when writing the file.
    
      - Split every - Split the output file into a new file every n rows.
    
      - Include copynr in filename?
        
        <div class="ulist">
        
          - Should the transform’s copy number be included in the output filename?
        
        </div>
    
      - Include partition nr in filename?
        
        <div class="ulist">
        
          - Should the partition number be included in the output filename?
        
        </div>
    
      - Include date in filename?
        
        <div class="ulist">
        
          - Should the curren date be included in the output filename?
        
        </div>
    
      - Include time in filename?
        
        <div class="ulist">
        
          - Should the current time be included in the output filename?
        
        </div>
    
      - Specify date format?
        
        <div class="ulist">
        
          - Do you want to specify the date format to include in the output filename?
        
        </div>
    
      - Date time format - The date/time format to include in the output filename.
    
      - Add output filenames to result?
        
        <div class="ulist">
        
          - Add the output filename(s) to the result files list.
        
        </div>
    
    </div>

</div>

</div>

<div class="sect2">

### Tokens Tab

<div class="ulist">

  - Token start string - The string that indicates the start of a token.

  - Token end string - The string that indicates the end of a token. Everything between the token start string and the token end string is the token name.

  - Stream name - The name of the field on the stream containing the value to replace the token with.

  - Token name - The name of the token to replace.

  - Get Fields button - Gets the list of input fields, and tries to map them to an Avro field by an exact name match.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:19 +0200

</div>

</div>

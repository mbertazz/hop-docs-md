<div id="header">

# <span class="image image-doc-icon">![Snowflake Bulk Loader transform Icon](../assets/images/transforms/icons/snowflakebulkloader.svg)</span> Snowflake Bulk Loader

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
<p>The Snowflake Bulk Loader transform utilizes the Snowflake Copy command to load data as opposed to sending individual insert statements through the Table Output transform. It performs this bulk load as a 3 step process:</p>
</div>
<div class="ulist">
<ul>
<li><p>Write the data to local temp files.</p></li>
<li><p>Run a put statement to copy the local files to a Snowflake stage.</p></li>
<li><p>Run a copy command to bulk load the data from the Snowflake stage to a table.</p></li>
</ul>
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

### Bulk loader tab

<div class="ulist">

  - **Connection**: The database connection to use when bulk loading

  - **Schema**: (Optional) The schema containing the table being loaded.

  - **Table name**: The name of the table being loaded.

  - **Staging location type**: The type of Snowflake stage to use to store the files.
    
    <div class="ulist">
    
      - **User Location**: Uses the user’s home directory to store the files being loaded.
    
      - **Table Location**: Uses the table’s internal stage to store the files being loaded.
    
      - **Internal Stage**: Use an already created internal stage tos tore the files being loaded.
    
    </div>

  - **Internal Stage Name**: (When Staging location type = Internal stage) The name of the internal stage to use.

  - **Work directory**: The local work directory to store temporary files before they are loaded to snowflake.

  - **On Error**: (Abort, Skip File, Skip File Percent, Continue) The behavior when errors are encountered on a load.

  - **Error limit**: (When On Error = Skip File or Skip File Percent) The error limit before the file should be skipped. If empty or 0 the file will be skipped on the first error.

  - **Split load every …​ rows**: Breaking the temp files into multiple smaller files will allow Snowflake to perform the bulk load in parallel, thus improving performance. This is the number of rows each file should contain.

  - **Remove files after load**: (Y/N) Should the files be removed from the Snowflake stage after the load? You also need to set variable `SNOWFLAKE_DEBUG_MODE` to `true` to keep the files.

</div>

</div>

<div class="sect2">

### Data type tab

<div class="ulist">

  - **Data type**: The type of the data being bulk loaded.
    
    <div class="ulist">
    
      - **CSV**:
    
      - **Trim whitespace**: (Y/N) Should any whitespace around field values be trimmed when loading Snowflake.
    
      - **Null if**: A comma delimited list of strings that should be converted to null when loading Snowflake. The strings do not need to be quoted.
    
      - **Error on column count mismatch**: If the number of columns in the table, do not match the number of columns output do not load the line and throw an error.
    
      - **JSON**: The data being loaded is received on the input stream in a single field containing JSON.
    
      - **Remove nulls**: Should nulls in the JSON be removed thus lowering the amount of storage required.
    
      - **Ignore UTF8 errors?**: Ignore any UTF8 character encoding errors when parsing the JSON.
    
      - **Allow duplicate elements**: Allow the JSON to contain the same element multiple times. If the same element occurs multiple times, the last value for the element will be stored in Snowflake.
    
      - **Parse octal numbers**: Parse any numbers stored in the JSON as Octal instead of decimal.
    
    </div>

</div>

</div>

<div class="sect2">

### Fields tab

<div class="ulist">

  - **Data type CSV**
    
    <div class="ulist">
    
      - **Specifying fields**: (Y/N) Is the mapping of fields from Hop to Snowflake being explicitly specified. If the mapping of the fields is not being specified, the order of the input fields to this transform must match the order of the fields in the table.
    
      - **Field mapping table**: (When specifying fields is checked.) Fields do not have to be in any order.
    
      - **Stream field**: The field on the input stream
    
      - **Table field**: The field in the table to map the input field to.
    
      - **Get fields button**: Gets the fields from the input stream, and maps them to a field of the same name in the table.
    
      - **Enter field mapping button**: Opens a window to help users specify the mapping of input fields to table fields.
    
    </div>

  - **Data type JSON**
    
    <div class="ulist">
    
      - **JSON field**: The field on the input stream containing the JSON data to be loaded.
    
    </div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:08 +0200

</div>

</div>

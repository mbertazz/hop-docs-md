<div id="header">

# <span class="image image-doc-icon">![CSV File Input transform Icon](../assets/images/transforms/icons/textfileinput.svg)</span> CSV File Input

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
<p>The CSV File Input transform reads data from a delimited file. You can choose to use a <a href="metadata-types/static-schema-definition.V5BTA0j1PJ">Schema Definition</a> or to define the required fields' layout manually.</p>
</div>
<div class="paragraph">
<p>The CSV label for this transform is a misnomer because you can define whatever separator you want to use, such as pipes, tabs, and semicolons; you are not constrained to using commas. Internal processing allows this transform to process data quickly. Options for this transform are a subset of the Text File Input transform.</p>
</div>
<div class="paragraph">
<p>This transform has fewer overall options than the general Text File Input transform, but it has a few advantages over it:</p>
</div>
<div class="ulist">
<ul>
<li><p>NIO — Native system calls for reading the file means faster performance, but it is limited to only local files currently. No VFS support.</p></li>
<li><p>Parallel running — If you configure this transform to run in multiple copies or in clustered mode, and you enable parallel running, each copy will read a separate block of a single file allowing you to distribute the file reading to several threads or even several slave nodes in a clustered pipeline.</p></li>
<li><p>Lazy conversion — If you will be reading many fields from the file and many of those fields will not be manipulate, but merely passed through the pipeline to land in some other text file or a database, lazy conversion can prevent Hop from performing unnecessary work on those fields such as converting them into objects such as strings, dates, or numbers.</p></li>
</ul>
</div>
<div class="paragraph">
<p>For information on valid date and numeric formats used in this transform, view the Date Formatting Table and Number Formatting Table.</p>
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

| Option                                                             | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                                                     | Name of the transform.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Filename **or** the filename field (data from previous transforms) | Specify the name of the CSV file to read from. **or** Select the fieldname that will contain the filename(s) to read from. If this transform receives data from a previous transform, this option is enabled as well as the option to include the filename in the output.                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Delimiter                                                          | Specify the file delimiter character used in the target file. Special characters (e.g. CHAR HEX01) can be set with the format $\[value\], e.g. $\[01\] or $\[6F,FF,00,1F\].                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Enclosure                                                          | Specify the enclosure character used in the target file. Special characters (e.g. CHAR HEX01) can be set with the format $\[value\], e.g. $\[01\] or $\[6F,FF,00,1F\].                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| NIO buffer size                                                    | This is the size of the read buffer. It represents the amount of bytes that is read in one time from disk.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Lazy conversion                                                    | The lazy conversion algorithm will try to avoid unnecessary data type conversions and can result in a significant performance improvements if this is possible. The typical example that comes to mind is reading from a text file and writing back to a text file.                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Header row present?                                                | Enable this option if the target file’s first line contains a header row with column names. If we mistakenly leave this flag set on files that do not have any columns' names in its first row, Hop will set the column’s name the value found on a specific column for its specific position. In case, for that specific position, the column’s value is empty, Hop will set column’s name to EmptyField\_\<n\> where n is the position of the column in the columns' set. **NOTE:** remember also to perform a check on the guessed data types and column’s specifier that was set after the file’s analysis because they could be wrong due to wrong assumptions made by Hop while looking at the sample dataset. |
| Add filename to result                                             | Adds the CSV filename(s) read to the result of this pipeline. A unique list is being kept in memory that can be used in the next workflow action in a workflow, for example in another pipeline.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| The row number field name (optional)                               | The name of the Integer field that will contain the row number in the output of this transform.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Running in parallel?                                               | Check this box if you will have multiple instances of this transform running (transform copies) and if you want each instance to read a separate part of the CSV file(s). When reading multiple files, the total size of all files is taken into consideration to split the workload. In that specific case, make sure that ALL transform copies receive all files that need to be read, otherwise, the parallel algorithm will not work correctly (for obvious reasons). WARNING: For technical reasons, parallel reading of CSV files is only supported on files that don’t have fields with line breaks or carriage returns in them.                                                                              |
| File Encoding                                                      | Specify the encoding of the file being read.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Schema Definition                                                  | Name of the [Schema Definition](metadata-types/static-schema-definition.V5BTA0j1PJ) that we want to reference.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Fields Table                                                       | This table contains an ordered list of fields to be read from the target file.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Preview button                                                     | Click to preview the data coming from the target file.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Get Fields button                                                  | Click to return a list of fields from the target file based on the current settings (i.e. Delimiter, Enclosure, etc.). All fields identified will be added to the Fields Table.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:02 +0200

</div>

</div>

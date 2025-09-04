<div id="header">

# <span class="image image-doc-icon">![JSON Input transform Icon](../assets/images/transforms/icons/JSI.svg)</span> JSON Input

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
<p>The JSON input transform reads data from JSON structures, files, or incoming fields using a JSONPath expression to extract data and output rows.</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_tips">TIPS</h2>
<div class="sectionbody">
<div class="ulist">
<ul>
<li><p>JSONPath expressions can use either dot notation or square bracket notation.</p></li>
<li><p>You can pass a REST request result field onwards without selecting any fields on the Fields tab if needed.</p></li>
</ul>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_examples">Examples</h2>
<div class="sectionbody">
<div class="ulist">
<ul>
<li><p>For example, connect a REST client to a JSON input transform to read JSON into data rows.</p></li>
<li><p>To read nested JSON elements, use a sequence of JSON Input transforms, where the first JSON Input transform reads the nested element as a String field. In the second JSON Input transform, use the <code>Source is from a previous transform</code> option to select the String field you used in the first JSON Input transform to read the information from the nested element.</p></li>
</ul>
</div>
<div class="paragraph">
<p>Check the <code>json-input-nested-elements.hpl</code> sample in the Samples project for an example.</p>
</div>
<div class="paragraph">
<p><strong>Samples (Samples project):</strong></p>
</div>
<div class="ulist">
<ul>
<li><p>json-input-basic.hpl</p></li>
<li><p>json-input-nested-elements.hpl</p></li>
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

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### File Tab

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Source is from a previous transform</p></td>
<td><div class="content">
<div class="paragraph">
<p>Select to retrieve the source from a previously defined field. When selected, the following fields are available:</p>
</div>
<div class="ulist">
<ul>
<li><p>Select field</p></li>
<li><p>Use field as file names</p></li>
<li><p>Read source as URL</p></li>
<li><p>Do not pass field downstream</p></li>
</ul>
</div>
<div class="paragraph">
<p>When this option is cleared, the following fields are available:</p>
</div>
<div class="ulist">
<ul>
<li><p>File or directory</p></li>
<li><p>Regular Expression</p></li>
<li><p>Exclude Regular Expression</p></li>
<li><p>Selected files</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Select field</p></td>
<td><p>Specify the field name to use as a source from a previous transform.</p></td>
</tr>
<tr class="odd">
<td><p>Use field as file names</p></td>
<td><p>Select to indicate the source is a filename.</p></td>
</tr>
<tr class="even">
<td><p>Read source as URL</p></td>
<td><p>Select to indicate if the source should be accessed as a URL.</p></td>
</tr>
<tr class="odd">
<td><p>Do not pass field downstream</p></td>
<td><p>Select to remove the source field from the output stream. This action improves performance and memory utilization with large JSON fields.</p></td>
</tr>
<tr class="even">
<td><p>File or directory</p></td>
<td><div class="content">
<div class="paragraph">
<p>Specify the source location if the source is not defined in a field.</p>
</div>
<div class="ulist">
<ul>
<li><p>Click Browse to navigate to your source file or directory.</p></li>
<li><p>Click Add to include the source in the Selected files table.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Regular expression</p></td>
<td><p>Specify a regular expression to match filenames within a specified directory.</p></td>
</tr>
<tr class="even">
<td><p>Exclude regular expression</p></td>
<td><p>Specify a regular expression to exclude filenames within a specified directory.</p></td>
</tr>
<tr class="odd">
<td><p>File/Directory</p></td>
<td><p>The source location indicated by clicking Add after specifying it in File or directory.</p></td>
</tr>
<tr class="even">
<td><p>Wildcard (RegExp)</p></td>
<td><p>Wildcards as specified in Regular expression.</p></td>
</tr>
<tr class="odd">
<td><p>Exclude wildcard</p></td>
<td><p>Excluded wildcards as specified in Exclude regular expression.</p></td>
</tr>
<tr class="even">
<td><p>Required</p></td>
<td><p>Required source location for input.</p></td>
</tr>
<tr class="odd">
<td><p>Include subfolders</p></td>
<td><p>Whether subfolders are included within the source location.</p></td>
</tr>
<tr class="even">
<td><p>Delete</p></td>
<td><p>Remove a source from the table</p></td>
</tr>
<tr class="odd">
<td><p>Edit</p></td>
<td><p>Remove a source from the table and return it back to the File or directory option.</p></td>
</tr>
<tr class="even">
<td><p>Show filename(s)</p></td>
<td><p>Display the file names of the sources successfully connected to the JSON Input transform.</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Content Tab

<div class="paragraph">

The Content tab contains the following options for configuring which data to retrieve:

</div>

| Option                            | Description                                                                                                                                                                                            |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Ignore empty file                 | Select to skip empty files. When cleared, empty files will cause the process to fail and stop.                                                                                                         |
| Do not raise an error if no files | Select to continue when no files are available to process.                                                                                                                                             |
| Ignore missing path               | Select to continue processing files when an error occurs that (1) no fields match the JSON path or (2) that all the values are null. When cleared, no further rows are processed when an error occurs. |
| Default path leaf to null         | Select to return a null value for missing paths.                                                                                                                                                       |
| Limit                             | Specify a limit on the number of records generated from the tra. Results are not limited when set to zero.                                                                                             |
| Include filename in output        | Select to add a string field with the filename in the result.                                                                                                                                          |
| Rownum in output                  | Select to add an integer field with the row number in the result.                                                                                                                                      |
| Add filenames to result           | Select to add processed files to the result file list.                                                                                                                                                 |

</div>

<div class="sect2">

### Fields Tab

<div class="paragraph">

The Fields tab displays field definitions to extract values from the JSON structure. The table in this tab contain the following columns:

</div>

| Option    | Description                                                                                                                                                                                                                                                                   |
| --------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Name      | Name of field that maps to the corresponding field in the JSON input stream.                                                                                                                                                                                                  |
| Path      | Complete path of the field name in the JSON input stream. Hop uses the library JayWay for JSON Path expressions and documentation is at <https://github.com/json-path/JsonPath>. All records can be retrieved by adding the asterisk \* in the path. For example, $.mydata.\* |
| Type      | Data type of the input field.                                                                                                                                                                                                                                                 |
| Format    | An optional mask for converting the format of the original field. See Common Formats for information on common valid date and numeric formats you can use in this transform.                                                                                                  |
| Length    | Length of the field.                                                                                                                                                                                                                                                          |
| Precision | Number of floating point digits for number-type fields.                                                                                                                                                                                                                       |
| Currency  | Currency symbol ($ or €, for example).                                                                                                                                                                                                                                        |
| Decimal   | A decimal point can be a . (5,000.00 for example) or , (5.000,00 for example).                                                                                                                                                                                                |
| Group     | A grouping can be a , (10,000.00 for example) or . (5.000,00 for example).                                                                                                                                                                                                    |
| Trim type | The trim method to apply to a string.                                                                                                                                                                                                                                         |
| Repeat    | The corresponding value from the last row repeated if a row is empty.                                                                                                                                                                                                         |

<div class="paragraph">

**Select fields**

</div>

<div class="paragraph">

Click Select Fields button in the Fields tab to open the Select Fields window. Select the checkbox next to each field in your source file that you want include in your output. All the fields selected in this transform are added to the table. You can search for a field name by entering the field name in the Search box.

</div>

<div class="paragraph">

**Select fields from snippet**

</div>

<div class="paragraph">

Click Select fields from snippet button and paste the entire JSON text and it will populate the Name, Path, Type columns in the Fields tab. Example: This is useful when copying JSON from a previous REST client’s output result.

</div>

<div class="paragraph">

**Dates and Timestamps**

</div>

<div class="paragraph">

For Hop types of Date and Timestamp, use the Format column to specify the incoming format. E.g. for Date: yyyy-MM-dd. You can either select a format from the dropdown or enter format text directly. Hop uses SimpleDateFormat (Java Platform SE 8) at <https://docs.oracle.com/javase/8/docs/api/java/text/SimpleDateFormat.html>

</div>

<div class="paragraph">

**Examples of Timestamp formats:**

</div>

<div class="ulist">

  - Format: yyyy-MM-dd’T’HH:mm:ss.SSSZ and Result: 2021-10-26T20:51:43.795+0000

  - Format: 2024-04-22T00:00:00.000Z and Result: 2024-04-22T00:00:00.000Z

</div>

<div class="paragraph">

**Regex**

</div>

<div class="paragraph">

You can use Regex in the Path expression.

</div>

<div class="paragraph">

**Example Path to filter on those that start with the letter 'a':** $.data\[?(@=\~/a.\*/i)\]

</div>

</div>

<div class="sect2">

### Additional output fields tab

<div class="paragraph">

The Additional output fields tab contains the following options to specify additional information about the file to process:

</div>

| Option                  | Description                                                                                  |
| ----------------------- | -------------------------------------------------------------------------------------------- |
| Short filename field    | Specify the field that contains the filename without path information but with an extension. |
| Extension field         | Specify the field that contains the extension of the filename.                               |
| Path field              | Specify the field that contains the path in operating system format.                         |
| Size field              | Specify the field that contains the size of the data.                                        |
| Is hidden field         | Specify the field indicating if the file is hidden or not (Boolean).                         |
| Last modification field | Specify the field indicating the date of the last time the file was modified.                |
| Uri field               | Specify the field that contains the URI.                                                     |
| Root uri field          | Specify the field that contains only the root part of the URI.                               |

</div>

</div>

</div>

<div class="sect1">

## Considerations

<div class="sectionbody">

<div class="paragraph">

While processing input JSON files, if a JSON record has one or more field containing null values, by default the null values will be present in the transform output.

</div>

<div class="paragraph">

For example if we have a JSON file like this

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
  "persons" : [
    {
      "id": "1",
      "name": "name 1"
    },
    {
      "id": "2",
      "name": "name 2"
    },
    {
      "id": "3",
      "name": null
    },
    {
      "id": "4",
      "name": "name 4"
    }
  ]
}
```

</div>

</div>

<div class="paragraph">

When extracting the fields id and Name using the following field definition:

</div>

| Field name | Json Path          |
| ---------- | ------------------ |
| id         | `$.persons.*.id`   |
| Name       | `$.persons.*.name` |

<div class="paragraph">

given the default behavior, the output will be

</div>

<div class="listingblock">

<div class="content">

``` highlight
id;Name
1;Name 1
2;Name 2
3;null
4;Name 4
```

</div>

</div>

<div class="paragraph">

Now let’s only select the `name` field and see what happens

</div>

<div class="listingblock">

<div class="content">

``` highlight
Name
Name 1
Name 2
Name 4
```

</div>

</div>

<div class="paragraph">

You will notice that you only have 3 rowsets returned in this case ( the null line is omited from the result)

</div>

<div class="paragraph">

To change Hop’s behavior regarding null values in JSON files, so that null values will not be considered in JSON output, you change the `HOP_JSON_INCLUDE_NULLS` configuration variable and set it’s value to N

</div>

<div class="listingblock">

<div class="content">

``` highlight
HOP_JSON_INPUT_INCLUDE_NULLS = N
```

</div>

</div>

<div class="paragraph">

After restaring Hop, when we run the pipeline once again you will have 3 rows resulting because the the null values will be omitted.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:30 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![JavaScript transform Icon](../assets/images/transforms/icons/javascript.svg)</span> JavaScript

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
<p>The JavaScript transform provides a user interface for building JavaScript expressions that you can use to modify your data. The code you type in the script area is executed once for each input row.</p>
</div>
<div class="admonitionblock tip">
<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>Variables won’t be usable or testable until you create fields. Click the “Get variables” button to convert script variables into fields.</td>
</tr>
</tbody>
</table>
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

## Usage

<div class="sectionbody">

<div class="paragraph">

The JavaScript transform provides a user interface for building JavaScript expressions that you can use to modify your data. The code you type in the script area is executed once for each input row.

</div>

<div class="paragraph">

The transform allows multiple scripts in a single transform instance.

</div>

<div class="paragraph">

The Javascript transform is not an input transform and therefore requires an input stream from the pipeline.

</div>

<div class="paragraph">

Minimizing scripting is very important to keep your data integration solutions maintainable. Try to avoid using JavaScript as much as possible.

</div>

<div class="paragraph">

<span class="image">![Javascript Transform Dialog](../assets/images/transforms/javascript-dialog.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Troubleshooting

<div class="sectionbody">

<div class="ulist">

  - Hop uses an older version of JavaScript (Rhino engine) which is ECMA 5 and a bit of ECMA 6. See Rhino ES2015/ES6, ES2016 and ES2017 support at <https://mozilla.github.io/rhino/compat/engines.html>

  - The Get variables button may not always work, so enter variables manually.

  - The JavaScript transform runs better with less whitespace and less line continuations, especially when using GraphQL. Avoid multi-line expressions or statements.

  - Ensure you select the correct Type for the outgoing JavaScript fields.

</div>

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="paragraph">

E.g. JavasScript to create 4 new fields:

</div>

<div class="listingblock">

<div class="content">

``` highlight
var myVar = incomingFieldFromHop;
var myTestString = "my test";
var myDate = str2date("2020-12-31", "yyyy-MM-dd");
var myDateTime = new Date("2023-10-01T01:40:26.210");
```

</div>

</div>

<div class="paragraph">

E.g. JavaScript to flatten JSON keys:

</div>

<div class="listingblock">

<div class="content">

``` highlight
//var input_json = {
//    "c-102": "AIDS Healthcare",
//    "c-105": "AIDS Healthcare Direct",
//    "c-75": "Allied Physicians (ALIP)",
//    "c-59": "Asheville Endocrinology"};

var input_json = JSON.parse(incomingJSONFromHop);
var output_json = [];

for (var key in input_json) {
    var value = input_json[key];
    output_json.push({field1: key, field2: value });
}

var flattened_json = JSON.stringify(output_json);
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Javascript functions Panel

<div class="sectionbody">

<div class="paragraph">

<span class="image">![Javascript Functions Panel](../assets/images/transforms/javascript-functions.png)</span>

</div>

<div class="paragraph">

The Javascript functions panel contains a tree view of scripts, constants, functions, input fields, and output fields as described below.

</div>

<div class="paragraph">

Double click on any of the scripts, constants, functions or fields to add them to the script.

</div>

<div class="dlist">

  - Transform Scripts  
    Scripts you have created in this transform.

  - Transform Constants  
    A number of pre-defined, static constants that control what happens to the data rows.  
    To use these constants, you must first set a pipeline\_Status variable to CONTINUE\_PIPELINE at the beginning of the script, so that the variable assignment is made to the first row being processed. Otherwise, any subsequent assignments to the pipeline\_Status variable are ignored.  
    The available constants are:
    
    <div class="ulist">
    
      - SKIP\_PIPELINE: Excludes the current row from the output row set and continues processing on the next row.
    
      - ERROR\_PIPELINE: Excludes the current row from the output row set, generates an error, and any remaining rows are not processed.
    
      - CONTINUE\_PIPELINE: Includes the current row in the output row set.
    
      - ABORT\_PIPELINE: Excludes the current row from the output row set, and any remaining rows are not processed, but does not generate an error.
    
    </div>

  - Transform Functions  
    String, numeric, date, logic, special, and file functions you can use in scripts. These included functions are implemented in Java and execute faster than JavaScript functions. Each function has a sample script demonstrating its use. Double-click the function to add it to the Javascript pane. Right-click and choose Sample to add the sample to the Javascript pane.

  - Input Fields  
    Input fields for the transform.

  - Output Fields  
    Output fields for the transform.

</div>

</div>

</div>

<div class="sect1">

## Javascript Panel

<div class="sectionbody">

<div class="paragraph">

The Javascript pane is the editing area for writing your code. You can insert constants, functions, input fields, and output fields from the Javascript functions panel on the left by double-clicking the node you want to insert or by using drag-and-drop to place the object onto the Javascript panel.

</div>

<div class="paragraph">

The position at the bottom of the Javascript panel displays the line number and position of the cursor.

</div>

<div class="paragraph">

The `Optimization level` selects the level of JavaScript optimization. The values are:

</div>

<div class="ulist">

  - 1: JavaScript runs in interpreted mode.

  - 0: No optimizations are performed.

  - 1-9: All optimizations are performed. 9 performs the most optimization with faster script execution, but compiles slower. The default is 9.

</div>

</div>

</div>

<div class="sect1">

## Script types

<div class="sectionbody">

<div class="paragraph">

<span class="image">![Javascript transform right click menu](../assets/images/transforms/javascript-script-right-click.png)</span>

</div>

<div class="paragraph">

You can right-click a tab in the Javascript panel to open a context menu with the following commands:

</div>

<div class="ulist">

  - **Add new** – Add a new script tab.

  - **Add copy** – Add a copy of the existing script in a new tab.

  - **Set Transform Script** - Specify the script to execute for each incoming row. Only one tab can be set as a transform script. The first tab is a transform script by default.

  - **Set Start Script** - Specify the script to execute before processing the first row.

  - **Set End Script** – Specify the script to execute after the last row has been processed.

  - **Remove Script Type** - Specify to not execute the script. The script tab is not removed. To remove a script tab, click the Close button (the red “X”) and choose Yes to delete the script tab.

</div>

<div class="paragraph">

The icon for the script type displays on the tab to denote the type of script on the tab. To rename a script tab, right-click the tab name in the Transform Scripts section of the Javascript functions panel, choose Rename, and enter the new name.

</div>

</div>

</div>

<div class="sect1">

## Fields table

<div class="sectionbody">

<div class="paragraph">

The Fields table contains a list of variables from your script, and enables you to add metadata to the fields, like descriptive names.

</div>

| Field                                    | Description                                                                                                                                 |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| Fieldname                                | Specify the name of the incoming field.                                                                                                     |
| Rename to                                | Specify a new name for the incoming field.                                                                                                  |
| Type                                     | Specify a data type for the output field.                                                                                                   |
| Length                                   | Specify the length of the output field.                                                                                                     |
| Precision                                | Specify the precision value of the output field.                                                                                            |
| Replace value ‘Fieldname’ or ‘Rename to’ | Specify whether to replace the value of the selected field with another value or to rename a field. The values are Y (Yes) and N (No).      |
| Get variables                            | Retrieve a list of Javascript variables from your script. You can manually add variables as the ‘Get variables’ button may not always work. |
| Test Script                              | Test the syntax of your script, and displays the Generate Rows dialog box with a set of rows for testing.                                   |

</div>

</div>

<div class="sect1">

## Javascript Internal API Objects

<div class="sectionbody">

<div class="paragraph">

You can use the following internal API objects (for reference see the classes in the source):

</div>

<div class="ulist">

  - ***PipelineName***: A String holding the pipeline name

  - ***transform***: the actual transforms instance for this transform (org.apache.hop.pipeline.transforms.javascript.ScriptValues)

  - **rowMeta**: The actual instance of org.apache.hop.core.row.IRowMeta

  - **row**: The actual instance of the data Object\[\]

</div>

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="sect2">

### Check for the Existence of Fields in a row:

<div class="listingblock">

<div class="content">

``` highlight
var idx = getInputRowMeta().indexOfValue("lookup");
if ( idx < 0 )
{
   var lookupValue = 0;
}
else
{
   var lookupValue = row[idx];
}
```

</div>

</div>

</div>

<div class="sect2">

### Add a New Field in a Row

<div class="paragraph">

Fields must be added to the rows in the same order to keep the structure of the row coherent.

</div>

<div class="paragraph">

To add a field, define it as var in the Javascript pane, and add it as a field in the Fields table.

</div>

</div>

<div class="sect2">

### Numeric values

<div class="paragraph">

Most values that are assigned in JavaScript are floating point values by default, even if you think you have assigned an integer value. If you are having trouble using == or switch/case on values that you know are integers, use the following constructs:

</div>

<div class="listingblock">

<div class="content">

``` highlight
switch(parseInt(valuename))
{
case 1:
case 2:
case 3:
 strvalueswitch = "one, two, three";
 break;
case 4:
 strvalueswitch = "four";
 break;
default:
 strvalueswitch = "five";
}
```

</div>

</div>

</div>

<div class="sect2">

### Filter Rows

<div class="paragraph">

To filter rows (remove the rows from the output for example) set the pipeline\_Status variable as follows:

</div>

<div class="listingblock">

<div class="content">

``` highlight
pipeline_Status = CONTINUE_PIPELINE
if (/* your condition here */) pipeline_Status = SKIP_PIPELINE
```

</div>

</div>

<div class="paragraph">

All rows matching the specified condition are removed from the output.

</div>

</div>

<div class="sect2">

### Use field names with spaces

<div class="paragraph">

Javascript does not allow you to create variables with spaces in the variable name. However, you *can* work with field names that contain spaces.

</div>

<div class="paragraph">

For example, to replace all spaces with underscores in a field `field name with spaces`, use the syntax `this["field name with spaces"]`.

</div>

<div class="paragraph">

The `this` keyword is required. Without it, Javascript will use `field name with spaces` as a character array.

</div>

<div class="listingblock">

<div class="content">

``` highlight
var new_field = replace(this["field name with spaces"], " ", "_");
```

</div>

</div>

</div>

<div class="sect2">

### Produce a custom JSON including nested arrays

<div class="paragraph">

You can create your own custom json structure with a javascript similar to this one. For this example you need to create two input fields `short_filename` and `myField1` i.e. by using a data grid transform. The resulting JSON "myBodyJson" can then be used i.e. in a REST Client transform. For a POST request just map this "myBodyJson" to "Body field".

</div>

<div class="listingblock">

<div class="content">

``` highlight
var json = {};
json.sourceProperties = {};
json.sourceProperties.properties = [];

json.filename = short_filename;
json.sourceCategory = "CategoryABC";

json.sourceProperties.properties.push({"key": "exampleArr", "values": [1000]})
json.sourceProperties.properties.push({"key": "exampleString", "values": "Some Testingtext"})
json.sourceProperties.properties.push({"key": "exampleUsingInputField", "values": myField1})

var myBodyJson = JSON.stringify(json);
```

</div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:29 +0200

</div>

</div>

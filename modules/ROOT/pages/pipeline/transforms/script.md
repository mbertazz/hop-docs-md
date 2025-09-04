<div id="header">

# <span class="image image-doc-icon">![Script transform Icon](../assets/images/transforms/icons/script.svg)</span> Script

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
<p>The Script transform allows you to write code in any language supported by the <a href="https://en.wikipedia.org/wiki/Scripting_for_the_Java_Platform">JSR-223</a> standard.</p>
</div>
<div class="paragraph">
<p>By default, the Hop project ships with the following language support:</p>
</div>
<div class="ulist">
<ul>
<li><p><a href="https://groovy-lang.org/">Groovy</a></p></li>
<li><p><a href="https://www.python.org/">Python</a> (<a href="https://www.jython.org/">Jython</a>)</p></li>
</ul>
</div>
<div class="admonitionblock warning">
<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Warning
</div></td>
<td>ECMAScript (JavaScript as part of the JVM) was removed from the JVM with Java 17. You can still add it in Apache Hop 2.10 and later as documented in the <a href="#_adding_scripting_languages">Adding Scripting Languages</a> section.</td>
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

## Options

<div class="sectionbody">

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
<td><p>Transform name</p></td>
<td><p>Name of the transform this name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Script engine</p></td>
<td><p>You can choose any of the discovered JSR-223 scripting engines from the drop-down list.</p></td>
</tr>
<tr class="odd">
<td><p>Script</p></td>
<td><p>You can add one or more scripts. There are different types of scripts which you can change by right-clicking on the script tab.</p>
<p><code>Transform</code> : The script will be executed after every row that is read. <code>Start</code>: The script will be executed once at the start of the transform. <code>End</code>: The script will be executed after the last row was read</p></td>
</tr>
<tr class="even">
<td><p>Fields</p></td>
<td><p>Here you can specify the fields to retrieve from the context of the transform script after every row.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Variable bindings

<div class="sectionbody">

<div class="paragraph">

To allow you to work with the input field values or the surrounding Java ecosystem Hop exposes a bunch of variable bindings.

</div>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Variable</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>input</p></td>
<td><p>All the input fields under their own name. Please note that certain scripting languages have restrictions on the allowed names of variables. Make sure to rename inappropriate field names with a &quot;Select Values&quot; transform.</p></td>
</tr>
<tr class="even">
<td><p><code>transform</code></p></td>
<td><p>This is a reference to the parent transform class <a href="https://github.com/apache/hop/blob/master/plugins/transforms/abort/src/main/java/org/apache/hop/pipeline/transforms/script/Script.java">Script</a>. You can use this to log certain important events or write extra output rows</p></td>
</tr>
<tr class="odd">
<td><p><code>pipeline_status</code></p></td>
<td><p>This special variable can be set to any of the following values:</p>
<p><code>CONTINUE_PIPELINE</code>: Process the current row and generate output (the default value) <code>SKIP_PIPELINE</code> : Do not write an output row <code>STOP_PIPELINE</code> : Cause the pipeline to stop processing rows <code>ERROR_PIPELINE</code>: Cause the pipeline to abort with an error</p></td>
</tr>
<tr class="even">
<td><p><code>rowNumber</code></p></td>
<td><p>This is the current row number, starting from 1.</p></td>
</tr>
<tr class="odd">
<td><p><code>rowMeta</code></p></td>
<td><p>The input row metadata. It’s a list of value metadata.</p></td>
</tr>
<tr class="even">
<td><p><code>row</code></p></td>
<td><p>An object array containing the current set of field values. Make sure to address these values using <code>rowMeta</code> to make sure the appropriate data conversions take place.</p>
<p>For example, use <code>rowMeta.getString(row, 0)</code> to get the first String value from the input row.</p></td>
</tr>
<tr class="odd">
<td><p><code>previousRow</code></p></td>
<td><p>The previous row or null if <code>row</code> is the first input row.</p></td>
</tr>
<tr class="even">
<td><p><code>transformName</code></p></td>
<td><p>The name of the transform</p></td>
</tr>
<tr class="odd">
<td><p><code>pipelineName</code></p></td>
<td><p>The name of the pipeline</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Generating rows

<div class="sectionbody">

<div class="paragraph">

Below are scripts that generate 10 output rows using a simple loop in 3 different scripting engines. This happens 3 times with identical output. For the 3 examples you need to define 2 output fields:

</div>

<div class="ulist">

  - `id` : an Integer

  - `name` : a String

</div>

<div class="sect2">

### ECMAScript

<div class="listingblock">

<div class="content">

``` highlight
var Long = Packages.java.lang.Long;
var RowDataUtil = Packages.org.apache.hop.core.row.RowDataUtil;

var START=100000;
var COUNT=10;
var END=START+COUNT;
var id=START;

for (var id=START;id<END;id++) {
  var outputRow = RowDataUtil.allocateRowData(rowMeta.size());
  outputRow[0] = new Long(id);
  outputRow[1] = "Apache Hop "+id;
  transform.putRow(outputRowMeta, outputRow);
}

pipeline_status=SKIP_PIPELINE;
```

</div>

</div>

</div>

<div class="sect2">

### Groovy

<div class="listingblock">

<div class="content">

``` highlight
def COUNT=10;

id = 100000L;
(1..COUNT).each {
 outputRow = RowDataUtil.allocateRowData(rowMeta.size());
 outputRow[0] = id;
 outputRow[1] = "Apache Hop "+id
 transform.putRow(outputRowMeta, outputRow);

 id++;
}

pipeline_status=SKIP_PIPELINE;
```

</div>

</div>

</div>

<div class="sect2">

### Python

<div class="listingblock">

<div class="content">

``` highlight
import java.lang.Long as Long

START=100000
COUNT=10
END=START+COUNT
id=START

for id in range(START,END):
    outputRow = RowDataUtil.allocateRowData(rowMeta.size())
    outputRow[0] = Long(id)
    outputRow[1] = "Apache Hop "+str(id)
    transform.putRow(outputRowMeta, outputRow)

pipeline_status=SKIP_PIPELINE
```

</div>

</div>

</div>

</div>

</div>

<div class="sect1">

## Aggregating rows

<div class="sectionbody">

<div class="paragraph">

Below are scripts that aggregate rows over different groups. The data is sorted by the field `group` and contains a `value` field which is summed up into field `sum`. In the start scripts we define variables `sum=0` and `previousGroup=""`.

</div>

<div class="paragraph">

For the 3 examples you need to define 1 output field:

</div>

<div class="ulist">

  - `sum` : an Integer

</div>

<div class="sect2">

### ECMAScript

<div class="listingblock">

<div class="content">

``` highlight
if (group!==previousGroup) {
  sum=value;
  previousGroup=group;
} else {
  sum+=value;
}

if (nextGroup==null) {
  pipeline_status=CONTINUE_PIPELINE;
} else {
  pipeline_status=SKIP_PIPELINE;
}
```

</div>

</div>

</div>

<div class="sect2">

### Groovy

<div class="listingblock">

<div class="content">

``` highlight
if (!group.equalsIgnoreCase(previousGroup)) {
  sum=value;
  previousGroup=group;
} else {
  sum+=value;
}

if (nextGroup==null) {
  pipeline_status=CONTINUE_PIPELINE;
} else {
  pipeline_status=SKIP_PIPELINE;
}
```

</div>

</div>

</div>

<div class="sect2">

### Python

<div class="listingblock">

<div class="content">

``` highlight
if group!=previousGroup:
  sum=value
  previousGroup=group
else:
  sum=sum+value

if nextGroup is None:
  pipeline_status=CONTINUE_PIPELINE
else:
  pipeline_status=SKIP_PIPELINE;
```

</div>

</div>

</div>

</div>

</div>

<div class="sect1">

## Adding scripting languages

<div class="sectionbody">

<div class="paragraph">

You can add additional scripting languages by adding the required libraries to the `plugins/transforms/script/lib` folder.

</div>

<div class="paragraph">

For example, to add support for the Ruby scripting language you need to add the following [JRuby libraries](https://mvnrepository.com/artifact/org.jruby):

</div>

<div class="ulist">

  - `jruby-stdlib-<version>.jar`

  - `jruby-core-<version>.jar`

</div>

<div class="paragraph">

To add Javascript support, download the [Nashorn Core jar](https://repo1.maven.org/maven2/org/openjdk/nashorn/nashorn-core/)

</div>

<div class="ulist">

  - `nashorn-core-15.4.jar`

</div>

<div class="paragraph">

After restarting the Apache Hop GUI you’ll notice that there’s a `ruby` or `Javascript` entry in the `Scripting Engine` dropdown box.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:04 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![Get variables transform Icon](../assets/images/transforms/icons/getvariable.svg)</span> Get variables

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
<p>The Get Variables transform allows you to get the value of a variable and create field(s) from it. You only need to use this transform if you need the variable value in a field.</p>
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
<td>If you need to refer to a previous pipeline’s data row(s) fields, then use a Get rows from result transform.</td>
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

Note that workflow/environment variables are set only once. A pipeline needs to start to get any new variables. A running or sequential or nested (nested pipelines are technically the same pipeline) pipeline can’t fetch new variable values. A pipeline is considered started when a pipeline starts for every row in a pipeline executor.

</div>

<div class="paragraph">

Refer to parameters/variables using the syntax: ${myVariable}, for example from a previous pipeline.

</div>

<div class="paragraph">

**Two ways to pass fields, parameters to variables downstream:**

</div>

<div class="paragraph">

Parameters must be unique per pipeline (case is not a differentiator). The pipeline executor parameter value takes precedence over the pipeline’s properties parameter value. The sending parameter value takes precedence over the default value of the receiving pipeline’s properties parameter.

</div>

<div class="ulist">

  - Use a pipeline executor transform or a Repeat action:
    
    <div class="ulist">
    
      - Send: add fields on the Parameters tab (parameter name can be same as field name) to send.
    
      - Receive: in the immediate downstream pipeline, use Get variables to set variables/fields from Parameters using format: ${myParam}
    
    </div>

  - Edit any upstream pipeline’s properties:
    
    <div class="ulist">
    
      - Send: Add a parameter on the parameters tab of a pipeline’s properties (Edit pipeline icon), and optionally give it a default value. The parameter value can be set in a pipeline using various transforms.
    
      - Receive: in the immediate downstream pipeline, use Get variables to set variables/fields from Parameters using format: ${myParam}
    
    </div>

</div>

<div class="paragraph">

**Other:**

</div>

<div class="paragraph">

See also the Set Variables transform.

</div>

<div class="paragraph">

To convert the Variable into a data type other than String use Select Values - Meta Data tab.

</div>

<div class="paragraph">

To get system values, including command line arguments, use the Get System Info transform.

</div>

<div class="paragraph">

For example, in the variable column, you can specify: `${java.io.tmpdir}/hop/tempfile.txt` and it will be evaluated as `/tmp/hop/tempfile.txt` on Unix-like systems.

</div>

</div>

</div>

<div class="sect1">

## Troubleshooting

<div class="sectionbody">

<div class="paragraph">

You must always specify the data type or you will have errors like the following:

</div>

<div class="paragraph">

`2023/07/21 09:30:23 - REST client.0 - ERROR: Because of an error, this transform can’t continue:   2023/07/21 09:30:23 - REST client.0 - TOKEN_URL None : Unknown type 0 specified.   2023/07/21 09:30:23 - REST client.0 - ERROR: org.apache.hop.core.exception.HopValueException:`

</div>

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
<td><p>Transform Name</p></td>
<td><p>The name of this transform as it appears in the pipeline workspace.</p></td>
</tr>
<tr class="even">
<td><p>Name</p></td>
<td><p>Name of the field.</p></td>
</tr>
<tr class="odd">
<td><p>Variable</p></td>
<td><div class="content">
<div class="paragraph">
<p>Allows you to enter variables as complete strings to return rows or add values to input rows. For example, you can specify: $${java.io.tmpdir}/hop/tempfile.txt and it will be expanded to /tmp/hop/tempfile.txt on Unix-like systems.</p>
</div>
<div class="paragraph">
<p>Unresolved directive in tmp.tDxN6C4pXM - include::../../snippets/variables/control-space.adoc[]</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Specifies the field type: String, Date, Number, Boolean, Integer, BigNumber, Serializable, or Binary.</p></td>
</tr>
<tr class="odd">
<td><p>Format</p></td>
<td><p>Allows you to specify the format of the field after the type has been determined.</p></td>
</tr>
<tr class="even">
<td><p>Length</p></td>
<td><p>For Number: Total number of significant figures in a number; For String: total length of string; For Date: length of printed output of the string (for example, entering 4 would only return the year).</p></td>
</tr>
<tr class="odd">
<td><p>Precision</p></td>
<td><p>For Number: Number of floating point digits. Not used for String, Date, or Boolean.</p></td>
</tr>
<tr class="even">
<td><p>Currency</p></td>
<td><p>Used to interpret numbers with currency symbols. For example, $10,000.00 or E5.000,00.</p></td>
</tr>
<tr class="odd">
<td><p>Decimal</p></td>
<td><p>Used to indicate whether to use a period (&quot;.&quot;) or comma (&quot;,&quot;) for number values.</p></td>
</tr>
<tr class="even">
<td><p>Group</p></td>
<td><p>Used to indicate whether to use a period (&quot;.&quot;) or comma (&quot;,&quot;) for number values.</p></td>
</tr>
<tr class="odd">
<td><p>TrimType</p></td>
<td><p>Type trim this field before processing: select either none, left, right, or both (left and right).</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:22 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![Filter Rows transform Icon](../assets/images/transforms/icons/filterrows.svg)</span> Filter Rows

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
<p>The Filter Rows transform allows you to filter rows based on conditions and comparisons. It affects workflow if connecting the True or False outcome/hop to another transform. There are 3 path available as outputs (True/False/Main output). The main output follows the True path only.</p>
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

## Usage

<div class="sectionbody">

<div class="paragraph">

Once this transform is connected to a previous transform (one or more and receiving input), you can click on the "\<field\>", "=" and "\<value\>" areas to construct a condition. Downstream transforms can be connected to the True or False hop.

</div>

<div class="paragraph">

Right-click a condition to edit, delete, move, or add a sub-condition.

</div>

<div class="paragraph">

You can use a REGEX expression in the "filter row" transform. See “Filter Rows” under the Transforms section for more.

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
<td>To enter an IN LIST operator, use a string value separated by semicolons.</td>
</tr>
</tbody>
</table>

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
<td>Lists also works on numeric values like integers. In this case, the list of values must be entered with a string data type, e.g.: 2;3;7;8.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

Remember that all transforms are executed in parallel, so both true and false paths will run in some cases.

</div>

<div class="paragraph">

The filter rows transform detects only fields in the input stream. If you want to filter rows based on a variable value, you can modify the previous transform. For example, a table input transform can include the variable in the SQL as another field such as “select field1, field2, ${myvar} as field3 from table1”, then in the filter row condition you can say field1 = field3. Alternatively, you can use a ‘Get Variables’ transform to set parameters in fields. There are various SQL query statements that will always return results using IF EXISTS or IS NULL for example if you always require field(s) and results to be returned.

</div>

<div class="paragraph">

An example is found in the samples project called “filter-rows-basic.hpl”.

</div>

<div class="paragraph">

If you cannot select the field you would like because it does not exist yet because of metadata injection, see this doc: <https://hop.apache.org//manual/latest/pipeline/transforms/filterrows.html#_mdi_example> and the example in the samples project: metadata-injection/filter-rows-mdi-parent.hpl.

</div>

<div class="paragraph">

Essentially, to use an MDI field that is not selectable yet (say in a Filter rows transform), you can setup a transform with a similar field and with a similar condition. Then open the pipeline in a text editor and update the field name to the MDI field name that does not exist yet.

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
<td><p>Transform name</p></td>
<td><p>Optionally, you can change the name of this transform to fit your needs.</p></td>
</tr>
<tr class="even">
<td><p>Send 'true' data to transform</p></td>
<td><p>The rows for which the condition specified is true are sent to this transform</p></td>
</tr>
<tr class="odd">
<td><p>Send 'false' data to transform</p></td>
<td><p>The rows for which the condition specified are false are sent to this transform</p></td>
</tr>
<tr class="even">
<td><p>The Condition</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Add Condition</p></td>
<td><p>Click to add conditions. Add condition converts the original condition into a sub-level condition.</p>
<p>* Click a sub-condition to edit it by going down one level in the condition tree.</p>
<p>* Right-click a condition to edit, delete, move, or add a sub-condition.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Filtering

<div class="sectionbody">

<div class="sect2">

### Filtering rows based on values from variables

<div class="paragraph">

The filter rows transform detects only fields in the input stream. If you want to filter rows based on a variable value, you can modify the previous transform like a Table input transform. For example, a table input transform can include the variable in the SQL as another field such as

</div>

<div class="listingblock">

<div class="content">

``` highlight
SELECT field1, field2, ${myvar} AS field3 FROM table1
```

</div>

</div>

<div class="paragraph">

, then in the filter row condition you can say field1 = field3. Alternatively, you can use a ‘Get Variables’ transform to set parameters in fields.

</div>

<div class="paragraph">

You can use a REGEX expression in the "filter row" transform.

</div>

<div class="paragraph">

A query:

</div>

<div class="listingblock">

<div class="content">

``` highlight
SELECT field1,
field2,
${myvar} AS field3
FROM table
WHERE field1=xxxx
```

</div>

</div>

<div class="paragraph">

Then in the filter row condition, you can have:

</div>

<div class="listingblock">

<div class="content">

``` highlight
field1 = field3
```

</div>

</div>

<div class="paragraph">

**FYI** - instead of adding a field to a Table Input as shown above, you can also use a "Get Variables" transform to add fields to the stream.

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
<td>You can use a REGEX expression in the &quot;filter row&quot; transform.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

Remember that all transforms are executed in parallel, so both true and false paths will run in some cases. In some cases it will be better to use a where filter in a SQL query than use a Filter rows transform. If you need to return input rows for either case (true/false), you can use various SQL query methods that will always return results using IF EXISTS or IS NULL for example.

</div>

</div>

<div class="sect2">

### Filtering special characters

<div class="paragraph">

To filter special characters like explicit EOF (e.g. from old cobol files) Use a REGEX expression in the "filter row" transform with the syntax: "\\x${1A}" where \\x mean HEX representation and 1A into parenthesis is the EOF char to match in HEX.

</div>

</div>

</div>

</div>

<div class="sect1">

## Metadata injection support

<div class="sectionbody">

<div class="paragraph">

All fields of this transform support metadata injection. You can use this transform with ETL Metadata Injection to pass metadata to your pipeline at runtime.

</div>

<div class="paragraph">

If you cannot select the field you would like because it does not exist yet because of metadata injection, see this doc: <https://hop.apache.org//manual/latest/pipeline/transforms/filterrows.html#_mdi_example> and this example in the samples project: metadata-injection/filter-rows-mdi-parent.hpl.

</div>

<div class="paragraph">

Essentially, to use an MDI field that is not selectable yet (say in a Filter rows transform), you can setup a transform with a similar field and with a similar condition. Then open the pipeline in a text editor and update the field name to the MDI field name that does not exist yet.

</div>

</div>

</div>

<div class="sect1">

## Special considerations for the condition field

<div class="sectionbody">

<div class="paragraph">

The Filter Rows transform is a special MDI scenario, since it has a nested structure of filter conditions. The condition is given in XML format. The condition XML has the same format as we store the pipeline metadata in a .HPL file in XML format. We do not have a DTD (Document Type Definition) for the .HPL XML format, nor the condition.

</div>

<div class="paragraph">

It is easy to get to an XML condition:

</div>

<div class="olist arabic">

1.  Create a sample Filter transform with the different conditions you need. This sample transform gives you all the information, such as the values for the functions you use.

2.  Select the transform, copy it to the clipboard, and then paste it into a text editor. Alternatively, you can store the .HPL, and then open the .HPL in a text editor.

3.  Find the \<condition\> element and its nested elements and modify it accordingly to use it in your MDI scenario.

</div>

</div>

</div>

<div class="sect1">

## Sample

<div class="sectionbody">

<div class="paragraph">

The samples project demonstrates some concepts in file "filter-rows-basic.hpl".

</div>

</div>

</div>

<div class="sect1">

## MDI Example

<div class="sectionbody">

<div class="paragraph">

The example filter condition below injects the following filter conditions into a Filter Rows transform.

</div>

<div class="paragraph">

The full example pipelines are available in the samples project as `metadata-injection/filter-rows-mdi-parent.hpl` and `metadata-injection/filter-rows-mdi-child.hpl`

</div>

<div class="listingblock">

<div class="content">

``` highlight
stateCode = FL
AND
housenr > 100
```

</div>

</div>

<div class="listingblock">

<div class="content">

``` highlight
<condition>
            <negated>N</negated>
            <conditions>
                <condition>
                    <negated>N</negated>
                    <leftvalue>stateCode</leftvalue>
                    <function>=</function>
                    <rightvalue/>
                    <value>
                        <name>constant</name>
                        <type>String</type>
                        <text>FL</text>
                        <length>-1</length>
                        <precision>-1</precision>
                        <isnull>N</isnull>
                        <mask/>
                    </value>
                </condition>
                <condition>
                    <negated>N</negated>
                    <operator>AND</operator>
                    <leftvalue>housenr</leftvalue>
                    <function>&gt;</function>
                    <rightvalue/>
                    <value>
                        <name>constant</name>
                        <type>Integer</type>
                        <text>100</text>
                        <length>-1</length>
                        <precision>0</precision>
                        <isnull>N</isnull>
                        <mask>####0;-####0</mask>
                    </value>
                </condition>
            </conditions>
        </condition>
```

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:15 +0200

</div>

</div>

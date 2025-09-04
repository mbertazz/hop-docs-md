<div id="header">

# <span class="image image-doc-icon">![User Defined Java Expression transform Icon](../assets/images/transforms/icons/janino.svg)</span> User Defined Java Expression

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
<p>This transform allows you to enter Java expressions that are used to calculate new values or replace values in fields. Any custom jar libraries that your expressions depend on need to be placed in the folder <code>plugins/transforms/janino/lib</code></p>
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

If you have a Java expression like :

</div>

<div class="listingblock">

<div class="content">

``` highlight
C=A+B
```

</div>

</div>

<div class="paragraph">

Then you can simply enter the right side of the expression in the dialog:

</div>

<div class="listingblock">

<div class="content">

``` highlight
A+B
```

</div>

</div>

<div class="paragraph">

The values are exposed to the expressions as the Java objects they are :

</div>

| Data type | Java Class       |
| --------- | ---------------- |
| BigNumber | BigDecimal       |
| Binary    | byte\[\]         |
| Date      | java.util.Date   |
| Integer   | java.lang.Long   |
| Number    | java.lang.Double |
| String    | java.lang.String |

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option          | Description                                                                                                                                                                                        |
| --------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name  | Specify a name for this transform. This must be unique wihin the pipeline.                                                                                                                         |
| New field       | The new field in the data stream that contains the result of the expression. If you want to overwrite an existing field, you need to define the same field here and in the "Replace value" option. |
| Java expression | The Java expression to evaluate. See examples below.                                                                                                                                               |
| Value type      | The field’s data type.                                                                                                                                                                             |
| Length          | The maximum length of a string in the new field.                                                                                                                                                   |
| Precision       | The number of decimal places used to express numbers.                                                                                                                                              |
| Replace value   | Set this to be identical to the "New field" name when you want to replace the value in an existing field.                                                                                          |

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="paragraph">

**Add 2 integers, A and B**

</div>

<div class="listingblock">

<div class="content">

``` highlight
A+B
```

</div>

</div>

<div class="paragraph">

**Concatenate 2 Strings : firstname and name and put a space in between**

</div>

<div class="listingblock">

<div class="content">

``` highlight
firstname+" "+name
```

</div>

</div>

<div class="paragraph">

or if you really care about performance, this might be faster:

</div>

<div class="listingblock">

<div class="content">

``` highlight
new StringBuffer(firstname).append(" ").append(name).toString()
```

</div>

</div>

<div class="paragraph">

**Use native Java and API functions**

</div>

<div class="listingblock">

<div class="content">

``` highlight
System.getProperty("os.name")
```

</div>

</div>

<div class="paragraph">

**Business rules (If / Then / Else)**

</div>

<div class="listingblock">

<div class="content">

``` highlight
a<c?true:false
```

</div>

</div>

<div class="paragraph">

This can be more complicated

</div>

<div class="listingblock">

<div class="content">

``` highlight
a<c?(a==1?1:2):3
```

</div>

</div>

<div class="paragraph">

even with OR and AND and other operators and functions

</div>

<div class="paragraph">

**Using Constants**

</div>

<div class="paragraph">

If you use a constant, you may need to define the right type in some expressions otherwise it could throw an error. Eg if you use "0" that is "int" but Apache Hop "Integer" is "java.lang.Long", so you’ll get an exception:

</div>

<div class="paragraph">

Incompatible expression types "int" and "java.lang.Long"

</div>

<div class="paragraph">

To solve this, use:

</div>

<div class="listingblock">

<div class="content">

``` highlight
test == null ? new Long(0) : test
```

</div>

</div>

<div class="paragraph">

The above expression checks if "test" is null and replaces it with a zero Long. Otherwise, it return "test" unchanged.

</div>

<div class="paragraph">

**Cut a string from end and test for null and minimal length**

</div>

<div class="paragraph">

Imagine you have input strings "location" like

</div>

<div class="literalblock">

<div class="content">

    Orlando FL
    New York NY

</div>

</div>

<div class="paragraph">

and you want to separate the state and city. You could use the following expressions:

</div>

<div class="paragraph">

For state (get the last 2 characters):

</div>

<div class="listingblock">

<div class="content">

``` highlight
location != null && location.length()>2 ? location.substring(location.length()-2, location.length()) : null
```

</div>

</div>

<div class="paragraph">

For city (get the beginning without the last 2 characters and trim):

</div>

<div class="listingblock">

<div class="content">

``` highlight
location != null && location.length()>2 ? location.substring(0, location.length()-2).trim() : location
```

</div>

</div>

<div class="paragraph">

**Functionality of a LIKE operator (contains string)**

</div>

<div class="paragraph">

The following example returns 1 when abc is within the source string, otherwise 2. It returns also 2 when the source string is null. If you prefer the return values to be of value type Integer, use "new Long(1)" and "new Long(2)".

</div>

<div class="listingblock">

<div class="content">

``` highlight
samplestr != null && samplestr.indexOf("abc")>-1 ? 1 : 2
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Blocking specific code

<div class="sectionbody">

<div class="paragraph">

As a simple security measure you can block the execution of code containing specific strings. This can be done by adding exclusions to the `codeExclusions.xml` file located at \<Hop Installation\>/plugins/transforms/janino

</div>

<div class="paragraph">

Example:

</div>

<div class="listingblock">

<div class="content">

``` highlight
    <exclusions>
        <exclusion>System.</exclusion>
        <exclusion>HopVfs.</exclusion>
    </exclusions>
```

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:22 +0200

</div>

</div>

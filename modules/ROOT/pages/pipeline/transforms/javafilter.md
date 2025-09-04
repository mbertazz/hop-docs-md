<div id="header">

# <span class="image image-doc-icon">![Java Filter transform Icon](../assets/images/transforms/icons/javafilter.svg)</span> Java Filter

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
<p>The Java Filter transform allows the stream to be filtered using a user defined Java expressions.</p>
</div>
<div class="paragraph">
<p>The input stream, coming from one or more transforms, can be redirected to two different transforms based on the evaluation of the written expression.</p>
</div>
<div class="paragraph">
<p>In other words, the user is able to perform an if-statement to filter the data stream with pure java expressions:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight"><code>if( Condition )
  {matching-transform}
else
  {non-matching transform}</code></pre>
</div>
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

| Option                                                 | Description                                                                                |
| ------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| Transform name                                         | Name of the transform this name has to be unique in a single pipeline.                     |
| Destination transform for matching rows (optional)     | The rows for which the written condition is evaluated to true are sent to this transform.  |
| Destination transform for non-matching rows (optional) | The rows for which the written condition is evaluated to false are sent to this transform. |
| Condition (Java Expression)                            | Defines the Java condition on which to filter the data. See examples below.                |

<div class="sect2">

### Examples

<div class="paragraph">

These code samples applies to the Condition (Java Expression) field.

</div>

<div class="paragraph">

Filters a string that contains white space

</div>

<div class="listingblock">

<div class="content">

``` highlight
field.contains(" ");
```

</div>

</div>

<div class="paragraph">

Filters a string that is identical to a constant string

</div>

<div class="listingblock">

<div class="content">

``` highlight
field.equals("Positive");
```

</div>

</div>

<div class="paragraph">

Filters a boolean value

</div>

<div class="listingblock">

<div class="content">

``` highlight
field == Boolean.TRUE
```

</div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:28 +0200

</div>

</div>

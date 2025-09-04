<div id="header">

# <span class="image image-doc-icon">![Value Mapper transform Icon](../assets/images/transforms/icons/valuemapper.svg)</span> Value Mapper

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
<p>The Value Mapper transform maps string values from one value to another.</p>
</div>
<div class="paragraph">
<p>Mapping is usually solved by storing the conversion table in a database.</p>
</div>
<div class="paragraph">
<p>The Value Mapper provides you with a simple alternative.</p>
</div>
<div class="paragraph">
<p>For example, if you want to replace language codes:</p>
</div>
<div class="listingblock">
<div class="content">
<pre class="highlight"><code>Fieldname to use: LanguageCode
Target fieldname: LanguageDesc
Source/Target: EN/English, FR/French, NL/Dutch, ES/Spanish, DE/German, ...</code></pre>
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

<div class="paragraph">

The following properties are used to define the mappings:

</div>

| Option                    | Description                                                                                       |
| ------------------------- | ------------------------------------------------------------------------------------------------- |
| Transform Name            | Name of the transform this name has to be unique in a single pipeline.                            |
| Fieldname to use          | Field to use as the mapping source                                                                |
| Target field name         | Field to use as the mapping Target                                                                |
| Default upon non-matching | Defines a default value for situations where the source value is not empty, but there is no match |
| Field values table        | Contains the mapping of source value to converted target value.                                   |

<div class="sect2">

### Mapping NULL values

<div class="paragraph">

If there is an empty source value defined, NULLs and empty strings are mapped to the corresponding target value. Only one empty mapping is allowed.

</div>

<div class="paragraph">

If the input stream contains NULL values, and no mapping for NULLs is defined, NULL is returned (and not the default target)

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:23 +0200

</div>

</div>

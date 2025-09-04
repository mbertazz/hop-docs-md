<div id="header">

# <span class="image image-doc-icon">![Regex Evaluation transform Icon](../assets/images/transforms/icons/regexeval.svg)</span> Regex Evaluation

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
<p>The Regex Evaluation transform matches the strings of an input field against a text pattern you define with a regular expression (regex).</p>
</div>
<div class="paragraph">
<p>This transform uses the java.util.regex package.</p>
</div>
<div class="paragraph">
<p>The syntax for creating the regular expressions used by this transform is defined in the java.util.regex.Pattern javadoc.</p>
</div>
<div class="paragraph">
<p>You can use this transform to parse a complex string of text and create new fields out of the input field with capture groups (defined by parentheses).</p>
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

<div class="sect2">

### Pattern matching

<div class="paragraph">

The primary usage for this transform is to check if an input field matches the given pattern: a boolean field is added to the stream, indicating whether there is match or not.

</div>

<div class="paragraph">

The pattern is intended to match the entire input field, not just a part of it. For example, given the input:

</div>

<div class="listingblock">

<div class="content">

    "Author, Ann" - 53 posts

</div>

</div>

<div class="paragraph">

a regular expression like `\d* posts` would give no match, even if a part of the input (`53 posts`) indeed matches with the pattern. To get an actual match, you need to add `.*` in the pattern:

</div>

<div class="listingblock">

<div class="content">

``` highlight
.*\d* posts
```

</div>

</div>

</div>

<div class="sect2">

### Capturing text

<div class="paragraph">

This transform can also capture parts of the input and store them in new fields of the stream: to do so, just add the usual grouping operator (simple parentheses) in your regular expression.

</div>

<div class="paragraph">

With the same input text as above, create a regular expression with two capture groups:

</div>

<div class="listingblock">

<div class="content">

``` highlight
^"([^"]*)" - (\d*) posts$
```

</div>

</div>

<div class="paragraph">

The transform will capture the values `Author, Ann` and `53`, so you can create two new fields in your pipeline (i.e. one for the name, and one for the number of posts).

</div>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General

| Option         | Description            |
| -------------- | ---------------------- |
| Transform name | Name of the transform. |

</div>

<div class="sect2">

### Capture Group Fields

| Option    | Description                                                                                                                                                                  |
| --------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| New field | Name of the new field generated from the regular expression.                                                                                                                 |
| Type      | Type of data.                                                                                                                                                                |
| Length    | Length of the field.                                                                                                                                                         |
| Precision | Number of floating point digits for number-type fields.                                                                                                                      |
| Format    | An optional mask for converting the format of the original field. See Common Formats for information on common valid date and numeric formats you can use in this transform. |
| Group     | A grouping can be a "," (10,000.00 for example) or "." (5.000,00 for example)                                                                                                |
| Decimal   | The character used as a decimal point.                                                                                                                                       |
| Currency  | Currency symbol ($ or € for example)                                                                                                                                         |
| Null If   | Treat this value as null.                                                                                                                                                    |
| Default   | Default value when the field in the incoming file is not specified (empty).                                                                                                  |
| Trim      | The trim method to apply to a string.                                                                                                                                        |

</div>

<div class="sect2">

### Settings Tab

<div class="paragraph">

The Settings tab contains the following options:

</div>

| Option                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| -------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Field to evaluate                | Specify the name of the field from the incoming Hop stream to be matched against the regular expression.                                                                                                                                                                                                                                                                                                                                                                                                              |
| Result field name                | Specify the name of the output field. This field is added to the outgoing Hop stream and has a value of Y to indicate the value of the input field matched the regular expression or N to indicate it did not match.                                                                                                                                                                                                                                                                                                  |
| Create fields for capture groups | Select to create new fields based on capture groups, in the regular expression. When this option is selected, substrings in the captured groups are extracted and stored in new output fields, that you specify in the Capture Group Fields table. Each capture group must have a field defined in the Capture Group Fields table. The order of the fields in the table must be the same as the order of the capturing groups in the regular expression. You can change the data type using the columns in the table. |
| Replace previous fields          | Select to replace fields from the incoming Hop stream with fields created for the capture group field names, if the fields have the same name. If this option is clear, new fields are added to the outgoing Hop stream for each capturing group field. This option is available when you select the Create fields for capture groups option.                                                                                                                                                                         |
| Regular expression               | Specify your regular expression. Click Test regEx to open the Regular expression evaluation window.                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Use variable substitution        | Select to expand variable references to their values before evaluating the regular expression pattern.                                                                                                                                                                                                                                                                                                                                                                                                                |

</div>

<div class="sect2">

### Test regEx

<div class="paragraph">

You can test your regular expression against three different input strings using the following Regular expression evaluation window. If your expression contains a group field, type a string in the Compare section and the option below the string will be split according to your group(s).

</div>

| Option                                          | Description                                                                                                                                                                |
| ----------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Please enter a new regular expression or modify | Specify your regular expression.                                                                                                                                           |
| Values to test                                  | Specify the values (Value1, Value2, or Value3) to test your string. The background will turn green if that value is a match against your expression or red if it does not. |
| Capture from value                              | Displays the value of the captured string.                                                                                                                                 |
| Captured fields                                 | Displays the value of the captured groups.                                                                                                                                 |

</div>

<div class="sect2">

### Content Tab

<div class="paragraph">

The Content tab contains the following options:

</div>

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
<td><p>Ignore differences in Unicode encodings</p></td>
<td><p>Select to ignore different Unicode character encodings. This action may improve performance, but your data can only contain US ASCII characters.</p></td>
</tr>
<tr class="even">
<td><p>Enables case-insensitive matching</p></td>
<td><div class="content">
<div class="paragraph">
<p>Select to use case-insensitive matching. Only characters in the US-ASCII charset are matched. Unicode-aware case-insensitive matching can be enabled by specifying the 'Unicode-aware case…​' flag in conjunction with this flag.</p>
</div>
<div class="ulist">
<ul>
<li><p>The execution flag is <code>(?i)</code>.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Permit whitespace and comments in pattern</p></td>
<td><div class="content">
<div class="paragraph">
<p>Select to ignore whitespace and embedded comments starting with <code>#</code> through the end of the line. In this mode, you must use the <code>\s</code> token to match whitespace. If this option is not enabled, whitespace characters appearing in the regular expression are matched as-is.</p>
</div>
<div class="ulist">
<ul>
<li><p>The execution flag is <code>(?x)</code>.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Enable dotall mode</p></td>
<td><div class="content">
<div class="paragraph">
<p>Select to include line terminators with the dot character expression match.</p>
</div>
<div class="ulist">
<ul>
<li><p>The execution flag is <code>(?s)</code>.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Enable multiline mode</p></td>
<td><div class="content">
<div class="paragraph">
<p>Select to match the start of a line <code>^</code> or the end of a line <code>$</code> of the input sequence. By default, these expressions only match at the beginning and the end of the entire input sequence.</p>
</div>
<div class="ulist">
<ul>
<li><p>The execution flag is <code>(?m)</code>.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Enable Unicode-aware case folding</p></td>
<td><div class="content">
<div class="paragraph">
<p>Select this option in conjunction with the Enables case-insensitive matching option to perform case-insensitive matching consistent with the Unicode standard.</p>
</div>
<div class="ulist">
<ul>
<li><p>The execution flag is <code>(?u)</code>.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Enables Unix lines mode</p></td>
<td><div class="content">
<div class="paragraph">
<p>Select to only recognize the line terminator in the behavior of <code>.</code>, <code>^</code>, and <code>$</code>.</p>
</div>
<div class="ulist">
<ul>
<li><p>The execution flag is <code>(?d)</code>.</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="sect2">

### Sub-text matching

<div class="paragraph">

As mentioned earlier, the pattern is intended to match the entire input field, i.e. when the supplied input *is* the pattern.

</div>

<div class="paragraph">

If you just need to test if your input *contains* the pattern, you need to tweak your regular expression so that it matches the entire input field. You should also include the grouping operators (parentheses) to get the sub-text you intended to match, for example:

</div>

<div class="ulist">

  - Input data: `THIS IS A TITLE <PROCESSING_TAG>`

  - RegEx 1: `<.*>` → returns no match, because the pattern doesn’t match the entire input

  - RegEx 2: `.(<.>)` → returns a match and you can capture the value `<PROCESSING_TAG>` with the grouping operators

</div>

<div class="paragraph">

As a consequence, you can consider the line delimiting operators `^` and `$` as implied in your regular expression: the examples above are equivalent to `^<.>$` and `^.(<.*>)$` respectively.

</div>

</div>

<div class="sect2">

### Nested capture groups

<div class="paragraph">

Suppose your input field contains a text value like `"Author, Ann" - 53 posts.`

</div>

<div class="paragraph">

The following regular expression creates four capturing groups and can be used to parse out the different parts:

</div>

<div class="listingblock">

<div class="content">

``` highlight
^"(([^"]+), ([^"])+)" - (\d+) posts\.$
```

</div>

</div>

<div class="paragraph">

This expression creates the following four capturing groups, which become output fields:

</div>

| Field name      | RegEx segment                 | Value         |
| --------------- | ----------------------------- | ------------- |
| Fullname        | `[^"]+), ([^"]+`              | `Author, Ann` |
| Lastname        | `([^"]+)` (first occurrence)  | `Author`      |
| Firstname       | `([^"]+)` (second occurrence) | `Ann`         |
| Number of posts | `(\d+)`                       | `53`          |

<div class="paragraph">

In this example, a field definition must be present for each of these capturing groups.

</div>

<div class="paragraph">

If the number of capture groups in the regular expression does not match the number of fields specified, the transform will fail and an error is written to the log.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:53 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![Write to log transform Icon](../assets/images/transforms/icons/writetolog.svg)</span> Write to log

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
<p>The Write To Log transform writes information to the Hop logging system.</p>
</div>
<div class="paragraph">
<p>Typical use cases are logging specific values or custom logging messages to the Hop logs.</p>
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
<td>Be careful when writing variables or fields for (unencrypted) passwords or other sensitive information to the Hop logging system!</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

If no fields are added in the Write to log Fields list, it will write out all fields to the log if a Basic Log level is specified. If fields are added to Fields list it will only print out those field(s). Parameters and variables must be specified in the Log message section.

</div>

<div class="paragraph">

A Logging level must be set. Set the Log detail level to Basic if you want variables to be printed out.

</div>

<div class="paragraph">

Example to print a parameter or variable in the Log Message section: `COUNTER: ${myCounter}`

</div>

<div class="paragraph">

If a data row does not exist containing fields, logging fields, parameters, or variables will not work. You may use a "Generate rows" transform to create a dummy row in order to print variables or parameters.

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
<td>If an error stops anything from being written to the log, you can disable the Hops that fail, add logging just before the failure, and then re-run.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option               | Description                                                                                                                                                       |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform Name       | Name of the transform this name has to be unique in a single pipeline.                                                                                            |
| Log level            | The logging level to use.                                                                                                                                         |
| Print header         | Whether or not the column names for data values is printed. In the example below, this value has been set to false, so only the actual values (3, 4) are printed. |
| Limit rows           | Limit the number of rows given by the parameter "Nr. of rows to print".                                                                                           |
| Nr. of rows to print | The number of rows to print when option "limit rows" is checked.                                                                                                  |
| Write to log         | The text to use in the logging line(s).                                                                                                                           |
| Fields               | The data from fields that should be written to the log.                                                                                                           |

</div>

</div>

<div class="sect1">

## Example log output

<div class="sectionbody">

<div class="listingblock">

<div class="content">

``` highlight
2020/05/14 12:30:52 - Write to log.0 -
2020/05/14 12:30:52 - Write to log.0 - ----------> Linenr 1----------------------------
2020/05/14 12:30:52 - Write to log.0 - test log
2020/05/14 12:30:52 - Write to log.0 -
2020/05/14 12:30:52 - Write to log.0 -  3
2020/05/14 12:30:52 - Write to log.0 -  4
2020/05/14 12:30:52 - Write to log.0 -
2020/05/14 12:30:52 - Write to log.0 - ====================
2020/05/14 12:30:52 - Write to log.0 -
2020/05/14 12:30:52 - Write to log.0 - ----------> Linenr 2----------------------------
2020/05/14 12:30:52 - Write to log.0 - test log
2020/05/14 12:30:52 - Write to log.0 -
2020/05/14 12:30:52 - Write to log.0 -  3
2020/05/14 12:30:52 - Write to log.0 -  4
2020/05/14 12:30:52 - Write to log.0 -
2020/05/14 12:30:52 - Write to log.0 - ====================
```

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:25 +0200

</div>

</div>

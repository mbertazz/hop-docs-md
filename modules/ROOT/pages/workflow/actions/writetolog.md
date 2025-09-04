<div id="header">

# Write to Log

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Write to log` action writes a specific string to the Hop logging system.

</div>

<div class="paragraph">

This action is similar to the [Write To Log](pipeline/transforms/writetolog.cOEDlIs7Rj) transform.

</div>

<div class="paragraph">

Typical use cases are logging variable values and additional, custom logging information to the Hop logging system.

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
<td>Be careful when writing variables for (unencrypted) passwords or other sensitive information to the Hop logging system!</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

Parameters and variables must be specified in the Log message section.

</div>

<div class="paragraph">

A Logging level must be set. Set the Log detail level to Basic if you want parameters and variables to be printed out.

</div>

<div class="paragraph">

Example to print parameter or variable in Log message section: `COUNTER: ${COUNTER}`

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
<td>If an error stops anything from being written to the log, then disable the Hops that fail, add logging, and re-run.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option      | Description                                                                                  |
| ----------- | -------------------------------------------------------------------------------------------- |
| Action name | The name of the workflow action.                                                             |
| Log level   | The logging level to use. See [Logging](logging/logging-basics.cOEDlIs7Rj) for more details. |
| Log subject | The subject to use in the logging line(s)                                                    |
| Log message | The log message to write to the log                                                          |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:35 +0200

</div>

</div>

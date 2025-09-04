<div id="header">

# <span class="image image-doc-icon">![Google Sheets Input transform Icon](../assets/images/transforms/icons/google-sheets-input.svg)</span> Google Sheets Input

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
<p>The Google Sheets Input transform reads data from a Google Sheets worksheets.</p>
</div>
<div class="paragraph">
<p>This transform requires a Google service account (JSON file) and a Google Cloud project with the Google Drive and Google Sheets API enabled.</p>
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

<div class="sect2">

### Service account tab

| option                   | description                                                                                                                                                |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| JSON credential key file | Lets you specify or browse for spreadsheets existing in the service account drive or for the ones that are shared with the service account email.          |
| Application Name         | Your application name for the service account in the Google Developer Console.                                                                             |
| Timeout                  | lets you specify an https timeout (in minutes, defaults to 5).                                                                                             |
| Impersonation            | lets you impersonate your service account. Check the [Google docs](https://cloud.google.com/iam/docs/impersonating-service-accounts) for more information. |

<div class="paragraph">

Click the `Test Connection` button to verify your specified JSON credential key file for your service account can use the Google Drive and Spreadsheets APIs and has access to your Google Spreadsheets. On success, you will see a `Google Drive API: Success!` message.

</div>

</div>

<div class="sect2">

### Spreadsheet tab

| option          | description                                                                                                                                                                                            |
| --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Spreadsheet Key | specify the key for the Google Spreadsheet you want to read from. Click the "Browse" button to get a list of available spreadsheets.                                                                   |
| Worksheet Id    | specify the worksheet id (title) for the sheet in your Google Spreadsheet you want to read from. Click the "Browse" button to get the list of available worksheets in the selected Google Spreadsheet. |

</div>

<div class="sect2">

### Proxy tab

| option     | description           |
| ---------- | --------------------- |
| Proxy host | Proxy server hostname |
| Proxy port | Proxy server port     |

</div>

<div class="sect2">

### Fields tab

<div class="paragraph">

Lets you select from the fields of the sheet.

</div>

<div class="paragraph">

Fields name are always defined in the first line of the google spreadsheet.

</div>

<div class="paragraph">

**Get Fields** lets you get fields and guess their types, format, precision, decimal and group delimiter as well as trim type.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:23 +0200

</div>

</div>

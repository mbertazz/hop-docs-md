<div id="header">

# <span class="image image-doc-icon">![Google Sheets Output transform Icon](../assets/images/transforms/icons/google-sheets-output.svg)</span> Google Sheets Output

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
<p>The Google Sheets Output transform writes data to a Google Sheets worksheets.</p>
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

### Proxy tab

| option     | description           |
| ---------- | --------------------- |
| Proxy host | Proxy server hostname |
| Proxy port | Proxy server port     |

</div>

<div class="sect2">

### Spreadsheet tab

| option                                | description                                                                                                                                                                                                                                                                            |
| ------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Spreadsheet key                       | Lets you specify or browse for spreadsheets existing in the service account drive or for the ones that are shared with the service account email. If you type in a sheet name (that does not exist in the drive) it will attempt to create a sheet it the "create" checkbox is ticked. |
| Worksheet Id                          | Should be browsed form the selected spreadsheet key. If you want to create a new file, type in any key that will become the name of the worksheet in the created spreadsheet                                                                                                           |
| Append to sheet                       | Appends the lines **without the header** to an existing spreadsheet. This is incompatible with the create option below.                                                                                                                                                                |
| Create new sheet if it does not exist | If the checkbox is checked then if the Spreadsheet Key specified in the field Spreadsheet key does not exist it will create a new spreadsheet within the service account drive (note that this account has no UI)                                                                      |
| Replace sheet if exists               | Deletes and recreates the sheet if it exists. This option can be useful to avoid excessive versioning information that sometimes causes problems in pipelines that write to a Google Sheet frequently.                                                                                 |
| Share Full Rights (RW) with           | the Share with user email field lets you specify the email of a user who will get full rights on the freshly created file.                                                                                                                                                             |
| Domain Wide Permission                | Enables to share with your whole domain (if configured in Google Drive).                                                                                                                                                                                                               |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:24 +0200

</div>

</div>

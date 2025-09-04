<div id="header">

# <span class="image image-doc-icon">![Email Messages Input transform Icon](../assets/images/transforms/icons/mailinput.svg)</span> Email Messages Input

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
<p>The Email Messages Input transform allows you to retrieve messages and their attachments from a mail server using the POP3, IMAP or MBOX standard protocols.</p>
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

### General

<div class="paragraph">

On this tab you will find the general mail server connection settings:

</div>

Option

</div>

</div>

</div>

</div>

Description

Transform name

Name of the transform.

**Mail Server Connection**

Mail Connection

If a mail server connection is selected here, the rest of this tab is ignored. The server configuration will be taken from the [Mail Server Connection](metadata-types/mail-server-connection.lmXahzqzud) metadata item.

**Server settings**

Source host

The mail server host

Use SSL?

Check this option if your server needs an SSL connection

Use XOAUTH2

If checked XOAuth2 will be used to authenticate with the server.

Username

The username of the mailbox to connect to

Password

The password to use

Use proxy?

Check this option if you want to connect through a proxy.

Proxy username

The username to connect to the proxy with

Fetch in batches?

Enable this option if you want to retrieve larger volumes of mails in batches

Ignore errors reading fields

Sometimes a server doesn’t support the retrieval of a particular piece of information. Enable this option to ignore these errors.

Protocol

Specify either standard protocol POP3, IMAP or MBOX to retrieve the mails

Test Connection button

This will simply try to connect to the mail server with the specified settings. This button does not retrieve mails.

<div class="sect2">

### Settings

<div class="paragraph">

**POP3 settings**

</div>

| Option                       | Description                                                                 |
| ---------------------------- | --------------------------------------------------------------------------- |
| Retrieve                     | Specify either "All emails" or "Retrieve first…​ emails"                    |
| Retrieve the …​ first emails | Allows you to specify how many mails you want to retrieve at most in one go |

<div class="paragraph">

**IMAP settings**

</div>

| Option                       | Description                                                                                                                                  |
| ---------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| Get folder from field        | Enable this option to allow the IMAP folder name to be present in an input field of this transform.                                          |
| Folder field                 | The folder field in case the option above is enabled.                                                                                        |
| IMAP folder                  | The IMAP folder to retrieve mails from                                                                                                       |
| Test folder…​ button         | Use this to test if the folder is valid                                                                                                      |
| Open button                  | use this to select the IMAP folder                                                                                                           |
| Include subfolders           | Check this option to also retrieve mails from sub-folders                                                                                    |
| Retrieve                     | Specify which mails to retrieve: Get all, new, old, read, unread, flagged, not flagged, draft, not draft, answered or not answered messages. |
| Retrieve the first …​ emails | Specify how many emails to retrieve at most                                                                                                  |

<div class="paragraph">

**Batch settings**

</div>

| Option                  | Description                                       |
| ----------------------- | ------------------------------------------------- |
| Batch size              | Number of emails to retrieve at once in one batch |
| Start at message number | The first message number to start retrieving at   |
| End at message number   | The last message number to end retrieving with    |

</div>

<div class="sect2">

### Filters

<div class="paragraph">

These are the filters you can set on the header of the mail message. Mail for which the header matches your filter will be retrieved, the rest is ignored.

</div>

| Option        | Description   |
| ------------- | ------------- |
| Sender (FROM) | Only retrieve |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:08 +0200

</div>

</div>

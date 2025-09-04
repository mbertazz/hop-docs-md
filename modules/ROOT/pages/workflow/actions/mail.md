<div id="header">

# Mail

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The Mail action sends a text or HTML email with optional file attachments.

</div>

<div class="paragraph">

This action can be used at the end of a workflow run to either announce a successful run or send a notifications about a failure in the workflow.

</div>

<div class="paragraph">

For example, it is not uncommon at the end of a successful load, to send an email to a distribution list announcing that the load was successful and include a log file.

</div>

<div class="paragraph">

If there are errors, an email can be sent to alert individuals on a distribution list.

</div>

<div class="paragraph">

The Mail action requires an SMTP server.

</div>

<div class="paragraph">

You can use authentication and security as part of the connection but you must have the SMTP credentials.

</div>

<div class="paragraph">

You can attach files to your email messages such as error logs and regular logs.

</div>

<div class="paragraph">

In addition, logs can be zipped into a single archive for convenience.

</div>

<div class="paragraph">

The mail action can either work with mail server configuration defined in the action itself, or take the server connection from a [Mail Server Connection](metadata-types/mail-server-connection.3gBmwkk50a) metadata type. In the latter case, the server configuration in the action itself is ignored.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### Addresses Tab

Option

</div>

</div>

</div>

</div>

Description

Action name

The name of the workflow action.

**Destination**

Destination Address

The destination for the email; you can specify multiple addresses if you separate them with a space.

Cc

An identical copy of the message is also sent to all the addresses listed in the Cc: field. To enter more than one address in the Cc: field, separate them with a space.

BCc

Send to a recipient whose email address does not appear in the message

**Sender**

Sender name

Name of the person sending the email

Sender address

Email address of the person sending the email

Reply to

Email address of the person to which to send a reply

Contact person

The name of the contact person to be placed in the email

Contact phone

The contact telephone number to be placed in the email

<div class="sect2">

### Server Tab

Option

</div>

Description

**Mail Server Connection**

Mail Connection

If a mail server connection is selected here, the rest of this tab is ignored. The server configuration will be taken from the [Mail Server Connection](metadata-types/mail-server-connection.3gBmwkk50a) metadata item.

**SMTP Server**

SMTP Server

The SMTP server address

Port

The port on which the SMTP Server is running

**Authentication**

Use Authentication

Enable to use authentication to the SMTP Server

Use XOAUTH2

If checked XOAuth2 will be used to authenticate with the server.

Authentication user

SMTP user account name

Authentication password

SMTP user account password

Use Secure Authentication?

Enable to use secure authentication

Secure Connection Type

Select authentication type (SSL, TLS, TLS 1.2)

Check server identity?

Check the server identity?

Trusted hosts

A list of trusted hosts separated by a space, for example: "host1 host2 host3"

<div class="sect2">

### Email Message Tab

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Include date in message?</p></td>
<td><p>Enable to include the current date in the message</p></td>
</tr>
<tr class="even">
<td><p>Only send comment in mail body?</p></td>
<td><p>If not enabled the email will contain information about the workflow and its execution in addition to the comment</p></td>
</tr>
<tr class="odd">
<td><p>Use HTML in mail body</p></td>
<td><p>The message is sent in HTML format</p></td>
</tr>
<tr class="even">
<td><p>Encoding</p></td>
<td><p>Select the character encoding type used for the HTML format</p></td>
</tr>
<tr class="odd">
<td><p>Manage Priority</p></td>
<td><div class="content">
<div class="paragraph">
<p>Enable to set the priority and sensitivity of the message. Typically, failures might be sent with a higher priority than successes. Note: The support of this flag is depending on the mail server.</p>
</div>
<div class="ulist">
<ul>
<li><p>Priority: Low, Normal, or High</p></li>
<li><p>Importance: Low, Normal, or High</p></li>
<li><p>Sensitivity: Normal, Personal, Private, or Confidential</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Subject</p></td>
<td><p>Enter the subject of the mail into this field.</p></td>
</tr>
<tr class="odd">
<td><p>Comment</p></td>
<td><p>Enter the comment within the body of the mail into this field.</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Attached Files Tab

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Attach files to message?</p></td>
<td><p>Enable to attach a file to your email message</p></td>
</tr>
<tr class="even">
<td><p>Select file type</p></td>
<td><div class="content">
<div class="paragraph">
<p>The files to send are defined within the internal files result set. Every file in this list is marked with a file type and you can select what type of file you want to send (see also the tips at the end of this document):</p>
</div>
<div class="ulist">
<ul>
<li><p>General</p></li>
<li><p>Log</p></li>
<li><p>Error line</p></li>
<li><p>Error</p></li>
<li><p>Warning</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Zip files to single archive?</p></td>
<td><p>Enable to have attachments achived in a zip file</p></td>
</tr>
<tr class="even">
<td><p>Name of the zip archive</p></td>
<td><p>Define the filename of your zip archive</p></td>
</tr>
<tr class="odd">
<td><p>Filename</p></td>
<td><p>Name of a single image file to add. Note: This works only when Use HTML format is defined in the EMail Message tab.</p></td>
</tr>
<tr class="even">
<td><p>Content ID</p></td>
<td><p>Automatically entered</p></td>
</tr>
<tr class="odd">
<td><p>Image</p></td>
<td><p>The full path to image (used when embedding multiple images) Click Edit to edit the path; click Delete to delete the path to the image</p></td>
</tr>
<tr class="even">
<td><p>Content ID</p></td>
<td><p>The image content ID (used when embedding multiple images) Click Edit to edit the content ID; click Delete to delete the Content ID</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect1">

## Tips

<div class="sectionbody">

<div class="paragraph">

**How to attach a particular file to the e-mail**

</div>

<div class="paragraph">

You can attach "Result Files" of a particular type(s) to the e-mail, either individually or as a single ZIP archive by checking the option "Attach files to message" and selecting the types to attach under "Select the result files types to attach". What is a Result File and how to create one? Well, just about any file created during a pipeline may become a Result File, you only need to mark it as such. There are several ways to do that:

</div>

<div class="olist arabic">

1.  When creating a file with a transform that supports it, allow it to mark the file as a Result File. For example the "Text file output" transform has the check-box "Add filenames to result" on the File tab for that purpose. The file type will be General.

2.  Use the transform "Set files in result" from the workflow category to mark a file as a result file of a particular type. This transforms expects the file name to be in a field (you can use e.g. "Generate Rows" in combination with "Add constants" to produce a row containing the file name).

</div>

<div class="paragraph">

**Attaching pipeline’s log**

</div>

<div class="paragraph">

You can attach a log file with log of a pipeline run by the workflow prior to sending the mail as follows. This assumes the workflow consists of three actions: Start → Pipeline → Mail.

</div>

<div class="olist arabic">

1.  In the Pipeline workflow action’s options, check "Specify logfile?" and enter a name and extension for the file. You can also specify the desired log level.

2.  In the Mail workflow action’s options, check "Attach files to message" and select (at least) the file type "Log".

3.  The next time the mail is send, it will have the pipeline’s log attached.

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:15 +0200

</div>

</div>

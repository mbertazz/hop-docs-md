<div id="header">

# <span class="image image-doc-icon">![Mail transform Icon](../assets/images/transforms/icons/mail.svg)</span> Mail

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
<p>The Mail transform uses an SMTP server to send an email using data from the pipeline fields.</p>
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

### Addresses

<div class="paragraph">

This tab defines the sender, contact person, and recipients of a Hop-generated email.

</div>

Option

</div>

</div>

</div>

</div>

Description

Transform name

Name of the transform.

**Destination**

Destination address

The destination for the email. This can be a single address, a space-separated list of addresses , or an email alias for a distribution list

Cc

An email address, space-separated list of email addresses, or a distribution list to send a carbon copy of the email to.

Bcc

An email address, space-separated list of email addresses, or a distribution list to send a blind carbon copy of the email to.

**E-mail sender**

Sender name

The name of the person you want the email to be from.

Sender Address

The email address of the person or account you want the email to be from.

Reply to

The email address that recipients will use if they reply to the email.

Contact

The name of the person to contact regarding the email’s contents.

Contact phone

The phone number of the contact person defined in the previous field.

<div class="sect2">

### Server

<div class="paragraph">

This tab contains details for your SMTP server, including authentication and encryption.

</div>

Option

</div>

Description

**Mail Server Connection**

Mail Connection

If a mail server connection is selected here, the rest of this tab is ignored. The server configuration will be taken from the [Mail Server Connection](metadata-types/mail-server-connection.tPlluTyN3h) metadata item.

**SMTP Server**

SMTP server

URL, hostname, or IP address of your SMTP server.

Port

Port number for your SMTP service.

**Authentication**

Use authentication

If checked, you will be able to enter an SMTP username and password in the next few fields.

Use XOAUTH2

If checked XOAuth2 will be used to authenticate with the server.

Authentication user

The SMTP username to use for server authentication.

Authentication password

The password for the previously defined SMTP username.

Use secure authentication

If checked you will be able to specify SSL or TLS encryption in the next field.

Secure connection type

Determines whether the server will use SSL or TLS encryption protocols.

Check server identity?

Check the server identity?

Trusted hosts

A list of trusted hosts separated by a space, for example: "host1 host2 host3"

<div class="sect2">

### Email Message

<div class="paragraph">

This tab determines the text content of the email.

</div>

Option

</div>

Description

**Message Settings**

Include date in message?

If checked, the date will be printed in the email body.

Only send comment in mail body

If checked, information about the pipeline will not be included.

Use HTML format in mail body?

If checked, this email will be in HTML format instead of plain text.

Encoding

Character encoding for the text of an HTML email.

Manage priority

If checked, enables the following two fields to set email priority and importance levels.

Priority

The priority level to assign in the email metadata.

Importance

The importance level to assign in the email metadata.

Sensitivity

This allows to set the "Sensitivity" header information to Normal, Personal, Private, Confidential.

**Message**

Subject

The email subject line.

Comment

The email body. See also the option "Attach content file".

Include message (eml) in output

Select this flag to store the generated IMF code ([Internet Message Format - RFC 5322](https://datatracker.ietf.org/doc/html/rfc5322)) in a stream field. You can then create an EML file with this field by using a [Text file output](pipeline/transforms/textfileoutput.tPlluTyN3h) transform

Message (eml) output filename

If the above flag is enabled, specify the name of the field that contains the generated IMF code

<div class="sect2">

### Attached Files

<div class="paragraph">

This tab contains options for file attachments.

</div>

Option

</div>

Description

**Attached content file**

Attach content file?

If checked, you will use the next two fields to define which stream fields you want to use to create dynamic content of the mail message.

Content fieldname

The given field contains the field that points to a file that is loaded for the content. Internally this file content is put into is MimeBodyPart (using application/x-any).

Filename fieldname

This field sets the filename within the MimeBodyPart.

**Attached filenames**

Dynamic filenames?

If checked, you will use the next two fields to define which stream fields you want to use to create dynamic filenames for your attachments.

Filename field

The stream field you want to use for dynamic filenames of attachments. This can also be a folder name, in which case you would use the Wildcard field to determine filenames.

Wildcard field

A regular expression that creates dynamic filenames for attachments.

Filename/foldername

A static name and location of a file to attach.

Include subfolders

If checked, will attach files in subfolders of the specified folder.

Wildcard

A regular expression that identifies a file to attach.

**Zip files**

Zip files

If checked, multiple file attachments will be zipped into a single archive before attaching to the email.

Is zip filename dynamic?

If checked, the name of the zip archive will be determined by a data stream.

Zipfilename field

The data field to use for the name of the zip archive.

Zip filename

A static name for the zip archive.

Zip files if size greater than

Only archives file attachments if their combined size is above this number (in bytes).

<div class="sect2">

### Embedded Images

<div class="paragraph">

This tab contains options for embedded images in HTML emails.

</div>

| Option             | Description                                                                                 |
| ------------------ | ------------------------------------------------------------------------------------------- |
| Filename           | The name and location of the file you want to embed in the email.                           |
| Content ID         | A unique identifier for this file. Hop will generate one if you don’t specify one yourself. |
| \#                 | The order that the attachment will be processed.                                            |
| Image              | The name of as added image.                                                                 |
| Content ID (field) | The content ID of an added image.                                                           |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:34 +0200

</div>

</div>

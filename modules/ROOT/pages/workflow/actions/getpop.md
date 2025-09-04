<div id="header">

# Get mails (POP3/IMAP)

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Get mails (POP3/IMAP)` action retrieves mails from a POP3 or IMAP server and stores them into one or more files.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General tab

Option

</div>

</div>

</div>

</div>

Description

**Mail Server Connection**

Mail Connection

If a mail server connection is selected here, the rest of this tab is ignored. The server configuration will be taken from the [Mail Server Connection](metadata-types/mail-server-connection.6XSScG0A6m) metadata item.

Server Settings

Workflow action name

The name of the workflow action.

Source Host

The host name or IP-address of the pop server.

Use SSL

If checked A secure connection will be used to communicate with the server.

Use XOAUTH2

If checked XOAuth2 will be used to authenticate with the server.

Port

The port to run the SSL POP3 or IMAP connection over.

Username

The username to log in with.

Password

The password to log in with.

Use proxy

check to enable proxy authentication

Proxy username

proxy authorised user (only available if `Use proxy` is checked)

Protocol

<div class="content">

<div class="paragraph">

Choose between

</div>

<div class="ulist">

  - POP3

  - IMAP

  - MBOX

</div>

</div>

Test connection

Click this button to test the provided settings

Target folder

Target directory

The directory in which you want to put the mail files.

Create folder

check to create the specified target directory if it doesn’t exist

Target filename pattern

The filename pattern (start of filename). The default pattern is `name_{SYS|hhmmss_MMddyyyy|}_#IdFile#.mail`

Save message content

check to save the message body text for retrieved email messages

Get mail attachment

check to save the attachments for retrieved email messages

Different folder for attachment

check to save the attachments for retrieved email messages in a different folder than the message body

Attachment files folder

the folder to store attachments for retrieved email messages in (only available if `Different folder for attachment` is checked)

Attachment wildcard

the wildcard to use to save attachments for retrieved email messages (none = all)

<div class="sect2">

### Settings tab

Option

</div>

Description

Action

This dropdown box lets you specify the action to perform on the retrieved email messages:

\* Get messages \* Move messages to folder (IMAP only since POP3 only knows one folder "INBOX") \* Delete messages

POP3 settings

Retrieve

<div class="content">

<div class="paragraph">

Select the e-mails to retrieve:

</div>

<div class="ulist">

  - All emails

  - Retrieve first …​ emails

</div>

</div>

Retrieve the .. first emails

Allows you to specify the number of emails to retrieve if "first …​ emails" is selected.

Delete emails after retrieval

check to delete the mails on the pop server after retrieval.

IMAP settings

Option

Description

IMAP folder

the folder on the IMAP server to retrieve messages from

Include subfolders

check to select messages for subfolders from the selected IMAP folder

Retrieve

<div class="content">

<div class="paragraph">

choose one of

</div>

<div class="ulist">

  - Get all messages

  - Get new messages

  - Get old messages

  - Get read messages

  - Get unread messages

  - Get flagged messages

  - Get not flagged messages

  - Get draft messages

  - Get not draft messages

  - Get answered messages

  - Get not answered messages

</div>

</div>

Retrieve the first…​emails

specify the number of messages to retrieve

After retrieved

<div class="content">

<div class="paragraph">

specfiy the action to perform on email messages after retrieval:

</div>

<div class="ulist">

  - Do nothing

  - Delete message

  - Move message to folder

</div>

</div>

Move to folder

move the retrieved messages to a different folder on the IMAP server (if `Move message to folder` was selected)

Create folder

create a folder on the IMAP server to move the messages to if it doesn’t exist.

<div class="sect2">

### Filters tab

Option

</div>

Description

Header

Sender (FROM)

messages will be filtered on sender

Recipient (TO)

messages will be filtered on recipient

Subject

messages will be filtered on subject

Content

Option

Description

Body

messages will be filtered on the specified text in the email body

Received date

Option

Description

Condition

<div class="content">

<div class="paragraph">

Choose a date or date range. The available options are

</div>

<div class="ulist">

  - None (default, don’t filter on received date)

  - Equal to `Date 1`

  - Smaller than `Date 1`

  - Greater than `Date 1`

  - Between `Date 1` and `Date 2`

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:14 +0200

</div>

</div>

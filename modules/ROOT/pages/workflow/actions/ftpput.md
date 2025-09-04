<div id="header">

# Put a file with FTP

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The Put A File With FTP action uploads a file to an FTP server.

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

Action name

The name of the workflow action.

General tab

FTP server name/IP address

The name of the server or the IP address.

Port

The port number the FTP server connects on.

Username

The user name associated with the FTP server account.

Password

The password associated the FTP server account.

Proxy host

Proxy server host name.

Proxy port

Proxy server port number.

Proxy username

Proxy server account user name.

Proxy password

Proxy server account password.

Test connection

Tests the configured connection.

Advanced settings

Binary mode

Enable if files must be transferred in binary mode.

Timeout

The FTP server timeout in seconds.

Use Active FTP connection

Enable if you are connecting to the FTP server using Active mode; you must set your firewall to accept connections to the port that your FTP client will open. The default is Passive mode.

Control Encoding

Select the character encoding to use for determining special characters in file names. For Western Europe and the USA, ISO-8859-1 usually suffices. Select encoding that is valid for your server.

<div class="sect2">

### Files tab

Option

</div>

Description

Source (local) files

Local directory

The local directory from which to upload.

Browse…​

Browse the filesystem for a local directory.

Wildcard (regular expression)

If you are uploading multiple files, specify a regular expression that defines the set of files you want to upload.

Remove files after transferal?

Enable to remove files from the local directory after they’ve been uploaded.

Don’t overwrite files

Enable to skip files that already exist in the remote directory.

Remote directory

The directory on the FTP server to upload files to.

Test folder

Test if the remote directory exists. This connects to the FTP server and attmepts to access the specfied directory. If this directory doesn’t exist, the upload fails.

<div class="sect2">

### Socks Proxy

| Option   | Description                                                   |
| -------- | ------------------------------------------------------------- |
| Host     | The Socks proxy server’s host name.                           |
| Port     | The port number the Socks proxy connects on.                  |
| Username | The user name associated with the Socks proxy server account. |
| Password | The password associated with the Socks proxy server account.  |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:13 +0200

</div>

</div>

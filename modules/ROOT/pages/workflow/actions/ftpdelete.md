<div id="header">

# FTP delete

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `FTP delete` action deletes files on an FTP server.

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

Server

Protocol

<div class="content">

<div class="ulist">

  - FTP

  - FTPS

  - SFTP

  - SSH

</div>

</div>

FTP server name/IP address

The name of the server or the IP address.

Server Port

Port number of the FTP server.

Username

The user name associated with FTP server account.

Password

The password associated the FTP server account.

Connection type

<div class="content">

<div class="paragraph">

FTPS connection type.

</div>

<div class="ulist">

  - FTP

  - Implicit SSL

  - Authentication SSL

  - Implicit SSL with crypted FTP connection

  - Authentication TLS

  - Implicit TLS

  - Implicit TLS with crypted FTP connection

</div>

</div>

Use proxy

Whether or not to use a proxy.

Proxy host

Proxy server host name.

Proxy port

Proxy server port number.

Proxy username

Proxy server account user name.

Proxy password

Proxy server account password.

Use Public Key

Whether or not to use a public key with an SSH connection.

Key file

The public key file.

Browse…​

Browse the filesystem for a public key file.

Key passphrase

The public key passphrase.

Test connection

Tests the configured connection.

<div class="sect2">

### Files tab

Option

</div>

Description

Advanced

Timeout

The timeout period.

Use active FTP connection

Enable if you are connecting to the FTP server using Active mode; you must set your firewall to accept connections to the port that your FTP client will open. The default is Passive mode.

Remote

Copy previous results to args?

Remote directory

The directory on the remote FTP server.

Check folder

Checks if the directory exists.

Wildcard (regular expression)

Success condition

Success on

<div class="content">

<div class="paragraph">

The success condition

</div>

<div class="ulist">

  - All works fine

  - At least we delete x files

  - Nr errors less than

</div>

</div>

Limit files

Sets a limit to the number of deleted files (default 10).

<div class="sect2">

### Socks Proxy tab

| Option   | Description                                        |
| -------- | -------------------------------------------------- |
| Host     | Socks Proxy host name.                             |
| Port     | Socks Proxy port number.                           |
| Username | User name associated with the Socks Proxy account. |
| Password | Password associated with the Socks Proxy account.  |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:13 +0200

</div>

</div>

<div id="header">

# Get a file with FTP

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Get a file with FTP` action retrieves one or more files from an FTP server.

</div>

<div class="paragraph">

This workflow action does not "crawl" systems.

</div>

<div class="paragraph">

It will not, for example, access a remote directory and go to other directories to find files that match a wildcard.

</div>

<div class="paragraph">

This workflow retrieves files from one directory exclusively.

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

FTP server name/IP address

The name of the server or the IP address.

Server Port

Port number of the FTP server.

Username

The user name associated with FTP server account.

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

Advanced

Binary mode

Enable if files must be transferred in binary mode.

Timeout

The FTP server timeout in seconds.

Use Active FTP connection

Enable if you are connecting to the FTP server using Active mode; you must set your firewall to accept connections to the port that your FTP client will open. The default is Passive mode.

Control Encoding

Encoding matters when retrieving file names that contain special characters. For Western Europe and the USA, ISO-8859-1 usually suffices. Select encoding that is valid for your server.

<div class="sect2">

### Files tab

Option

</div>

Description

Remote

Remote directory

The remote directory on FTP server from which files are taken.

Wildcard (regular expression)

Regular expression when you want to select multiple files. For example: .txt$ : get all text files A.ENG:0-9.txt : files starting with A, ending with a number and .txt

Remove files after retrieval

Remove the files on the FTP server, but only after all selected files have been successfully transferred.

Move files after retrieval

Move the files on the FTP server to the folder specified below, but only after all selected files have been successfully transferred.

Move to Folder

Moves files to specified folder on the server.

Create Folder

Creates folder that will contain files.

Local

Target Directory

The directory where you want to place the retrieved files.

Include date in filename

Adds the system date to the filename (\_20101231).

Include time in filename

Adds the system time to the filename (\_235959).

Specify date time format

Enable to provide your own date/time format; the default is yyyyMMdd'\_'HHmmss

Date time format

Select date time format.

Add date before extension

Adds date to the file name before the extension.

Don’t overwrite files

Enable to skip, rename, or fail if a file with an identical name already exists in the target directory.

If file exists

Action to take if a file with an identical name already exists in the target directory.

Add filenames to result

Enable to add the file name(s) read to the result of this workflow.

<div class="sect2">

### Advanced tab

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Success on</p></td>
<td><div class="content">
<div class="paragraph">
<p>Sets conditions of success. The available options are:</p>
</div>
<div class="ulist">
<ul>
<li><p>All works fine (default)</p></li>
<li><p>At least we got x files</p></li>
<li><p>Nr errors less than</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Limit files</p></td>
<td><p>Sets number of files associated with a condition of success.</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Socks Proxy

| Option   | Description                                        |
| -------- | -------------------------------------------------- |
| Host     | Socks Proxy host name.                             |
| Port     | Socks Proxy port number.                           |
| Username | User name associated with the Socks Proxy account. |
| Password | Password associated with the Socks Proxy account.  |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:12 +0200

</div>

</div>

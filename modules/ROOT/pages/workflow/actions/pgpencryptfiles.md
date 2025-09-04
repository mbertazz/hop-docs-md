<div id="header">

# Encrypt files with PGP

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Encrypt files with PGP` action can be used to encrypt and sign files using the GnuPG package.

</div>

<div class="paragraph">

GnuPG package must be installed in the runtime environment and encryption keys added to the runtime user keystore for this to function.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General tab

| Option                        | Description                                                            |
| ----------------------------- | ---------------------------------------------------------------------- |
| Action name                   | The name of the workflow action.                                       |
| GPG location                  | The file path of the GnuPG executable (e.g. `/usr/bin/gpg`).           |
| Use ASCII mode                | Whether or not to use ASCII mode when encrypting.                      |
| Include subfolders            | Whether or not to include subfolders.                                  |
| Copy previous results to args |                                                                        |
| Action                        | Encrypt, Sign, Sign and Encrypt                                        |
| File/Folder source            | The file to encrypt, can be added to the Files/Folders list using Add. |
| File/Folder destination       | The destination of the encrypted files.                                |
| Wildcard                      | A regex wildcard.                                                      |
| Files/Folders                 | The files to encrypt.                                                  |

</div>

<div class="sect2">

### Destination file tab

Option

</div>

</div>

</div>

</div>

Description

Destination file

Create destination folder

Whether or not to create the destination folder.

Destination is a file

Whether or not the destination is a file.

Do not keep folder structure

Whether or not to keep the folder structure. If unchecked, the folder structure is flattened.

Add date to filename

Adds the date to the file name.

Add time to filename

Adds the time to the file name.

Specify Date time format

Whether or not to specify the date time format.

Date time format

The format of the date time.

Add date before extension

Before or after extension.

If destination file exists

<div class="content">

<div class="ulist">

  - Do nothing

  - Overwrite the destination file

  - Create file with unique name

  - Delete source file

  - Move source file to folder

  - Fail

</div>

</div>

Move to folder

Destination folder

The destination folder.

Create folder

Whether or not to create the folder.

Add date

Adds the date.

Add time

Adds the time.

Specify format

Whether or not to specify the date time format.

Add date before extension

The format of the date time.

If file exists in destination folder

<div class="content">

<div class="ulist">

  - Do nothing

  - Overwrite the destination file

  - Create file with unique name

  - Delete source file

  - Move source file to folder

  - Fail

</div>

</div>

<div class="sect2">

### Advanced Tab

Option

</div>

Description

Success On

Success condition

<div class="content">

<div class="paragraph">

Which condition to validate for a successful run

</div>

<div class="ulist">

  - Success when all works

  - Success when at least x files decrypted

  - Success when number of errors lesser than

</div>

</div>

Nr error lesser than

Success if errors lesser than.

Result files name

Add files to result files name

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:21 +0200

</div>

</div>

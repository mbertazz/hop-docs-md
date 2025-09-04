<div id="header">

# Move Files

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Move files` action moves a number of files and/or folders to alternate locations on your file system.

</div>

<div class="paragraph">

This also works on remote file systems via [VFS](vfs.7gXLLm3ax5), e.g. with FTP.

</div>

<div class="paragraph">

Example for a move (rename) of a file on a FTP server (username/password must be given for source and destination).

</div>

<div class="ulist">

  - File source: ftp://username:password@ftpserver/dir/testfile\_partly.txt

  - File destination: ftp://username:password@ftpserver/dir/testfile.txt

  - Check "Destination is a file" in the "Destination File" tab.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General Tab

<div class="paragraph">

In this tab you can specify the files and/or folders to move.

</div>

Option

</div>

</div>

</div>

</div>

Description

Action name

The name of the workflow action.

Settings

Include Subfolders

Also move the content of sub-folders

Move empty folders

Also move empty folders

Simulate

Don’t actually move anything, just see if it’s possible at all.

Copy previous results to args

Use the result files from the previous workflow action (actions) as files and/or folders to move.

Files / Folders

You can specify the list of files or folders with destinations and wildcards in this grid.

<div class="sect2">

### Destination File Tab

<div class="paragraph">

In this tab you can specify the destination of the files and/or folders and their new filenames.

</div>

Option

</div>

Description

Desitnation file

Create destination folder

Use this option to create the destination folder

Destination is a file

Check this option if you want to move files

Do not keep folder structure

flatten the sub-folder structure if any sub-folders are used

Add date to destination filename

Add a date to the destination filename (yyyyMMdd or 20091231)

Add time to destination filename

Add a time to the destination filename (HHmmss or 235959)

Specify date time format

<div class="content">

<div class="paragraph">

Allows you to specify your own date-time format. The default is yyyyMMdd'\_'HHmmss

</div>

</div>

Add date before extension

Add the data part before the file extension.

If destination file exists

<div class="content">

<div class="paragraph">

Select one of these options:

</div>

<div class="ulist">

  - Do nothing

  - Overwrite destination file

  - Create file with unique name

  - Delete source file

  - Move source file to folder : use the lower part of the dialog (next option in this grid)

  - Fail

</div>

</div>

Move to folder

Destination folder

The target folder to move to

Create folder

Add date

Add time

Specify format

<div class="content">

<div class="paragraph">

Allows you to specify your own date-time format. The default is yyyyMMdd'\_'HHmmss

</div>

</div>

If file exists in destination folder

<div class="content">

<div class="paragraph">

Select one of these options:

</div>

<div class="ulist">

  - Do nothing

  - Overwrite file

  - Unique name

  - Fail

</div>

</div>

<div class="sect2">

### Advanced Tab

Option

</div>

Description

Success on

Success condition

<div class="content">

<div class="paragraph">

Select one of these option:

</div>

<div class="ulist">

  - Success when all works fine (default)

  - Success when at least x files moved (specify x in the limit field below)

  - Success when number of errors lesser than (specify the max number of errors in the limit field below)

</div>

</div>

Nr errors lesser than

The number of files moved or the number of errors, depending on the success option above

Result files name

Add the target file names to the list of result files of this workflow action for use in the next workflow actions.

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:16 +0200

</div>

</div>

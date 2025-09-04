<div id="header">

# Zip File

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Zip file` action creates a standard ZIP archive using the options you specify in the dialog.

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

Source files

Get arguments from previous

<div class="content">

<div class="paragraph">

This checkbox takes the filename specification from the result rows of a previous workflow action. This is what will be taken from the rows.

</div>

<div class="ulist">

  - The first field has to contain the filename or folder.

  - The second field should contain the inclusion wildcard

  - The third field should contain the exclusion wildcard.

  - The fourth field should contain the target zip file (this can be different for each file).

</div>

</div>

Source directory/file

The source directory of the files to be zipped

Include wildcard (RegExp)

The wildcard (regular expression) of the files to include in the zip archive

Exclude wildcard (RegExp)

The wildcard (regular expression) of the files to exclude from the zip archive

Include sub-folders

Enable this option to search files in sub-folders

Zip file

Zip file name

The full name of the destination archive

Create parent folder

Create the parent folder if it doesn’t exist

Include date in filename

Add the date to the file name

Include time in filename

Add the time to the file name

Specify date time format

Allows you to specify the date/time format mask,

Date time format

The date time format mask, like yyyy/MM/dd HHmmss

Show filename

Shows an example filename based on the options you specified

<div class="sect2">

### Advanced tab

Option

</div>

Description

Advanced

Compression

<div class="content">

<div class="paragraph">

The compression level to be used. The options are \* Default \* Best Compression \* Best speed

</div>

</div>

If zip file exists

<div class="content">

<div class="paragraph">

The action to take when there already is a file at the target destination. The options

</div>

<div class="ulist">

  - Create new with unique name

  - Append to existing

  - Do nothing (default)

</div>

</div>

After zipping

<div class="content">

<div class="paragraph">

The action to take after zipping. The options are

</div>

<div class="ulist">

  - Do nothing (default)

  - Delete files

  - Move files

</div>

</div>

Move files to

The target directory to move the source files to after zipping

Create folder

Create the folder to move to

Stored source path depth

<div class="content">

<div class="paragraph">

This is the part of the source file path which is taken over in the ZIP file archive structure.

</div>

</div>

Result file name

Add Zip file to result

Enable this option to add the target zip file(s) to the result

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:37 +0200

</div>

</div>

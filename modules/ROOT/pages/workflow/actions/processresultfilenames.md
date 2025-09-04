<div id="header">

# Process result filenames

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Process result filenames` action allows you to copy, move or delete a number of files and/or folders to alternate locations on your file system.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

Option

</div>

</div>

</div>

Description

Workflow action name

The name of the workflow action.

Action

<div class="content">

<div class="paragraph">

Choose one of

</div>

<div class="ulist">

  - Copy (default)

  - Move

  - Delete

</div>

</div>

Destination folder

Define the target folder

Create destination folder

use this option to create the destination folder when it does not exist

Replace existing file

use this option to overwrite existing files

Remove source filenames from result

use this option to remove the processed filenames from the list of result filenames

Add destination filenames to result

use this option to add the the processed target filenames to the list of result filenames

Add date to filename

add the date to the target filename, e.g. yyyyMMdd

Add time to filename

add the time to the target filename, e.g. HHmmss

Specify date time format

allows you to specify your own date-time format, e.g. yyyyMMdd\_HHmmss

Add date before extension

when this option is not checked, the date/time is appended after the file extension

Limit to

Limit action to

Define include and exclude wildcards

Wildcard (RegExp)

The regular expression wildcard to use to include files

Exclude Wildcard (RegExp

The regular expression wildcard to use to exclude files

Success On

Success on

<div class="content">

<div class="paragraph">

Success condition : select one of these option:

</div>

<div class="ulist">

  - Success when all works fine

  - Success when at least x files moved (specify x in the limit field below)

  - Success when number of errors lesser than (specify the max number of errors in the limit field below)

</div>

</div>

Nr errors lesser than

The number of errors or number of files specified in the `Success on` option above.

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:23 +0200

</div>

</div>

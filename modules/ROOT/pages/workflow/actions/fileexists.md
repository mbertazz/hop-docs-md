<div id="header">

# File Exists

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `File exists` action verifies that a specified file exists and can be reached from the machine on which Apache Hop is running.

</div>

<div class="paragraph">

You must provide the file name.

</div>

<div class="paragraph">

Hop returns a True or False value depending on whether the file exists.

</div>

<div class="paragraph">

The File Exists action can be an easy integration point with other systems.

</div>

<div class="paragraph">

For example, suppose you have a three-part data warehouse load process.

</div>

<div class="paragraph">

The first part runs in PERL.

</div>

<div class="paragraph">

You have batch scripts that accesses data from a remote location, performs first-level row processing, and outputs the data to a specified directory.

</div>

<div class="paragraph">

You do not want to start the workflow until this is done, so you put the workflow on a scheduler.

</div>

<div class="paragraph">

As soon as the task is complete, the file is placed in a well-known location so that the "file exists." That is the signal that launches the workflow for final processing.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option         | Description                                                                                                                         |
| -------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| Action name    | The name of the workflow action.                                                                                                    |
| Filename field | Specify the filename and path of the file to verify. Click Browse to navigate to the source file or folder through the VFS browser. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:11 +0200

</div>

</div>

<div id="header">

# Check Files Locked

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Check files locked` action loops over a list of files to check if they are locked by another process.

</div>

<div class="paragraph">

The way that it verified is by renaming a file to the same name as before.

</div>

<div class="paragraph">

On certain operating systems (MS Windows systems in particular) this operation will fail if the file is locked.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                                   | Description                                                                                                    |
| ---------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| Action name                              | The name of the workflow action.                                                                               |
| Settings: Include subfolders             | Enable this option to also check files in subfolders of specified folders                                      |
| Settings: Copy previous results to args? | Pass the result rows of a previous workflow action execution to the files list of this action.                 |
| Files/Folders                            | The files or folders to check.                                                                                 |
| Wildcard                                 | The wildcards are Java Regular expressions. For instance .\*\\.txt would check any file with a .txt extension. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:02 +0200

</div>

</div>

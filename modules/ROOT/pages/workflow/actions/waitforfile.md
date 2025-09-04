<div id="header">

# Wait for file

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Wait for file` action waits and periodically checks for the existence a file.

</div>

<div class="paragraph">

This workflow action will sleep and periodically check whether the specified file exists after which the flow will continue.

</div>

<div class="paragraph">

The action can either wait indefinitely for the file or it can time out after a certain time.

</div>

<div class="admonitionblock warning">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Warning
</div></td>
<td>This action requires the definition of a single file. Variables can be used, but this action does not support wildcards, and therefore can’t wait for the existence of multiple files according to a filename pattern.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                 | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| ---------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Action name            | The name of the workflow action.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| File name              | The name and path of the file to wait for.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Maximum timeout        | The maximum timeout in number of seconds, or 0 to wait indefinitely.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Check cycle time       | The time in seconds between checking for the file. The file will be checked for in the start of the execution and then every "check cycle time" seconds until the maximum timeout is reached. A workflow can only be stopped every "check cycle time" as else the workflow action will be sleeping. A check cycle time of 30 or 60 seconds seems to be a good trade-off between the period until the file is detected and the required CPU usage.                                                                                                                                                                                                                                                                                                         |
| Success on timeout     | This option determines what to do when the "Maximum timeout" has been reached and the file has not been found.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| File size check        | When this is switched on, once the workflow action detects the specified file, and will only continue if the file size hasn’t changed the last check "cycle time seconds". This is useful in cases where a file is created in the final place, and another process is still writing to the file. (As a best practice, files should be written to a temporary location, and then moved when completed) This is the number seconds after which the flow will continue even if the file was not created. When the timeout is reached the "Success on timeout" option will determine whether the outgoing success or failure hop will be followed. If enabled, the workflow action will evaluate successfully, and the outgoing success hop will be followed. |
| Add filename to result | Add the filename to the result fields for this workflow action.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:32 +0200

</div>

</div>

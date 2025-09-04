<div id="header">

# Google Storage Authentication

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

This metadata type can be used to add a new Google Cloud Storage file system to your project. This allows you to connect to multiple storage accounts at the same time.

</div>

<div class="admonitionblock note">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Note
</div></td>
<td>We support variables, but VFS filesystems are only loaded at startup. This means only variables from the Hop system, project or environment level are supported</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option              | Description                                                        |
| ------------------- | ------------------------------------------------------------------ |
| Name                | Name of the file system, this will be used in file paths `name://` |
| Description         | Description field for additional information                       |
| Storage Account Key | The primary or secondary key of the storage account                |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:12 +0200

</div>

</div>

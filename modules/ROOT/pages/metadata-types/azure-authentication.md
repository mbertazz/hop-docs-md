<div id="header">

# Azure Authentication

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

This metadata type can be used to add a new Azure Storage file system to your project. This allows you to connect to multiple storage accounts at the same time. Using an Azure authentication to connect to a blob store requires you to specify the container name in the path. For example, if your Azure authentication is named az, you would need to specify the container as **az:/containerName**.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option               | Description                                                                        |
| -------------------- | ---------------------------------------------------------------------------------- |
| Name                 | Name of the file system, this will be used in file paths `name://`                 |
| Description          | Description field for additional information                                       |
| Storage Account Name | Name of the storage account in Azure                                               |
| Storage Account Key  | The primary or secondary key of the storage account                                |
| Storage Endpoint     | Leave empty for default Azure endpoints or fill in when using a compatible service |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:08 +0200

</div>

</div>

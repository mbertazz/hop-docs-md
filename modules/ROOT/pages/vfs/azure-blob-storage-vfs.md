<div id="header">

# Azure Storage

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>We only support hierarchical namespaces, make sure the storage container is configured as such.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Scheme

<div class="sectionbody">

<div class="paragraph">

The scheme you can use to access your files in Azure Blob Storage is

</div>

<div class="paragraph">

`azure://`

</div>

</div>

</div>

<div class="sect1">

## Configuration

<div class="sectionbody">

<div class="paragraph">

To get access to your Azure storage files you need to configure a few things:

</div>

<div class="ulist">

  - The name of your storage account in Azure

  - The key of your storage account in Azure

</div>

<div class="paragraph">

You can find both in the Storage Accounts section of your Azure portal.

</div>

<div class="ulist">

  - A file block size : This needs to be a multiple of 512 bytes.

</div>

<div class="paragraph">

All 3 options can be set in either the Hop GUI options dialog (Menu: Tools / Options) or using the following Hop Conf (`hop-conf.sh` or `hop-conf.bat`) command line options:

</div>

<div class="listingblock">

<div class="content">

``` highlight
      -aza, --azure-account=<account>
                            The account to use for the Azure VFS
      -azi, --azure-block-increment=<blockIncrement>
                            The block increment size for new files on Azure,
                              multiples of 512 only.
      -azk, --azure-key=<key>
                            The key to use for the Azure VFS
```

</div>

</div>

<div class="paragraph">

Once done you will see an `azure` entry in the central `hop-config.json` file:

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
  "azure" : {
    "account" : "storage-account-name",
    "key" : "a/key-comprised-of-a-long-set-of-characters-and-numbers==",
    "blockIncrement" : "1024"
  }
}
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Usage and testing

<div class="sectionbody">

<div class="paragraph">

To test if the configuration works you can simply upload a small CSV file in an Azure Storage folder and then use File/Open in Hop GUI. Then you type in `azure://` as a file location and hit enter (or click the refresh button). Browse to the CSV file you uploaded and open it. If all is configured correctly you should be able to see the content in the Hop GUI.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:57 +0200

</div>

</div>

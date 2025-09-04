<div id="header">

# Hop File Dialog

</div>

<div id="content">

<div class="paragraph">

The Hop File Dialog is a versatile tool you’ll use often while working in Hop Gui.

</div>

<div class="paragraph">

This dialog offers a lot more than basically selecting and saving files. Among other things, it enables you to work with VFS file sytems directly, provides file/folder information, lets you bookmark files and folders.

</div>

<div class="paragraph">

The list below walks you through the options that are at your disposal in the Hop File Dialog.

</div>

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
<td>if you prefer your operating system’s native file dialog instead of the Hop dialog, change variable <code>HOP_USE_NATIVE_FILE_DIALOG</code> to <code>Y</code> in <code>Tools → Edit Config Variables</code>.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

   

</div>

<div class="paragraph">

<span class="image">![file dialog](/images/hop-gui/file-dialog.png)</span>

</div>

<div class="olist arabic">

1.  **Main Toolbar**
    
    <div class="olist loweralpha">
    
    1.  <span class="image">![home](/images/icons/home.svg)</span> Navigate to the user home folder
    
    2.  <span class="image">![project](/images/icons/project.svg)</span>Navigate to the project home folder
    
    3.  <span class="image">![navigate up](/images/icons/navigate-up.svg)</span>Navigate to the parent folder
    
    4.  <span class="image">![navigate back](/images/icons/navigate-back.svg)</span>Navigate to the previous path from your history
    
    5.  <span class="image">![navigate forward](/images/icons/navigate-forward.svg)</span>Navigate to the next path from your history
    
    6.  <span class="image">![refresh](/images/icons/refresh.svg)</span>Refresh
    
    </div>

2.  **File path**. Displays the current file path. The file path can be used to directly enter (copy/paste) your desired path. This not only works with local files, you can also use all supported [VFS file systems](vfs.QijBcVXCT4).

3.  **File extensions**. This list is populated from plugins, so there may be differences in the file types you have available. By default, this list includes:
    
    <div class="olist loweralpha">
    
    1.  Workflows
    
    2.  Pipelines
    
    3.  CSV files
    
    4.  JSON files
    
    5.  Log files
    
    6.  Markdown files
    
    7.  SAS 7 BDAT files
    
    8.  SVG files
    
    9.  TXT files
    
    10. XML files
    
    </div>

4.  **Bookmarks**: Bookmark your favorite files and folders for easy and fast access. Tools → Options contains an option to specify whether you want or don’t want global bookmarks in the file dialog (global by defaul).
    
    <div class="olist loweralpha">
    
    1.  <span class="image">![bookmark add](/images/icons/bookmark-add.svg)</span>Add the selected file or folder as a bookmark
    
    2.  <span class="image">![delete](/images/icons/delete.svg)</span>Remove the selected bookmark
    
    </div>

5.  **File/folder browser**: Browse your current file system, create folders and toggle hidden files and folders.
    
    <div class="olist loweralpha">
    
    1.  <span class="image">![folder add](/images/icons/folder-add.svg)</span>Create folder
    
    2.  <span class="image">![preview](/images/icons/preview.svg)</span>Show or hide hidden files and directories
    
    </div>

6.  **File/folder information**
    
    <div class="olist loweralpha">
    
    1.  file and folder name
    
    2.  last modified date
    
    3.  Readable, writable, executable flags
    
    </div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:43 +0200

</div>

</div>

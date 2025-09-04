<div id="header">

# File Explorer Perspective

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Icon: <span class="image">![folder](/images/icons/folder.svg)</span>

</div>

<div class="paragraph">

Keyboard shortcut: `CTRL-Shift-E`

</div>

</div>

</div>

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The file explorer perspective is where you’ll perform a lot of your file operation. This perspective contains handlers for the most common file types known to Hop. These are obviously hwf (workflows) and hpl (pipelines), but also JSON, CSV, TXT, XML, Markdown, SVG, Log and SAS 7 BDAT files. The File Explorer perspective is also where you’ll manage version control for your projects through [Git integration](hop-gui/hop-gui-git.SKQXf3it7V).

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
<td>Even though fully functional, the editor for most file types in the File Explorer is rather basic. Expect these to evolve in the next Hop releases, or check the <a href="http://hop.apache.org/community/contribution-guides/code-contribution-guide/">code contribution guide</a> if you’d like to help us improve Hop by contributing file editors.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## File operations

<div class="sectionbody">

<div class="paragraph">

The file operations are available through a number of toolbar options:

</div>

<div class="imageblock">

<div class="content">

![File explorer toolbar items](/images/hop-gui/perspective-explorer-toolbar-items.png)

</div>

</div>

<div class="ulist">

  - Open selected file: Use the right arrow or double-click to open a selected file. You can also open a file simply by double-clicking it. If this is a workflow or pipeline it will be opened in the [Data Orchestation](hop-gui/perspective-data-orchestration.SKQXf3it7V) perspective. In all other cases the file will be opened in a new tab.

  - Create folder: Add a new folder.

  - Expand all folders: Display all nested folders in the directory tree.

  - Collapse all folders: Hide all nested folders in the directory tree.

  - Delete: Remove a selected file or folder.

  - Rename: Rename a file or folder.

  - Refresh: Refresh the file list.

  - Show or hide files: Show or hide files or directories.

</div>

</div>

</div>

<div class="sect1">

## Git integration

<div class="sectionbody">

<div class="sect2">

### Description

<div class="paragraph">

If the git plugin (folder `plugins/misc/git`) is installed, the file explorer will look for a `.git/config` file in the project home folder. It this exists the explorer perspective will start to color code the files listed:

</div>

<div class="ulist">

  - red: the file has not been added to git (un-staged).

  - blue: the file has been changed (staged).

  - gray: the file is ignored by git.

</div>

</div>

<div class="sect2">

### Git

<div class="sect3">

#### Git info

<div class="paragraph">

The "Git Info" icon in the toolbar will be enabled if there is information regarding the file or folder that is selected. If you click on it, you’ll be able to all sorts of information regarding the git history in a new tab:

</div>

<div class="imageblock">

<div class="content">

![Git information shown in a tab](/images/hop-gui/perspective-explorer-git-info-panel.png)

</div>

</div>

<div class="paragraph">

Below the revision history you can see the revisions of a file. If you select a revision you’ll be able to not only see the text differences between two revisions but also use the "Visual diff" button on the right-hand side of the tab. If you select the "visual diff" option the GUI will switch to the data orchestration perspective where 2 new tabs will be opened with the pipeline or workflow state before and after the change.

</div>

<div class="imageblock">

<div class="content">

![Git visual diff example](/images/hop-gui/perspective-explorer-git-visual-diff-example.png)

</div>

</div>

<div class="paragraph">

Small information icons will be added to the various transforms, actions and hops to indicate if they were changes, deleted or added.

</div>

</div>

</div>

<div class="sect2">

### Right-click menu options

<div class="paragraph">

The right-click menu in Apache Hop Git integration offers several useful options to help manage your files and Git operations directly from the interface. Here’s a breakdown of each option:

</div>

<div class="ulist">

  - Create folder: Create a new folder within the selected directory. This is useful for organizing workflows, pipelines, and other project resources.

  - Expand all folders: Reveals all nested folders in the project directory tree. Useful for getting a full overview of your project structure without opening folders one by one.

  - Collapse all folders: Closes all expanded folders, showing only the top-level directory. Helps reset the view or reduce visual clutter.

  - Open: Opens the selected file or folder. For workflows and pipelines, it launches them in the Data Orchestration perspective, while other file types will open in a new tab.

  - Rename: Allows you to change the name of the selected file or folder, helping you keep your project files organized and clearly labeled.

  - Copy name: Copies the name of the selected file or folder to your clipboard, making it easy to paste and reference elsewhere.

  - Copy path: Copies the full path of the selected file or folder to your clipboard, useful for quick navigation or sharing the location with others.

  - Git Info: Displays detailed information about the Git status of the selected file, including any recent changes.

  - Git Add: Stages the selected file(s) for commit, meaning the changes are prepared for inclusion in your next Git commit.

  - Git Revert: Reverts any changes made to the selected file, restoring it to the last committed state. This is helpful when you need to undo accidental modifications.

  - Git Commit: Opens a dialog for committing staged changes to your local Git repository. You can add a descriptive commit message summarizing your updates.

  - Delete: Removes the selected file or folder from your project. Make sure to use this carefully, as it permanently deletes the item from your directory.

</div>

<div class="imageblock">

<div class="content">

![git right-click menu options in the explorer perspective](/images/hop-gui/hop-gui-file-explorer-right-menu.png)

</div>

</div>

<div class="sect3">

#### Git operations

<div class="paragraph">

Here are the basic git operations that are supported:

</div>

<div class="ulist">

  - Git Add: stage the file to include it in a commit.

  - Git Commit: commit changes to origin.

  - Git Revert: checkout file or folder to revert changes.

  - Git Push: push changes.

  - Git Pull: pull changes.

</div>

<div class="paragraph">

You can access these operations from the toolbar above the file explorer tree:

</div>

<div class="imageblock">

<div class="content">

![git toolbar items in the explorer perspective](/images/hop-gui/perspective-explorer-git-toolbar-operations.png)

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:47 +0200

</div>

</div>

<div id="header">

# Working with git

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Version control is an important aspect of any serious data orchestration project. Hop wants to make it as easy as possible to manage versions for your workflows and pipelines through the integrated git options in the [File Explorer perspective](hop-gui/perspective-file-explorer.lMKn7tmKjR).

</div>

</div>

</div>

<div class="sect1">

## File Explorer Toolbar

<div class="sectionbody">

<div class="paragraph">

If you open the file explorer for a project that is not version controlled in git, the git icons in the file explorer’s main toolbar (top left) will be shown as greyed-out and disabled.

</div>

<div class="imageblock">

<div class="content">

![No git available](/images/hop-gui/hop-gui-no-git.png)

</div>

</div>

<div class="paragraph">

If git was found (ie the project has a `.git` folder in the project root), these buttons in this toolbar are enabled.

</div>

<div class="imageblock">

<div class="content">

![Git toolbar](/images/hop-gui/hop-gui-git-toolbar.png)

</div>

</div>

<div class="paragraph">

The available options to work with files and the available git operations in this toolbar are briefly discussed below.

</div>

| icon                                                                                | action                   | description                                                                                                                             | shortcut     |
| ----------------------------------------------------------------------------------- | ------------------------ | --------------------------------------------------------------------------------------------------------------------------------------- | ------------ |
| <span class="image">![arrow right](/images/icons/arrow-right.svg)</span>   | Open selected file       | Opens the selected file in the appropriate editor (pipeline or workflow editor for workflows and pipelines, text editor for other file. | double-click |
| <span class="image">![folder add](/images/icons/folder-add.svg)</span>     | Add folder               | adds a new folder at the selected location. A popup is shown for the folder name.                                                       |              |
| <span class="image">![expand all](/images/icons/expand-all.svg)</span>     | Expand all folders       | Display all nested folders in the directory tree.                                                                                       |              |
| <span class="image">![collapse all](/images/icons/collapse-all.svg)</span> | Collapse all folders     | Hide all nested folders in the directory tree.                                                                                          |              |
| <span class="image">![delete](/images/icons/delete.svg)</span>             | Delete Selected File     | Deletes the selected file.                                                                                                              | DEL          |
| <span class="image">![rename](/images/icons/rename.svg)</span>             | Rename the selected file | Makes the selected file name editable to allow renaming.                                                                                | F2           |
| <span class="image">![refresh](/images/icons/refresh.svg)</span>           | Refresh                  | Refreshes the projects folder and file structure.                                                                                       |              |
| <span class="image">![hide](/images/icons/hide.svg)</span>                 | Show or hide files       | Show or hide files or directories.                                                                                                      |              |
| <span class="image">![git info](/images/icons/git-info.svg)</span>         | Git info                 | Populates the file explorer’s git dialog with version information for the selected file.                                                |              |
| <span class="image">![git add](/images/icons/git-add.svg)</span>           | Git Add                  | Add the selected file to version control.                                                                                               |              |
| <span class="image">![git revert](/images/icons/git-revert.svg)</span>     | Git Revert               | Revert file to last committed version (HEAD).                                                                                           |              |
| <span class="image">![git commit](/images/icons/git-commit.svg)</span>     | Git commit               | Commit the latest changes for the selected file (providing a commit message).                                                           |              |
| <span class="image">![push](/images/icons/push.svg)</span>                 | Git push                 | Push the recent changes to the remote repository.                                                                                       |              |
| <span class="image">![pull](/images/icons/pull.svg)</span>                 | Git pull                 | Pull the latest changes from the remote repository.                                                                                     |              |

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
<td>Only the available options are availabe at a given time. E.g. <code>git add</code> will not be available for files that already are in version control.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## File Explorer Tree

<div class="sectionbody">

<div class="paragraph">

In the folder and file structure tree below the toolbar, files use a color coding scheme to indicate the git status of a file:

</div>

<div class="ulist">

  - black: unchanged. This is the latest version of the file available in git, no changes detected.

  - grey: this file is ignored

  - blue: staged for commit. This file is ready to be committed ('Git Commit')

  - red: not staged for commit. Add this file to git before changes can be committed ('Git Add').

</div>

</div>

</div>

<div class="sect1">

## Working with files in git

<div class="sectionbody">

<div class="dlist">

  - Add a file  
    Click on a file that is not yet staged for commit (red), click 'Git Add'. The color of the file changes to blue (staged for commit).

  - Commit a file  
    Click on a file that is staged for commit (blue), click 'Git Commit'. A popup dialog will ask to confirm the file to commit, and will show a popup for your commit message. Change the default 'Commit Message' to a commit message that describes the changes you made to the file. The file color changes to black (no changes).

  - Show git info  
    Click on a file that is under version control (black or blue). The file explorer will show the git status for this file: the file or folder, status, branch and a revisions table (list of previous commits). Select one of the available commits to show the changed files to show the changed files for that revision. Select any of the files in the revision from the 'Changed files' list to show the git diff information on the right hand side. For workflows and pipelines, click 'Visual diff' to open the file in the Data Orchestration perspective. Hop will show an additional icon in the upper right corner of the action or transform icon to indicate the git change that was made (green for added or yellow for changed)

</div>

<div class="imageblock">

<div class="content">

![Git visual diff](/images/hop-gui/git-visual-diff.png)

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:43 +0200

</div>

</div>

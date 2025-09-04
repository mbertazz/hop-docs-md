<div id="header">

# Configuration Perspective

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Icon: <span class="image">![gear](../assets/images/icons/gear.svg)</span>

</div>

<div class="paragraph">

Keyboard shortcut: `CTRL-Shift-C`

</div>

</div>

</div>

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The configuration perspective offers a central location for all Apache Hop configuration options.

</div>

</div>

</div>

<div class="sect1">

## Usage

<div class="sectionbody">

<div class="paragraph">

The configuration perspective groups configuration options in the following tabs:

</div>

<div class="ulist">

  - **General** options control the behavior of Apache Hop and Hop Gui.

  - **Look & Feel** control how Hop Gui looks like on your desktop or in your browser.

  - **Plugin** options provide configuration options to control the behavior of your available Apache Hop plugins.

  - **System variables** allows you to set and configure Apache Hop global variables.

</div>

</div>

</div>

<div class="sect1">

## Detailed configuration tabs overview

<div class="sectionbody">

<div class="sect2">

### General

<div class="paragraph">

The General configuration tab allows you to configure the core Apache Hop options.

</div>

<table style="width:25%;">
<colgroup>
<col style="width: 25%" />
<col style="width: 0%" />
<col style="width: 0%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
<th>Default</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Hop configuration filename</p></td>
<td><div class="content">
<div class="paragraph">
<p>the location where Apache Hop will store the configuration file. This configuration file will contain your project and environment information and global variables.</p>
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
<td>set the environment variable <code>HOP_CONFIG_FOLDER</code> to set this location dynamically to allow easy switching between different Apache Hop versions and installations. <a href="protips/index.HKJxBqgrYn">read more</a></td>
</tr>
</tbody>
</table>
</div>
</div></td>
<td><p><code>&lt;INSTALLATION_PATH&gt;/config/hop-config.json</code></p></td>
</tr>
<tr class="even">
<td><p>Preview data batch size</p></td>
<td><div class="content">
<div class="paragraph">
<p>number of rows that will be shown when previewing through the Pipeline run toolbar or from transform preview dialogs.</p>
</div>
<div class="paragraph">
<p>INFO: this setting complements the preview option that is used in the <a href="pipeline/pipeline-run-configurations/native-local-pipeline-engine.HKJxBqgrYn">native local pipeline run configuration</a>, which can be accessed through the <span class="image"><img src="../assets/images/transforms/icons/datagrid.svg" alt="data grid" width="16" /></span> <code>preview data</code> icon in the bottom right corner of transforms after a successful run.</p>
</div>
</div></td>
<td><p>1000</p></td>
</tr>
<tr class="odd">
<td><p>Use database cache</p></td>
<td><p>enable caching for relational databases</p></td>
<td><p>yes</p></td>
</tr>
<tr class="even">
<td><p>Open last file at startup</p></td>
<td><p>reopen the last used files and select the last used file when Hop GUI starts</p></td>
<td><p>yes</p></td>
</tr>
<tr class="odd">
<td><p>Autosave changed files</p></td>
<td><p>Automatically save changed workflow and pipelines files</p></td>
<td><p>yes</p></td>
</tr>
<tr class="even">
<td><p>Automatically split hops</p></td>
<td><div class="content">
<div class="paragraph">
<p>Automatically split hops when a new transform or action is dropped on a hop.</p>
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
<td>Hops will be shown in bold when a transform or action can be dropped on it</td>
</tr>
</tbody>
</table>
</div>
</div></td>
<td><p>yes</p></td>
</tr>
<tr class="odd">
<td><p>Show Copy or Distribute Dialog</p></td>
<td><p>Show a pop-up dialog to ask the user to confirm whether data should be copied or distributed (round-robin) to subsequent transforms in a pipeline</p></td>
<td><p>yes</p></td>
</tr>
<tr class="even">
<td><p>Ask user when exiting</p></td>
<td><p>Show a pop-up dialog to let the user confirm before exiting Hop GUI</p></td>
<td><p>yes</p></td>
</tr>
<tr class="odd">
<td><p>Clear customer parameters (transforms/plugins</p></td>
<td><p>Deletes all custom flags and parameters in the dialogs of the transforms and plugins</p></td>
<td><p>on click</p></td>
</tr>
<tr class="even">
<td><p>Auto collapse palette tree</p></td>
<td><p>Collapse or expand the categories in the context dialog</p></td>
<td><p>no (expanded)</p></td>
</tr>
<tr class="odd">
<td><p>Display tooltips</p></td>
<td><p>Show tooltips where available in Hop GUI</p></td>
<td><p>yes</p></td>
</tr>
<tr class="even">
<td><p>Show help tooltips</p></td>
<td><p>Show help tooltips where available in Hop GUI</p></td>
<td><p>yes</p></td>
</tr>
<tr class="odd">
<td><p>Use double click on canvas?</p></td>
<td><p>double-click instead of single click on e.g. transform and action dialogs.</p>
<p>enabled: double-click on a transform or action icon to open its properties. A single click on the icon opens the context dialog. disabled (default): (single) click on a transform or action icon to open the context dialog. (single) click on a transform or action name to open its properties</p></td>
<td><p>no</p></td>
</tr>
<tr class="even">
<td><p>Draw border around names on canvas?</p></td>
<td><p>If this option is enabled, a border will be drawn around the names of transforms and actions on the canvas.</p></td>
<td><p>no</p></td>
</tr>
<tr class="odd">
<td><p>Use global bookmarks in the file dialog</p></td>
<td><p>Bookmarks in the file dialog are global (across projects) by default. Enable to make them project-specific</p></td>
<td><p>yes</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Look & Feel

<div class="paragraph">

The `Look & Feel` configuration options allow you to configure various aspects of Hop GUI’s behavior.

</div>

<table style="width:25%;">
<colgroup>
<col style="width: 25%" />
<col style="width: 0%" />
<col style="width: 0%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
<th>Default</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Default font</p></td>
<td><p>the default font to use in Hop GUI</p></td>
<td><p>Noto Sans - 10</p></td>
</tr>
<tr class="even">
<td><p>Fixed width font</p></td>
<td><p>the default fixed width font to use in Hop GUI</p></td>
<td><p>Monospace - 10</p></td>
</tr>
<tr class="odd">
<td><p>Font on workspace</p></td>
<td><p>the font to use in the workspace</p></td>
<td><p>Noto Sans - 10</p></td>
</tr>
<tr class="even">
<td><p>Font for notes</p></td>
<td><p>the font to use for workflow and pipeline notes</p></td>
<td><p>Noto Sans - 10</p></td>
</tr>
<tr class="odd">
<td><p>Icon size in workspace</p></td>
<td><p>the default size for action and transform icons in workflows and pipelines</p></td>
<td><p>32</p></td>
</tr>
<tr class="even">
<td><p>Line width on workspace</p></td>
<td><p>line width to use for hops in workflows and actions</p></td>
<td><p>1</p></td>
</tr>
<tr class="odd">
<td><p>Dialog middle percentage</p></td>
<td><p>percentage to use to determine a dialog’s position</p></td>
<td><p>35</p></td>
</tr>
<tr class="even">
<td><p>UI zoom level</p></td>
<td><p>default zoom level to use for workflows and pipelines in Hop GUI</p></td>
<td><p>100%</p></td>
</tr>
<tr class="odd">
<td><p>Canvas Grid Size</p></td>
<td><p>default grid size to use for workflows and pipelines in the Hop GUI editor</p></td>
<td><p>16</p></td>
</tr>
<tr class="even">
<td><p>Show Canvas Grid</p></td>
<td><p>show the grid (dotted) for workflows and pipelines in Hop GUI</p></td>
<td><p>no</p></td>
</tr>
<tr class="odd">
<td><p>Hide the menu bar</p></td>
<td><p>Do not show the menu bar. If enabled (default), the menu options are available from the Apache Hop icon in Hop GUI’s upper left corner.</p></td>
<td><p>yes</p></td>
</tr>
<tr class="even">
<td><p>Show a toolbar above tables</p></td>
<td><p>Show a toolbar with options to cut/copy/paste, move lines up/down etc in table views (e.g. in preview dialogs, transform configuration options)</p></td>
<td><p>yes</p></td>
</tr>
<tr class="odd">
<td><p>Dark mode</p></td>
<td><p>use dark mode. This options is read only (can’t be changed). Your operating system’s theme settings are used by default.</p></td>
<td><p>N/A</p></td>
</tr>
<tr class="even">
<td><p>Preferred Language</p></td>
<td><div class="content">
<div class="paragraph">
<p>the default language to use in Hop GUI.</p>
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
<td>Check the <a href="https://hop.apache.org/community/contribution-guides/translation-contribution-guide/">Translation Contribution Guide</a> to translate Apache Hop to your native language.</td>
</tr>
</tbody>
</table>
</div>
</div></td>
<td><p>English (US)</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Plugins

<div class="paragraph">

The plugins tab contains configuration options that are provided by the various plugins in Apache Hop.

</div>

<div class="paragraph">

The following plugins are available by default:

</div>

<div class="ulist">

  - [Azure Blob Storage](vfs/azure-blob-storage-vfs.HKJxBqgrYn#_configuration) VFS configuration options.

  - [Dropbox](vfs/dropbox-vfs.HKJxBqgrYn#_configuration) VFS configuration options.

  - [Explorer perspective](hop-gui/perspective-file-explorer.HKJxBqgrYn) configuration options.

  - [Google Cloud](technology/google/index.HKJxBqgrYn) configuration options (service account JSON key file).

  - [Google Drive](vfs/google-drive-vfs.HKJxBqgrYn#_configuration) VFS configuration options.

  - [Project](projects/index.HKJxBqgrYn) configuration options

  - Welcome Dialog: specify whether to show or hide the welcome dialog when Hop GUI starts.

</div>

</div>

<div class="sect2">

### System Variables

<div class="paragraph">

The System Variables tab contains the available system variables in Hop GUI.

</div>

<div class="paragraph">

Check the [Variables documentation](variables.HKJxBqgrYn) for more information about the available variables and their default values.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:45 +0200

</div>

</div>

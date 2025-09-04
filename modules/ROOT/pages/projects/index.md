<div id="header">

# Projects & Environments

</div>

<div id="content">

<div class="sect1">

## Concepts and Architecture

<div class="sectionbody">

<div class="sect2">

### Projects

<div class="paragraph">

Most developers typically work on multiple projects and modules simultaneously. For example, while one project matures and is in user acceptance testing, development work on a new project has already started.

</div>

<div class="paragraph">

Different sets of workflows and pipelines require management for at least development, acceptance and production environments. Every project and each environment comes with its own set of variables and configurations for databases, file paths …​

</div>

<div class="paragraph">

Hop wants to make it easy for Hop developers to use one or more projects alongside each other.

</div>

<div class="paragraph">

A project is the collection of all the files you need in your data orchestration solution. This typically includes metadata, pipelines, workflows, reference files, documentation and so on. To match standard development best practices you would check all these files into a version control system like git.

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
<td>project variables should only be used when you need variables on the project level. All variables to connect to infrastructure, e.g. database connection parameters, mail servers etc that take different values in different environments should be created at the environment level.</td>
</tr>
</tbody>
</table>

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
<td>Project configurations are stored in hop-config.json, which is read from <code>hop/config</code> by default. Use the <code>HOP_CONFIG_FOLDER</code> operating system variable to store your Hop configuration in a folder outside your Hop folder. This will let you keep your project list if you switch Hop installations or upgrade to a newer Hop version.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

Projects can inherit metadata and variables from a parent project.

</div>

<div class="paragraph">

Projects in Hop Gui will remember opened files, zoom levels and other UI settings.

</div>

</div>

<div class="sect2">

### Environments

<div class="paragraph">

What is typically not included in the set of project files are the metadata configurations and variable values required to make the project run correctly in a given environment.

</div>

<div class="paragraph">

For example on a development laptop you might want to set a variable `${DB_HOSTNAME}` to `localhost`, on a production server this value might point to the production database server. This is where Hop environments come in.

</div>

<div class="paragraph">

Environment is short for Project Lifecycle Environment. It describes the phase of a project in its lifecycle moving from Development to Test to Acceptance to Production. It can also describe a project in a continuous integration environment and so on. As such the following attributes define an environment:

</div>

<div class="ulist">

  - Its name

  - The name of the project

  - The phase

  - The configuration files you want to use to define the environment specific variables

</div>

<div class="paragraph">

Just like projects, environments are defined in one or a number of configuration files.

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
<td>store your environment configuration files outside of the project folder. You may even want to check them in to a separate version control repository.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:30 +0200

</div>

</div>

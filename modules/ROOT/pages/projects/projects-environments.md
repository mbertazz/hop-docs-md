<div id="header">

# Projects and Environments

</div>

<div id="content">

<div class="sect1">

## Create a project

<div class="sectionbody">

<div class="paragraph">

To create a new project click the **Add a new project** button.

</div>

<div class="paragraph">

<span class="image">![Add a new project](../assets/images/hop-gui/environment/project-add.svg)</span>

</div>

<div class="paragraph">

This button opens the following dialog:

</div>

<div class="paragraph">

<span class="image">![Create a project](../assets/images/hop-gui/environment/create-project-dialog.png)</span>

</div>

| Property                           | Description                                                                                                                                                                                                | Variables Supported | Mandatory | Default                   |
| ---------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------- | --------- | ------------------------- |
| Name                               | The project name                                                                                                                                                                                           | Yes                 | No        |                           |
| Home folder                        | The folder where the project is located                                                                                                                                                                    | Yes                 | No        |                           |
| Configuration file (relative path) | The folder where the project’s configuration json is located.                                                                                                                                              | Yes                 | Yes       |                           |
| Parent project to inherit from     | The project to inherit metadata (e.g. connections) from                                                                                                                                                    | Yes                 | No        | default                   |
| Description                        | A description for this environment                                                                                                                                                                         | No                  | No        |                           |
| Company                            | The company this environment belongs to                                                                                                                                                                    | No                  | No        |                           |
| Department                         | The department this environment is created for                                                                                                                                                             | No                  | No        |                           |
| Metadata base folder               | The folder where this environment’s metadata will be stored                                                                                                                                                | Yes                 | Yes       | ${PROJECT\_HOME}/metadata |
| Unit test base path                | The base path to use for unit tests in the project. If your `Unit test base path` is defined as `${PROJECT_HOME}/my_pipelines`, unit tests will refer to a pipeline in this folder as `./my_pipeline.hpl`. | Yes                 | Yes       | ${PROJECT\_HOME}          |
| Data Sets CSV Folder               | The folder where this environment’s data files will be stored                                                                                                                                              | Yes                 | Yes       | ${PROJECT\_HOME}/datasets |
| Enforce execution in project home  | Give an error when trying to execute a pipeline or workflow which is not located in the environment home directory or in a sub-directory                                                                   | Yes                 | Yes       | checked                   |
| Project variables to set           | A list of variable names, values and variable descriptions to use with this project                                                                                                                        | No                  | Yes       |                           |

Table 1. Project Properties

<div class="paragraph">

After creating a project the user interface will switch to it and ask if you want to create an environment.

</div>

</div>

</div>

<div class="sect1">

## Create an environment

<div class="sectionbody">

<div class="paragraph">

To create a new environment click the **Add a new environment** button.

</div>

<div class="paragraph">

<span class="image">![Environment](../assets/images/hop-gui/environment/environment-add.svg)</span>

</div>

<div class="paragraph">

This button opens the following dialogue:

</div>

<div class="paragraph">

<span class="image">![Create an environment](../assets/images/hop-gui/environment/create-environment-dialogue.png)</span>

</div>

<table style="width:190%;">
<caption>Table 2. Environment Properties</caption>
<colgroup>
<col style="width: 20%" />
<col style="width: 45%" />
<col style="width: 50%" />
<col style="width: 50%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>Property</th>
<th>Description</th>
<th>Variables Supported</th>
<th>Mandatory</th>
<th>Default</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Name</p></td>
<td><p>The environment name</p></td>
<td><p>No</p></td>
<td><p>No</p></td>
<td><p>The last created project</p></td>
</tr>
<tr class="even">
<td><p>Purpose</p></td>
<td><div class="content">
<div class="paragraph">
<p>The purpose of this environment. A purpose is an indication of the environment type. You can add your own purposes in addition to the predefined ones:</p>
</div>
<div class="ulist">
<ul>
<li><p>Development</p></li>
<li><p>Testing</p></li>
<li><p>Acceptance</p></li>
<li><p>Production</p></li>
<li><p>Continuous integration</p></li>
<li><p>Common build</p></li>
<li><p>…​</p></li>
</ul>
</div>
</div></td>
<td><p>No</p></td>
<td><p>No</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Project</p></td>
<td><p>The project to which this environment belongs</p></td>
<td><p>No</p></td>
<td><p>No</p></td>
<td><p>The last created project</p></td>
</tr>
<tr class="even">
<td><p>Configuration files</p></td>
<td><p>Files to use as configuration for this environment</p></td>
<td><p>No</p></td>
<td><p>No</p></td>
<td></td>
</tr>
</tbody>
</table>

<div class="paragraph">

Each environment will contain one or more environment files where you manage environment-specific variables.

</div>

<div class="paragraph">

The edit button opens the environment file and lets you add variable key-value pairs.

</div>

<div class="imageblock">

<div class="content">

![Environment Variables](../assets/images/hop-gui/environment/environment-variables.png)

</div>

</div>

<div class="paragraph">

After creating an environment the user interface will switch to it.

</div>

</div>

</div>

<div class="sect1">

## Switch between projects and environments

<div class="sectionbody">

<div class="paragraph">

To switch between projects the projects list can be used from the main Hop Gui toolbar.

</div>

<div class="imageblock">

<div class="content">

![Switch project](../assets/images/hop-gui/environment/switch-project-list.png)

</div>

</div>

<div class="paragraph">

After switching to a project the environments list will be updated to the environments which belong to this project. All open files will be restored, including their zoom level and other UI settings.

</div>

<div class="imageblock">

<div class="content">

![Switch environment](../assets/images/hop-gui/environment/switch-environment-list.png)

</div>

</div>

</div>

</div>

<div class="sect1">

## Edit and delete projects

<div class="sectionbody">

<div class="paragraph">

To edit an existing project click the **Edit the selected project** button.

</div>

<div class="paragraph">

<span class="image">![Edit the selected project](../assets/images/hop-gui/environment/project-edit.svg)</span>

</div>

<div class="paragraph">

Clicking this button will re-open the project dialogue where changes can be made as described in [Project Properties](#tab-proj-props).

</div>

<div class="paragraph">

To delete a project click the **Delete the selected project** button.

</div>

<div class="paragraph">

<span class="image">![Delete the selected project](../assets/images/hop-gui/environment/project-delete.svg)</span>

</div>

</div>

</div>

<div class="sect1">

## Editing and deleting environments

<div class="sectionbody">

<div class="paragraph">

To edit an existing environment click the **Edit the selected environment** button.

</div>

<div class="paragraph">

<span class="image">![Edit the selected environment](../assets/images/hop-gui/environment/environment-edit.svg)</span>

</div>

<div class="paragraph">

Clicking this button will re-open the project dialogue where changes can be made as described in [Environment Properties](#tab-env-props).

</div>

<div class="paragraph">

To delete an environment click the **Delete the selected environment** button.

</div>

<div class="paragraph">

<span class="image">![Delete the selected environment](../assets/images/hop-gui/environment/environment-delete.svg)</span>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:31 +0200

</div>

</div>

<div id="header">

# Hop Conf - The Hop command line configuration tool

</div>

<div id="content">

<div class="sect1">

## Usage

<div class="sectionbody">

<div class="paragraph">

Hop Conf is a command line tool to manage environments. The **hop-conf.sh** script can be run with the **-h** flag (`./hop-conf.sh -h`) to display available options.

</div>

<div class="paragraph">

   

</div>

Usage

<div class="content">

<div class="listingblock">

<div class="content">

``` highlight
Usage: <main class> [-h] [-ec] [-ed] [-el] [-em] [-ey] [-pc] [-pd] [-pl] [-pm]
                    [-pn] [-py] [-aza=<account>] [-azi=<blockIncrement>]
                    [-azk=<key>] [-cfg=<configFile>]
                    [-dc=<defaultProjectConfigFile>] [-de=<defaultEnvironment>]
                    [-dp=<defaultProject>] [-dv=<describeVariable>]
                    [-e=<environmentName>] [-ep=<environmentProject>]
                    [-eu=<environmentPurpose>] [-fj=<fatJarFilename>]
                    [-gck=<serviceAccountKeyFile>] [-gdc=<credentialsFile>]
                    [-gdt=<tokensFolder>] [-p=<projectName>]
                    [-pa=<projectMetadataBaseFolder>]
                    [-pb=<projectDataSetsCsvFolder>] [-pf=<projectConfigFile>]
                    [-ph=<projectHome>] [-pp=<projectCompany>]
                    [-pr=<projectParent>] [-ps=<projectDescription>]
                    [-pt=<projectDepartment>] [-pu=<projectUnitTestsBasePath>]
                    [-px=<projectEnforceExecutionInHome>]
                    [-sj=<standardProjectsFolder>]
                    [-sp=<standardParentProject>] [-sv=<setVariable>]
                    [-xm=<metadataJsonFilename>] [-cfd=<configDescribeVariables>
                    [,<configDescribeVariables>...]]...
                    [-cfv=<configSetVariables>[,<configSetVariables>...]]...
                    [-eg=<environmentConfigFiles>[,
                    <environmentConfigFiles>...]]... [-pv=<projectVariables>[,
                    <projectVariables>...]]...
      -aza, --azure-account=<account>
                            The account to use for the Azure VFS
      -azi, --azure-block-increment=<blockIncrement>
                            The block increment size for new files on Azure,
                              multiples of 512 only.
      -azk, --azure-key=<key>
                            The key to use for the Azure VFS
      -cfd, --config-file-describe-variables=<configDescribeVariables>[,
        <configDescribeVariables>...]
                            A list of variable=description combinations separated by
                              a comma
      -cfg, --config-file=<configFile>
                            Specify the configuration JSON file to manage
      -cfv, --config-file-set-variables=<configSetVariables>[,
        <configSetVariables>...]
                            A list of variable=value combinations separated by a
                              comma
      -dc, --default-projects-folder=<defaultProjectConfigFile>
                            The standard project configuration filename proposed
                              when creating projects
      -de, --default-environment=<defaultEnvironment>
                            The name of the default environment to use when none is
                              specified
      -dp, --default-project=<defaultProject>
                            The name of the default project to use when none is
                              specified
      -dv, --describe-variable=<describeVariable>
                            Describe a variable, use format VARIABLE=Description
  -e, --environment=<environmentName>
                            The name of the lifecycle environment to manage
      -ec, --environment-create
                            Create a new project lifecycle environment. Also specify
                              its name, purpose, the project name and the
                              configuration files.
      -ed, --environment-delete
                            Delete a lifecycle environment
      -eg, --environment-config-files=<environmentConfigFiles>[,
        <environmentConfigFiles>...]
                            A list of configuration files for this lifecycle
                              environment, comma separated
      -el, --environments-list
                            List the defined lifecycle environments
      -em, --environment-modify
                            Modify a lifecycle environment
      -ep, --environment-project=<environmentProject>
                            The project for the environment
      -eu, --environment-purpose=<environmentPurpose>
                            The purpose of the environment: Development, Testing,
                              Production, CI, ...
      -ey, --environment-mandatory
                            Make it mandatory to reference an environment
      -fj, --generate-fat-jar=<fatJarFilename>
                            Specify the filename of the fat jar to generate from
                              your current software installation
      -gck, --google-cloud-service-account-key-file=<serviceAccountKeyFile>
                            Configure the path to a Google Cloud service account
                              JSON key file
      -gdc, --google-drive-credentials-file=<credentialsFile>
                            Configure the path to a Google Drive credentials JSON
                              file
      -gdt, --google-drive-tokens-folder=<tokensFolder>
                            Configure the path to a Google Drive tokens folder
  -h, --help                Displays this help message and quits.
  -p, --project=<projectName>
                            The name of the project to manage
      -pa, --project-metadata-base=<projectMetadataBaseFolder>
                            The metadata base folder (relative to home)
      -pb, --project-datasets-base=<projectDataSetsCsvFolder>
                            The data sets CSV folder (relative to home)
      -pc, --project-create Create a new project. Also specify the name and its home
      -pd, --project-delete Delete a project
      -pf, --project-config-file=<projectConfigFile>
                            The configuration file relative to the home folder. The
                              default value is project-config.json
      -ph, --project-home=<projectHome>
                            The home directory of the project
      -pl, --projects-list   List the defined projects
      -pla, --list-action-types-in-project
                             List action types used in this project
      -plm, --list-metadata-types-in-project
                             List metadata types used in this project
      -plt, --list-transform-types-in-project
                             List transform types used in this project
      -pm, --project-modify Modify a project
      -pn, --projects-enabled
                            Enable or disable the projects plugin
      -pp, --project-company=<projectCompany>
                            The company
      -pr, --project-parent=<projectParent>
                            The name of the parent project to inherit metadata and
                              variables from
      -ps, --project-description=<projectDescription>
                            The description of the project
      -pt, --project-department=<projectDepartment>
                            The department
      -pu, --project-unit-tests-base=<projectUnitTestsBasePath>
                            The unit tests base folder (relative to home)
      -pv, --project-variables=<projectVariables>[,<projectVariables>...]
                            A list of variable=value combinations separated by a
                              comma
      -px, --project-enforce-execution=<projectEnforceExecutionInHome>
                            Validate before execution that a workflow or pipeline is
                              located in the project home folder or a sub-folder
                              (true/false).
      -py, --project-mandatory
                            Make it mandatory to reference a project
      -sj, --standard-projects-folder=<standardProjectsFolder>
                            GUI: The standard projects folder proposed when creating
                              projects
      -sp, --standard-parent-project=<standardParentProject>
                            The name of the standard project to use as a parent when
                              creating new projects
      -sv, --set-variable=<setVariable>
                            Set a variable, use format VAR=Value
      -xm, --export-metadata=<metadataJsonFilename>
                            Export project metadata to a single JSON file which you
                              can specify with this option. Also specify the -p
                              option.
      -v,  --version        Print version information and exit
```

</div>

</div>

<div class="paragraph">

The available options are listed below:

</div>

<table>
<caption>Table 1. Hop-conf Options</caption>
<colgroup>
<col style="width: 10%" />
<col style="width: 40%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Short Option</th>
<th>Extended Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>-h</p></td>
<td><p>--help</p></td>
<td><p>Displays this help message and quits</p></td>
</tr>
<tr class="even">
<td><p>-v</p></td>
<td><p>--version</p></td>
<td><p>Print version information and exit</p></td>
</tr>
<tr class="odd">
<td><p>-ec</p></td>
<td><p>--environment-create</p></td>
<td><p>Create an environment Also specify the name and its home</p></td>
</tr>
<tr class="even">
<td><p>-ed</p></td>
<td><p>--environment-delete</p></td>
<td><p>Delete an environment</p></td>
</tr>
<tr class="odd">
<td><p>-el</p></td>
<td><p>--environment-list</p></td>
<td><p>List the defined environments</p></td>
</tr>
<tr class="even">
<td><p>-em</p></td>
<td><p>--environment-modify</p></td>
<td><p>Modify an environment</p></td>
</tr>
<tr class="odd">
<td><p>-pc</p></td>
<td><p>--project-create</p></td>
<td><p>Create a new project. Also specify the name and its home</p></td>
</tr>
<tr class="even">
<td><p>-pd</p></td>
<td><p>--prject-delete</p></td>
<td><p>Delete a project</p></td>
</tr>
<tr class="odd">
<td><p>-pl</p></td>
<td><p>--projects-list</p></td>
<td><p>List the defined projects</p></td>
</tr>
<tr class="even">
<td><p>-pla</p></td>
<td><p>--list-action-types-in-project</p></td>
<td><p>List action types used in this project</p></td>
</tr>
<tr class="odd">
<td><p>-plm</p></td>
<td><p>--list-metadata-types-in-project</p></td>
<td><p>List metadata types used in this project</p></td>
</tr>
<tr class="even">
<td><p>-plt</p></td>
<td><p>--list-transform-types-in-project</p></td>
<td><p>List transform types used in this project</p></td>
</tr>
<tr class="odd">
<td><p>-pm</p></td>
<td><p>--project-modify</p></td>
<td><p>Modify a project</p></td>
</tr>
<tr class="even">
<td><p>-dv</p></td>
<td><p>--describe-variable=&lt;describeVariable&gt;</p></td>
<td><p>Describe a variable</p></td>
</tr>
<tr class="odd">
<td><p>-e</p></td>
<td><p>-environment=&lt;environmentName&gt;</p></td>
<td><p>The name of the environment to manage</p></td>
</tr>
<tr class="even">
<td><p>-ep</p></td>
<td><p>--environment-project=&lt;environmentProject&gt;</p></td>
<td><p>The project for the environment</p></td>
</tr>
<tr class="odd">
<td><p>-eu</p></td>
<td><p>--environment-purpose=&lt;environmentPurpose&gt;</p></td>
<td><p>The purpose of the environment: Development, Testing, Production, CI, …​</p></td>
</tr>
<tr class="even">
<td><p>-fj</p></td>
<td><p>--generate-fat-jar=&lt;fatJarFilename&gt;</p></td>
<td><p>Specify the filename of the fat jar to generate from your current software installation</p></td>
</tr>
<tr class="odd">
<td><p>-xm</p></td>
<td><p>--export-metadata=&lt;metadataJsonFilename&gt;</p></td>
<td><p>Export project metadata to a single JSON file which you can specify with this option. Also specify the -p option to know which metadata to export.</p></td>
</tr>
<tr class="even">
<td><p>-p</p></td>
<td><p>--project=&lt;projectName&gt;</p></td>
<td><p>The project name</p></td>
</tr>
<tr class="odd">
<td><p>-pa</p></td>
<td><p>--project-metadata-base=&lt;projectMetadataBaseFolder&gt;</p></td>
<td><p>The metadata base folder (relative to home)</p></td>
</tr>
<tr class="even">
<td><p>-pb</p></td>
<td><p>--project-datasets-base-base=&lt;projectDataSetsCsvFolder&gt;</p></td>
<td><p>The data sets CSV folder (relative to home)</p></td>
</tr>
<tr class="odd">
<td><p>-pf</p></td>
<td><p>--project-config-file=&lt;projectConfigFile&gt;</p></td>
<td><p>The configuration file relative to the home folder. The default value is project-config.json</p></td>
</tr>
<tr class="even">
<td><p>-ph</p></td>
<td><p>--project-home=&lt;projectHome&gt;</p></td>
<td><p>The home directory of the project</p></td>
</tr>
<tr class="odd">
<td><p>-pp</p></td>
<td><p>--project-company=&lt;projectCompany&gt;</p></td>
<td><p>The company</p></td>
</tr>
<tr class="even">
<td><p>-ps</p></td>
<td><p>--project-description=&lt;projectDescription&gt;</p></td>
<td><p>The description of the project</p></td>
</tr>
<tr class="odd">
<td><p>-pt</p></td>
<td><p>--project-department=&lt;projectDepartment&gt;</p></td>
<td><p>The department</p></td>
</tr>
<tr class="even">
<td><p>-pu</p></td>
<td><p>--project-unit-tests-base=&lt;projectUnitTestsBasePath&gt;</p></td>
<td><p>The unit tests base folder (relative to home)</p></td>
</tr>
<tr class="odd">
<td><p>-px</p></td>
<td><p>--project-enforce-execution=&lt;projectEnforceExecutionInHome&gt;</p></td>
<td><p>Validate before execution that a workflow or pipeline islocated in the project home folder or a sub-folder (true/false)</p></td>
</tr>
<tr class="even">
<td><p>-sv</p></td>
<td><p>--set-variable=&lt;setVariable&gt;</p></td>
<td><div class="content">
<div class="paragraph">
<p>Set a variable, use format VAR=Value</p>
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
<td><code>-sv</code> can be used to unset a variable by specifying a variable without a value, e.g. <code>-sv=myvar=</code></td>
</tr>
</tbody>
</table>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>-cfg</p></td>
<td><p>--config-file=&lt;configFile&gt;</p></td>
<td><p>Specify the configuration JSON file to manage</p></td>
</tr>
<tr class="even">
<td><p>-cfd</p></td>
<td><p>--config-file-describe-variables=&lt;configDescribeVariables&gt;[,&lt;configDescribeVariables&gt;…​]</p></td>
<td><p>A list of variable=description combinations separated by a comma</p></td>
</tr>
<tr class="odd">
<td><p>-cfv</p></td>
<td><p>--config-file-set-variables=&lt;configSetVariables&gt; ,&lt;configSetVariables&gt;…​]</p></td>
<td><p>A list of variable=value combinations separated by a comma</p></td>
</tr>
<tr class="even">
<td><p>-eg</p></td>
<td><p>--environment-config-files=&lt;environmentConfigFiles&gt;[, &lt;environmentConfigFiles&gt;…​]</p></td>
<td><p>A list of configuration files for this lifecycle environment, comma separated</p></td>
</tr>
<tr class="odd">
<td><p>-pv</p></td>
<td><p>--project-variables=&lt;projectVariables&gt;[,&lt;projectVariables&gt;…​]</p></td>
<td><p>A list of variable=value combinations separated by a comma</p></td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

   

</div>

<div class="sect2">

### project variables Examples

<div class="paragraph">

This is a list of examples on how the parameters on this command are parsed

</div>

<div class="sect3">

#### Normal Usage

<div class="listingblock">

<div class="content">

    --project-variables=key1=value1,key2=value2

</div>

</div>

<div class="paragraph">

Result:

</div>

| Key  | value  |
| ---- | ------ |
| key1 | value1 |
| key2 | value2 |

</div>

<div class="sect3">

#### Spaces in value Usage

<div class="listingblock">

<div class="content">

    --project-variables=key1="This value contains spaces",key2=value2

</div>

</div>

<div class="paragraph">

Result:

</div>

| Key  | value                      |
| ---- | -------------------------- |
| key1 | This value contains spaces |
| key2 | value2                     |

</div>

<div class="sect3">

#### Commas in value Usage

<div class="listingblock">

<div class="content">

    --project-variables=key1=\"value1,value2\"

</div>

</div>

<div class="paragraph">

Result:

</div>

| Key  | value         |
| ---- | ------------- |
| key1 | value1,value2 |

</div>

<div class="sect3">

#### Forcing quotes in value

<div class="listingblock">

<div class="content">

    --project-variables=key1="\"\"String with spaces\"\""

</div>

</div>

<div class="paragraph">

Result:

</div>

| Key  | value                |
| ---- | -------------------- |
| key1 | "String with spaces" |

</div>

</div>

</div>

</div>

<div class="sect1">

## Project Usage and Configuration

<div class="sectionbody">

<div class="paragraph">

Unresolved directive in tmp.qllkCkANMx - include::hop-conf-projects.adoc\[\]

</div>

</div>

</div>

<div class="sect1">

## Running Workflows and Pipelines

<div class="sectionbody">

<div class="paragraph">

Unresolved directive in tmp.qllkCkANMx - include::hop-conf-run-hpl-hwf.adoc\[\]

</div>

</div>

</div>

<div class="sect1">

## Cloud Storage Configuration

<div class="sectionbody">

<div class="paragraph">

Hop Conf can be used to configure your AWS, Azure and Google Cloud (Cloud Storage and Drive) accounts with Hop through [VFS](vfs.MJ9QLOvSUJ)

</div>

<div class="sect2">

### Amazon Web Services S3

<div class="paragraph">

N/A

</div>

</div>

<div class="sect2">

### Azure

<div class="paragraph">

Set the account, block increment size for new files and your Azure key

</div>

<div class="paragraph">

Unresolved directive in tmp.qllkCkANMx - include::hop-conf-cloud-azure-blob-storage.adoc\[\]

</div>

</div>

<div class="sect2">

### Google

<div class="sect3">

#### Google Cloud Storage

<div class="paragraph">

Set the path to your Google Cloud service account JSON key file

</div>

<div class="paragraph">

Unresolved directive in tmp.qllkCkANMx - include::hop-conf-cloud-google-cloud-storage.adoc\[\]

</div>

</div>

<div class="sect3">

#### Google Drive

<div class="paragraph">

Set the path to your Google Drive credentials JSON file or Google Drive tokens folder.

</div>

<div class="paragraph">

Unresolved directive in tmp.qllkCkANMx - include::hop-conf-cloud-google-drive.adoc\[\]

</div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:56 +0200

</div>

</div>

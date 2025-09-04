<div id="header">

# Advanced project and environment management

</div>

<div id="content">

<div class="sect1">

## Configuration files

<div class="sectionbody">

<div class="sect2">

### Global Project Configuration

<div class="paragraph">

The 2 main things that define a project are its name and its home folder. Projects and environments as such are defined in the central Hop configuration file `hop-config.json`. By default this file lives in the `config/` folder of your Hop client distribution. You can change that folder by setting the `HOP_CONFIG_FOLDER` environment variable on your system.

</div>

<div class="paragraph">

   

</div>

projectsConfig

<div class="content">

<div class="paragraph">

In `hop-config.json`, you’ll find a `"projectsConfig"` section. By default it contains the following:

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
  "projectsConfig" : {
    "enabled" : true,
    "projectMandatory" : true,
    "environmentMandatory" : false,
    "defaultProject" : "default",
    "defaultEnvironment" : null,
    "standardParentProject" : "default",
    "standardProjectsFolder" : null,
    "projectConfigurations" : [ {
      "projectName" : "default",
      "projectHome" : "config/projects/default",
      "configFilename" : "project-config.json"
    }, {
      "projectName" : "samples",
      "projectHome" : "config/projects/samples",
      "configFilename" : "project-config.json"
    } ],
    "lifecycleEnvironments" : [ ],
    "projectLifecycles" : [ ]
  }
}
```

</div>

</div>

<div class="paragraph">

As you can see the standard Hop client distribution defines 2 projects: default and samples.

</div>

</div>

<div class="paragraph">

   

</div>

</div>

<div class="sect2">

### Project Configuration

<div class="paragraph">

Every project has extra metadata and settings stored in a project configuration file called `project-config.json`. For the samples project this would be `config/projects/samples/project-config.json`.

</div>

<div class="paragraph">

   

</div>

project-config.json

<div class="content">

<div class="paragraph">

Let’s take a look at it:

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
  "metadataBaseFolder" : "${PROJECT_HOME}/metadata",
  "unitTestsBasePath" : "${PROJECT_HOME}",
  "dataSetsCsvFolder" : "${PROJECT_HOME}/datasets",
  "enforcingExecutionInHome" : true,
  "parentProjectName" : "default",
  "config" : {
    "variables" : [ ]
  }
}
```

</div>

</div>

</div>

<div class="paragraph">

   

</div>

<div class="sect3">

#### Variables

<div class="paragraph">

You can define variables on a project level as well. This makes it handy to reference things like input and output folders which are not sensitive to being checked into version control.

</div>

</div>

<div class="sect3">

#### Parent projects

<div class="paragraph">

As you can see from the project configuration file (`parentProjectName`), a project can have a parent from which it will inherit all the metadata objects as well as all the variables that are defined in it.

</div>

</div>

</div>

<div class="sect2">

### Environment configuration

<div class="paragraph">

Hop enviroments and their home folders are stored in the hop configuration file 'hop-config.json'. That file lives by default in the **config** folder of the Hop installation. System property `HOP_CONFIG_FOLDER` can also be used to point to a different folder

</div>

<div class="paragraph">

   

</div>

environmentConfig

<div class="content">

<div class="listingblock">

<div class="content">

``` highlight
{
 "environmentConfig" : {
  "enabled" : true,
  "openingLastEnvironmentAtStartup" : true,
  "environmentConfigFilename" : "environment.json",
  "environmentFolders" : {
   "Project 1 - DEV" : "/projects/one/dev/",
   "Project 1 - UAT" : "/projects/one/uat/",
   "Project 1 - PRD" : "/projects/one/prd/",
   "Project 2 - DEV" : "/projects/two/dev/",
   "Project 2 - UAT" : "/projects/two/uat/",
   "Project 2 - PRD" : "/projects/two/prd/",
  }
}
```

</div>

</div>

</div>

<div class="paragraph">

   

</div>

</div>

</div>

</div>

<div class="sect1">

## Command Line Project Configuration

<div class="sectionbody">

<div class="paragraph">

In addition to the Hop Gui and configuration files, all aspects of and operations on projects and environments can be managed through the Hop Conf command line tool.

</div>

<div class="paragraph">

Unresolved directive in tmp.Ywac7KJLUm - include::../hop-tools/hop-conf/hop-conf-projects.adoc\[\]

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:29 +0200

</div>

</div>

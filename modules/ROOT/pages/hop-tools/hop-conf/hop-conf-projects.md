<div id="header">

</div>

<div id="content">

<div class="sect2">

### Configuration on the command line

<div class="paragraph">

The `hop-conf` script offers many options to edit environment definitions.

</div>

<div class="sect3">

#### Creating an environment

<div class="exampleblock">

<div class="content">

<div class="dlist">

  - Windows
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-conf.bat --environment-create \
                 --environment hop2 \
                 --environment-project hop2
                 --environment-purpose=Development \
                 --environment-config-files="C:\<YOUR_ENV_FILE_PATH>\env-variables.json"
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    C:\<YOUR_PATH>\hop>echo off
    ===[Environment Settings - hop-conf.bat]===================================
    Java identified as "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java"
    HOP_OPTIONS=-Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=Conf
    -DHOP_AUTO_CREATE_CONFIG=Y
    Command to start Hop will be:
    "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\*
    -Djava.library.path=lib\core;lib\beam -Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows
    -DHOP_PLATFORM_RUNTIME=Conf -DHOP_AUTO_CREATE_CONFIG=Y org.apache.hop.config.HopConfig  --environment-create
    --environment hop2 --environment-project hop2 --environment-purpose Development
    --environment-config-files "C:\<YOUR_ENV_FILE_PATH\env-variables.json"
    ===[Starting HopConfig]=========================================================
    Creating environment 'hop2'
    Environment 'hop2' was created in Hop configuration file C:\<YOUR_PATH>\hop\config\hop-config.json
    Warning: referenced project 'hop2' doesn\'t exist
    Found existing environment configuration file: C:\<YOUR_ENV_FILE_PATH>\variables.json
    Purpose: Development
    Project name: hop2
    Config file: C:\<YOUR_ENV_FILE_PATH>\env-variables.json
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    $ sh hop-conf.sh \
         --environment-create \
         --environment hop2 \
         --environment-project hop2 \
         --environment-purpose=Development \
         --environment-config-files=<YOUR_ENV_FILE_PATH>/env-variables.json
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    Creating environment 'hop2'
    Environment 'hop2' was created in Hop configuration file <YOUR_PATH>/hop/config/hop-config.json
    Warning: referenced project 'hop2' doesn't exist
    Found existing environment configuration file: <YOUR_ENV_FILE_PATH>/env-variables.json
      hop2
        Purpose: Development
        Project name: hop2
          Config file: <YOUR_ENV_FILE_PATH>/env-variables.json
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="paragraph">

As you can see from the log, an empty file was created to set variables in:

</div>

<div class="listingblock">

<div class="content">

``` highlight
{ }
```

</div>

</div>

</div>

<div class="sect3">

#### Setting variables in an environment

<div class="paragraph">

This command adds a variable to the environment configuration file:

</div>

<div class="paragraph">

   

</div>

<div class="exampleblock">

<div class="content">

<div class="dlist">

  - Windows
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-conf.bat --config-file "C:\<YOUR_ENV_FILE_PATH>\env-variables.json" --config-file-set-variables "DB_HOSTNAME=localhost,DB_PASSWORD=abcd"
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    C:\<YOUR_PATH\hop>echo off
    ===[Environment Settings - hop-conf.bat]===================================
    Java identified as "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java"
    HOP_OPTIONS=-Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=Conf -DHOP_AUTO_CREATE_CONFIG=Y
    Command to start Hop will be:
    "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\*
    -Djava.library.path=lib\core;lib\beam -Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows
    -DHOP_PLATFORM_RUNTIME=Conf -DHOP_AUTO_CREATE_CONFIG=Y org.apache.hop.config.HopConfig
    --config-file "C:\<YOUR_ENV_FILE_PATH>\env-variables.json"
    --config-file-set-variables "DB_HOSTNAME=localhost,DB_PASSWORD=abcd"
    ===[Starting HopConfig]=========================================================
    Configuration file 'C:\<YOUR_ENV_FILE_PATH>/env-variables.json' was modified.
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    ./hop-conf.sh --config-file <YOUR_ENV_FILE_PATH>/env-variables.json --config-file-set-variables DB_HOSTNAME=localhost,DB_PASSWORD=abcd
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    Configuration file '<YOUR_ENV_FILE_PATH>/env-variables.json' was modified.
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="paragraph">

If you look at the file `env-variables.json`, you’ll see that the variables were added:

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
  "variables" : [ {
    "name" : "DB_HOSTNAME",
    "value" : "localhost",
    "description" : ""
  }, {
    "name" : "DB_PASSWORD",
    "value" : "abcd",
    "description" : ""
  } ]
}
```

</div>

</div>

<div class="paragraph">

Please note that you can add descriptions for the variables as well with the `--describe-variable` option. Please run hop-conf without options to see all the possibilities.

</div>

</div>

<div class="sect3">

#### Deleting an environment

<div class="paragraph">

The following example deletes an environment from the Hop configuration file:

</div>

<div class="paragraph">

   

</div>

<div class="exampleblock">

<div class="content">

<div class="dlist">

  - Windows
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-conf.bat -ed --environment hop2
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    C:\<YOUR_PATH>\hop>echo off
    ===[Environment Settings - hop-conf.bat]===================================
    Java identified as "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java"
    HOP_OPTIONS=-Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=Conf -DHOP_AUTO_CREATE_CONFIG=Y
    Command to start Hop will be:
    "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\* -Djava.library.path=lib\core;lib\beam -Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=Conf -DHOP_AUTO_CREATE_CONFIG=Y org.apache.hop.config.HopConfig  -ed --environment hop2
    ===[Starting HopConfig]=========================================================
    Lifecycle environment 'hop2' was deleted from Hop configuration file C:\<YOUR_PATH>\hop\config\hop-config.json
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    ./hop-conf.sh -ed --environment hop2
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    Lifecycle environment 'hop2' was deleted from Hop configuration file <YOUR_PATH>/hop/config/hop-config.json
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

</div>

</div>

<div class="sect2">

### Projects Plugin configuration

<div class="paragraph">

There are various options to configure the behavior of the `Projects` plugin itself. In Hop configuration file `hop-config.json` we can find the following options:

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
    "projectMandatory" : true,
    "environmentMandatory" : false,
    "defaultProject" : "default",
    "defaultEnvironment" : null,
    "standardParentProject" : "default",
    "standardProjectsFolder" : "/home/matt/test-stuff/"
}
```

</div>

</div>

| Option                 | Description                                                                        | hop-conf option              |
| ---------------------- | ---------------------------------------------------------------------------------- | ---------------------------- |
| projectMandatory       | This will prevent anyone from using hop-run without specifying a project           | `--project-mandatory`        |
| environmentMandatory   | This will prevent anyone from using hop-run without specifying an environment      | `--environment-mandatory`    |
| defaultProject         | The default project to use when none is specified                                  | `--default-project`          |
| defaultEnvironment     | The default environment to use when none is specified                              | `--default-environment`      |
| standardParentProject  | The standard parent project to propose when creating new project                   | `--standard-parent-project`  |
| standardProjectsFolder | The folder to which you’ll browse by default in the GUI when creating new projects | `--standard-projects-folder` |

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:55 +0200

</div>

</div>

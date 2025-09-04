<div id="header">

# Hop Tools

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Hop contains a number of tools that are optimized for the various tasks Hop developers and administrators need to perform.

</div>

</div>

</div>

<div class="sect1">

## Hop GUI

<div class="sectionbody">

<div class="paragraph">

Unresolved directive in tmp.QDblKAgTNV - include::../snippets/hop-tools/hop-gui.adoc\[\]

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
<td>Hop Gui is designed to be platform independent.<br />
<a href="../hop-gui/hop-web.B1P6myZzZE">Hop Web</a> is a version of Hop Gui that works on browsers and mobile devices.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

The command below starts Hop GUI for your operating system.

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
    hop-gui.bat
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
    ./hop-gui.sh
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="paragraph">

Expected output: Hop Gui starts.

</div>

</div>

</div>

<div class="sect1">

## Hop Conf

<div class="sectionbody">

<div class="paragraph">

Unresolved directive in tmp.QDblKAgTNV - include::../snippets/hop-tools/hop-conf.adoc\[\]

</div>

<div class="paragraph">

The example `hop-conf` command below lists your available projects.

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
    hop-conf.bat -pl
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\* -Djava.library.path=lib\core;lib\beam -Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=Conf -DHOP_AUTO_CREATE_CONFIG=Y org.apache.hop.config.HopConfig  -pl
    ===[Starting HopConfig]=========================================================
    Projects:
      default : config/projects/default
        Configuration file: file:\C:\<YOUR_PATH>\hop\config\projects\default\project-config.json
      samples : config/projects/samples
        Parent project: default
        Configuration file: file:\C:\<YOUR_PATH>\hop\config\projects\samples\project-config.json
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
    ./hop-conf.sh -pl
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    Projects:
      default : config/projects/default
        Configuration file: file:<YOUR_PATH>/hop/config/projects/default/project-config.json
      samples : config/projects/samples
        Parent project: default
        Configuration file: file:<YOUR_PATH>/hop/config/projects/samples/project-config.json
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="paragraph">

See the [Hop Tools → Hop Conf](../hop-tools/hop-conf/hop-conf.B1P6myZzZE) documentation for more information.

</div>

</div>

</div>

<div class="sect1">

## Hop Encrypt

<div class="sectionbody">

<div class="paragraph">

Unresolved directive in tmp.QDblKAgTNV - include::../snippets/hop-tools/hop-encrypt.adoc\[\]

</div>

<div class="paragraph">

   

</div>

<div class="paragraph">

The example below prints the encrypted Hop password `mypassword`.

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
    hop-encrypt.bat -hop mypassword
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    ===[Environment Settings - hop-encrypt.bat]====================================
    Java identified as "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java"
    HOP_OPTIONS=-Xmx64m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=GUI
    Command to start Hop will be:
    "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\* -Djava.library.path=lib\core;lib\beam -Xmx64m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=GUI org.apache.hop.core.encryption.Encr  -hop mypassword
    ===[Starting HopEncrypt]=========================================================
    Encrypted 2be98afc86aa79f9dbb18bd63c99dbdde
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
    ./hop-encrypt.sh -hop mypassword
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    Encrypted 2be98afc86aa79f9dbb18bd63c99dbdde
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="paragraph">

See the [Hop Tools → Hop Encrypt](../hop-tools/hop-encrypt.B1P6myZzZE) documentation for more information.

</div>

</div>

</div>

<div class="sect1">

## Hop Run

<div class="sectionbody">

<div class="paragraph">

Unresolved directive in tmp.QDblKAgTNV - include::../snippets/hop-tools/hop-run.adoc\[\]

</div>

<div class="paragraph">

The example below runs the `switch-case-basic.hpl` pipeline in the samples project (`-j`) with the [local native pipeline run configuration](pipeline/pipeline-run-configurations/native-local-pipeline-engine.B1P6myZzZE) (`-r`).

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
    hop-run.bat -r local -j samples -f ${PROJECT_HOME}/transforms/switch-case-basic.hpl
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
    ===[Environment Settings - hop-run.bat]===================================
    Java identified as "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java"
    HOP_OPTIONS="-Xmx2048m" -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=Run -DHOP_AUTO_CREATE_CONFIG=Y
    Consolidated parameters to pass to HopRun are
    -r local -j samples -f ${PROJECT_HOME}/transforms/switch-case-basic.hpl
    Command to start HopRun will be:
    "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\*
    -Djava.library.path=lib\core;lib\beam "-Xmx2048m" -DHOP_AUDIT_FOLDER=.\audit
    -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=Run -DHOP_AUTO_CREATE_CONFIG=Y org.apache.hop.run.HopRun
    -r local -j samples -f ${PROJECT_HOME}/transforms/switch-case-basic.hpl
    ===[Starting HopRun]=========================================================
    2022/12/16 07:07:47 - HopRun - Enabling project 'samples'
    2022/12/16 07:07:47 - HopRun - Starting pipeline: config/projects/samples/transforms/switch-case-basic.hpl
    2022/12/16 07:07:47 - switch-case-basic - Executing this pipeline using the Local Pipeline Engine with run configuration 'local'
    2022/12/16 07:07:47 - switch-case-basic - Execution started for pipeline [switch-case-basic]
    2022/12/16 07:07:47 - Test Data.0 - Finished processing (I=0, O=0, R=0, W=5, U=0, E=0)
    2022/12/16 07:07:47 - Switch id.0 - Finished processing (I=0, O=0, R=5, W=5, U=0, E=0)
    2022/12/16 07:07:47 - Output 2.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
    2022/12/16 07:07:47 - Output 1.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
    2022/12/16 07:07:47 - Output 4.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
    2022/12/16 07:07:47 - Output default.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
    2022/12/16 07:07:47 - Output 3.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
    2022/12/16 07:07:47 - switch-case-basic - Pipeline duration : 0.435 seconds [  0.435" ]
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
    ./hop-run.sh -r local -j samples -f ${PROJECT_HOME}/transforms/switch-case-basic.hpl
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    2022/12/16 06:59:03 - HopRun - Enabling project 'samples'
    2022/12/16 06:59:03 - HopRun - Relative path filename specified: config/projects/samples//transforms/switch-case-basic.hpl
    2022/12/16 06:59:03 - HopRun - Starting pipeline: config/projects/samples//transforms/switch-case-basic.hpl
    2022/12/16 06:59:03 - switch-case-basic - Executing this pipeline using the Local Pipeline Engine with run configuration 'local'
    2022/12/16 06:59:03 - switch-case-basic - Execution started for pipeline [switch-case-basic]
    2022/12/16 06:59:04 - Test Data.0 - Finished processing (I=0, O=0, R=0, W=5, U=0, E=0)
    2022/12/16 06:59:04 - Switch id.0 - Finished processing (I=0, O=0, R=5, W=5, U=0, E=0)
    2022/12/16 06:59:04 - Output default.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
    2022/12/16 06:59:04 - Output 1.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
    2022/12/16 06:59:04 - Output 4.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
    2022/12/16 06:59:04 - Output 3.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
    2022/12/16 06:59:04 - Output 2.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
    2022/12/16 06:59:04 - switch-case-basic - Pipeline duration : 0.668 seconds [  0.668" ]
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="paragraph">

[Hop Tools → Hop Run](:../hop-run/index.B1P6myZzZE)

</div>

</div>

</div>

<div class="sect1">

## Hop Search

<div class="sectionbody">

<div class="paragraph">

Unresolved directive in tmp.QDblKAgTNV - include::../snippets/hop-tools/hop-search.adoc\[\]

</div>

<div class="paragraph">

The example below searches in the samples project `-j` for `switch-case`.

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
    hop-search.bat -j samples -x switch-case
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
    ===[Environment Settings - hop-search.bat]===================================
    Java identified as "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java"
    HOP_OPTIONS=-Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=Search
    -DHOP_AUTO_CREATE_CONFIG=Y
    Command to start Hop will be:
    "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\*
    -Djava.library.path=lib\core;lib\beam -Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows
    -DHOP_PLATFORM_RUNTIME=Search -DHOP_AUTO_CREATE_CONFIG=Y org.apache.hop.config.HopConfig  -j samples -x switch-case
    ===[Starting HopConfig]=========================================================
    Enabling project 'samples'
    Searching in project : samples
    Searching for [switch-case]  Case sensitive? true  Regular expression? true
    Searching in location : Project samples
    -----------------------------------------------------------------------------------
    file:///C:/<YOUR_PATH>/hop/config/projects/samples/beam/pipelines/switch-case.hpl : null(switch-case) : matching property value: switch-case    file:///C:/<YOUR_PATH>/hop/config/projects/samples/beam/pipelines/switch-case.hpl : switch-case(switch-case) : matching property value: switch-case
    file:///C:/<YOUR_PATH>/hop/config/projects/samples/beam/pipelines/switch-case.hpl : switch-case(switch-case) : pipeline transform property : filePrefix
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
    ./hop-search.sh -j samples -x switch-case
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    Enabling project 'samples'
    Searching in project : samples
    Searching for [switch-case]  Case sensitive? true  Regular expression? true
    Searching in location : Project samples
    -----------------------------------------------------------------------------------
    file://<YOUR_PATH>/hop/config/projects/samples/beam/pipelines/switch-case.hpl : null(switch-case) : matching property value: switch-case
    file://<YOUR_PATH>/hop/config/projects/samples/beam/pipelines/switch-case.hpl : switch-case(switch-case) : matching property value: switch-case
    file://<YOUR_PATH>/hop/config/projects/samples/beam/pipelines/switch-case.hpl : switch-case(switch-case) : pipeline transform property : filePrefix
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="paragraph">

See the [Hop Tools → Hop Search](../hop-tools/hop-search.B1P6myZzZE) documentation for more information.

</div>

</div>

</div>

<div class="sect1">

## Hop Server

<div class="sectionbody">

<div class="paragraph">

Unresolved directive in tmp.QDblKAgTNV - include::../snippets/hop-tools/hop-server.adoc\[\]

</div>

<div class="paragraph">

The example command below starts the most basic server on your machine `localhost` on port `8081`.

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
    hop-server.bat localhost 8081
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
    ===[Environment Settings - hop-server.bat]====================================
    Java identified as "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java"
    HOP_OPTIONS=-Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=GUI -DHOP_AUTO_CREATE_CONFIG=Y
    Command to start Hop will be:
    "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\*
    -Djava.library.path=lib\core;lib\beam -Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows
    -DHOP_PLATFORM_RUNTIME=GUI -DHOP_AUTO_CREATE_CONFIG=Y org.apache.hop.www.HopServer  localhost 8081
    ===[Starting HopServer]=========================================================
    2022/12/16 07:33:44 - HopServer - Enabling project 'default'
    2022/12/16 07:33:44 - HopServer - Installing timer to purge stale objects after 1440 minutes.
    2022/12/16 07:33:44 - HopServer - Created listener for webserver @ address : localhost:8081
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Your Hop Server is available at http://localhost:8081, log on with the default username `cluster`, password `cluster`.
    
    </div>
    
    <div class="paragraph">
    
    Hit `CTRL-C` to stop the server.
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    ./hop-server.sh localhost 8081
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    2022/12/16 07:20:19 - HopServer - Enabling project 'default'
    2022/12/16 07:20:19 - HopServer - Installing timer to purge stale objects after 1440 minutes.
    2022/12/16 07:20:19 - HopServer - Created listener for webserver @ address : localhost:8081
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Your Hop Server is available at http://localhost:8081, log on with the default username `cluster`, password `cluster`.
    
    </div>
    
    <div class="paragraph">
    
    Hit `CTRL-C` to stop the server.
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="paragraph">

Read more about [Hop Server](:../hop-server/index.B1P6myZzZE)

</div>

</div>

</div>

<div class="sect1">

## Hop Import

<div class="sectionbody">

<div class="paragraph">

Unresolved directive in tmp.QDblKAgTNV - include::../snippets/hop-tools/hop-import.adoc\[\]

</div>

<div class="paragraph">

   

</div>

<div class="paragraph">

The example command below prints the `hop-import` help. Check the <tech-manual::hop-vs-kettle/import-kettle-projects.B1P6myZzZE> docs for more information.

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
    
        hop-import.bat
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
        ./hop-import.sh
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="paragraph">

Read more at [Technical Manual → Hop vs Kettle → Import Kettle Projects](tech-manual::hop-vs-kettle/import-kettle-projects.B1P6myZzZE)

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:41 +0200

</div>

</div>

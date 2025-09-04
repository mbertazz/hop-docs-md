<div id="header">

# Hop Search

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Hop Search is a command line tool to search for metadata in Hop or a Hop project.

</div>

<div class="paragraph">

   

</div>

Usage

<div class="content">

<div class="paragraph">

\== Usage

</div>

<div class="listingblock">

<div class="content">

``` highlight
Usage: <main class> [-hilx] [-e=<environmentOption>] [-j=<projectOption>]
                    <searchString>
      <searchString>         The string to search for
  -e, --environment=<environmentOption>
                             The name of the lifecycle environment to use
  -h, --help                 Displays this help message and quits
  -i, --case-insensitive     Perform a case insensitive search
  -j, --project=<projectOption>
                             The name of the project to use
  -l, --print-locations      Print which locations are being looked at
  -v, --version              Print version information and exit
  -x, --regular-expression   The specified search string is a regular expression
```

</div>

</div>

<div class="paragraph">

\== Options

</div>

| Option           | Description                                         |
| ---------------- | --------------------------------------------------- |
| \<searchString\> | The string to search for                            |
| \-e              | The name of the lifecycle environment to use        |
| \-h              | Displays this help message and quits                |
| \-i              | Perform a case insensitive search                   |
| \-j              | The name of the project to use                      |
| \-l              | Print which locations are being looked at           |
| \-v              | Print version information and exit                  |
| \-x              | The specified search string is a regular expression |

</div>

<div class="paragraph">

   

</div>

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="paragraph">

Example command: search for the string 'json' (case insensitive) in the 'hop-samples' project.

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
    hop-search.bat -j samples -i switch-case
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
    -DHOP_PLATFORM_RUNTIME=Search -DHOP_AUTO_CREATE_CONFIG=Y org.apache.hop.config.HopConfig -j samples -i switch-case
    ===[Starting HopConfig]=========================================================
    Enabling project 'samples'
    Searching in project : samples
    Searching for [switch-case]
    Case sensitive? false
    Regular expression? false
    Searching in location : Project samples
    -----------------------------------------------------------------------------------
    file:///C:/<YOUR_PATH>/hop/config/projects/samples/beam/pipelines/switch-case.hpl : null(switch-case) : matching property value: switch-case
    file:///C:/<YOUR_PATH>/hop/config/projects/samples/beam/pipelines/switch-case.hpl : switch-case(switch-case) : matching property value: switch-case
    file:///C:/<YOUR_PATH>/hop/config/projects/samples/beam/pipelines/switch-case.hpl : switch-case(switch-case) : pipeline transform property : filePrefix
    file:///C:/<YOUR_PATH>/hop/config/projects/samples/transforms/switch-case-basic.hpl : null(switch-case-basic) : matching property value: switch-case-basic
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
    ./hop-search.sh -j samples -i switch-case
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
    Searching for [switch-case]
    Case sensitive? false
    Regular expression? false
    Searching in location : Project samples
    -----------------------------------------------------------------------------------
    file://<YOUR_PATH>/hop/config/projects/samples/transforms/switch-case-basic.hpl : null(switch-case-basic) : matching property value: switch-case-basic
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

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:58 +0200

</div>

</div>

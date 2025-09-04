<div id="header">

# Hop Run

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Hop Run is a command line tool to run your workflows and pipelines.

</div>

<div class="paragraph">

Hop Run can be launched through the script with the corresponding name in your Hop installation directory, either `hop-run.sh` on Mac and Linux or `hop-run.bat` on Windows.

</div>

<div class="paragraph">

Except for the laucher script, all options are platform agnostic; there is no difference in the way hop-run works on any operating system.

</div>

</div>

</div>

<div class="sect1">

## Hop Run Options

<div class="sectionbody">

<div class="paragraph">

You can display Hop Run’s options by running the command without any options.

</div>

<div class="paragraph">

On Windows, run `hop-run.bat`. The command on Mac and Linux is `hop-run.sh`.

</div>

<div class="paragraph">

You’ll see the option listed in a similar output to the one below:

</div>

<div class="paragraph">

   

</div>

Usage

<div class="content">

<div class="listingblock">

<div class="title">

Output of help

</div>

<div class="content">

``` highlight
Usage: <main class> [-ho] [-e=<environmentOption>] [-f=<filename>]
                    [-j=<projectOption>] [-l=<level>]
                    [-r=<runConfigurationName>] [-ps=<parametersSeparator] [-p=<parameters>[,
                    <parameters>...]]... [-s=<systemProperties>[,
                    <systemProperties>...]]...
  -a, --startaction=<startActionName>
                          The name of the action where to start a workflow
  -e, --environment=<environmentOption>
                          The name of the lifecycle environment to use
  -f, --file=<filename>   The filename of the workflow or pipeline to run
  -h, --help              Displays this help message and quits
  -j, --project=<projectOption>
                          The name of the project to use
  -l, --level=<level>     The debug level, one of NOTHING, ERROR, MINIMAL, BASIC, DETAILED, DEBUG, ROWLEVEL
  -l, --level=<level>     The debug level, one of NOTHING, ERROR, MINIMAL, BASIC, DETAILED, DEBUG, ROWLEVEL
  -lf, --logfile=<logfile-name> The complete filename where hop-run will write the Hop console log
  -m, --metadata-export=<metadataExportFile>
                          A file containing exported metadata in JSON format
  -o, --printoptions      Print the used options
  -p, --parameters=<parameters>[,<parameters>...]
                          A list of PARAMETER=VALUE pairs
  -ps, --parameters-separator=<parametersSeparator>
                          A character to be used as separator for our list of PARAMETER=VALUE pairs (default is ",").
  -r, --runconfig=<runConfigurationName>
                          The name of the Run Configuration to use
  -s, --system-properties=<systemProperties>[,<systemProperties>...]
                          A comma separated list of KEY=VALUE pairs
  -v, --version           Print version information and exit
```

</div>

</div>

<div class="paragraph">

The available options are listed in more detail in the table below:

</div>

<table>
<thead>
<tr class="header">
<th>Short</th>
<th>Extended</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>-e</code></p></td>
<td><p><code>--environment</code></p></td>
<td><p>The name of the environment to use.</p>
<p>Check the <a href="projects/projects-environments.VKNjxFg0LY">documentation on environments</a> for more details.</p></td>
</tr>
<tr class="even">
<td><p><code>-a</code></p></td>
<td><p><code>--startaction</code></p></td>
<td><p>The name of the action where to start a workflow</p></td>
</tr>
<tr class="odd">
<td><p><code>-f</code></p></td>
<td><p><code>--file</code></p></td>
<td><p>The filename of the workflow or pipeline to run</p></td>
</tr>
<tr class="even">
<td><p><code>-h</code></p></td>
<td><p><code>--help</code></p></td>
<td><p>Displays this help message and quits.</p></td>
</tr>
<tr class="odd">
<td><p><code>-j</code></p></td>
<td><p><code>--project</code></p></td>
<td><p>The name of the project to use when running a pipeline or workflow</p></td>
</tr>
<tr class="even">
<td><p><code>-l</code></p></td>
<td><p><code>--level</code></p></td>
<td><p>The debug level, one of NOTHING, ERROR, MINIMAL, BASIC, DETAILED, DEBUG, ROWLEVEL</p></td>
</tr>
<tr class="odd">
<td><p><code>-lf</code></p></td>
<td><p><code>--logfile</code></p></td>
<td><p>The complete filename where hop-run will write the Hop console log</p></td>
</tr>
<tr class="even">
<td><p><code>-m</code></p></td>
<td><p><code>--metadata-export</code></p></td>
<td><p>A file containing exported metadata in JSON format. See also the metadata export option in <a href="hop-tools/hop-conf/hop-conf.VKNjxFg0LY">Hop Conf</a></p></td>
</tr>
<tr class="odd">
<td><p><code>-o</code></p></td>
<td><p><code>--printoptions</code></p></td>
<td><p>Print the used options</p></td>
</tr>
<tr class="even">
<td><p><code>-p</code></p></td>
<td><p><code>--parameters</code></p></td>
<td><p>A comma separated list of PARAMETER=VALUE pairs</p></td>
</tr>
<tr class="odd">
<td><p><code>-ps</code></p></td>
<td><p><code>--parameters-separator</code></p></td>
<td><p>A character to be used as separator for our list of PARAMETER=VALUE pairs (default is &quot;,&quot;).</p></td>
</tr>
<tr class="even">
<td><p><code>-r</code></p></td>
<td><p><code>--runconfig</code></p></td>
<td><p>The name of the Run Configuration to use. Check the <a href="pipeline/pipeline-run-configurations/pipeline-run-configurations.VKNjxFg0LY">documentation on run configurations</a> for more details.</p></td>
</tr>
<tr class="odd">
<td><p><code>-s</code></p></td>
<td><p><code>--system-properties</code></p></td>
<td><p>A comma separated list of KEY=VALUE pairs</p></td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

   

</div>

</div>

</div>

<div class="sect1">

## Possible exit codes

<div class="sectionbody">

<div class="paragraph">

Hop Run currently finishes with one of four exit codes.

</div>

<div class="paragraph">

In all cases except `0`, check the error logs for more detailed information for your specific error.

</div>

| Exit code | Error Message                                        | Description                                                                                                 |
| --------- | ---------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| 0         | None                                                 | No error message. Everything worked flawlessly.                                                             |
| 1         | Error found during execution\!                       | There was an error executing the workflow or pipeline.                                                      |
| 2         | General error found, something went horribly wrong\! | There was a general error that caused Hop Run to fail completely.                                           |
| 9         | None                                                 | There was an error parsing the provided parameter information. Hop Run shows the syntax summary and exists. |

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="paragraph">

The example below runs the `switch-case-basic.hpl` pipeline from the samples project through `hop-run`.  
   

</div>

<div class="exampleblock">

<div class="content">

<div class="dlist">

  - Windows
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="paragraph">
    
    Open a command (CMD) window, change to the directory where you unzipped Apache Hop and run:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
        hop-run.bat -j samples -r local -f ${PROJECT_HOME}/transforms/switch-case-basic.hpl
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Your output will be similar to what is shown below:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
        "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\*
        -Djava.library.path=lib\core;lib\beam "-Xmx2048m" -DHOP_AUDIT_FOLDER=.\audit
        -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=Run -DHOP_AUTO_CREATE_CONFIG=Y org.apache.hop.run.HopRun
        -j samples -r local -f ${PROJECT_HOME}/transforms/switch-case-basic.hpl
        ===[Starting HopRun]=========================================================
        2022/12/12 14:09:58 - HopRun - Enabling project 'samples'
        2022/12/12 14:09:58 - HopRun - Starting pipeline: config/projects/samples/transforms/switch-case-basic.hpl
        2022/12/12 14:09:58 - switch-case-basic - Executing this pipeline using the Local Pipeline Engine with run configuration 'local'
        2022/12/12 14:09:58 - switch-case-basic - Execution started for pipeline [switch-case-basic]
        2022/12/12 14:09:58 - Test Data.0 - Finished processing (I=0, O=0, R=0, W=5, U=0, E=0)
        2022/12/12 14:09:58 - Switch id.0 - Finished processing (I=0, O=0, R=5, W=5, U=0, E=0)
        2022/12/12 14:09:58 - Output 2.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
        2022/12/12 14:09:58 - Output default.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
        2022/12/12 14:09:58 - Output 1.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
        2022/12/12 14:09:58 - Output 4.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
        2022/12/12 14:09:58 - Output 3.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
        2022/12/12 14:09:58 - switch-case-basic - Pipeline duration : 0.542 seconds [  0.542" ]
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="paragraph">
    
    Open a terminal, change to the directory where you unzipped Apache Hop and run:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
        ./hop-run.sh -j samples -r local -f ${PROJECT_HOME}/transforms/switch-case-basic.hpl
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Your output will be similar to what is shown below:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
        2022/12/12 14:06:39 - HopRun - Enabling project 'samples'
        2022/12/12 14:06:39 - HopRun - Relative path filename specified: config/projects/samples//transforms/switch-case-basic.hpl
        2022/12/12 14:06:39 - HopRun - Starting pipeline: config/projects/samples//transforms/switch-case-basic.hpl
        2022/12/12 14:06:39 - switch-case-basic - Executing this pipeline using the Local Pipeline Engine with run configuration 'local'
        2022/12/12 14:06:39 - switch-case-basic - Execution started for pipeline [switch-case-basic]
        2022/12/12 14:06:39 - Test Data.0 - Finished processing (I=0, O=0, R=0, W=5, U=0, E=0)
        2022/12/12 14:06:39 - Switch id.0 - Finished processing (I=0, O=0, R=5, W=5, U=0, E=0)
        2022/12/12 14:06:39 - Output 2.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
        2022/12/12 14:06:39 - Output default.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
        2022/12/12 14:06:39 - Output 4.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
        2022/12/12 14:06:39 - Output 3.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
        2022/12/12 14:06:39 - Output 1.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
        2022/12/12 14:06:39 - switch-case-basic - Pipeline duration : 0.499 seconds [  0.499" ]
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="sect2">

### Parameter Examples

<div class="paragraph">

This is a list of examples on how the parameters on this command are parsed

</div>

<div class="sect3">

#### Normal Usage

<div class="listingblock">

<div class="content">

    --parameters=key1=value1,key2=value2

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

    --parameters=key1="This value contains spaces",key2=value2

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

    --parameters=key1=\"value1,value2\"

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

    --parameters=key1="\"\"String with spaces\"\""

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

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:50 +0200

</div>

</div>

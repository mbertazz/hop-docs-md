<div id="header">

</div>

<div id="content">

<div class="paragraph">

You can specify an environment or a project when executing a pipeline or a workflow. By doing so you are automatically configuring metadata, variables without too much fuss.

</div>

<div class="paragraph">

The easiest example is shown by executing the "complex" pipeline from the Apache Beam examples:

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
    hop-run.bat --project samples --file 'beam/pipelines/complex.hpl' --runconfig Direct
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
    HOP_OPTIONS="-Xmx2048m" -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows
    -DHOP_PLATFORM_RUNTIME=Run -DHOP_AUTO_CREATE_CONFIG=Y
    Consolidated parameters to pass to HopRun are
    --project samples --file beam/pipelines/complex.hpl --runconfig Direct
    Command to start HopRun will be:
    "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\*
    -Djava.library.path=lib\core;lib\beam "-Xmx2048m" -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows
    -DHOP_PLATFORM_RUNTIME=Run -DHOP_AUTO_CREATE_CONFIG=Y org.apache.hop.run.HopRun  --project samples
    --file beam/pipelines/complex.hpl --runconfig Direct
    ===[Starting HopRun]=========================================================
    2022/12/16 14:23:10 - HopRun - Enabling project 'samples'
    2022/12/16 14:23:10 - HopRun - Relative path filename specified: config/projects/samples/beam/pipelines/complex.hpl
    2022/12/16 14:23:10 - HopRun - Starting pipeline: config/projects/samples/beam/pipelines/complex.hpl
    2022/12/16 14:23:21 - General - Created Apache Beam pipeline with name 'complex'
    2022/12/16 14:23:21 - General - Handled transform (INPUT) : Customer data
    2022/12/16 14:23:21 - General - Handled transform (INPUT) : State data
    2022/12/16 14:23:21 - General - Handled Group By (TRANSFORM) : countPerState, gets data from 1 previous transform(s)
    2022/12/16 14:23:21 - General - Handled generic transform (TRANSFORM) : uppercase state, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:23:21 - General - Handled Merge Join (TRANSFORM) : Merge join
    2022/12/16 14:23:21 - General - Handled generic transform (TRANSFORM) : Lookup count per state, gets data from 1 previous transform(s), targets=0, infos=1
    2022/12/16 14:23:21 - General - Handled generic transform (TRANSFORM) : name<n, gets data from 1 previous transform(s), targets=2, infos=0
    2022/12/16 14:23:21 - General - Transform Label: N-Z reading from previous transform targeting this one using : name<n - TARGET - Label: N-Z
    2022/12/16 14:23:21 - General - Handled generic transform (TRANSFORM) : Label: N-Z, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:23:21 - General - Transform Label: A-M reading from previous transform targeting this one using : name<n - TARGET - Label: A-M
    2022/12/16 14:23:21 - General - Handled generic transform (TRANSFORM) : Label: A-M, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:23:21 - General - Handled generic transform (TRANSFORM) : Switch / case, gets data from 2 previous transform(s), targets=4, infos=0
    2022/12/16 14:23:21 - General - Transform CA reading from previous transform targeting this one using : Switch / case - TARGET - CA
    2022/12/16 14:23:21 - General - Handled generic transform (TRANSFORM) : CA, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:23:21 - General - Transform NY reading from previous transform targeting this one using : Switch / case - TARGET - NY
    2022/12/16 14:23:21 - General - Handled generic transform (TRANSFORM) : NY, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:23:21 - General - Transform FL reading from previous transform targeting this one using : Switch / case - TARGET - FL
    2022/12/16 14:23:21 - General - Handled generic transform (TRANSFORM) : FL, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:23:21 - General - Transform Default reading from previous transform targeting this one using : Switch / case - TARGET - Default
    2022/12/16 14:23:21 - General - Handled generic transform (TRANSFORM) : Default, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:23:21 - General - Handled generic transform (TRANSFORM) : Collect, gets data from 4 previous transform(s), targets=0, infos=0
    2022/12/16 14:23:21 - General - Handled transform (OUTPUT) : complex, gets data from Collect
    2022/12/16 14:23:21 - General - Executing this pipeline using the Beam Pipeline Engine with run configuration 'Direct'  ----
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
    ./sh hop-run.sh --project samples --file 'beam/pipelines/complex.hpl' --runconfig Direct
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    2022/12/16 14:27:37 - HopRun - Enabling project 'samples'
    2022/12/16 14:27:37 - HopRun - Relative path filename specified: config/projects/samples/beam/pipelines/complex.hpl
    2022/12/16 14:27:37 - HopRun - Starting pipeline: config/projects/samples/beam/pipelines/complex.hpl
    2022/12/16 14:27:41 - General - Created Apache Beam pipeline with name 'complex'
    2022/12/16 14:27:41 - General - Handled transform (INPUT) : Customer data
    2022/12/16 14:27:41 - General - Handled transform (INPUT) : State data
    2022/12/16 14:27:41 - General - Handled Group By (TRANSFORM) : countPerState, gets data from 1 previous transform(s)
    2022/12/16 14:27:41 - General - Handled generic transform (TRANSFORM) : uppercase state, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:27:41 - General - Handled Merge Join (TRANSFORM) : Merge join
    2022/12/16 14:27:41 - General - Handled generic transform (TRANSFORM) : Lookup count per state, gets data from 1 previous transform(s), targets=0, infos=1
    2022/12/16 14:27:41 - General - Handled generic transform (TRANSFORM) : name<n, gets data from 1 previous transform(s), targets=2, infos=0
    2022/12/16 14:27:41 - General - Transform Label: N-Z reading from previous transform targeting this one using : name<n - TARGET - Label: N-Z
    2022/12/16 14:27:41 - General - Handled generic transform (TRANSFORM) : Label: N-Z, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:27:41 - General - Transform Label: A-M reading from previous transform targeting this one using : name<n - TARGET - Label: A-M
    2022/12/16 14:27:41 - General - Handled generic transform (TRANSFORM) : Label: A-M, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:27:41 - General - Handled generic transform (TRANSFORM) : Switch / case, gets data from 2 previous transform(s), targets=4, infos=0
    2022/12/16 14:27:41 - General - Transform CA reading from previous transform targeting this one using : Switch / case - TARGET - CA
    2022/12/16 14:27:42 - General - Handled generic transform (TRANSFORM) : CA, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:27:42 - General - Transform NY reading from previous transform targeting this one using : Switch / case - TARGET - NY
    2022/12/16 14:27:42 - General - Handled generic transform (TRANSFORM) : NY, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:27:42 - General - Transform FL reading from previous transform targeting this one using : Switch / case - TARGET - FL
    2022/12/16 14:27:42 - General - Handled generic transform (TRANSFORM) : FL, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:27:42 - General - Transform Default reading from previous transform targeting this one using : Switch / case - TARGET - Default
    2022/12/16 14:27:42 - General - Handled generic transform (TRANSFORM) : Default, gets data from 1 previous transform(s), targets=0, infos=0
    2022/12/16 14:27:42 - General - Handled generic transform (TRANSFORM) : Collect, gets data from 4 previous transform(s), targets=0, infos=0
    2022/12/16 14:27:42 - General - Handled transform (OUTPUT) : complex, gets data from Collect
    2022/12/16 14:27:42 - General - Executing this pipeline using the Beam Pipeline Engine with run configuration 'Direct'
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="paragraph">

To execute an Apache Beam pipeline a lot of information and metadata is needed. Let’s dive into a few fun information tidbits:

</div>

<div class="ulist">

  - By referencing the `samples` project Hop knows where the project is located (`config/projects/samples`)

  - Since we know the location of the project, we can specify pipelines and workflows with a relative path

  - The project knows where its metadata is stored (`config/projects/samples/metadata`) so it knows where to find the `Direct` pipeline run configuration (`config/projects/samples/metadata/pipeline-run-configuration/Direct.json`)

  - This run configuration defines its own pipeline engine specific variables, in this case the output folder : `DATA_OUTPUT=${PROJECT_HOME}/beam/output/`

  - The output of the samples is as such written to `config/projects/samples/beam/output`

</div>

<div class="paragraph">

To reference an environment you can execute using `-e` or `--environment`. The only difference is that you’ll have a number of extra environment variables set while executing.

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:55 +0200

</div>

</div>

<div id="header">

# hop doc

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

The `hop doc` can be used to document a project in [MarkDown](https://www.markdownguide.org/basic-syntax/) format. It will create a separate file per workflow and pipeline, add an index, and so on. You can then serve up this documentation by MarkDown tools like [mkdocs](https://www.mkdocs.org/)

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="paragraph">

You can run the `hop help doc` command to see the options:

</div>

<div class="paragraph">

On Windows, run `hop.bat help doc`. The command on Mac and Linux is `sh hop help doc`.

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
Usage: hop doc [-hV] [-im] [-in] [-ip] [-e=<environmentOption>]
               [-j=<projectOption>] [-n=<projectName>] [-s=<sourceFolder>]
               [-t=<targetParentFolder>]
Generate documentation
  -e, --environment=<environmentOption>
                             The name of the lifecycle environment to use
  -h, --help                 Show this help message and exit.
      -im, --include-metadata
                             Include an overview of the available metadata
                               elements
      -in, --include-notes   List the text of any notes in alphabetical order
      -ip, --include-parameters
                             Include a list of parameters for each pipeline and
                               workflow
  -j, --project=<projectOption>
                             The name of the project to use
  -n, --project-name=<projectName>
                             The name of the project
  -s, --source-folder=<sourceFolder>
                             The source folder to document
  -t, --target-folder=<targetParentFolder>
                             Specify the target parent folder where the
                               documentation should end up
  -V, --version              Print version information and exit.
```

</div>

</div>

</div>

<div class="paragraph">

As you can see, the `projects` plugin contributes options to select a project or environment, making it not needed to remember which folder the project was stored in.

</div>

</div>

</div>

<div class="sect1">

## Example

<div class="sectionbody">

<div class="paragraph">

The example below documents the `demo` project and asks to write the MarkDown files in the `/tmp/hop/docs` folder:

</div>

<div class="paragraph">

   

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
    
        hop.bat doc -j demo --target-folder /tmp/hop/docs --include-notes --include-parameters --include-metadata
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="paragraph">
    
    Open a terminal, change to the directory where you unzipped Apache Hop and run:
    
    </div>

</div>

<div class="listingblock">

<div class="content">

    ./hop doc -j demo -t /tmp/hop/docs --include-notes --include-parameters --include-metadata

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:42 +0200

</div>

</div>

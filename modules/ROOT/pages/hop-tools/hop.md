<div id="header">

# Hop

</div>

<div id="content">

<div class="paragraph">

The `hop` command line tool is simplification of the many scripts that the project ships with like 'hop-run\`, `hop-search`, `hop-gui`, and so on. The main goal is to have a single wrapper script to make maintenance easier for the developers, but also to allow plugins to contribute new commands.

</div>

Usage

<div class="content">

<div class="paragraph">

\== Usage

</div>

<div class="paragraph">

To see the usage of the `hop` tool, you can simply use the `help` command to see which commands are available:

</div>

<div class="listingblock">

<div class="content">

``` highlight
$ ./hop help
Usage: hop [-hV] [-s=<systemProperties>[,<systemProperties>...]]... [COMMAND]
  -h, --help      Show this help message and exit.
  -s, --system-properties=<systemProperties>[,<systemProperties>...]
                  A comma separated list of KEY=VALUE pairs
  -V, --version   Print version information and exit.
Commands:
  help     Display help information about the specified command.
  conf     Configure Hop
  doc      Generate documentation
  encrypt  Encrypt secrets
  gui      The Hop GUI
  import   Import metadata
  run      Run a pipeline or workflow
  search   Search in Hop metadata
  server   Run a Hop server
```

</div>

</div>

<div class="paragraph">

\== Options

</div>

| Option | Description                                                                             |
| ------ | --------------------------------------------------------------------------------------- |
| \-s    | One or more system parameters. These will be set prior to execution of a given command. |
| \-h    | Displays this help message and quits                                                    |
| \-V    | Show the current Hop version                                                            |

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:58 +0200

</div>

</div>

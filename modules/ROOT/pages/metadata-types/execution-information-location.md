<div id="header">

# Execution Information Location

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The Execution Information Location determines where Apache Hop can send information execution information to.

</div>

<div class="paragraph">

After execution this information can be consulted from the [Execution Information Perspective](hop-gui/perspective-execution-information.H9WVbbmYh8)

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                     | Description                                                                                             | Default |
| -------------------------- | ------------------------------------------------------------------------------------------------------- | ------- |
| Name                       | The name to use for this Execution Information Location                                                 | \-      |
| Description                | The description to use for this Execution Information Location                                          | \-      |
| Data logging delay (ms)    |                                                                                                         | 2000    |
| Data logging interval (ms) |                                                                                                         | 5000    |
| Data logging size (rows)   |                                                                                                         | 1000    |
| Location type              | The location plugin type to write to. Depending on the type you can enter more plugin specific options. |         |

</div>

</div>

<div class="sect1">

## Location type specific options

<div class="sectionbody">

<div class="sect2">

### File location

<div class="paragraph">

With a file location you can write execution information to files in a path on the local file system.

</div>

<div class="paragraph">

Options:

</div>

<div class="ulist">

  - **Root folder**: the folder to write the execution information to.

</div>

</div>

<div class="sect2">

### Caching File Location

<div class="paragraph">

Like the file location, execution information is written to a folder. The difference is that information is written per pipeline or workflow. All the information needed is aggregated into these top level JSON files. The way this happens is by keeping the execution information in a memory cache for a period that can be configured. The upside is that there is a lot less stress on the file system. The downside is that there is a bit of extra memory being used. Certain navigation operations in the GUI, for example to find related executions, will need to read a lot more data.

</div>

<div class="paragraph">

Options:

</div>

<div class="ulist">

  - **Root folder**: the folder in which execution information is stored in JSON files

  - **Persistence delay**: This is the maximum time to wait before execution information is written to disk, expressed in milliseconds.

  - **Maximum cache age**: This is the maximum time to keep execution information around in memory, before clearing it out, expressed in milliseconds. It’s advised to keep this below the expected duration of your workflow or pipeline.

</div>

</div>

<div class="sect2">

### Remote location

<div class="paragraph">

A remote location allows you to write execution information to a Hop Server.

</div>

<div class="paragraph">

Options:

</div>

<div class="ulist">

  - **Hop Server**: the remote Hop Server to write the execution information to.

  - **Execution Information Location**: the Execution Information Location to be used on the remote Hop Server.

</div>

</div>

<div class="sect2">

### Neo4j location

<div class="paragraph">

With this location type you can store execution information in a [Neo4j](technology/neo4j/index.H9WVbbmYh8) graph database. For more information on this plugin, see the [Neo4j location type](metadata-types/neo4j/neo4j-location-type.H9WVbbmYh8) documentation.

</div>

</div>

<div class="sect2">

### Elastic location

<div class="paragraph">

The Elastic location type stores information in an Elastic index. See the [Elastic location type](metadata-types/elastic-location-type.H9WVbbmYh8)

</div>

</div>

<div class="sect2">

### Cleanup

<div class="paragraph">

If you want to automate removal of execution information from your graph database you can use a pipeline or workflow to do so.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:11 +0200

</div>

</div>

<div id="header">

# Neo4j Location Type

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

With this location type you can store execution information in a [Neo4j](technology/neo4j/index.n6rTJs3V3z) graph database.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="ulist">

  - **Neo4j connection**: the name of the [Neo4j connection](metadata-types/neo4j/neo4j-connection.n6rTJs3V3z) to store the information in.

  - **Button 'Show indexes DDL'**: This displays the CREATE INDEX statements that you want to execute on the Neo4j connection to make sure performance is and remains good when writing and reading information.

  - **Button 'Copy a Neo4j Index action to clipboard'**: This copies the Neo4j Index action to the clipboard so that you can just copy this in a workflow. It will make sure that the right indexes are created (if needed) to have great performance when using the execution information location.

</div>

</div>

</div>

<div class="sect1">

## Graph model

<div class="sectionbody">

<div class="paragraph">

This is the graph model that gets populated by this execution information location plugin:

</div>

<div class="paragraph">

<span class="image">![The Apache Hop execution information graph model](../assets/images/metadata-types/neo4j/apache-hop-execution-information-model.svg)</span>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:15 +0200

</div>

</div>

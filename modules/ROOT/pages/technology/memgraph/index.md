<div id="header">

# Memgraph

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

[Memgraph](https://www.memgraph.com) is largely compatible with Neo4j and can use a lot of the Neo4j functionality in Apache Hop. Memgraph focuses on in-memory, realtime and scalable analytics.

</div>

<div class="paragraph">

The Memgraph compatibility with Neo4j allows you to use a lot of the Neo4j functionality in Apache Hop with Memgraph.

</div>

</div>

</div>

<div class="sect1">

## Run Memgraph in docker

<div class="sectionbody">

<div class="paragraph">

The `--bolt-server-name-for-init=Neo4j/` parameter needs to be set to allow Apache Hop to connect to a Memgraph database over the `bolt` protocol. More information is available in the [memgraph docs](https://memgraph.com/docs/memgraph/connect-to-memgraph/drivers/java).

</div>

<div class="paragraph">

Example command to start a Memgraph server in a container:

</div>

<div class="paragraph">

`docker run -it -p 7687:7687 -p 7444:7444 -p 3000:3000 -e MEMGRAPH="--bolt-server-name-for-init=Neo4j/" memgraph/memgraph-platform`

</div>

</div>

</div>

<div class="sect1">

## What works

<div class="sectionbody">

<div class="ulist">

  - [Neo4j connections](metadata-types/neo4j/neo4j-connection.03mzCkrLmu): make sure to specify `bolt` instead of the default `neo4j` protocol

  - most of the [Neo4j graph output](pipeline/transforms/neo4j-graphoutput.03mzCkrLmu), [Neo4j output](pipeline/transforms/neo4j-output.03mzCkrLmu), [Cypher transforms](pipeline/transforms/neo4j-cypher.03mzCkrLmu) and [actions](workflow/actions/neo4j-cypherscript.03mzCkrLmu) (except for index manipulation, see below) seem to work correctly. Please create a [bug ticket](https://github.com/apache/hop/issues/) if you find any issues.

</div>

</div>

</div>

<div class="sect1">

## known issues

<div class="sectionbody">

<div class="paragraph">

Memgraph’s index syntax differs from the Neo4j syntax, which causes the [Neo4j index](workflow/actions/neo4j-index.03mzCkrLmu) and [Neo4j constraint](workflow/actions/neo4j-constraint.03mzCkrLmu) actions to fail.

</div>

<div class="paragraph">

Creating indexes through a Cypher action or a Cypher transform fails with an error similar to `ERROR: org.neo4j.driver.exceptions.ClientException: Index manipulation not allowed in multicommand transactions.`.

</div>

<div class="paragraph">

Check the [Memgraph docs](https://memgraph.com/docs/memgraph/reference-guide/indexing) for more information on indexing.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:53 +0200

</div>

</div>

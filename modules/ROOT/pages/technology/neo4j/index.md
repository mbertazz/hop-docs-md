<div id="header">

# Neo4j

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

Neo4j is an open source graph database which you can download from **[www.neo4j.com/download-center](https://neo4j.com/download-center/)**

</div>

<div class="paragraph">

You can use it to represent information with nodes and relationships in a property graph. Neo4j doesn’t use indexes which allows it to traverse large graphs really quickly with so-called graph algorithms. For more information on these unique graph algorithms see: [Neo4j Graph Algorithms](https://neo4j.com/docs/graph-data-science/current/algorithms/#algorithms)

</div>

<div class="paragraph">

Hop supports Neo4j through the following metadata objects

</div>

</div>

</div>

<div class="sect1">

## Perspective: Execution lineage

<div class="sectionbody">

<div class="paragraph">

You can use Neo4j to store logging and execution lineage of your workflows and pipelines. The way you do this is simply by setting the variable `NEO4J_LOGGING_CONNECTION` to the name of the Neo4j Connection where you want the logging and lineage to be written to.

</div>

<div class="paragraph">

The Neo4j plugin offers a separate perspective to query this logging and lineage information. For example, it allows you to quickly jump to the place where an error occurred. This neat trick is performed by asking the database to find the shortest path between and execution node where an error occurred and without children and the "grand parent" node. The path you get is the exact path that was followed from for example the "grand parent" workflow to the exact transform where an error occurred.

</div>

</div>

</div>

<div class="sect1">

## Metadata Types

<div class="sectionbody">

<div class="ulist">

  - [Neo4j Connection](metadata-types/neo4j/neo4j-connection.5FxvLzzXUN): create or manage a connection to a Neo4j database

  - [Neo4j Graph Model](metadata-types/neo4j/neo4j-graphmodel.5FxvLzzXUN): crearte or manage a Neo4j (sub)graph model

</div>

</div>

</div>

<div class="sect1">

## Workflow Actions

<div class="sectionbody">

<div class="ulist">

  - [Neo4j Check Connection](workflow/actions/neo4j-checkconnections.5FxvLzzXUN): check a connection to a Neo4j database

  - [Neo4j Cypher Script](workflow/actions/neo4j-cypherscript.5FxvLzzXUN): execute a Cypher script or query

  - [Neo4j Index](workflow/actions/neo4j-index.5FxvLzzXUN): Create or drop Neo4j indexes

  - [Neo4j Constraint](workflow/actions/neo4j-constraint.5FxvLzzXUN): Create or drop Neo4j constraints

</div>

</div>

</div>

<div class="sect1">

## Pipeline Transforms

<div class="sectionbody">

<div class="ulist">

  - [Neo4j Cypher](pipeline/transforms/neo4j-cypher.5FxvLzzXUN): execute a Cypher query on a Neo4j database using parameter info from input fields

  - [Neo4j Generate CSVs](pipeline/transforms/neo4j-gencsv.5FxvLzzXUN): Generate CSV files for nodes and relationships to be used with neo4j-import

  - [Neo4j Get Log Info](pipeline/transforms/neo4j-getloginfo.5FxvLzzXUN): Queries the Neo4j logging graph for execution info

  - [Neo4j Graph Output](pipeline/transforms/neo4j-graphoutput.5FxvLzzXUN): Writes to a Neo4j graph using an input fields mapping.

  - [Neo4j Import](pipeline/transforms/neo4j-import.5FxvLzzXUN): Runs a Neo4j import command using the provided CSV files

  - [Neo4j Output](pipeline/transforms/neo4j-output.5FxvLzzXUN): Write nodes and/or relationships to a Neo4j graph

  - [Neo4j Split Graph](pipeline/transforms/neo4j-split-graph.5FxvLzzXUN): Splits the nodes and relationships of a Neo4j graph

</div>

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="paragraph">

The Neo4j examples included in the release downloads is described in document:

</div>

<div class="paragraph">

[Working with Neo4j data](technology/neo4j/working-with-neo4j-data.5FxvLzzXUN)

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:53 +0200

</div>

</div>

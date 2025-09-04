<div id="header">

# Working with Neo4j data

<div id="toc" class="toc">

<div id="toctitle">

Table of Contents

</div>

  - [Introduction](#_introduction)
  - [Samples setup](#_samples_setup)
  - [Updating graphs](#_updating_graphs)
      - [Graph Output : The beers Wikipedia example](#_graph_output_the_beers_wikipedia_example)
      - [Neo4j Output : parallel data loading](#_neo4j_output_parallel_data_loading)
      - [Cypher : a simple unwind example](#_cypher_a_simple_unwind_example)
      - [Removing data : The Cleanup example](#_removing_data_the_cleanup_example)
  - [Retrieving data](#_retrieving_data)
      - [Cypher : complex returns](#_cypher_complex_returns)
  - [Bulk loading](#_bulk_loading)

</div>

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Using examples, this article explains how to get started with loading data into Neo4j and then getting it back out if needed.

</div>

</div>

</div>

<div class="sect1">

## Introduction

<div class="sectionbody">

<div class="paragraph">

A graph is made up of nodes and relationships (also called edges). Relationships link up Nodes and both can have any number of properties. In that regard a graph is different from your typical 'relational database' which hints at the typical challenge when loading data into Neo4j and getting it back out: converting between relational and graph data. In this document we’ll sketch some possibilities to get started.

</div>

</div>

</div>

<div class="sect1">

## Samples setup

<div class="sectionbody">

<div class="paragraph">

To make the Neo4j examples work in the `neo4j/` folder of your `samples` project you need to configure a few variables:

</div>

<div class="ulist">

  - **NEO4J\_HOSTNAME** : The Neo4j server hostname

  - **NEO4J\_PORT** : The neo4j database port (default is 7687)

  - **NEO4J\_USERNAME** : The username

  - **NEO4J\_PASSWORD** : The password

</div>

<div class="paragraph">

These variables can be easily set by creating a new environment which represents your situation. Create a new environment configuration file and set the variables in there.

</div>

</div>

</div>

<div class="sect1">

## Updating graphs

<div class="sectionbody">

<div class="sect2">

### Graph Output : The beers Wikipedia example

<div class="paragraph">

The [Graph Output](pipeline/transforms/neo4j-graphoutput.aO61vS4fGP) transform is a useful transform which is capable of updating multiple nodes and relationships at the same time. To get started with this transform you can take a look at workflow `neo4j/beers-wikipedia-graph.hwf`.

</div>

<div class="imageblock">

<div class="content">

![The beers wikipedia workflow](../assets/images/tech/neo4j/beers-wikipedia-graph-workflow.png)

</div>

</div>

<div class="paragraph">

This workflow takes the following actions:

</div>

<div class="ulist">

  - **Ping Neo4j**: Perform a network ping to the Neo4j server to see if it’s reachable.

  - **Check Neo4j**: connect to the Neo4j server and returns a static value from it to see if it’s working as expected

  - **Create indexes for graph model Belgian Beers**: Create indexes to get great performance when updating nodes or relationships

  - **Create constraints for graph model Belgian Beers**: Create constraints to guarantee uniqueness of primary key properties

  - **Read and scrub the data**: Load the raw HTML from wikipedia containing a table with Belgian Beers information. This information is scrubbed (cleaned up) and translated to English.

  - **Load data into a graph**: Data is loaded into Neo4j using the `Belgian Beers` graph model and a field-to-graph mapping.

</div>

<div class="paragraph">

The way that data is mapped to a graph model is quite simple. Take the Graph Output transform in the data loading pipeline:

</div>

<div class="imageblock">

<div class="content">

![Data loading graph output transform](../assets/images/tech/neo4j/data-loading-graph-output-transform.png)

</div>

</div>

<div class="paragraph">

As you can see above this transform doesn’t require any technical knowledge. You can use the "Map fields" button to use a GUI to map the input fields on the left with the various node and relationship properties in your graph model. You can also do this manually.

</div>

</div>

<div class="sect2">

### Neo4j Output : parallel data loading

<div class="paragraph">

The [Neo4j Output](pipeline/transforms/neo4j-output.aO61vS4fGP) transform is useful for simple data loading into one node, two nodes and/or a relationship. It doesn’t require any knowledge of Cypher to use. Take a look at workflow `neo4j/neo4j-output-parallel-load.hpl`:

</div>

<div class="imageblock">

<div class="content">

![Neo4j Output parallel load](../assets/images/tech/neo4j/neo4j-output-parallel-load-pipeline.png)

</div>

</div>

<div class="paragraph">

In this particular example we simply map the fields into the properties of a single node so we can use the Neo4j Output transform instead of Graph Output described above. The advantage is in this case that we have a simpler mapping and can potentially load data faster.

</div>

<div class="imageblock">

<div class="content">

![Neo4j Output parallel load transform](../assets/images/tech/neo4j/neo4j-output-parallel-load-transform.png)

</div>

</div>

<div class="paragraph">

There is also no need for a graph model so this transform is great to handle simple scenarios very quickly without any fuss. What this sample also showcases is that you can load larger data sets in parallel. In fact this pipeline has a parameter called `COPIES` set to 4 by default which will load into Neo4j in 4 different threads in parallel.

</div>

</div>

<div class="sect2">

### Cypher : a simple unwind example

<div class="paragraph">

The [Neo4j Cypher](pipeline/transforms/neo4j-cypher.aO61vS4fGP) transform is the Swiss army knife in our Neo4j toolbox. It’s capable of doing pretty much everything Neo4j related if you have knowledge of Cypher. In example `neo4j/neo4j-cypher-unwind-simple.hpl`:

</div>

<div class="imageblock">

<div class="content">

![Neo4j Cypher : a simple unwind example](../assets/images/tech/neo4j/neo4j-cypher-unwind-simple.png)

</div>

</div>

<div class="paragraph">

In this particular example we always use the same Cypher statement. This allows us to group input data so we can use an [UNWIND](https://neo4j.com/docs/cypher-manual/current/clauses/unwind/) command which will dramatically speed up the performance. It’s a step up from batching different commands together.

</div>

<div class="paragraph">

The first thing we need to do is collect all the input rows (mapped to parameter values) into a values map (on the Options tab):

</div>

<div class="imageblock">

<div class="content">

![Collecting the input data into a values map](../assets/images/tech/neo4j/neo4j-cypher-unwind-simple-collect-into-map.png)

</div>

</div>

<div class="paragraph">

The parameters you want to pass to the Cypher statement are listed on the Parameters tab. Finally, we can construct the Cypher statement itself:

</div>

<div class="listingblock">

<div class="content">

``` highlight
UNWIND $events AS event
MERGE (y:Year { year: event.year })
MERGE (y)<-[:IN]-(e:Event { id: event.id })
RETURN e.id AS x
ORDER BY x
```

</div>

</div>

</div>

<div class="sect2">

### Removing data : The Cleanup example

<div class="paragraph">

Sometimes you might want to remove sets of data from Neo4j or indeed everything, for example during testing (see the Neo4j integration tests of the Hop project for examples). The included example is called `neo4j/cleanup-remove-everything.hwf`

</div>

<div class="imageblock">

<div class="content">

![Cleanup: remove everything workflow](../assets/images/tech/neo4j/cleanup-remove-everything-workflow.png)

</div>

</div>

<div class="paragraph">

The way indexes and constraints are removed is by calling `db.indexes()` or `db.constraints()` and by iterating over those values to remove all of them. Nodes and relationships are deleted in batches to reduce the strain on the Neo4j database transaction handler. That handler might have a hard time deleting very large amounts of nodes or relationships because Neo4j is an ACID compliant database.

</div>

</div>

</div>

</div>

<div class="sect1">

## Retrieving data

<div class="sectionbody">

<div class="sect2">

### Cypher : complex returns

<div class="paragraph">

As mentioned above, the [Neo4j Cypher](pipeline/transforms/neo4j-cypher.aO61vS4fGP) transform can not only be used to load data but also to retrieve it. Example pipeline `neo4j/neo4j-cypher-complex-returns.hpl` shows how to return complex data types like List, Map and Node from a Neo4j graph:

</div>

<div class="imageblock">

<div class="content">

![Neo4j Cypher : complex returns](../assets/images/tech/neo4j/neo4j-cypher-complex-returns-pipeline.png)

</div>

</div>

<div class="paragraph">

The way this happens is that Node, Relationship and Path values can be mapped to Hop Graph or String (in JSON format) output fields. Neo4j List and Map data types are always converted to String fields in JSON format. Those can then be processed further in the rest of the pipeline.

</div>

</div>

</div>

</div>

<div class="sect1">

## Bulk loading

<div class="sectionbody">

<div class="paragraph">

Sometimes we want to load years of historical data before we start updating our graph. In this case we can use the tool [neo4j-admin import](https://neo4j.com/docs/operations-manual/current/tools/neo4j-admin-import/). This tool is designed to be very fast in bulk loading large amounts of data into a new graph database. It works by loading CSV files which are expected to be in a particular format to describe the various nodes and relationships in a graph.

</div>

<div class="paragraph">

To help out with imports we have a number of tools at your disposal:

</div>

<div class="ulist">

  - The Graph data type: transforms [Neo4j Output](pipeline/transforms/neo4j-output.aO61vS4fGP) and [Neo4j Graph Output](pipeline/transforms/neo4j-graphoutput.aO61vS4fGP) have options to write their output to a field of type `Graph`. These transforms are capable of flagging the primary key field of nodes which encapsulates enough information to generate CSV files with…​

  - [Neo4j Split Graph](pipeline/transforms/neo4j-split-graph.aO61vS4fGP) : With this transform we can split up the multiple nodes and relationships stored in a single Graph field produced by the Graph Output transform. You can then filter out particular nodes or relationships to guarantee uniqueness or other post processing.

  - [Neo4j Generate CSVs](pipeline/transforms/neo4j-gencsv.aO61vS4fGP) : this transform will help you with the creation of the CSV files for import.

  - [Neo4j Import](pipeline/transforms/neo4j-import.aO61vS4fGP) : this transform will generate the `neo4j-admin import` statement for you and execute it. It uses the list of CSV files and their types (node/relationship) to do this as well as the options you selected in the transform dialog.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:54 +0200

</div>

</div>

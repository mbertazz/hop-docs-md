<div id="header">

# Neo4j index

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Neo4j index` action can be used to create or drop indexes on node or relationship properties in a Neo4j Graph

</div>

<div class="paragraph">

For similar operations on Neo4j constraints, check the [Ne4oj constraint](workflow/actions/neo4j-constraint.c5lf8Q6HTa) action.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="ulist">

  - Neo4j Connection : The name of the Neo4j connection to update indexes on

  - Index updates to perform: You can specify your list of index updates here
    
    <div class="ulist">
    
      - Update type : CREATE or DROP
    
      - Type of object to index on: NODE or RELATIONSHIP
    
      - Index name: optional but recommended name for your index
    
      - Object name: the label of the node or relationship you want to update an index for
    
      - Properties: the comma separated list of node or relationship properties to index
    
    </div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:20 +0200

</div>

</div>

<div id="header">

# Neo4j constraint

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Neo4j constraint` action can be used to create or drop constraints on node or relationship properties in a Neo4j Graph

</div>

<div class="paragraph">

For similar operations on Neo4j indexes, check the [Neo4j index](workflow/actions/neo4j-index.wFJx9KYCQl) action.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="ulist">

  - Neo4j Connection : The name of the Neo4j connection to update indexes on

  - Constraint updates to perform: You can specify your list of constraint updates here
    
    <div class="ulist">
    
      - Update type : CREATE or DROP
    
      - Type of object to index on: NODE or RELATIONSHIP
    
      - Type of constraint: UNIQUE or NOT\_NULL
    
      - Constraint name: The name for your constraint (mandatory)
    
      - Object name: the label of the node or relationship you want to update a constraint for
    
      - Property: the property to put the constraint on
    
    </div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:19 +0200

</div>

</div>

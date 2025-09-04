<div id="header">

# <span class="image image-doc-icon">![Neo4j Graph Output transform Icon](../assets/images/transforms/icons/neo4j_graph_output.svg)</span> Neo4j Graph Output

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 75%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="content">
<div class="sect1">
<h2 id="_description">Description</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The Graph Output transform lets you map input fields automatically to a graph model.</p>
</div>
<div class="paragraph">
<p>The algorithm used to update your graph takes null values for fields mapped to primary properties of nodes into account. These will not merge on these nodes, nor will it create or update relationships to these nodes.</p>
</div>
</div>
</div>
</div></td>
<td><div class="content">
<div class="sect1">
<h2 id="_supported_engines">Supported Engines</h2>
<div class="sectionbody">
<table>
<tbody>
<tr class="odd">
<td><p>Hop Engine</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Spark</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
</tbody>
</table>
</div>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Limitations

<div class="sectionbody">

<div class="ulist">

  - Updates across unknown nodes `()--()` are not supported

</div>

</div>

</div>

<div class="sect1">

## Modeling tips

<div class="sectionbody">

<div class="ulist">

  - Try a modeler like [Cypher Workbench](https://neo4j.solutions/cypher-workbench) or [Arrows](https://arrows.app) and import the result into a Graph Model.

  - Keep your models as simple as possible.

  - Make sure that every defined node has a primary key field

  - Limit yourself to one primary key field per node

</div>

</div>

</div>

<div class="sect1">

## Execution tips

<div class="sectionbody">

<div class="ulist">

  - Make sure that every node primary key has an index. Use the provided button in the graph model editor to generate the Neo4j Index and Constraint actions which will handle this for you.

</div>

</div>

</div>

<div class="sect1">

## Notable options

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Option</p></td>
<td><p>Description</p></td>
</tr>
<tr class="even">
<td><p>Transform name</p></td>
<td><p>the name for this transform in the pipeline</p></td>
</tr>
<tr class="odd">
<td><p>Neo4j connection</p></td>
<td><p>the Neo4j connection to write the graph to</p></td>
</tr>
<tr class="even">
<td><p>Graph model</p></td>
<td><p>the <a href="metadata-types/neo4j/neo4j-graphmodel.yP1zZnfL2j">Neo4j graph model</a> to use</p></td>
</tr>
<tr class="odd">
<td><p>Batch size (rows)</p></td>
<td><p>batch size to use for writing data to Neo4j</p></td>
</tr>
<tr class="even">
<td><p>Create indexes?</p></td>
<td><p>create Neo4j indexes before running this transform</p></td>
</tr>
<tr class="odd">
<td><p>Return graph data?</p></td>
<td><p>return graph data returned by Neo4j</p></td>
</tr>
<tr class="even">
<td><p>Graph output field name</p></td>
<td><p>the name of the field to write the graph data to (if <code>Return graph data?</code> is enabled)</p></td>
</tr>
<tr class="odd">
<td><p>Validate against model?</p></td>
<td><p>validate the data against the model. This will check if indexes are created for a field that is flagged as primary/indexed, see if a property flagged as mandatory is available when a node is updated and so on. Uniqueness is best validated by a constraint on the property. Use the provided button to generate the &quot;Neo4j Constraint&quot; action.</p></td>
</tr>
<tr class="even">
<td><p>Allow out of order updates?</p></td>
<td><p>If out of order updates are allowed, this transform generates unwind statements. Otherwise, standard batch updates are used. The updates are grouped per distinct generated cypher statement.</p></td>
</tr>
<tr class="odd">
<td><p>Field to property mappings tab</p></td>
<td><p>On this tab you can specify where you want the input fields to end up in the graph. Based on your selections for this mapping the appropriate Cypher Merge statements will be executed. You can map fields to node and relationship properties. For the very specific cases when you want to create relationships between 2 nodes with the same label (self relationships) you can specify to which node your mapping goes: the source or target node.</p></td>
</tr>
<tr class="even">
<td><p>Field to relationship mappings tab</p></td>
<td><p>Sometimes you want to select a relationship in your graph model based on input data. Here are the 4 different types of relationship mappings you can apply to steer this behavior:</p>
<p>* <code>No mapping</code> : the line is ignored</p>
<p>* <code>Do not update relationships between specified nodes</code>: you can specify the source and target node labels between you don’t want to update any relationships</p>
<p>* <code>Update specific relationship using field value</code>: You can specify the field to look at and the value to consider for the relationship you want to select.</p>
<p>* <code>Update all relationships between the specified nodes (Default)</code>: all the relationships between the specified source and target node, as defined in the graph model are updated (merged and properties updated).</p></td>
</tr>
<tr class="odd">
<td><p>Node label mappings tab</p></td>
<td><p>In case you want to select specific labels from the ones specified in the graph model you can create mapping entries in this tab. Here are the node mapping types:</p>
<p>* <code>Select all defined labels (default)</code>: when matching/merging nodes all the labels from the graph model are selected.</p>
<p>* <code>Use a field value to select a specific label</code>: for the specified node we look at the input field you like and if it matches the value the label is selected to match/merge on.</p>
<p>* <code>Add the specified label if a field contains a specific value</code>: for the node that is selected, set the selected label if a field contains a specific value.</p>
<p>* <code>Select the first label</code>: for the specified node we only use the first label from the graph model to match/merge on.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:43 +0200

</div>

</div>

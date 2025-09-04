<div id="header">

# <span class="image image-doc-icon">![Neo4j Output transform Icon](../assets/images/transforms/icons/neo4j_output.svg)</span> Neo4j Output

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
<p>The Neo4j Output transform allows you to do high performance updates in one node, two nodes or two nodes and a relationship.</p>
</div>
<div class="paragraph">
<p>The transform generates the required Cypher statements with accompanying parameters.</p>
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

## Usage

<div class="sectionbody">

<div class="paragraph">

You can update one node or two nodes and a relationship. Nodes and relationships can have properties and the appropriate MERGE statements will be generated based on the information you provided. Make use of the "Get fields" buttons on the right hand side of the dialog to prevent you from having to type too much.

</div>

</div>

</div>

<div class="sect1">

## Labels

<div class="sectionbody">

<div class="paragraph">

You can get one node labels from a list of fields or you can use static values (with optionally variables). If you specify both the static value will be used if the field value is null. A label will not be used for the node if the label is null or empty.

</div>

</div>

</div>

<div class="sect1">

## Notable options

<div class="sectionbody">

| Option                      | Description                                                                                                                                                                                                                                                                                                                                                                                                           |
| --------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Batch size                  | for better performance the transform will group records together in a single transaction                                                                                                                                                                                                                                                                                                                              |
| Use CREATE instead of MERGE | this bypasses any lookup and is faster.                                                                                                                                                                                                                                                                                                                                                                               |
| Create indexes              | creates unique field constraints for all Primary properties in the nodes to make sure performance stays good when dealing with merges and lookup of nodes for relationships. **NOTE:** Please consider only using this when doing prototyping and testing. It’s better to put the index creation statements explicitly in a Cypher Script action to make sure you never forget it even when moving to a new database. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:44 +0200

</div>

</div>

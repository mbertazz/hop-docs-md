<div id="header">

# <span class="image image-doc-icon">![Neo4j Cypher transform Icon](../assets/images/transforms/icons/neo4j_cypher.svg)</span> Neo4j Cypher

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
<p>The Neo4j Cypher transform allows you to execute any Cypher through the Neo4j Bolt protocol using the Java driver.</p>
</div>
<div class="paragraph">
<p>Both reading, writing or both are supported. You can also call procedures and get the output.</p>
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

## Notable options

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Get Cypher from input field</p></td>
<td><p>instead of hard coding statements you can actually have them created in for example a bit of JavaScript. Then each row can contain a different statement to be executed by this transform.</p></td>
</tr>
<tr class="even">
<td><p>Cypher</p></td>
<td><p>the cypher statement to execute. You can use variables substitution (for example <code>${MY_VARIABLE}</code>) or parameter substitution (for example <code>{MY_PARAMETER}</code>). Note the missing <code>$</code>. Parameters can be specified in the next section of the options.</p></td>
</tr>
<tr class="odd">
<td><p>Use UNWIND to collect parameter values?</p></td>
<td><p>This option collects all the parameters in a map, adds all the row maps together in a list and passes this to the UNWIND statement. Consider this example:</p>
<p><code>UNWIND $customers AS customer CREATE (c:Customer { id : customer.id, name : customer.name })</code></p>
<p>we pick up <code>customer.id</code> and <code>customer.name</code> as parameters. The <code>customers</code> parameter comes from the name of the unwind map.</p></td>
</tr>
<tr class="even">
<td><p>Name of UNWIND values map</p></td>
<td><p>the name of the map containing all the rows and values for the UNWIND statement.</p></td>
</tr>
<tr class="odd">
<td><p>Parameters</p></td>
<td><p>You can pick any Neo4j approved parameter name (without spaces and so on), the field to use and the Neo4j data type to convert to.</p></td>
</tr>
<tr class="even">
<td><p>Returns</p></td>
<td><p>this transform can return one or more rows of data. You can specify the return values here. For every input row you can then have 0, 1 or more output rows. If you do not specify any return values the output will simply be the same as the input.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:42 +0200

</div>

</div>

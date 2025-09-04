<div id="header">

# <span class="image image-doc-icon">![Neo4j Import transform Icon](../assets/images/transforms/icons/neo4j_import.svg)</span> Neo4j Import

</div>

<div id="content">

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
<p>The Neo4j Import transform runs an import command using the provided CSV files.</p>
</div>
<div class="paragraph">
<p>Check the <a href="https://neo4j.com/docs/operations-manual/current/tools/neo4j-admin-import/">neo4j-admin-import</a> docs for full details.</p>
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
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
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

<table>
<thead>
<tr class="header">
<th>Option</th>
<th>Default</th>
<th>Header</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Transform name</p></td>
<td></td>
<td><p>the name to use for this transform in the pipeline</p></td>
</tr>
<tr class="even">
<td><p>Filename field</p></td>
<td></td>
<td><p>the field to get the file name to import from</p></td>
</tr>
<tr class="odd">
<td><p>Fiel type field</p></td>
<td></td>
<td><p>the field to get the file type to import from</p></td>
</tr>
<tr class="even">
<td><p>Database filename</p></td>
<td><p>neo4j</p></td>
<td><p>the Neo4j database to import to</p></td>
</tr>
<tr class="odd">
<td><p>neo4j-admin command path</p></td>
<td><p>neo4j-admin</p></td>
<td><p>the (full) path to the <code>neo4j-admin</code> command</p></td>
</tr>
<tr class="even">
<td><p>Base folder (below import/ folder)</p></td>
<td></td>
<td><p>the folder to read the import files from</p></td>
</tr>
<tr class="odd">
<td><p>Verbose output</p></td>
<td></td>
<td><p>Enable verbose output.</p></td>
</tr>
<tr class="even">
<td><p>High IO</p></td>
<td><p>true</p></td>
<td><p>Ignore environment-based heuristics, and specify whether the target storage subsystem can support parallel IO with high throughput.</p>
<p>Typically this is true for SSDs, large raid arrays and network-attached storage.</p></td>
</tr>
<tr class="odd">
<td><p>Cache on heap?</p></td>
<td><p>false</p></td>
<td><p>Determines whether or not to allow allocating memory for the cache on heap.</p>
<p>If false, then caches will still be allocated off-heap, but the additional free memory inside the JVM will not be allocated for the caches.</p>
<p>Use this to have better control over the heap memory.</p></td>
</tr>
<tr class="even">
<td><p>Ignore Empty Strings</p></td>
<td><p>false</p></td>
<td><p>Determines whether or not empty string fields, such as &quot;&quot;, from input source are ignored (treated as null).</p></td>
</tr>
<tr class="odd">
<td><p>Ignore extra columns?</p></td>
<td><p>false</p></td>
<td><p>If unspecified columns should be ignored during the import.</p></td>
</tr>
<tr class="even">
<td><p>Legacy style quoting?</p></td>
<td><p>false</p></td>
<td><p>Determines whether or not backslash-escaped quote e.g. \&quot; is interpreted as inner quote.</p></td>
</tr>
<tr class="odd">
<td><p>Fields can have multi-line data?</p></td>
<td><p>false</p></td>
<td><p>Determines whether or not fields from input source can span multiple lines, i.e. contain newline characters.</p>
<p>Setting <code>--multiline-fields=true</code> can severely degrade performance of the importer. Therefore, use it with care, especially with large imports.</p></td>
</tr>
<tr class="even">
<td><p>Normalize types?</p></td>
<td><p>false</p></td>
<td><p>Determines whether or not to normalize property types to Cypher types, e.g. int becomes long and float becomes double.</p></td>
</tr>
<tr class="odd">
<td><p>Skip logging bad entries during import?</p></td>
<td></td>
<td><p>Determines whether or not to skip logging bad entries detected during import.</p></td>
</tr>
<tr class="even">
<td><p>Skip bad relationships?</p></td>
<td><p>false</p></td>
<td><p>Determines whether or not to skip importing relationships that refer to missing node IDs, i.e. either start or end node ID/group referring to node that was not specified by the node input data.</p>
<p>Skipped relationships will be logged, containing at most the number of entities specified by <code>--bad-tolerance</code>, unless otherwise specified by the <code>--skip-bad-entries-logging</code> option.</p></td>
</tr>
<tr class="odd">
<td><p>Skip duplicate nodes?</p></td>
<td><p>false</p></td>
<td><p>Determines whether or not to skip importing nodes that have the same ID/group.</p>
<p>In the event of multiple nodes within the same group having the same ID, the first encountered will be imported, whereas consecutive such nodes will be skipped.</p>
<p>Skipped nodes will be logged, containing at most the number of entities specified by <code>--bad-tolerance</code>, unless otherwise specified by the <code>--skip-bad-entries-logging</code> option.</p></td>
</tr>
<tr class="even">
<td><p>Trim strings?</p></td>
<td><p>false</p></td>
<td><p>Determines whether or not strings should be trimmed for whitespaces.</p></td>
</tr>
<tr class="odd">
<td><p>Bad tolerance</p></td>
<td><p>1000</p></td>
<td><p>Number of bad entries before the import is considered failed.</p>
<p>This tolerance threshold is about relationships referring to missing nodes. Format errors in input data are still treated as errors.</p></td>
</tr>
<tr class="even">
<td><p>Max memory</p></td>
<td><p>false</p></td>
<td><p>Maximum memory that neo4j-admin can use for various data structures and caching to improve performance.</p>
<p>Values can be plain numbers such as 10000000, or 20G for 20 gigabyte. It can also be specified as a percentage of the available memory, for example 70%.</p></td>
</tr>
<tr class="odd">
<td><p>Read buffer size</p></td>
<td><p>4M</p></td>
<td><p>Size of each buffer for reading input data.</p>
<p>It has to at least be large enough to hold the biggest single value in the input data. Value can be a plain number or byte units string, e.g. 128k, 1m.</p></td>
</tr>
<tr class="even">
<td><p>Processors</p></td>
<td><p>90%</p></td>
<td><p>Max number of processors used by the importer.</p>
<p>Defaults to the number of available processors reported by the JVM. There is a certain amount of minimum threads needed, so for that reason there is no lower bound for this value.</p>
<p>For optimal performance, this value shouldn’t be greater than the number of available processors.</p></td>
</tr>
</tbody>
</table>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:44 +0200

</div>

</div>

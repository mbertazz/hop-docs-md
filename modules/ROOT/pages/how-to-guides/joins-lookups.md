<div id="header">

# Joins and lookups

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Hop offers a lot of options to enrich and combine data, among other things through joins and lookups. This guide explains the differences between the various joins and lookups, and will help you to choose the right transform for your pipelines.

</div>

</div>

</div>

<div class="sect1">

## Joins

<div class="sectionbody">

<div class="paragraph">

Joins are a way to merge data from two or more different streams in your pipeline. Joins typically require you to select a set of fields (the join keys) to join the streams on. The data in all streams that are involved in the join needs to be sorted on the join keys.

</div>

<div class="paragraph">

Depending on the transform you use and the configuration options you specify, joins can change the amount of data you’re processing in both way. For example, an inner `Merge join` with a limited number of matches between the keys in both streams can significantly reduce the number of rows in your stream. A `Join Rows (Cartesian Product)` on the other hand can result in an explosion of the number of rows you started the pipeline with.

</div>

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>Multiple streams in your pipeline that have the exact same layout (identical fields, identical data types, identical order) can be joined or merged without the need for a transform. Just create a hop from the last transform in two or more substreams to a target transform. Hop Gui will complain if there are differences in the layout of the streams you’re combining.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

The available join transforms are:

</div>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Transform</p></td>
<td><p>When to use</p></td>
</tr>
<tr class="even">
<td><p><a href="pipeline/transforms/joinrows.vPmNP9oOVR"><strong>Join Rows (Cartesian Product)</strong></a></p>
<p>produce combinations (Cartesian product) of all rows in the input streams</p></td>
<td><p>situations where you want to create a combination of <em>all</em> data in one stream with <em>all</em> data in another</p>
<p><strong>example</strong>: you want to create a copy of a data set for all members in a team, a list of available months or similar.</p>
<p>WARN: Use with care on large volumes of data. The combination of all data in both streams easily become huge.</p></td>
</tr>
<tr class="odd">
<td><p><a href="pipeline/transforms/mergejoin.vPmNP9oOVR"><strong>Merge Join</strong></a></p>
<p>classic merge join between data sets with data coming from two different input transforms</p></td>
<td><p>You want to combine data from two different streams based on a matching key in both streams, and want to continue working with (a selection of) the combined data from both streams.</p>
<p><strong>example</strong>: a subset of your data is available in files, another subset is available in a database table. Both the file have a matching key (e.g an ID) that you can use to combine both sets.</p></td>
</tr>
<tr class="even">
<td><p><a href="pipeline/transforms/mergerows.vPmNP9oOVR"><strong>Merge Rows (diff)</strong></a></p>
<p>compares and merges data within two rows of data, adding a field indicator for each row</p></td>
<td><p>You have two sets of data with the same layout. You want to compare both data sets and identify which lines in one set a new, identical, changed or deleted compared to the other data set.</p>
<p><strong>example</strong>*: you receive a daily file that needs to be processed. Compare today’s file with yesterday’s file, so you can ignore the identical data and only process the changes.</p></td>
</tr>
<tr class="odd">
<td><p><a href="pipeline/transforms/multimerge.vPmNP9oOVR"><strong>Multiway merge join</strong></a></p>
<p>joins input data from multiple streams</p></td>
<td><p>Join data from multiple (typically more than two) streams, similar to merge join. This transform provides a shortcut to what you otherwise would do by chaining multiple merge joins after each other.</p>
<p><strong>example</strong>: you receive data from files, a database query and a REST api. All three streams have one or more corresponding keys to join data from the various streams.</p></td>
</tr>
<tr class="even">
<td><p><a href="pipeline/transforms/xmljoin.vPmNP9oOVR"><strong>XML Join</strong></a></p>
<p>adds xml tags from one stream into a leading XML structure from a second stream</p></td>
<td><p>You need to build XML files from various data sources and with multiple nested elements. This transform is atypical in the sense that you’re performing joins to build output instead of the other join transforms that combine incoming data for further processing.</p>
<p><strong>example</strong>: you’re building complex XML output files.</p></td>
</tr>
<tr class="odd">
<td><p><a href="pipeline/transforms/databasejoin.vPmNP9oOVR"><strong>Database join</strong></a></p>
<p>allows you to run a query against a database using data obtained from previous transforms</p></td>
<td><p>The database join executes a (parameterized) SQL query for every row you execute. While this transform gives you unparallelled flexibility, it performs a database query for every single row, so it is a potential performance bottleneck.</p>
<p><strong>example</strong>: You need to fetch information that can’t be retrieved from a single table and requires a query that fetches data from multiple tables.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Lookups

<div class="sectionbody">

<div class="paragraph">

Lookups are a way to let you enrich your pipeline’s stream with additional fields from external sources. The transforms allow you to choose which additional fields will be retrieved from the lookup source.

</div>

<div class="paragraph">

Contrary to joins, lookups work on the current pipeline stream and your never change the number of rows you’re processing.

</div>

<div class="paragraph">

There are a number of transforms in the `Lookup` category that are considered self-explanatory in a lookup context and won’t be included here. These transforms are:

</div>

<div class="ulist">

  - [Call DB Procedure](pipeline/transforms/calldbproc.vPmNP9oOVR)

  - [Check if file is locked](pipeline/transforms/checkfilelocked.vPmNP9oOVR)

  - [Column exists](pipeline/transforms/columnexists.vPmNP9oOVR)

  - [Dynamic SQL row](pipeline/transforms/dynamicsqlrow.vPmNP9oOVR)

  - [File exists](pipeline/transforms/fileexists.vPmNP9oOVR)

  - [Fuzzy match](pipeline/transforms/fuzzymatch.vPmNP9oOVR)

  - [Get server status](pipeline/transforms/serverstatus.vPmNP9oOVR)

  - [HTTP client](pipeline/transforms/http.vPmNP9oOVR)

  - [HTTP post](pipeline/transforms/httppost.vPmNP9oOVR)

  - [REST client](pipeline/transforms/rest.vPmNP9oOVR)

  - [Table exists](pipeline/transforms/tableexists.vPmNP9oOVR)

  - [Web services lookup](pipeline/transforms/webservices.vPmNP9oOVR)

</div>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Transform</p></td>
<td><p>When to use</p></td>
</tr>
<tr class="even">
<td><p><a href="pipeline/transforms/combinationlookup.vPmNP9oOVR"><strong>Combination lookup/update</strong></a></p>
<p>allows you to store information in a junk-dimension table. The transform can possibly also be used to maintain Kimball pure Type 1 dimensions.</p></td>
<td><p>in a lookup context, this transform gets data from a <a href="https://en.wikipedia.org/wiki/Slowly_changing_dimension#Type_1:_overwrite">type 1 slowly changing dimension</a>.</p></td>
</tr>
<tr class="odd">
<td><p><a href="pipeline/transforms/dimensionlookup.vPmNP9oOVR"><strong>Dimension lookup/update</strong></a></p>
<p>allows you to implement Ralph Kimball’s slowly changing dimension for both types: Type I (update) and Type II (insert) together with some additional functions.</p>
<p>This transform can be used to populate a dimension table or to look up values in a slowly changing dimension without making any changes.</p></td>
<td><p>In a lookup context, this transform lets you perform lookups in a <a href="https://en.wikipedia.org/wiki/Slowly_changing_dimension#Type_2:_add_new_row">type 2 slowly changing dimension</a>.</p>
<p>In a lookup context, you typically use the natural keys and date or timestamp for your data to retrieve the surrogate key for the correct version of the data in a dimension.</p>
<p>Uncheck the <code>Update the dimension</code> checkbox to use the transform as a lookup and to prevent it from updating the dimension table.</p>
<p><strong>example</strong>: you want to retrieve the correct surrogate key for a dimension record in a slowly changing customer table in your data warehouse.</p></td>
</tr>
<tr class="even">
<td><p><a href="pipeline/transforms/databaselookup.vPmNP9oOVR"><strong>Database lookup</strong></a></p>
<p>allows you to look up values in a database table. Lookup values are added as new fields onto the stream.</p></td>
<td><p>You need to retrieve additional information from a single database table, based on fields in your pipeline stream.</p>
<p><strong>example</strong>: you’re processing data that contains a customer’s id. You also need the customer’s name and location, which is available in a database table.</p></td>
</tr>
<tr class="odd">
<td><p><a href="pipeline/transforms/streamlookup.vPmNP9oOVR"><strong>Stream lookup</strong></a></p>
<p>allows you to look up data using information coming from other transforms in the pipeline. The data coming from the Source transform is first read into memory and is then used to look up data from the main stream.</p></td>
<td><p>use the Stream lookup when you need to perform a lot of lookups on a fairly limited set of data.</p>
<p>The performance benefit of performing lookups from memory comes with the limitation of the available memory.</p>
<p>The stream lookup accepts data from any pipeline stream, but since the data needs to be loaded into memory before the pipeline starts, consider your available memory resources the memory footprint for your Stream lookup’s input before adding it to your pipeline. In the default Hop configuration with 2 GB of memory, a couple of megabytes is fine, a 20GB CSV file as Stream lookup input isn’t.</p>
<p><strong>example</strong> you need to process a large dataset that contains product prices in a number of different currencies. You received a list of historical conversion rates for the last month in a csv file. This lookup file is about 5000 lines, loading it into memory an picking up the right conversion rate with a <code>Stream lookup</code> transform allows you to perform lightning fast lookups.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Lookup Caching

<div class="sectionbody">

<div class="paragraph">

The [Combination lookup/update](pipeline/transforms/combinationlookup.vPmNP9oOVR), [Dimension lookup/update](pipeline/transforms/dimensionlookup.vPmNP9oOVR) and [Database lookup](pipeline/transforms/databaselookup.vPmNP9oOVR) allow you to cache data. Cached data is stored in memory to speed up the lookup process.

</div>

<div class="paragraph">

The dialog options vary slightly, but the caching options offered by these transforms are:

</div>

<div class="ulist">

  - enable cache? (boolean): switches caching on or off

  - cache size: the size (number of rows) to cache in memory

  - pre-load cache: load data in the cache before the pipeline starts

  - load all data from table (database lookup only): load all the table’s data to memory before the pipeline starts.

</div>

<div class="paragraph">

Consider your available memory resources when configuring caching. Caching can significantly speed up the lookup process, but memory is a finite resource.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:02 +0200

</div>

</div>

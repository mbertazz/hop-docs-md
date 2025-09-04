<div id="header">

# <span class="image image-doc-icon">![Database Join transform Icon](../assets/images/transforms/icons/dbjoin.svg)</span> Database Join

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
<p>The Database Join transform allows you to run a query against a database using data obtained from previous transforms.</p>
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

</div>

</div>

<div class="sect1">

## Usage

<div class="sectionbody">

<div class="paragraph">

The parameters for this query are specified as follows:

</div>

<div class="paragraph">

The data grid in the transform properties dialog. This allows you to select the data coming in from the source hop. As question marks (?) in the SQL query. When the transform runs, these will be replaced with data coming in from the fields defined from the data grid. The question marks will be replaced in the same order as defined in the data grid. For example, Database Join allows you to run queries looking up the oldest person who bought a specific product as shown below:

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
<td>the Database Join transform gives you more flexibility than the standard <a href="pipeline/transforms/databaselookup.xN95FNJsBq">Database Lookup</a> transform. Keep in mind that your query determines the performance of this transform.</td>
</tr>
</tbody>
</table>

</div>

<div class="listingblock">

<div class="content">

``` highlight
SELECT      customernr
FROM        product_orders, customer
WHERE       orders.customernr = customer.customernr
AND         orders.productnr = ?
ORDER BY    customer.date_of_birth
```

</div>

</div>

<div class="paragraph">

The grid is then defined as follows:

</div>

<div class="imageblock">

<div class="content">

![databasejoin grid](../assets/images/transforms/databasejoin/databasejoin-grid.png)

</div>

</div>

<div class="paragraph">

When the transform runs, the (?) placeholder defined in the SQL query will be replaced with the incoming productnr field value from the source hop. To define and use multiple parameters, list the fields in order you want them to be replaced in the SQL statement.

</div>

</div>

</div>

<div class="sect1">

## Options

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
<td><p>Transform name</p></td>
<td><p>Name of the transform; This name has to be unique in a single pipeline</p></td>
</tr>
<tr class="even">
<td><p>Connection</p></td>
<td><p>The database connection to use for the query.</p></td>
</tr>
<tr class="odd">
<td><p>Enable cache?</p></td>
<td><p>Enables caching of database lookups. This means that once a key (or group of key) has been looked up, the looked up values are stored, and returned again the next time this key (or group of key) is being looked up (without incurring the cost of a database call).</p>
<p><strong>Important</strong>: If other processes are changing values in the table where you perform a lookup, do not cache values. In all other instances, caching values increases the performance substantially because database lookups are relatively slow. If you can’t use the cache, consider launching several copies of the simultaneously. A simultaneous launch keeps the database busy through different connections. See Launching several copies of a transform.</p></td>
</tr>
<tr class="even">
<td><p>Cache size in rows</p></td>
<td><p>The size of the cache (number of rows), 0 means cache everything.</p></td>
</tr>
<tr class="odd">
<td><p>SQL</p></td>
<td><p>SQL query to form the join; use question marks as parameter placeholders</p></td>
</tr>
<tr class="even">
<td><p>Number of rows to return</p></td>
<td><p>Zero (0) returns all rows; any other number limits the number of rows returned.</p></td>
</tr>
<tr class="odd">
<td><p>Outer join?</p></td>
<td><p>Enable to always return a result, even if the query did not return a result</p></td>
</tr>
<tr class="even">
<td><p>Parameters table</p></td>
<td><p>Specify the fields containing parameters. The parameter type is required.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:02 +0200

</div>

</div>

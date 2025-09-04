<div id="header">

# <span class="image image-doc-icon">![Database Lookup transform Icon](../assets/images/transforms/icons/dblookup.svg)</span> Database Lookup

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
<p>The Database lookup transform allows you to look up values in a database table. Lookup values are added as new fields onto the stream.</p>
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

## Options

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
<td><p>Name of the transform. This name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="odd">
<td><p>Connection</p></td>
<td><p>Database connection to the lookup table.</p></td>
</tr>
<tr class="even">
<td><p>Lookup schema</p></td>
<td><p>Database schema containing the lookup table.</p></td>
</tr>
<tr class="odd">
<td><p>Lookup Table</p></td>
<td><p>Name of the database table used for the lookup.</p></td>
</tr>
<tr class="even">
<td><p>Enable cache?</p></td>
<td><p>Enables caching of database lookups. This means that once a key (or group of key) has been looked up, the looked up values are stored, and returned again the next time this key (or group of key) is being looked up (without incurring the cost of a database call).</p>
<p><strong>Important</strong>: If other processes are changing values in the table where you perform a lookup, do not cache values. In all other instances, caching values increases the performance substantially because database lookups are relatively slow. If you can’t use the cache, consider launching several copies of the simultaneously. A simultaneous launch keeps the database busy through different connections. See Launching several copies of a transform.</p></td>
</tr>
<tr class="odd">
<td><p>Cache size in rows</p></td>
<td><p>The size of the cache (number of rows), 0 means cache everything.</p></td>
</tr>
<tr class="even">
<td><p>Load all data from table</p></td>
<td><p>Pre-loads the cache with all the data present in the lookup table. This may improve performance by avoiding database calls. However, if you have a large table, you risk running out of memory.</p>
<p><strong>IMPORTANT</strong>: In memory look-ups can lead to different results because of the differences in the way your database compares data. For example, if your database table allows case-insensitive comparisons, you may get different results with this option. The same goes for data with trailing spaces. Those are ignored in certain databases when using certain character data types. See more details on the below note about this option.</p></td>
</tr>
<tr class="odd">
<td><p>Keys to look up table</p></td>
<td><p>The keys and conditions to perform the database lookup.</p>
<p><strong>Tip</strong>: When using the LIKE operator on the key lookup it’s not automatically adding wildcards to the stream value. So by default the LIKE operator is behaving as an &quot;=&quot; (see your database for SQL specific topics on the LIKE operator). It is possible to add the wildcards to add a 'Replace in String' transform before the database lookup. In the replace transform select the lookup field then use Regex to look for (^.*) and replace with %$1%. This will add the wildcards to the field for the subsequent lookup task.</p></td>
</tr>
<tr class="even">
<td><p>Values to return table</p></td>
<td><div class="content">
<div class="paragraph">
<p>The fields from the lookup table to add to the output stream. &quot;New name&quot; allows you to use a different name if the database column name is inappropriate. &quot;Default&quot; is the value returned (instead of null) if the lookup fails.</p>
</div>
<div class="paragraph">
<p>Notes:</p>
</div>
<div class="ulist">
<ul>
<li><p>Enabling error handling on the Database Lookup transform will redirect all failed lookup rows to the error handling transform, instead of adding them to the main output steam with null/default values.</p></li>
<li><p><em>Type</em> is the type of the output field.</p></li>
<li><p>When we use <em>Trim type</em> option, the current transform behavior is to trim all the spaces but leave any newline character eventually contained in the string extracted by the transform upon a successful lookup.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Do not pass the row if the lookup fails</p></td>
<td><p>Enable to avoid passing a row when lookup fails. Within the SQL syntax, enabling this would be an INNER JOIN, otherwise it would be an OUTER JOIN.</p></td>
</tr>
<tr class="even">
<td><p>Fail on multiple results?</p></td>
<td><p>Enable to force the transform to fail if the lookup returns multiple results.</p></td>
</tr>
<tr class="odd">
<td><p>Order by</p></td>
<td><p>If the lookup query returns multiple results, the ORDER BY clause helps you to select the record to take. For example, ORDER BY would allow you to pick the customer with the highest sales volume in a specified state.</p></td>
</tr>
<tr class="even">
<td><p>Get Fields</p></td>
<td><p>Click to return a list of available fields from the input stream(s) of the transform.</p></td>
</tr>
<tr class="odd">
<td><p>Get lookup fields</p></td>
<td><p>Click to return a list of available fields from the lookup table that can be added to the transform’s output stream.</p></td>
</tr>
</tbody>
</table>

<div class="paragraph">

**Note on the Load all data from table option**: As an example: when storing a value of type "CHAR(3)", many databases will store "ab" using 3 characters: "ab " (notice the blank space). When you do a "SELECT \* FROM my\_lookup\_table WHERE key\_column = 'ab'", the database is smart and adds a blank space before applying the where clause (it looks for 'ab ' instead of 'ab').

</div>

<div class="paragraph">

The problem occurs when you use "load all data from table" to pre-load the cache: at startup, the cache is built using all the values present in the database, so we store 'ab ' in the cache. Later, looking up 'ab' fails, because the trailing space matters in java equality.

</div>

<div class="paragraph">

Note that this problem does not occur when using the cache, if "load all data from table" is disabled. Indeed, the first lookup for 'ab' would find no entry in the cache, call the database (which is smart enough to handle the trailing whitespace problem), get the correct result, and store it in the java cache under the 'ab' key. Thus, the next lookup for 'ab' will find the appropriate result in the cache :)

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:03 +0200

</div>

</div>

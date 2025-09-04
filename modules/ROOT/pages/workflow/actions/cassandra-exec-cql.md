<div id="header">

# Cassandra Exec CQL

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

The `Cassandra Exec CQL` action executes one or more Cassandra Quqery Languague (SQL) statements on a Cassandra cluster.

</div>

<div class="paragraph">

You can use it to create or drop key spaces, tables, indexes and so on.

</div>

<div class="paragraph">

If all statements executed successfully the result will be true (success).

</div>

<div class="paragraph">

Check the [Cassandra docs](https://cassandra.apache.org/doc/stable/cassandra/cql/) for more information about CQL.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                                                                           | Description                                                                                                                                                                              |
| -------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Cassandra Connection](metadata-types/cassandra/cassandra-connection.9mk8tVnytP) | You can specify the name of the connection to use either as a fixed value or as a variable expression. There are buttons to the right of the input field to hel you manage the metadata. |
| CQL Script                                                                       | You can enter one or more CQL statements ending with a semi-colon on a new line.                                                                                                         |
| Replace variables in script                                                      | Check this option to added variables in your CQL script. These variables will be replaced with the variables values before sending the CQL script to the Cassandra cluster.              |

</div>

</div>

<div class="sect1">

## Example:

<div class="sectionbody">

<div class="listingblock">

<div class="content">

``` highlight
CREATE KEYSPACE IF NOT EXISTS hop
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3}
;
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Result rows

<div class="sectionbody">

<div class="paragraph">

It’s possible to perform one or more queries in this action. The output of the queries will be added to the result rows of the action. You can access these with the plugins like the [Get Rows From Result](pipeline/transforms/getrowsfromresult.9mk8tVnytP) transform or in the [JavaScript](workflow/actions/eval.9mk8tVnytP) action. Please note that result rows are kept in memory so this is intended for small queries, for example getting information from the `system_schema` tables.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:01 +0200

</div>

</div>

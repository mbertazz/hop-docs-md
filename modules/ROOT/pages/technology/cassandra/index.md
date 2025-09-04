<div id="header">

# Cassandra Technology

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

From the [Apache Cassandra](https://cassandra.apache.org/) website:

</div>

<div class="paragraph">

The database is the right choice when you need scalability and high availability without compromising performance. [Linear scalability](http://techblog.netflix.com/2011/11/benchmarking-cassandra-scalability-on.html) and proven fault-tolerance on commodity hardware or cloud infrastructure make it the perfect platform for mission-critical data. Cassandra’s support for replicating across multiple datacenters is best-in-class, providing lower latency for your users and the peace of mind of knowing that you can survive regional outages.

</div>

<div class="paragraph">

From [Wikipedia](https://en.wikipedia.org/wiki/Apache_Cassandra):

</div>

<div class="paragraph">

Apache Cassandra is a free and open-source, distributed, wide-column store, NoSQL database management system designed to handle large amounts of data across many commodity servers, providing high availability with no single point of failure. Cassandra offers support for clusters spanning multiple datacenters,\[2\] with asynchronous masterless replication allowing low latency operations for all clients. Cassandra was designed to implement a combination of Amazon’s Dynamo distributed storage and replication techniques combined with Google’s Bigtable data and storage engine model.\[3\]

</div>

</div>

</div>

<div class="sect1">

## Cassandra Support in Hop

<div class="sectionbody">

<div class="paragraph">

Hop supports Cassandra 4 (since version 2.2.0) with the following:

</div>

<div class="sect2">

### Metadata Types

<div class="ulist">

  - [Cassandra Connection](metadata-types/cassandra/cassandra-connection.1LooSDqaLv): Create a connection to your Cassandra database cluster.

</div>

</div>

<div class="sect2">

### Workflow Actions

<div class="ulist">

  - [Cassandra Exec CQL](workflow/actions/cassandra-exec-cql.1LooSDqaLv): Execute Cassandra [CQL](https://cassandra.apache.org/doc/latest/cql/)

</div>

</div>

<div class="sect2">

### Pipeline Transforms

<div class="ulist">

  - [Cassandra Input](pipeline/transforms/cassandra-input.1LooSDqaLv): Reads from a Cassandra cluster through a CQL query.

  - [Cassandra Output](pipeline/transforms/cassandra-output.1LooSDqaLv): Write data to a table in a Cassandra cluster.

  - [SSTable Output](pipeline/transforms/sstable-output.1LooSDqaLv): Write data to a filesystem directory as a Cassandra SSTable.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:52 +0200

</div>

</div>

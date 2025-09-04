<div id="header">

# Partition Schema

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

<span class="image">![partition schema](/images/icons/partition_schema.svg)</span>

</div>

<div class="paragraph">

Describes a partition schema. A partition schema defines how many ways the row stream will be split. The names used for the partitions can be anything you like.

</div>

</div>

</div>

<div class="sect1">

## Related Plugins

<div class="sectionbody">

<div class="paragraph">

None/All

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                                   | Default | Description                                   |
| ---------------------------------------- | ------- | --------------------------------------------- |
| Partition schema name                    |         | The name to be used for this partition schema |
| Dynamically create the schema definition | ?       |                                               |
| Number of partitions?                    | 4       |                                               |
| Partitions                               |         | list of partition IDs                         |

</div>

</div>

<div class="sect1">

## Samples (Integration Tests)

<div class="sectionbody">

<div class="ulist">

  - integration-tests/partitioning/0006-partitioned-when-stream-lookup-should-fail2.hpl

  - integration-tests/partitioning/0004-copies-repartitioning.hpl

  - integration-tests/partitioning/0001-static-partitioning.hpl

  - integration-tests/partitioning/0005-partitioned-stream-lookup.hpl

  - integration-tests/partitioning/0006-partitioned-when-stream-lookup-should-fail.hpl

  - integration-tests/partitioning/0003-repartitioning.hpl

  - integration-tests/partitioning/0005-non-partitioned-stream-lookup.hpl

  - integration-tests/partitioning/0002-dynamic-partitioning.hpl

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:15 +0200

</div>

</div>

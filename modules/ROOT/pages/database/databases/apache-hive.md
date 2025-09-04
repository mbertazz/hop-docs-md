<div id="header">

# Apache Hive

</div>

<div id="content">

<div class="sect1">

## Features

<div class="sectionbody">

| Feature          | Info                                                                                                               |
| ---------------- | ------------------------------------------------------------------------------------------------------------------ |
| Type             | Relational                                                                                                         |
| Driver           | Included                                                                                                           |
| Version Included | 3.1.3                                                                                                              |
| Hop Dependencies | None                                                                                                               |
| Documentation    | [Documentation Link](https://cwiki.apache.org/confluence/display/Hive/HiveServer2+Clients#HiveServer2Clients-JDBC) |
| JDBC Url         | jdbc:hive2://\<host:port\>,\<host2:port2\>/databaseName                                                            |
| Driver folder    | Hop Installation/plugins/databases/hive/lib                                                                        |

</div>

</div>

<div class="sect1">

## Partitions

<div class="sectionbody">

<div class="paragraph">

Apache Hive need to have a PARTITION clause generated before the fields definition. To do this you can add table and clause definitions in the specific Hive field called 'Table-partition clauses'. This is the format to specify:

</div>

<div class="paragraph">

`TABLE1(CLAUSE1);SCHEMA2.TABLE2(CLAUSE2)`

</div>

<div class="paragraph">

For example, if you want to partition a `customers` table by `statecode` dynamically, you can add the following: `customers(statecode)` and for `INSERT INTO` statement Hop will add `PARTITION(statecode)`.

</div>

<div class="paragraph">

HINT: for dynamic partitioning you can add the following statements in the `advanced` tab of the RDBMS metadata as statements to run right after connecting:

</div>

<div class="listingblock">

<div class="content">

``` highlight
SET hive.exec.dynamic.partition = true;
SET hive.exec.dynamic.partition.mode = nonstrict;
```

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:15 +0200

</div>

</div>

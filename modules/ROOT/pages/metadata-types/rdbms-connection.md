<div id="header">

# Relational Database Connection

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

<span class="image">![database](../assets/images/icons/database.svg)</span>

</div>

<div class="paragraph">

Describes all the information needed to connect to a relational database.

</div>

<div class="paragraph">

Hop supports tens of relational databases out of the box. If your specific database doesn’t have built in support, you’ll probably still be able to connect with the Generic database connection.

</div>

<div class="paragraph">

Check the list of [databases](database/databases.rVbFTB8dxb) for more details.

</div>

</div>

</div>

<div class="sect1">

## Related Plugins

<div class="sectionbody">

<div class="paragraph">

Actions:

</div>

<div class="ulist">

  - [Check DB Connections](workflow/actions/checkdbconnection.rVbFTB8dxb)

  - [Columns exist in table](workflow/actions/columnsexist.rVbFTB8dxb)

  - [MS SQL Bulk Loader](workflow/actions/mssqlbulkload.rVbFTB8dxb)

  - [MySQL Bulk File](workflow/actions/mysqlbulkfile.rVbFTB8dxb)

  - [MySQL Bulk Loader](workflow/actions/mysqlbulkload.rVbFTB8dxb)

  - [SQL](workflow/actions/sql.rVbFTB8dxb)

  - [Table Exists](workflow/actions/tableexists.rVbFTB8dxb)

  - [Truncate Tables](workflow/actions/truncatetables.rVbFTB8dxb)

  - [Wait for SQL](workflow/actions/waitforsql.rVbFTB8dxb)

</div>

<div class="paragraph">

Transforms:

</div>

<div class="ulist">

  - [Call DB Procedure](pipeline/transforms/calldbproc.rVbFTB8dxb)

  - [Column Exists](pipeline/transforms/columnexists.rVbFTB8dxb)

  - [Combination Lookup/Update](pipeline/transforms/combinationlookup.rVbFTB8dxb)

  - [Database Join](pipeline/transforms/databasejoin.rVbFTB8dxb)

  - [Database Lookup](pipeline/transforms/databaselookup.rVbFTB8dxb)

  - [Dynamic SQL Row](pipeline/transforms/dynamicsqlrow.rVbFTB8dxb)

  - [Execute SQL Row](pipeline/transforms/execsqlrow.rVbFTB8dxb)

  - [Insert/Update](pipeline/transforms/insertupdate.rVbFTB8dxb)

  - [Oracle Bulk Loader](pipeline/transforms/orabulkloader.rVbFTB8dxb)

  - [PostgreSQL Bulk Loader](pipeline/transforms/postgresbulkloader.rVbFTB8dxb)

  - [Synchronize After Merge](pipeline/transforms/synchronizeaftermerge.rVbFTB8dxb)

  - [Table Compare](pipeline/transforms/tablecompare.rVbFTB8dxb)

  - [Table Exists](pipeline/transforms/tableexists.rVbFTB8dxb)

  - [Table Input](pipeline/transforms/tableinput.rVbFTB8dxb)

  - [Table Output](pipeline/transforms/tableoutput.rVbFTB8dxb)

  - [Teradata Bulk Loader](pipeline/transforms/terafast.rVbFTB8dxb)

  - [Update](pipeline/transforms/update.rVbFTB8dxb)

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="paragraph">

The options describe below are for the Generic database connection.

</div>

<div class="paragraph">

The options for your selected database depend on the database vendor and/or engine.

</div>

<div class="sect2">

### General

| Option                | Description                                                                                                                                                                |
| --------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Connection name       | the name to use for this connection                                                                                                                                        |
| Connection type       | the description to use for this connection                                                                                                                                 |
| Username              |                                                                                                                                                                            |
| Password              |                                                                                                                                                                            |
| Driver class          | classname to use for this connection. This is usually only needed for generic connections. There shouldn’t be a need to specify if your select a specific database engine. |
| Manual Connection URL | This is usually only needed for generic connections. There shouldn’t be a need to specify if your select a specific database engine.                                       |

</div>

<div class="sect2">

### Advanced

| Option                                                  | Default | Description |
| ------------------------------------------------------- | ------- | ----------- |
| Supports the Boolean data type                          | true    |             |
| Supports the Timestamp data type                        | true    |             |
| Quote all identifiers in database                       |         |             |
| Force all identifiers to lower case                     |         |             |
| Force all identifiers to upper case                     |         |             |
| Reserve case of reserved words?                         | true    |             |
| The preferred schema name                               |         |             |
| The SQL statements to run after connecting (; separated |         |             |

</div>

<div class="sect2">

### Options

<div class="paragraph">

Specify a list of extra JDBC connection options as a parameter/value list.

</div>

</div>

</div>

</div>

<div class="sect1">

## Samples

<div class="sectionbody">

<div class="paragraph">

None

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:18 +0200

</div>

</div>

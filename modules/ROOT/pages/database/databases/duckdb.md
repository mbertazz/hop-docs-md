<div id="header">

# DuckDB

</div>

<div id="content">

<div class="paragraph">

DuckDB is an in-process SQL OLAP database management system.

</div>

<div class="paragraph">

As an in-process database, DuckDB is easy to configure: specify the path to your DuckDB filename as the database name, e.g. `<PATH_TO_YOUR_DUCKDB_FILE>/duckdb`.

</div>

<div class="paragraph">

One thing to remember is about how DuckDB manages concurrency. The things to remember are summarized below:

</div>

<div class="ulist">

  - Only one process at a time can both read and write to the database.

  - Multiple processes can read from the database, but no processes can write. To set this behavior, remember to specify in the connection’s options the property duckdb.read\_only = true

</div>

<div class="paragraph">

For details, please refer to [DuckDB Java API documentation](https://duckdb.org/docs/api/java).

</div>

| Option           | Info                                                                                |
| ---------------- | ----------------------------------------------------------------------------------- |
| Type             | Relational                                                                          |
| Driver           | [Driver Link](https://search.maven.org/artifact/org.duckdb/duckdb_jdbc/1.3.0.0/jar) |
| Version Included | 1.3.0.0                                                                             |
| Hop Dependencies | None                                                                                |
| Documentation    | <https://duckdb.org/docs/api/java.html>                                             |
| JDBC Url         | jdbc:duckdb: (in memory) or jdbc:duckdb:\<FILE\_PATH\>                              |
| Driver folder    | \<Hop Installation\>/lib/jdbc                                                       |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:21 +0200

</div>

</div>

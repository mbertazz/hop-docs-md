<div id="header">

# SQL

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `SQL` action executes one or more SQL scripts from this action’s configuration or from a file.

</div>

<div class="paragraph">

You can execute more than one SQL statement, as long as they are separated by semi-colons.

</div>

<div class="paragraph">

The SQL workflow action is flexible; you can perform procedure calls, create and analyze tables, and more.

</div>

<div class="paragraph">

Common uses associated with the SQL workflow action include truncating tables, drop index, partition loading, refreshing materialized views, disabling constraints, disabling statistics, and so on..

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                        | Description                                                                                                                                                                                   |
| ----------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Action name                   | The name of the workflow action.                                                                                                                                                              |
| Database Connection           | The database connection to use.                                                                                                                                                               |
| SQL from file                 | Enable this option to load the SQL statement from a file given by the SQL filename                                                                                                            |
| SQL filename                  | The filename for the file with SQL statements.                                                                                                                                                |
| Send SQL as single statement? | Enable this option to not separate the statement by semicolons. This is often useful when a script is given or multiple statements should be processed and committed as one single statement. |
| Use variable substitution?    | Enables variables to be used in the SQL Script.                                                                                                                                               |
| SQL script                    | The SQL script to execute. Multiple statements can be separated by semicolons.                                                                                                                |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:29 +0200

</div>

</div>

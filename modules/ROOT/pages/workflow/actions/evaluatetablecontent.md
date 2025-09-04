<div id="header">

# Evaluate rows numbers in a table

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Evaluate rows numbers in a table` action evaluates the number of rows in a table and lets you define the success condition that can be used to branch the workflow into success/error streams.

</div>

<div class="paragraph">

You can either just test the number of rows in a target table, or write a custom SQL statement.

</div>

<div class="paragraph">

For the success condition you can check the number of rows if they are:

</div>

<div class="ulist">

  - Equal to

  - Different from

  - Smaller than

  - Smaller or equal to

  - Greater than

  - Greater or equal to

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

Property

</div>

</div>

</div>

Description

Action name

The name to use for this workflow action

Connection

The [Relational database connection to use](metadata-types/rdbms-connection.M2ttN3EQe2)

Target schema

The database schema name

Target table name

The database table name

Success condition

Success when rows count

<div class="content">

<div class="ulist">

  - Equal to

  - Different from

  - Smaller than

  - Smaller or equal to

  - Greater than (default)

  - Greater than or equal to

</div>

</div>

Limit

the number of rows to evaluate in combination with the selected option above.

Custom SQL

Custom SQL

Check this option when you want to specify a custom SQL statement in the `SQL Script` field below.

Use variable substitution

Variables in the SQL statements will be substituted.

Clear list of result rows

Clears the internal list of result rows before executing.

Add rows to result

Adds all rows returned from the SQL statement within the internal list of result rows. This list of result rows can then be used in subsequent workflow actions to loop over or e.g. within a pipeline by the Get rows from result transform.

SQL Script

The custom SQL script to use. The `Custom SQL` option above needs to be checked before this field is enabled.

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:10 +0200

</div>

</div>

<div id="header">

# Wait for SQL

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Wait for SQL` action scans a database and checks if the database meets user-defined conditions.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

Option

</div>

</div>

</div>

Description

Action name

The name of the workflow action.

Connection

Identifies the database connection to use.

Target schema

Name of the table schema to evaluate.

Target table name

Name of the table to evaluate.

Success condition

Success when rows count

<div class="content">

<div class="paragraph">

Defines the evaluation method used to compare the number of rows with the given value. The options are:

</div>

<div class="ulist">

  - Equal to

  - Different from

  - Smaller than

  - Smaller or equal to

  - Greater than (default)

  - Greater or equal to

</div>

</div>

Row count value

Defines the row count value used for the evaluation

Maximum timeout

After this timeout period, the workflow action continues with a fail, by default, or success, if the Success on timeout option is checked. Expressed in seconds, 0 is infinite.

Check cycle time

Sets the amount of time between evaluations, expressed in seconds.

Success on timeout

Defines workflow action success behavior when timeout is reached---when checked, reaching the maximum timeout limit causes the workflow action to succeed. When left unchecked, reaching the maximum timeout limit causes the workflow action to fail.

Custom SQL

Custom SQL

Enables the use of custom SQL queries.

Use variable substitution

Replaces environment variables in the SQL script with their actual value.

Clear list of result rows before execution

Clears the list of result rows before running this workflow action.

Add rows to result

Includes returned rows to the result set.

SQL Script

The custom SQL script to use when the `Custom SQL` option is enabled.

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:33 +0200

</div>

</div>

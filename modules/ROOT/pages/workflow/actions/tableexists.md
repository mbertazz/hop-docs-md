<div id="header">

# Table Exists

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Table exists` action verifies that a specified table exists on a database.

</div>

<div class="paragraph">

You must provide a connection and the table name.

</div>

<div class="paragraph">

Hop returns a True or False value depending on whether the table exists.

</div>

<div class="paragraph">

Suppose you have an external system that creates a summary table or yesterday’s data extract.

</div>

<div class="paragraph">

The external system may not have performed the action yet, so you set up a polling piece that waits for the staged data to arrive in the database.

</div>

<div class="paragraph">

There is no point in processing the workflow until the data is available, so you can use this workflow action as a semaphore that polls the database to determine whether or not the table exists.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option      | Description                                    |
| ----------- | ---------------------------------------------- |
| Action name | The name of the workflow action.               |
| Connection  | The connection to use                          |
| Schema name | The schema name if applicable to your database |
| Table name  | The name of the database table to check        |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:30 +0200

</div>

</div>

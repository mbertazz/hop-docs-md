<div id="header">

# Bulk load into MSSQL

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Bulk load into MSSQL` action bulk loads data from a file into MSSQL.

</div>

<div class="paragraph">

Contrary to the transform bulk loaders, this action requires a pre-existing file that is bulk loaded to MS SQL.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General tab

Option

</div>

</div>

</div>

</div>

Description

Action name

The name of the workflow action.

Target Table

Connection

The database connection.

Target schema

The target schema.

Target table name

The target table.

Truncate table

Whether or not to truncate the table before starting the bulk load.

Data file

Source File name

The file to bulk load into MSSQL.

Data file type

char, native, widechar, widenative

Fields terminated by

The field separation character.

Rows terminated by

The row termination character.

<div class="sect2">

### Advanced tab

| Option                       | Description                                    |
| ---------------------------- | ---------------------------------------------- |
| Codepage                     | OEM, ACP, RAW, specific                        |
| Specific codepage            | Code page to use when specific is selected.    |
| Format file                  | Path to format file.                           |
| Browse                       | Browse the filesystem to choose a format file. |
| Fire triggers                |                                                |
| Check constraints            |                                                |
| Keep nulls                   |                                                |
| Keep identity                |                                                |
| Tablock                      |                                                |
| Start at line                | At which line to start.                        |
| End at line                  | At which line to end.                          |
| Order by                     | Which field to order with.                     |
| Direction                    | Ordering ascending (asc) or descending (desc). |
| Error file                   | Path to the error file.                        |
| Add date time                | Whether or not to add the date and time.       |
| Max errors                   |                                                |
| Batch size                   |                                                |
| Rows per batch               |                                                |
| Add file to result filenames |                                                |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:17 +0200

</div>

</div>

<div id="header">

# JavaScript

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `JavaScript` action runs Javascript code and returns a boolean expression.

</div>

<div class="paragraph">

The result can be used to determine which action will be executed next.

</div>

<div class="paragraph">

You can use functions, procedure calls, ANDs, ampersands, ORs, EQUALs, etc.

</div>

<div class="paragraph">

The Javascript workflow action evaluates and returns a true or false.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option      | Description                      |
| ----------- | -------------------------------- |
| Action name | The name of the workflow action. |
| JavaScript  | The JavaScript field.            |

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="listingblock">

<div class="content">

``` highlight
typeof parent_workflow.getVariable("DETAIL_ID_DATASOURCE_ID") != "undefined" && parent_workflow.getVariable("DETAIL_ID_DATASOURCE_ID").toString() == ""
```

</div>

</div>

<div class="listingblock">

<div class="content">

``` highlight
parent_workflow.getVariable("API_RETRY_COUNTER") != parent_workflow.getVariable("API_RETRY_LIMIT")
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Troubleshooting

<div class="sectionbody">

<div class="ulist">

  - Remove as many line returns as possible in the JavaScript.

</div>

</div>

</div>

<div class="sect1">

## Evaluation

<div class="sectionbody">

<div class="paragraph">

The result of a JavaScript action is either true or false. In other words, it needs to end with a boolean expression.

</div>

<div class="paragraph">

Here are a few possible evaluations to end your script with:

</div>

<div class="listingblock">

<div class="content">

``` highlight
lines_input > 100
```

</div>

</div>

<div class="paragraph">

or

</div>

<div class="listingblock">

<div class="content">

``` highlight
true
```

</div>

</div>

<div class="paragraph">

or

</div>

<div class="listingblock">

<div class="content">

``` highlight
parent_workflow.getVariable("INPUT_DIRECTORY").equals("/tmp");
```

</div>

</div>

<div class="paragraph">

The following variables are available for the expression:

</div>

| Variable          | Description                                                                                                  |
| ----------------- | ------------------------------------------------------------------------------------------------------------ |
| `errors`          | Number of errors in the previous workflow action (long).                                                     |
| `lines_input`     | Number of rows read from database or file (long).                                                            |
| `lines_output`    | Number of rows written to database or file (long).                                                           |
| `lines_updated`   | Number of rows updated in a database table (long).                                                           |
| `lines_read`      | number of rows read from a previous pipeline transform (long).                                               |
| `lines_written`   | Number of rows written to a next pipeline transform (long).                                                  |
| `files_retrieved` | Number of files retrieved from an FTP server (long).                                                         |
| `exit_status`     | The exit status of a shell script (integer).                                                                 |
| `nr`              | The workflow action number of the previous workflow action (long); increments at every next workflow action. |
| `is_windows`      | use if Hop runs on Windows (boolean).                                                                        |
| `parent_workflow` | The parent workflow of the current workflow action.                                                          |
| `action`          | The current workflow action.                                                                                 |

</div>

</div>

<div class="sect1">

## Variables

<div class="sectionbody">

<div class="paragraph">

Here is how you can evaluate the content of a variable string:

</div>

<div class="listingblock">

<div class="content">

``` highlight
parent_workflow.getVariable("NR_OF_ROWS") == 1000000;
```

</div>

</div>

<div class="paragraph">

Since we have access to the parent\_workflow object, we can also set variables in the parent workflow this way:

</div>

<div class="listingblock">

<div class="content">

``` highlight
parent_workflow.setVariable("NR_OF_ROWS", "1000000");
```

</div>

</div>

<div class="paragraph">

For example you can do something like the following to manipulate variables within this workflow action:

</div>

<div class="listingblock">

<div class="content">

``` highlight
useDate = parent_workflow.getVariable("use_date").equals("1");
if (useDate == 0) {
  date = new java.util.Date();
  date.setDate(date.getDate()-1); //Go back 1 full day
  dateFormat = new java.text.SimpleDateFormat("yyyyMMdd");
  newDateStr = dateFormat.format(date);
  parent_workflow.setVariable("start_date", newDateStr);
}
true;
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Previous result

<div class="sectionbody">

<div class="paragraph">

When a workflow action finishes, the result of the execution will be a Result object exposed as "previous\_result" to the JavaScript engine:

</div>

| Expression                              | Alternative      | Data type              | Meaning                                                                                                                                                   |
| --------------------------------------- | ---------------- | ---------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `previous_result.getResult()`           |                  | boolean                | true if the previous workflow action was executed successfully, false if there was some error.                                                            |
| `previous_result.getExitStatus()`       | exit\_status     | int                    | exit status of previous shell script workflow action                                                                                                      |
| `previous_result.getActionNr()`         | nr               | int                    | The action number is increased every time a workflow action is executed.                                                                                  |
| `previous_result.getNrErrors()`         | errors           | long                   | the number of errors, also available as variable "errors".                                                                                                |
| `previous_result.getNrLinesInput()`     | lines\_input     | long                   | The number of rows read from a file or database.                                                                                                          |
| `previous_result.getNrLinesOutput()`    | lines\_output    | long                   | The number of rows written to a file or database.                                                                                                         |
| `previous_result.getNrLinesRead()`      | lines\_read      | long                   | The number of rows read from previous transforms.                                                                                                         |
| `previous_result.getNrLinesUpdated()`   | lines\_updated   | long                   | The number of rows updated in a file or database.                                                                                                         |
| `previous_result.getNrLinesWritten()`   | lines\_written   | long                   | The number of rows written to next transform.                                                                                                             |
| `previous_result.getNrLinesDeleted()`   | lines\_deleted   | long                   | The number of deleted rows.                                                                                                                               |
| `previous_result.getNrLinesRejected()`  | lines\_rejected  | long                   | The number of rows rejected and passed to another transform via error handling.                                                                           |
| `previous_result.getRows()`             |                  | List\<RowMetaAndData\> | The result rows, see also below.                                                                                                                          |
| `previous_result.isStopped()`           |                  | boolean                | Flag to signal if the previous previous workflow action stopped or not.                                                                                   |
| `previous_result.getResultFilesList()`  |                  | List\<ResultFile\>     | The list of all the files used in the previous workflow action (or actions).                                                                              |
| `previous_result.getNrFilesRetrieved()` | files\_retrieved | int                    | The number of files retrieved from FTP, SFTP, etc.                                                                                                        |
| `previous_result.getLogText()`          |                  | String                 | The log text of the execution of the previous workflow action and its children.                                                                           |
| `previous_result.getLogChannelId()`     |                  | String                 | The ID of the log channel of the previous workflow action. You can use this to look up information on the execution lineage in the log channel log table. |

<div class="sect2">

### Rows

<div class="paragraph">

The "rows" variable we expose to JavaScript helps you evaluate the result rows you passed to the next workflow action using the "Copy rows to result" transform. Here is an example script on how to use this array:

</div>

<div class="listingblock">

<div class="content">

``` highlight
var firstRow = rows[0];

firstRow.getString("name", "").equals("Foo")
```

</div>

</div>

<div class="literalblock">

<div class="content">

    This script will follow the green workflow hop is the expression evaluates to true.  This happens if field "name" contains String "Foo".

</div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:09 +0200

</div>

</div>

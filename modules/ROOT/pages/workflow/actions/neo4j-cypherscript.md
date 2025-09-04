<div id="header">

# Neo4j Cypher script

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Neo4j Cypher script` action executes Cypher statements in a workflow.

</div>

<div class="paragraph">

As with all actions, the goal is not to retrieve data but to execute various statements like creating or dropping indexes, calling APOC procedures, add or delete some static data and so on.  
The result of this action is a `true` or `false` exit code that determines if a success or failure hop to the next action in the workflow is chosen.

</div>

</div>

</div>

<div class="sect1">

## Important

<div class="sectionbody">

<div class="paragraph">

**To allow you to enter semi-colons (;) in commands, strings and so on we require you to separate commands with a semi-colon on a new line**

</div>

</div>

</div>

<div class="sect1">

## Configuration options

<div class="sectionbody">

| Option            | Description                                                                                                           |
| ----------------- | --------------------------------------------------------------------------------------------------------------------- |
| Connection name   | The name of the connection on which you want to execute the cypher statements.                                        |
| Script            | The script with cypher commands seperated by a semi-colon (;) on a new line. For examples see below.                  |
| Replace variables | Check this option if you want to replace variables in the format `${VARIABLE_NAME}` in the script prior to execution. |

</div>

</div>

<div class="sect1">

## Example

<div class="sectionbody">

<div class="listingblock">

<div class="content">

``` highlight
CREATE INDEX idx_company_id on :Company(id)
;
CREATE INDEX idx_company_id on :Company(id)
;
```

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:19 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![Table Input transform Icon](../assets/images/transforms/icons/tableinput.svg)</span> Table Input

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 75%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="content">
<div class="sect1">
<h2 id="_description">Description</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The Table Input transform is one of the most frequently used transforms in Apache Hop. It reads data from a relational database using a connection and an SQL query, and introduces that data into a pipeline.</p>
</div>
<div class="paragraph">
<p>This transform supports parameterization using: - Apache Hop variables (e.g., <code>${customerId}</code>) - Input fields from a previous transform (JDBC prepared statements using <code>?</code> placeholders)</p>
</div>
<div class="paragraph">
<p>These features make Table Input ideal for dynamic and reusable data retrieval logic.</p>
</div>
</div>
</div>
</div></td>
<td><div class="content">
<div class="sect1">
<h2 id="_supported_engines">Supported Engines</h2>
<div class="sectionbody">
<table>
<tbody>
<tr class="odd">
<td><p>Hop Engine</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Spark</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
</tbody>
</table>
</div>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Getting Started: Generate a Basic SQL Query

<div class="sectionbody">

<div class="paragraph">

You can auto-generate a query using the `Get SQL select statement` button.

</div>

<div class="paragraph">

This opens the database explorer, allowing you to select a table or view. Once selected, you can choose to generate:

</div>

<div class="ulist">

  - A full column list: `SELECT col_a, col_b, col_c FROM my_table;`

  - A wildcard query: `SELECT * FROM my_table;`

</div>

</div>

</div>

<div class="sect1">

## Use Fields from a Previous Transform

<div class="sectionbody">

<div class="paragraph">

To pass dynamic values into your SQL query at runtime, use the `Insert data from transform` option. This creates a JDBC Prepared Statement using `?` placeholders.

</div>

<div class="paragraph">

Use `?` in your SQL where values from the input transform should be inserted. Values are passed in the order of fields in the incoming stream. Use a `Select Values` transform to ensure the correct field order.

</div>

<div class="paragraph">

Prepared statements:

</div>

<div class="ulist">

  - Improve security by preventing SQL injection

  - Cannot parameterize all parts of a SQL statement (e.g., `IN (?)` or table names)

</div>

<div class="paragraph">

You can also combine this with variable substitution.

</div>

<div class="sect2">

### Examples

<div class="paragraph">

<div class="title">

Parameterized query using input fields:

</div>

<span class="image">![Parameterized query using input fields](../assets/images/transforms/tableinput/table-input-parametrized-query.png)</span>

</div>

<div class="listingblock">

<div class="content">

``` highlight
SELECT *
FROM public.tableinput
WHERE id > ?;
```

</div>

</div>

<div class="ulist">

  - Replace variables in script: **unchecked**

  - Insert data from transform: **Select the previous transform providing NameId and AddressId**

</div>

<div class="paragraph">

Sample pipeline: [tableinput-accept-input.hpl](https://github.com/apache/hop/blob/main/plugins/transforms/tableinput/src/main/samples/transforms/tableinput-accept-input.hpl)

</div>

<div class="paragraph">

<div class="title">

Using a date range from a system transform:

</div>

<span class="image">![Using a date range from a system transform](../assets/images/transforms/tableinput/table-input-date-range.png)</span>

</div>

<div class="listingblock">

<div class="content">

``` highlight
SELECT *
FROM public.tableinput
WHERE changed_date BETWEEN ? AND ?;
```

</div>

</div>

<div class="ulist">

  - Use a `Get System Info` transform to generate the start and end dates

  - Insert those dates using `Insert data from transform`

</div>

</div>

</div>

</div>

<div class="sect1">

## Use Variables in Your SQL Query

<div class="sectionbody">

<div class="paragraph">

<span class="image">![Use Variables in Your SQL Query](../assets/images/transforms/tableinput/table-input-variables-in-sql.png)</span>

</div>

<div class="paragraph">

If your query includes Hop variables, enable `Replace variables in script`. This performs a simple string replacement **before** the query is sent to the database.

</div>

<div class="listingblock">

<div class="content">

``` highlight
SELECT *
FROM public.tableinput
WHERE id > ${PRM_ID};
```

</div>

</div>

<div class="ulist">

  - `${PRM_ID}` is defined as a pipeline variable (e.g., via parameters or `Set Variables` transform)

</div>

<div class="paragraph">

<span class="image">![Parameter definition in pipeline](../assets/images/transforms/tableinput/table-input-variables-in-sql-parameter-definition.png)</span>

</div>

<div class="ulist">

  - This gives you full control over the query structure

  - Combine with `?` placeholders if needed

</div>

<div class="admonitionblock note">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Note
</div></td>
<td>Variable substitution happens before execution and does not protect against SQL injection.</td>
</tr>
</tbody>
</table>

</div>

<div class="ulist">

  - Replace variables in script: **checked**

  - Insert data from transform: **leave empty**

</div>

<div class="paragraph">

Sample pipeline: [tableinput-variables.hpl](https://github.com/apache/hop/blob/main/plugins/transforms/tableinput/src/main/samples/transforms/tableinput-variables.hpl)

</div>

</div>

</div>

<div class="sect1">

## Using Both Variables and Prepared Statements

<div class="sectionbody">

<div class="paragraph">

You can combine both techniques in a single query:

</div>

<div class="paragraph">

<span class="image">![Using Both Variables and Prepared Statements](../assets/images/transforms/tableinput/table-input-combine-variables-and-prepared-statements.png)</span>

</div>

<div class="listingblock">

<div class="content">

``` highlight
SELECT *
FROM public.tableinput
where id > ${PRM_ID} AND lastdate > ?;
```

</div>

</div>

<div class="ulist">

  - `${startDate}` is a pipeline variable

  - `?` is a parameter provided by the input stream

</div>

</div>

</div>

<div class="sect1">

## Best Practices and Pro Tips

<div class="sectionbody">

</div>

</div>

<div class="sect1">

## Pro Tips

<div class="sectionbody">

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>The Table input transform does not pass input data to the output, only fields inside the query are returned to the pipeline so all other variables and data will be lost. You can solve this by adding the variable as a field in the query or put a Get variables transform behind the table input.</td>
</tr>
</tbody>
</table>

</div>

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>If you are getting unexpected query results, try clearing the database cache. Click the <strong>broom icon</strong> or go to <strong>Tools &gt; Clear DB Cache</strong>. After clearing, click OK, save your pipeline, and reopen it if needed.</td>
</tr>
</tbody>
</table>

</div>

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>A cartesian join transform will combine a different number of fields from multiple table inputs without requiring key join fields.</td>
</tr>
</tbody>
</table>

</div>

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>Using the &quot;insert data from transform&quot; drop down will block until the transform selected has completed.</td>
</tr>
</tbody>
</table>

</div>

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>For better performance with large datasets you can use indexed columns in <code>WHERE</code> clauses and avoid <code>SELECT *</code> and only retrieve needed fields.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Dynamic SQL with Metadata Injection

<div class="sectionbody">

<div class="paragraph">

Table Input can be used in a metadata-driven pipeline. For example, create a template pipeline with a generic query:

</div>

<div class="listingblock">

<div class="content">

``` highlight
SELECT *
FROM ${tableName}
WHERE ${condition}
```

</div>

</div>

<div class="paragraph">

Then use a Metadata Injection transform to inject actual values (e.g., from a CSV or database).

</div>

<div class="olist arabic">

<div class="title">

Steps:

</div>

1.  Create a template pipeline with Table Input

2.  Use `${tableName}` and `${condition}` as placeholders

3.  In a separate pipeline, use Metadata Injection to inject values into the SQL field

4.  Execute the injected pipeline

</div>

<div class="paragraph">

This allows you to create **reusable and dynamic** pipelines without editing SQL manually.

</div>

<div class="paragraph">

You can inject metadata into the following fields of the Table Input transform:

</div>

<div class="ulist">

  - Connection

  - SQL

  - Replace variables in script?

  - Insert data from transform

  - Execute for each row?

  - Limit size

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                       | Description                                                                                                                                                                                                            |
| ---------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name               | Name of the transform instance.                                                                                                                                                                                        |
| Connection                   | Database connection to execute the query against.                                                                                                                                                                      |
| SQL                          | SQL statement used to retrieve data. Use `Get SQL select statement` to auto-generate.                                                                                                                                  |
| Replace variables in script? | Enable to substitute variables (e.g., `${param}`) in your SQL before execution.                                                                                                                                        |
| Insert data from transform   | Select a transform to use its fields as input for `?` parameters in a prepared statement.                                                                                                                              |
| Execute for each row?        | Runs the SQL query once for each incoming row, using that row’s values as parameters. Only applies when “Insert data from transform” is enabled. Useful for row-specific lookups, but may be slower on large datasets. |
| Limit size                   | Number of rows to return. `0` means no limit.                                                                                                                                                                          |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:17 +0200

</div>

</div>

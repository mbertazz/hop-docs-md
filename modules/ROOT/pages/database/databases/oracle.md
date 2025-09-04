<div id="header">

# Oracle

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

| Option           | Info                                                                                   |
| ---------------- | -------------------------------------------------------------------------------------- |
| Type             | Relational                                                                             |
| Driver           | [Driver Link](https://www.oracle.com/database/technologies/appdev/jdbc-downloads.html) |
| Version Included | None                                                                                   |
| Hop Dependencies | None                                                                                   |
| Documentation    | [Documentation Link](https://docs.oracle.com/cd/E11882_01/java.112/e16548/toc.htm)     |
| JDBC Url         | jdbc:oracle:thin:@hostname:port Number:databaseName                                    |
| Driver folder    | \<Hop Installation\>/lib/jdbc                                                          |

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
<td>Starting with Oracle Database 11g Release 1 (11.1), data type <code>Date</code> will be mapped to <code>Timestamp</code> by default. Set JDBC property <code>oracle.jdbc.mapDateToTimestamp=false</code> to avoid data type <code>Date</code> being converted to data type <code>Timestamp</code>.<br />
Check <a href="database/databases.HwLERk9IMJ#_options">Options</a> in the Relational Database Connection docs for more information.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Creating connections

<div class="sectionbody">

<div class="paragraph">

There are 4 ways to create a connection to an Oracle database in Apache Hop:

</div>

<div class="ulist">

  - If you have a SID, use this (old) format: `jdbc:oracle:thin:@hostname:PORT:SID`.  
    Put the SID with `:` prefix in the database name

  - If you have a service name, use this (newer) format: `jdbc:oracle:thin:@//HOSTNAME:PORT/SERVICENAME`.  
    Put the service name with `/` prefix in the database name

  - If you want to use TNS format: `jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=host) (PORT=port)) (CONNECT_DATA=(SERVICE_NAME=service_name))`.  
    Put the TNS description in the database name and leave the hostname and port empty.

  - If you want to use a specific TNS\_ADMIN, you providing the path for tnsnames.ora through TNS\_ADMIN property: `jdbc:oracle:thin:@mydb.mydomain?TNS_ADMIN=C:\\Temp\\tns`  
    Use manual connection url (not the options tab because Apache Hop does not pass options in the url for Oracle).

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:31 +0200

</div>

</div>

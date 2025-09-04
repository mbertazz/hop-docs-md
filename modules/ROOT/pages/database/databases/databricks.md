<div id="header">

# Databricks

</div>

<div id="content">

<div class="paragraph">

Check the [Databricks documentation](https://docs.databricks.com/aws/en/integrations/compute-details) on how to get the details for your connection to specify your catalog.

</div>

<div class="admonitionblock warning">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Warning
</div></td>
<td>the database name field is not used in a Databricks connection. Use the Catalog Name field.</td>
</tr>
</tbody>
</table>

</div>

| Option           | Info                                                                                                                                         |
| ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| Type             | Relational                                                                                                                                   |
| Driver           | [Driver Link](https://docs.databricks.com/aws/en/integrations/jdbc/download)                                                                 |
| Version Included | None                                                                                                                                         |
| Hop Dependencies | None                                                                                                                                         |
| Documentation    | [Documentation Link](https://docs.databricks.com/aws/en/integrations/jdbc/)                                                                  |
| JDBC Url         | jdbc:databricks://\<server-hostname\>:443;httpPath=\<http-path\>\[;\<setting1\>=\<value1\>;\<setting2\>=\<value2\>;\<settingN\>=\<valueN\>\] |
| Driver folder    | \<Hop Installation\>/lib/jdbc                                                                                                                |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:19 +0200

</div>

</div>

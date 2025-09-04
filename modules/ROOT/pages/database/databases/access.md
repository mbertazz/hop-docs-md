<div id="header">

# Microsoft Access

</div>

<div id="content">

<div class="paragraph">

When creating new database connection, specify the database path to the .mdb or .accdb file in database name field.

</div>

<div class="paragraph">

This database connection uses the UCanAccess driver which works well for reading with TableInput, DatabaseLookup, but it’s not great for writing. For writing it is better to use the Microsoft Access Output transformation.

</div>

| Option           | Info                                                                         |
| ---------------- | ---------------------------------------------------------------------------- |
| Type             | Relational                                                                   |
| Driver           | Included                                                                     |
| Version Included | 5.1.3                                                                        |
| Hop Dependencies | None                                                                         |
| Documentation    | [Documentation Link](https://spannm.github.io/ucanaccess/10-ucanaccess.html) |
| JDBC Url         | jdbc:ucanaccess://path.mdb                                                   |
| Driver folder    | \<Hop Installation\>/lib/jdbc                                                |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:15 +0200

</div>

</div>

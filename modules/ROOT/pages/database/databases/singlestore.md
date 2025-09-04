<div id="header">

# SingleStore (MemSQL)

</div>

<div id="content">

<div class="paragraph">

You can find out more about the SingleStore database at the [SingleStore home page](https://www.singlestore.com/). SingleStore is syntactically a MySQL variant, and you can use actions like the MySQL bulk loader with SingleStore.

</div>

<div class="paragraph">

More information about the SingleStore JDBC driver can be found here: [The SingleStore JDBC Driver](https://docs.singlestore.com/cloud/developer-resources/connect-with-application-development-tools/connect-with-java-jdbc/the-singlestore-jdbc-driver/).

</div>

<div class="paragraph">

**Important**: You need to download and install the SingleStore JDBC driver yourself. We suggest you place the driver JAR file either in the `lib/jdbc` folder or in the folder pointed to by the [`HOP_SHARED_JDBC_FOLDERS`](snippets/variables/hop-shared-jdbc-folder.dZLVEhmxJ9) variable.

</div>

| Option           | Info                                                                                                                                                                        |
| ---------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Type             | Relational                                                                                                                                                                  |
| Driver           | Download from the SingleStore website                                                                                                                                       |
| Version Included | None                                                                                                                                                                        |
| Hop Dependencies | None                                                                                                                                                                        |
| Documentation    | [Documentation Link](https://docs.singlestore.com/cloud/developer-resources/connect-with-application-development-tools/connect-with-java-jdbc/the-singlestore-jdbc-driver/) |
| JDBC Url         | jdbc:singlestore://\<database\_computer\>\[:\<port\>\]/\<database\_name\>                                                                                                   |
| Driver folder    | \<Hop Installation\>/lib/jdbc                                                                                                                                               |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:33 +0200

</div>

</div>

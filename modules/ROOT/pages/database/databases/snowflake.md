<div id="header">

# Snowflake

</div>

<div id="content">

<div class="sect1">

## Configuration

<div class="sectionbody">

| Option           | Info                                                                                    |
| ---------------- | --------------------------------------------------------------------------------------- |
| Type             | Relational                                                                              |
| Driver           | Included                                                                                |
| Version Included | 3.23.1                                                                                  |
| Hop Dependencies | None                                                                                    |
| Documentation    | [Documentation Link](https://docs.snowflake.net/manuals/user-guide/jdbc-configure.html) |
| JDBC Url         | `jdbc:snowflake://<account_name>.snowflakecomputing.com/?<connection_params>`           |
| Driver folder    | \<Hop Installation\>/lib/jdbc                                                           |

</div>

</div>

<div class="sect1">

## Establishing a Snowflake SSL Authenticated Connection.

<div class="sectionbody">

<div class="sect2">

### Introduction

<div class="paragraph">

This short guide will take us through creating a Snowflake user that is configured as a service account with a public key attached and get Apache Hop configured so that it can have a connection that uses the private key, role, compute etc. to carry out further work.

</div>

</div>

<div class="sect2">

### Create an RSA Keypair and the Hop Service User in Snowflake

<div class="paragraph">

To get started, you should create an rsa keypair for the service user you want to use with Hop when connecting to Snowflake.

</div>

<div class="paragraph">

You can generate an RSA keypair on most Linux / WSL (Windows Subsystem for Linux) by running the following command in the terminal window

</div>

<div class="paragraph">

`openssl rsa -in rsa_key.p8 -pubout -out rsa_key.pub`

</div>

<div class="paragraph">

The rsa\_key.pub file contents is what you will then use in your Snowflake `CREATE USER` statement.

</div>

<div class="listingblock">

<div class="content">

``` highlight
USE ROLE SECURITYADMIN;

CREATE USER SVC_ETL_HOP_USER_TEST
    DEFAULT_WAREHOUSE = ING_DEV_WH
    DEFAULT_NAMESPACE = DB_DEV
    DEFAULT_ROLE = SVC_ETL_DEV_ROLE
    TYPE = SERVICE
    RSA_PUBLIC_KEY = 'public key copy paste in single quotes'
    COMMENT = 'Test ETL service user';
```

</div>

</div>

<div class="imageblock">

<div class="content">

![Snowflake Service Account Creation](../assets/images/database/databases/snowflake/snowflake_service_user_create.png)

</div>

</div>

<div class="paragraph">

In the screenshot, we can define all the properties we intend the user to take on, including which default compute (warehouse) to use, namespace (database), and role. We also define a special attribute `TYPE = SERVICE` to ensure the user cannot log in using a sign-in page but only programmatically.

</div>

</div>

<div class="sect2">

### Download the Snowflake JDBC driver an Crypto Libraries

<div class="paragraph">

[Download](https://repo1.maven.org/maven2/net/snowflake/snowflake-jdbc/) a current Snowflake JDBC Driver. The filename has the naming pattern **snowflake-jdbc-3.19.0.jar**

</div>

<div class="paragraph">

To support certificate based authentication, we also need to [download](https://www.bouncycastle.org/download/bouncy-castle-java-lts/) two jar files from Bouncy Castle, who make a famous Java Crypto API library.

</div>

<div class="paragraph">

The first is a provider jar whose name indicates the JRE/JDK version supported. Make sure you download the correct version for your JDK that matches the version Hop requires. This first file to download is `bcprov-jdk<VERSION>.jar`

</div>

<div class="imageblock">

<div class="content">

![Bouncy Castle Provider Jar](../assets/images/database/databases/snowflake/bcprov.png)

</div>

</div>

<div class="paragraph">

Secondly, we need the encryption library, which also has JDK version support in the filename. The filename is `bcpkix-jdk<version>.jar`

</div>

<div class="imageblock">

<div class="content">

![Bouncy Castle Crypt Lib Jar](../assets/images/database/databases/snowflake/bcpkix.png)

</div>

</div>

<div class="paragraph">

The JDBC driver and two Bouncy Castle cryptography library jar files need to go into `hop/lib/jdbc` . Be sure to delete any older version of the Snowflake JDBC driver jar you find in `hop/lib/jdbc`. The Snowflake drivers are well-maintained and updated often.

</div>

<div class="imageblock">

<div class="content">

![Snowflake and Bouncy Castle Jars in the Hop Lib JDBC folder](../assets/images/database/databases/snowflake/snowflake_and_bc_jars.png)

</div>

</div>

</div>

<div class="sect2">

### Place the RSA Private Key in Hop’s Folder

<div class="paragraph">

The private key file must be stored in Hop’s root folder.

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
<td>There could be ways to include the private key from other paths than the Hop root folder (e.g. defined in the connection’s <code>Options</code> tab), but this is currently still unclear.</td>
</tr>
</tbody>
</table>

</div>

<div class="imageblock">

<div class="content">

![RSA Private Key in Hop Root](../assets/images/database/databases/snowflake/private_key_file_in_hop_root.png)

</div>

</div>

</div>

<div class="sect2">

### Gather Snowflake Connection Properties

<div class="paragraph">

Let us begin with the end result and then describe where each of the properties came from and why.

</div>

<div class="paragraph">

Most connections in Hop use typical fields like `Server host name`, `Port number`, `Warehouse`, `Database name`, but since this is a more advanced connection configuration, we need to take advantage of extra JDBC parameters that we can set on the `Options` tab shown below.

</div>

<div class="imageblock">

<div class="content">

![Hop Connection - General Tab](../assets/images/database/databases/snowflake/hop-connection-general-tab.png)

</div>

</div>

<div class="paragraph">

Looking at the `Options` tab, we make use of a few keywords, **`authenticator`, `private_key_file`, `role`, `schema`,** and `user`. The parameters are from the Snowflake JDBC parameters documentation site.

</div>

<div class="paragraph">

We first tell the JDBC driver that we are going to use `snowflake_jwt` for authenticating, which means that it will expect to see some kind of private and public key.

</div>

<div class="paragraph">

In this case, the `private_key_file` parameter is used. This could for example come from a certificate from an AWS Secret Store. In this case, the certificate or key file doesn’t have to be left in the environment and are disposed of when the image goes away.  
Other variables would allow you to encode it (BASE64) etc.

</div>

<div class="imageblock">

<div class="content">

![Hop Connection - Options Tab](../assets/images/database/databases/snowflake/hop-connection-options-tab.png)

</div>

</div>

<div class="paragraph">

The URL for the Server host name can be retrieved by clicking on your name in the Snowflake console on the lower left corner, select your instance, and then there is a little link icon.  
When you paste this into Hop’s dialog box, get rid of the `HTTPS://` part as it is not required. The connections are always encrypted.

</div>

<div class="imageblock">

<div class="content">

![Finding the Snowflake Account URL](../assets/images/database/databases/snowflake/snowflake_account_url.png)

</div>

</div>

</div>

<div class="sect2">

### References

<div class="paragraph">

References consulted to produce this working configuration

</div>

<div class="paragraph">

[JDBC Configure](https://docs.snowflake.com/en/developer-guide/jdbc/jdbc-configure)

</div>

<div class="paragraph">

Snowflake Account Identifiers

</div>

<div class="paragraph">

[Admin account identifier](https://docs.snowflake.com/en/user-guide/admin-account-identifier)

</div>

<div class="paragraph">

Snowflake JDBC Connection Parameters  
(`authenticator`, `private_key_file`, `role`, `schema`, `user`)

</div>

<div class="paragraph">

[JDBC parameters](https://docs.snowflake.com/en/developer-guide/jdbc/jdbc-parameters)

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:33 +0200

</div>

</div>

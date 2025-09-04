<div id="header">

# Cloudera Impala

</div>

<div id="content">

<div class="paragraph">

You can query data on Hadoop using the low latency Impala implementation of SQL. For more information see [Apache Impala Overview](https://docs.cloudera.com/runtime/7.2.18/impala-overview/topics/impala-overview.html)

</div>

<div class="paragraph">

Impala itself has become an Apache project which you can find at the [Apache Impala Homepage](https://impala.apache.org).

</div>

<div class="paragraph">

Check the [documentation](https://docs.cloudera.com/documentation/other/connectors/impala-jdbc/latest.html) to see how you can connect to Cloudera Impala using Kerberos security. Set the required options in the Options tab of your relational database connection metadata:

</div>

<div class="ulist">

  - AllowSelfSignedCerts=1

  - AuthMech=1

  - KrbHostFQDN=`IMPALA HOSTNAME`

  - KrbRealm=`Kerberos Realm`

  - KrbServiceName=`Impala Service name`

  - SSL=1

  - principal=`Principal name`

</div>

| Option           | Info                                                                                                                                                                  |
| ---------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Type             | Relational                                                                                                                                                            |
| Driver           | Use Cloudera Impala Drivers. You can [Download](https://www.cloudera.com/downloads/connectors/impala/jdbc/2-6-35.html) the latest versions from the Cloudera website. |
| Version Included | None                                                                                                                                                                  |
| Hop Dependencies | Cloudera Impala Database Plugin                                                                                                                                       |
| Documentation    | [Documentation Link](https://docs.cloudera.com/documentation/other/connectors/impala-jdbc/latest.html)                                                                |
| JDBC Url         | jdbc:impala://hostname:port;principal=principalName                                                                                                                   |
| Driver folder    | \<Hop Installation\>/lib/jdbc                                                                                                                                         |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:17 +0200

</div>

</div>

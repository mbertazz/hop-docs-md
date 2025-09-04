<div id="header">

# Google BigQuery

</div>

<div id="content">

| Option           | Info                                                                                                         |
| ---------------- | ------------------------------------------------------------------------------------------------------------ |
| Type             | Relational                                                                                                   |
| Driver           | [Driver Link](https://cloud.google.com/bigquery/docs/reference/odbc-jdbc-drivers)                            |
| Version Included | None                                                                                                         |
| Hop Dependencies | None                                                                                                         |
| Documentation    | [Documentation Link](https://www.simba.com/products/BigQuery/doc/JDBC_InstallGuide/content/jdbc/d-intro.htm) |
| JDBC Url         | jdbc:bigquery://\[Host\]:\[Port\];ProjectId=\[Project\];OAuthType=\[AuthValue\]                              |
| Driver folder    | \<Hop Installation\>/lib/jdbc                                                                                |

<div class="paragraph">

The Simba driver is packaged as a .zip containing many jars. Only a subset of the jars included with the Driver are necessary to use Bigquery JDBC with Apache Hop. Furthermore, some of the jars may conflict with those packaged with Hop and **must** be excluded.

</div>

<div class="paragraph">

**SIMBA DRIVER JARS TO EXCLUDE (THESE JARS ARE INCLUDED IN THE SIMBA DRIVER, BUT CONFLICT WITH HOP LIBRARIES AND MUST BE EXCLUDED**

</div>

<div class="literalblock">

<div class="content">

    grpc-alts-<VERSION>.jar
    grpc-api-<VERSION>.jar
    grpc-core-<VERSION>.jar
    grpc-netty-shaded-<VERSION>.jar

</div>

</div>

<div class="paragraph">

**SIMBA DRIVER JARS TO INCLUDE** (Include only these jars for a minimal Bigquery driver install):

</div>

<div class="literalblock">

<div class="content">

    api-common-<VERSION>.jar
    gax-<VERSION>.jar
    gax-grpc-<VERSION>.jar
    google-api-services-bigquery-v2-<VERSION>.jar
    GoogleBigQueryJDBC42.jar
    google-cloud-bigquerystorage-<VERSION>.jar
    grpc-google-cloud-bigquerystorage-v1-<VERSION>.jar
    grpc-google-cloud-bigquerystorage-v1beta1-<VERSION>.jar
    grpc-google-cloud-bigquerystorage-v1beta2-<VERSION>.jar
    json-<VERSION>.jar
    proto-google-cloud-bigquerystorage-v1-<VERSION>.jar
    proto-google-cloud-bigquerystorage-v1beta1-<VERSION>.jar
    proto-google-cloud-bigquerystorage-v1beta2-<VERSION>.jar
    threetenbp-<VERSION>.jar

</div>

</div>

<div class="paragraph">

\* Tested with Hop 2.5.0 and Simba 1.3.3.1004. Not all authentication methods tested either, so this list may not be exhaustive

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:22 +0200

</div>

</div>

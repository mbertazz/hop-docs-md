<div id="header">

# Neo4j Connection

<div id="toc" class="toc">

<div id="toctitle">

Table of Contents

</div>

  - [Description](#_description)
  - [The user interface](#_the_user_interface)
  - [The Basic options](#_the_basic_options)
  - [The Protocol options](#_the_protocol_options)
  - [Neo4j Aura Cloud Service](#_neo4j_aura_cloud_service)
  - [The Advanced options](#_the_advanced_options)
      - [Connection Liveliness Check Timeout (ms)](#_connection_liveliness_check_timeout_ms)
      - [Maximum Connection Lifetime (ms)](#_maximum_connection_lifetime_ms)
      - [Maximum Pool Size](#_maximum_pool_size)
      - [Connection Acquisition Time (ms)](#_connection_acquisition_time_ms)
      - [Maximum Transaction Retry Time (ms)](#_maximum_transaction_retry_time_ms)
      - [Manual URLs](#_manual_urls)

</div>

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

Connections can be created and edited using the logo (click on it to edit), and the drop down menu (arrow down) which you can find on the right of every connection line on the various Neo4j dialogs.

</div>

<div class="paragraph">

They can also be managed with the metadata perspective in the Hop GUI.

</div>

<div class="paragraph">

Neo4j Connections are serialized as JSON in the Hop metadata folder under

</div>

<div class="paragraph">

`metadata/neo4j-connection/`

</div>

</div>

</div>

<div class="sect1">

## The user interface

<div class="sectionbody">

<div class="paragraph">

In most cases the Neo4j [driver](https://neo4j.com/docs/java-manual/current/get-started/) can figure out the protocol and security options automatically allowing you to focus on the most elementary options: server, port, username and password. As per usual we recommend that you never hardcode any settings but use environment variables which you can define in an environment configuration file. This way the same Neo4j connection can be used in multiple environments without the need to change pipelines or workflows.

</div>

</div>

</div>

<div class="sect1">

## The Basic options

<div class="sectionbody">

| Option               | Description                                                                                                                                          |
| -------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| Connection name      | The name of a connection uniquely identifying it                                                                                                     |
| Automatic?           | If you enable this option you ask the driver to automatically determine protocol options like encryption and routing.                                |
| Server or IP Address | The IP address or hostname used to reach the Neo4j server. If you have more than one server address to specify, use a comma separated list of hosts. |
| Database Name        | The database to use (defaults to neo4j). A feature available in Neo4j server 4.0 or higher.                                                          |
| Database port        | The Neo4j database port to connect to. If you leave this blank it uses the default port number: 7687.                                                |
| Username             | the Neo4j database user to log in with                                                                                                               |
| Password             | the password to use                                                                                                                                  |

</div>

</div>

<div class="sect1">

## The Protocol options

<div class="sectionbody">

| Option                          | Description                                                                                                     |
| ------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| Version 4 database?             | Enable this option to help us generate the most optimized Cypher for you.                                       |
| Browser port                    | information only. The port on which the Neo4j browser runs                                                      |
| Use routing, neo4j:// protocol? | enable this option to use the bolt+routing protocol                                                             |
| Routing policy                  | The bolt+routing policy to use                                                                                  |
| Use encryption?                 | Unless you generated and configured the correct SSL keys, disable this. Make sure to check our v4 upgrade notes |

</div>

</div>

<div class="sect1">

## Neo4j Aura Cloud Service

<div class="sectionbody">

<div class="paragraph">

To connect to an Aura version 4 or 5 database you can use the following options:

</div>

| Option               | Value                             |
| -------------------- | --------------------------------- |
| Automatic?           | Enabled                           |
| Protocol             | `neo4j+s`                         |
| Server or IP address | the provided …​.neo4j.io hostname |
| Username             | neo4j                             |
| Password             | the provided password             |

</div>

</div>

<div class="sect1">

## The Advanced options

<div class="sectionbody">

<div class="sect2">

### Connection Liveliness Check Timeout (ms)

<div class="paragraph">

Pooled connections that have been idle in the pool for longer than this timeout will be tested before they are used again, to ensure they are still live. If this option is set too low, an additional network call will be incurred when acquiring a connection, which causes a performance hit.

</div>

<div class="paragraph">

If this is set high, you may receive sessions that are backed by no longer live connections, which will lead to exceptions in your application. Assuming the database is running, these exceptions will go away if you retry acquiring sessions.

</div>

<div class="paragraph">

Hence, this parameter tunes a balance between the likelihood of your application seeing connection problems, and performance.

</div>

<div class="paragraph">

You normally should not need to tune this parameter. No connection liveliness check is done by default. Value 0 means connections will always be tested for validity and negative values mean connections will never be tested.

</div>

</div>

<div class="sect2">

### Maximum Connection Lifetime (ms)

<div class="paragraph">

Pooled connections older than this threshold will be closed and removed from the pool. Such discarding happens during connection acquisition so that new session is never backed by an old connection. Setting this option to a low value will cause a high connection churn and might result in a performance hit.

</div>

<div class="paragraph">

It is recommended to set maximum lifetime to a slightly smaller value than the one configured in network equipment (load balancer, proxy, firewall, etc. can also limit maximum connection lifetime).

</div>

<div class="paragraph">

Setting can also be used in combination with the Connection Liveness Check Timeout (ms) value. In this case, it is recommended to set liveness check to a value smaller than network equipment has and maximum lifetime to a reasonably large value to "renew" connections once in a while.

</div>

<div class="paragraph">

Default maximum connection lifetime is 1 hour. Zero and negative values result in lifetime not being checked.

</div>

</div>

<div class="sect2">

### Maximum Pool Size

<div class="paragraph">

Configure the maximum amount of connections in the connection pool towards a single database. This setting limits total amount of connections in the pool when used in direct driver, created for URI with 'bolt' scheme. It will limit amount of connections per cluster member when used with routing driver, created for URI with 'neo4j' scheme.

</div>

<div class="paragraph">

Acquisition will be attempted for at most configured timeout Connection Acquisition Timeout(ms) when limit is reached.

</div>

<div class="paragraph">

Default value is 100. Negative values are allowed and result in unlimited pool. Value of 0 is not allowed.

</div>

</div>

<div class="sect2">

### Connection Acquisition Time (ms)

<div class="paragraph">

Configure the maximum amount of time the connection acquisition will attempt to acquire a connection from the connection pool. This timeout only kicks in when all existing connections are being used and no new connections can be created because maximum connection pool size has been reached. An error is thrown when a connection can’t be acquired within the configured time.

</div>

<div class="paragraph">

The default value is 60 seconds. Negative values are allowed and result in unlimited acquisition timeout. Value of 0 is allowed and results in no timeout and immediate failure when connection is unavailable.

</div>

</div>

<div class="sect2">

### Maximum Transaction Retry Time (ms)

<div class="paragraph">

Specify the maximum time transactions are allowed to retry via session read and write transactions. These methods will retry the given unit of work on ServiceUnavailableException, SessionExpiredException and TransientException with an exponential backoff using initial delay of 1 second. Default value is 30 seconds.

</div>

</div>

<div class="sect2">

### Manual URLs

<div class="paragraph">

You can specify a list of manual connection URLs to allow you to work with any advanced, legacy, bleeding edge, …​ feature you can possibly want. See here for more information on Bolt connection URIs: <https://neo4j.com/docs/driver-manual/current/client-applications/>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:14 +0200

</div>

</div>

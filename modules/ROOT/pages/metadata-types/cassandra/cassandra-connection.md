<div id="header">

# Cassandra Connection

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

Connections can be created and edited using the logo (click on it to edit), and the drop down menu (arrow down) which you can find on the right of every connection line on the various Cassandra action or transform dialogs.

</div>

<div class="paragraph">

They can also be managed with the metadata perspective in the Hop GUI. Finally, please note that Cassandra Connections are serialized as JSON in the Hop metadata folder under

</div>

<div class="paragraph">

`metadata/cassandra-connection/`

</div>

</div>

</div>

<div class="sect1">

## The Options

<div class="sectionbody">

| Option          | Description                                                                                                                                                                                                                                                                         |
| --------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Hostname        | Specify the host name(s) for the connection to the Cassandra server                                                                                                                                                                                                                 |
| Port            | Specify the port number for the connection to the Cassandra server                                                                                                                                                                                                                  |
| Username        | Specify the username of the target keyspace and/or table authentication details                                                                                                                                                                                                     |
| Password        | Specify the password of the target keyspace and/or table authentication details                                                                                                                                                                                                     |
| Socket Timeout  | Set an optional connection timeout period, specified in milliseconds.                                                                                                                                                                                                               |
| Keyspace        | Specify the keyspace (database) name. You can use the `Select Keyspace` button to select a keyspace. You can use the `Execute CQL` button to create one. For example: `CREATE KEYSPACE IF NOT EXISTS hop WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3} ;` |
| Schema hostname | For writes only: Specify the host name for the connection to the Cassandra schema (leave blank if not different from hostname)                                                                                                                                                      |
| Schema port     | For writes only: Specify the port for the connection to the Cassandra schema (leave blank if not different from port)                                                                                                                                                               |
| Use compression | Select if you want the text of each BATCH INSERT statement compressed (with GZIP) before transmitting it to the node.                                                                                                                                                               |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:09 +0200

</div>

</div>

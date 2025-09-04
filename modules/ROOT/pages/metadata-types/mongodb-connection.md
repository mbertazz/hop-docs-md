<div id="header">

# MongoDB Connection

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

<span class="image">![MongoDB Leaf FullColor RGB](/images/icons/MongoDB_Leaf_FullColor_RGB.svg)</span>

</div>

<div class="paragraph">

Describes a MongoDB connection.

</div>

<div class="paragraph">

The MongoDB connection, specified on a project level, can be reused across multiple (instances of) a transform or other plugin types.

</div>

</div>

</div>

<div class="sect1">

## Related Plugins

<div class="sectionbody">

<div class="ulist">

  - [MongoDB Input](pipeline/transforms/mongodbinput.Jh1xRBuL99)

  - [MongoDB Output](pipeline/transforms/mongodboutput.Jh1xRBuL99)

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                               | Default   | Description                                                             |
| ------------------------------------ | --------- | ----------------------------------------------------------------------- |
| MongoDB Connection name              |           | The name to use for this connection                                     |
| Hostname                             | localhost | cluster hostname                                                        |
| Port                                 | 27017     | the port for the MongoDB Database                                       |
| Database name                        |           |                                                                         |
| Authentication database              |           |                                                                         |
| Username                             |           |                                                                         |
| Password                             |           |                                                                         |
| Authentication mechanism             | PLAIN     | SCRAM\_SHA1, MONGODB\_CR or PLAIN                                       |
| User Kerberos                        | false     |                                                                         |
| Connection timeout (ms)              |           |                                                                         |
| Socket timeout (ms)                  |           |                                                                         |
| Read preference                      | PRIMARY   | PRIMARY, PRIMARY\_PREFERRED, SECONDARY, SECONDARY\_PREFERRED or NEAREST |
| Use all replica set members?         | false     |                                                                         |
| Specify the read preference tag sets |           |                                                                         |
| Use an SSL socket factory?           | false     |                                                                         |
| Write concern                        |           |                                                                         |
| Replication timeout (ms)             |           |                                                                         |
| Journaled?                           | true      |                                                                         |

</div>

</div>

<div class="sect1">

## Samples (Integration Tests)

<div class="sectionbody">

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:13 +0200

</div>

</div>

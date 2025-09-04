<div id="header">

# Send Nagios passive check

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Send Nagios passive check` action sends passive checks to Nagios.

</div>

<div class="paragraph">

You can send monitoring information e.g. about start and end processes within your workflow.

</div>

<div class="paragraph">

It needs the NCSA addon installed on the Nagios server (NSCA is a Linux/Unix daemon allows you to integrate passive alerts and checks from remote machines and applications with Nagios.

</div>

<div class="paragraph">

Useful for processing security alerts, as well as redundant and distributed Nagios setups.)

</div>

<div class="paragraph">

More details and setup instructions for the Nagios NSCA addon can be found at the Nagios [Passive Checks documentation.](http://nagios.sourceforge.net/docs/3_0/passivechecks.html)

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

Option

</div>

</div>

</div>

Description

Server

Action name

The name of the workflow action.

Host Name/IP Address

Nagios server name / IP Address

Server port

Nagios server port (often 5667).

Password

The password to connect to the Nagios server NSCA (shared between the Nagios server and the client). This field can be set empty when connections without password are allowed.

Connection Timeout

Fail after the specified connection timeout in milliseconds (default 5000).

Response Timeout

Fail after the specified response timeout in milliseconds (default 10000).

Sender

Host Name/IP Address

Define your sender host name / IP Address.

Service Name

Define the service name used to log the events.

Encryption mode

<div class="content">

<div class="paragraph">

Encryption mode for the connection. The available options are

</div>

<div class="ulist">

  - None (default)

  - Triple DES

  - XOR

</div>

</div>

Level

<div class="content">

<div class="paragraph">

Log level. The available options are

</div>

<div class="ulist">

  - Unknown (default)

  - OK

  - Warning

  - Critical

</div>

</div>

Message

The message to get logged.

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:25 +0200

</div>

</div>

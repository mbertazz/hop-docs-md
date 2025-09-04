<div id="header">

# Mail Validator

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Mail validator` action checks if an email address is valid.

</div>

<div class="paragraph">

When the check passes the success hop will be followed, otherwise it will go to the fail hop

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

Action name

The name of the workflow action.

Email address

The email address, or list (separated by spaces) that have to be checked.

Settings

SMTP check?

<div class="content">

<div class="paragraph">

By default, Apache Hop will only check email address structure (using regular expression).

</div>

<div class="paragraph">

If you want to perform a SMTP check, please select this option and fill Email sender (see after).

</div>

<div class="paragraph">

Hop will extract domain name from the supplied email address (to check) and will try to get all exchangers from the domain name. Each exchanger will be queried.

</div>

</div>

Time out

In order to perform a SMTP check, Hop will open a socket on the target SMTP host. Specify here the socket time out (by default 0).

Email sender

If you select "SMTP check?" option, this field is mandatory. Hop will need sender email address to query SMTP host.

Default SMTP server

If you know which SMTP server to query, please specify it here, Hop will then query only this one.

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:16 +0200

</div>

</div>

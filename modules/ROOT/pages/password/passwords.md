<div id="header">

# Passwords and Password Plugins

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Hop provides password obfuscation as a way to prevent storing passwords as clear text.

</div>

<div class="paragraph">

Obfuscation is the deliberate act of creating source or machine code that is difficult for humans to understand\[[1](https://en.wikipedia.org/wiki/Obfuscation_\(software\))\].

</div>

<div class="paragraph">

With obfuscated passwords, Hop provides a way to store passwords in a way the makes them hard (but not impossible\!) to read. Obfuscated passwords are read by Hop and are converted to the original password as late as possible (e.g. to pass to a database when creating a connection).

</div>

</div>

</div>

<div class="sect1">

## Password obfuscation in Hop

<div class="sectionbody">

<div class="paragraph">

Obfuscate passwords are stored in Hop metadata with the 'Encrypted' prefix. The example below shows a database connection with an obfuscated password 'abcd.

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
  "rdbms": {
    "POSTGRESQL": {
      "databaseName": "DBNAME",
      "pluginId": "POSTGRESQL",
      "indexTablespace": "",
      "dataTablespace": "",
      "accessType": 0,
      "hostname": "localhost",
      "password": "Encrypted 2be98afc86aa7f2e4cb79ce10df90acde",
      "port": "5432",
      "pluginName": "PostgreSQL",
      "servername": "",
      "attributes": {},
      "username": "dbuser"
    }
  },
  "name": "DBCONN"
}
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Password obfuscation in Hop Server

<div class="sectionbody">

<div class="paragraph">

Obfuscated passwords for Hop Server can be stored in the server’s .pwd file.

</div>

<div class="paragraph">

In the example below, Hop’s default server hop.pwd contains the username 'cluster' and the default obfuscated passowrd 'cluster' , with the 'OBF:' prefix.

</div>

<div class="listingblock">

<div class="content">

``` highlight
cluster: OBF:1v8w1uh21z7k1ym71z7i1ugo1v9q,default
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Password Encryption (Obfuscation) with Hop Encrypt

<div class="sectionbody">

<div class="paragraph">

Check [Hop Encrypt](hop-tools/hop-encrypt.XEkbAIeZcG) for more information on how to obfuscate or encrypt password for use in Hop or Hop Server.

</div>

</div>

</div>

<div class="sect1">

## Password plugins

<div class="sectionbody">

<div class="paragraph">

Password handling in Hop can be implemented as plugins.

</div>

<div class="paragraph">

The following plugin implementations are available:

</div>

<div class="ulist">

  - [AES Two Way Password Encoder](password/passwords/aespasswords.XEkbAIeZcG)

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:22 +0200

</div>

</div>

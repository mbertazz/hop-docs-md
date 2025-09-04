<div id="header">

# Hop Encrypt

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Hop Encrypt is a command line tool to encrypt (obfuscate) passwords for use in XML, password or Hop metadata files.

</div>

</div>

</div>

<div class="sect1">

## Usage

<div class="sectionbody">

<div class="listingblock">

<div class="content">

``` highlight
hop-encrypt usage:

  encr <-hop|-server> <password>
  Options:
    -hop: generate an obfuscated or encrypted password
    -server : generate an obfuscated password to include in the hop-server password file 'pwd/hop.pwd'

This command line tool obfuscates or encrypts a plain text password for use in XML, password or metadata files.
Make sure to also copy the password encryption prefix to indicate the obfuscated nature of the password.
Hop will then be able to make the distinction between regular plain text passwords and obfuscated ones.
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option       | Description                                                                              |
| ------------ | ---------------------------------------------------------------------------------------- |
| \<password\> | The password to obfuscate                                                                |
| \-hop        | generate an obfuscated or encrypted password                                             |
| \-server     | generate an obfuscated password to include in the hop-server password file 'pwd/hop.pwd' |

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="sect2">

### Hop Example

<div class="paragraph">

Encrypt (obfuscate) the password `abcd` for use in Hop workflows, pipelines and other metadata files.

</div>

<div class="paragraph">

   

</div>

<div class="exampleblock">

<div class="content">

<div class="dlist">

  - Windows
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-encrypt.bat -hop abcd
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    C:\<YOUR_PATH>\hop>echo off
    ===[Environment Settings - hop-encrypt.bat]====================================
    Java identified as "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java"
    HOP_OPTIONS=-Xmx64m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=GUI
    Command to start Hop will be:
    "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\*
    -Djava.library.path=lib\core;lib\beam -Xmx64m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows
    -DHOP_PLATFORM_RUNTIME=GUI org.apache.hop.core.encryption.Encr -hop abcd
    ===[Starting HopEncrypt]=========================================================
    Encrypted 2be98afc86aa7f2e4cb79ce10df90acde
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    ./hop-encrypt.sh -hop abcd
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    Encrypted 2be98afc86aa7f2e4cb79ce10df90acde
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

</div>

<div class="sect2">

### Hop Server Example

<div class="paragraph">

Encrypt (obfuscate) the password 'abcd' for use in Hop server.

</div>

<div class="paragraph">

   

</div>

<div class="exampleblock">

<div class="content">

<div class="dlist">

  - Windows
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-encrypt.bat -server abcd
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    C:\<YOUR_PATH>\hop>echo off
    ===[Environment Settings - hop-encrypt.bat]====================================
    Java identified as "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java"
    HOP_OPTIONS=-Xmx64m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=GUI
    Command to start Hop will be:
    "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\*
    -Djava.library.path=lib\core;lib\beam -Xmx64m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows
    -DHOP_PLATFORM_RUNTIME=GUI org.apache.hop.core.encryption.Encr -server abcd
    ===[Starting HopEncrypt]=========================================================
    OBF:1s3g1s3i1s3k1s3m
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    ./hop-encrypt.sh -server abcd
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    OBF:1s3g1s3i1s3k1s3m
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="sect1">

## Notes about using hop-encrypt on Windows

<div class="sectionbody">

<div class="paragraph">

When using the `hop-encrypt` tool on Windows, you may need to be aware about some characters that for Windows command line are considered as reserved characters and must be managed appropriately becuase otherwise the tool fails in encrypting your password.

</div>

<div class="paragraph">

As documented at [this page](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/cmd), on Windows, *the ampersand &, pipe |, and parentheses ( ) are special characters that must be preceded by the escape character ^ or quotation marks when you pass them as arguments*. Fort this reason when you run your hop-encrypt.bat command you should use the escape character ^ before the any of the special characters and the password’s string must be passed between double quotes as shown in the following examples:

</div>

<div class="openblock">

<div class="content">

<div class="listingblock">

<div class="content">

``` highlight
./hop-encrypt.bat -hop "hello^&world"
```

</div>

</div>

</div>

</div>

<div class="listingblock">

<div class="content">

``` highlight
./hop-encrypt.bat -server "hello^&world"
```

</div>

</div>

<div class="paragraph">

If you don’t use the escape character ^ before the special characters and you don’t put the clear text string between double quotes, the command is candidate to fail always.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:56 +0200

</div>

</div>

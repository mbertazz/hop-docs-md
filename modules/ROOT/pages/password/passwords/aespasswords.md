<div id="header">

# AES Two way password encoder

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

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
<td>The AES prefix is deprecated since version 2.11, use the AES2 prefix this prefix offers better cryptographic strength. Moving from AES to AES2 prefix requires you te re-generate the password strings</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The AES two-way password encoder plugin allows you to encrypt and decrypt passwords using a provided key string.

</div>

</div>

</div>

<div class="sect1">

## Configuration

<div class="sectionbody">

<div class="paragraph">

The configuration of this encoder is for the whole Hop environment and can as such only be done using system properties. These properties are listed below and can also be specified as system properties with hop-run:

</div>

<div class="ulist">

  - **`HOP_PASSWORD_ENCODER_PLUGIN`**: set this to the ID of this plugin: AES2

  - **`HOP_AES_ENCODER_KEY`**: Specify the key to use to encode or decode passwords

</div>

</div>

</div>

<div class="sect1">

## Noteworthy

<div class="sectionbody">

<div class="paragraph">

Please note that passwords are encoded with prefix ` AES2  ` which is AES2 plus a space. This means that it’s different from standard, Hop encoded, passwords which have prefix ` Encrypted  ` which is Encrypted plus a space. The consequence of this is that you need to encode passwords either one way or another. Mixing password encoding is not supported.

</div>

</div>

</div>

<div class="sect1">

## Best practices

<div class="sectionbody">

<div class="paragraph">

Make sure to only use variables and parameters to specify passwords. Store the passwords in an environment using the projects plugin. This way you can store the passwords in a single file specific for the given environment (development, test, production, …​).

</div>

<div class="paragraph">

Secure the passwords file. Even though passwords are encrypted it’s better to be safe than sorry. A password that can’t be read, encrypted or otherwise, can’t be seen in any way. So use appropriate file security on the file in which you eventually store the passwords. This advice is doubly true for the key.

</div>

<div class="paragraph">

You can specify the key using a variable as well.

</div>

</div>

</div>

<div class="sect1">

## Hop Encrypt

<div class="sectionbody">

<div class="paragraph">

You can test your setup by setting the variables in your environment and then by using hop-encrypt to see the output:

</div>

<div class="listingblock">

<div class="content">

``` highlight
export HOP_PASSWORD_ENCODER_PLUGIN=AES2
export HOP_AES_ENCODER_KEY=ddsfsdfsfsdf
sh hop-encrypt.sh -hop MyPassword222
AES2 696N5ATiXqU0AxdkLpN+UT67Ud5P6TMkq7OGSRc=
```

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:23 +0200

</div>

</div>

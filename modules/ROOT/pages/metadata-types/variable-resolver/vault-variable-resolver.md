<div id="header">

</div>

<div id="content">

<div class="sect1">

## Functionality

<div class="sectionbody">

<div class="paragraph">

This variable resolver can retrieve secrets from a [Hashicorp Vault](https://www.vaultproject.io/). Here are the options to use:

</div>

<div class="ulist">

  - Vault address: The base address and port of the Vault server (for example: <https://vault-server:8200>)

  - Vault token: The token to use to authenticate

  - Validate HTTPS connections?: It’s recommended to enable connection validation in production. This secures the connection with the X.509 certificate specified in one of either next option.

  - PEM file path: The name of the file (VFS) containing the X.509 certificate string

  - PEM string: The X.509 string itself in case you’re not using a file

  - Open connection timeout: The connection timeout when getting a http(s) connection in milliseconds.

  - Read connection timeout: The timeout in milliseconds when reading.

</div>

<div class="paragraph">

The variable expression you can resolve with this plugin type is (as always) in the following format:

</div>

<div class="paragraph">

`#{name:path-key:value-key}`

</div>

<div class="ulist">

  - name: the name of the variable resolver metadata element to use

  - path-key: the path to the secret in the Vault.

  - value-key: the key of the value to retrieve.

</div>

<div class="paragraph">

In case we don’t specify a `value-key`, you will give back the complete JSON string of the secret.

</div>

</div>

</div>

<div class="sect1">

## Example

<div class="sectionbody">

<div class="paragraph">

Suppose we have a secret defined in the Vault, in a KV secrets engine:

</div>

<div class="paragraph">

image:metadata-types/variable-resolver/vault-variable-resolver-server.png

</div>

<div class="paragraph">

We can define a connection called `vault` and retrieve values with expressions:

</div>

<div class="ulist">

  - `#{vault:hop/data/some-db:hostname}` : localhost

  - `#{vault:hop/data/some-db:username}` : john

  - `#{vault:hop/data/some-db}` : `{"db":"test","hostname":"localhost","password":"some-password","port":"3306","username":"john"}`

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:21 +0200

</div>

</div>

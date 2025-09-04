<div id="header">

</div>

<div id="content">

<div class="sect1">

## Functionality

<div class="sectionbody">

<div class="paragraph">

This variable resolver can retrieve secrets from Google Secret Manager.

</div>

<div class="paragraph">

Here are the options to use:

</div>

<div class="ulist">

  - Project ID: The project ID to reference.

  - Location ID: The location ID (Optional)

</div>

<div class="paragraph">

The variable expression you can resolve with this plugin type is (as always) in the following format:

</div>

<div class="paragraph">

`#{name:secret-id:value-key}`

</div>

<div class="ulist">

  - name: the name of the variable resolver metadata element to use

  - path-key: the ID of the secret to retrieve.

  - value-key: the key of the value to retrieve in case the value is JSON.

</div>

<div class="paragraph">

In case we don’t specify a `value-key`, you will give back the complete string of the secret.

</div>

</div>

</div>

<div class="sect1">

## Example

<div class="sectionbody">

<div class="paragraph">

Suppose we have a secret defined in JSON format in Secret Manager:

</div>

<div class="paragraph">

image:metadata-types/variable-resolver/gcp-secret-manager-server.png

</div>

<div class="paragraph">

We can define a connection called `google-secret` and retrieve values with expressions:

</div>

<div class="ulist">

  - `#{google-secret:json-secret:hostname}` : localhost

  - `#{google-secret:json-secret:username}` : john

  - `#{google-secret:json-secret}` : `{"db":"test","hostname":"localhost","password":"some-password","port":"3306","username":"john"}`

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:20 +0200

</div>

</div>

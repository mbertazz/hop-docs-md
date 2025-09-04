<div id="header">

# REST connection

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

<span class="image">![rest](/images/icons/rest.svg)</span>

</div>

<div class="paragraph">

A REST connection is a connection to a REST api that can be reused from transforms like the [REST client](pipeline/transforms/rest.EYSFNH9eoL).

</div>

<div class="paragraph">

The REST connection is a generic purpose metadata item. A transform or action that uses a REST connection can override its properties when required.

</div>

</div>

</div>

<div class="sect1">

## Related Plugins

<div class="sectionbody">

<div class="paragraph">

[REST client](pipeline/transforms/rest.EYSFNH9eoL)

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                    | Description                                                                                                                                                       |
| ------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Name                      | The name to be used for this REST connection                                                                                                                      |
| Base URL                  | The URL to use as the base URL for any API calls. The base URL will need to be appended from client transforms or actions that use it to make detailed API calls. |
| Test URL                  | A full URL that can be used to test this REST connection. If no test URL is specified, the base URL will be used to perform connection tests.                     |
| Authorization header name | The Authentication/Authorization header name to use for the connection.                                                                                           |
| Authorization prefix      | An (optional) prefix to use for the authentication/authorization header value (e.g. `Bearer`)                                                                     |
| Authorization value       | The Authentication/Authorization header value to use for the connection. This could be a token, an API key etc.                                                   |

<div class="paragraph">

Use the `Test` button to authenticate against the test or base URL, using the authentication/authorization header name, and (prefix + ) value.

</div>

</div>

</div>

<div class="sect1">

## Samples

<div class="sectionbody">

<div class="paragraph">

None

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:18 +0200

</div>

</div>

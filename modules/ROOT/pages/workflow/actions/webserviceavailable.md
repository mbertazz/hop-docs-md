<div id="header">

# Check Webservice Availability

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Check webservice availability` action checks if a given URL (e.g. a Webservice URL) is valid, can be connected and data can be read from.

</div>

<div class="paragraph">

If it connects within the given timeout and data can be read, it returns 'true', otherwise 'false'.

</div>

<div class="paragraph">

Further information of the failing reason can be found in the log as an error log action.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option               | Description                                                                                                                                                                      |
| -------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Action name          | The name of the workflow action.                                                                                                                                                 |
| URL                  | Specifies the URL to validate.                                                                                                                                                   |
| Connect timeout (ms) | The connect timeout in ms. The value is depending on the quality of service of this URL and experiences.                                                                         |
| Read timeout (ms)    | After connection, the workflow action tries to read data. This value gives the read timeout in ms. The value is depending on the quality of service of this URL and experiences. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:33 +0200

</div>

</div>

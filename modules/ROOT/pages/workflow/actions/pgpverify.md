<div id="header">

# Verify file signature with PGP

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Verify file signature with PGP` action can be used to verify a file [signature to ensure its authenticity](https://www.gnupg.org/gph/en/manual/x135.html).

</div>

<div class="paragraph">

GnuPG package must be installed in the runtime environment and encryption keys added to the runtime user keystore for this to function.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                 | Description                                                                                             |
| ---------------------- | ------------------------------------------------------------------------------------------------------- |
| Action name            | The name of the workflow action.                                                                        |
| GPG location           | The file path of the GnuPG executable (e.g. `/usr/bin/gpg`).                                            |
| Filename               | The signed file path.                                                                                   |
| Use detached signature | Whether or not to use a detached signature.                                                             |
| Detached signature     | Path to the detached signature file (only available when the `Use detached signature` above is checked) |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:21 +0200

</div>

</div>

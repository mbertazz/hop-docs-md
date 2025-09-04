<div id="header">

# <span class="image image-doc-icon">![Run SSH commands transform Icon](../assets/images/transforms/icons/ssh.svg)</span> Run SSH commands

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 75%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="content">
<div class="sect1">
<h2 id="_description">Description</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The Run SSH Commands transform allows you to execute commands over the secure shell (ssh) TCP/IP protocol.</p>
</div>
<div class="paragraph">
<p>You can pass text to stdout or stderr in the commands. This information can then be picked up by the transform and passed in a field to subsequent transforms.</p>
</div>
</div>
</div>
</div></td>
<td><div class="content">
<div class="sect1">
<h2 id="_supported_engines">Supported Engines</h2>
<div class="sectionbody">
<table>
<tbody>
<tr class="odd">
<td><p>Hop Engine</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Spark</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
</tbody>
</table>
</div>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General Tab

| Option                   | Description                                                                                                   |
| ------------------------ | ------------------------------------------------------------------------------------------------------------- |
| Transform name           | Name of the transform.                                                                                        |
| Server name / IP address | You can specify the server or IP address of the machine on which you want to execute a command.               |
| Server port              | The TCP/IP port on which the ssh protocol lives on the server. The default is 22.                             |
| Timeout                  | The timeout in seconds. If set to a number larger than zero you can specify a non-default connection timeout. |
| Username                 | The username to log in with.                                                                                  |
| Password                 | The password to use.                                                                                          |
| Use key                  | Enable this option if you want to log in using a private key                                                  |
| Private key              | The private key file. The private part of a private/public RSA key-pair (see: ssh-keygen)                     |
| Passphrase               | The optional pass-phrase used when the key-pair was generated.                                                |
| Proxy host               | The proxy server host to use (name or IP address).                                                            |
| Proxy port               | The proxy server port to use.                                                                                 |
| Proxy username           | The proxy user name.                                                                                          |
| Proxy password           | The proxy password .                                                                                          |
| Test connection          | Use this button to see if the supplied credentials are sufficient for logging into the SSH server.            |

</div>

<div class="sect2">

### Settings Tab

<div class="paragraph">

**Output**

</div>

| Option                    | Description                                                                                                                                                       |
| ------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Response field name       | The name of the String output field that will contain the output of the executed command. This is the concatenation of both the stdout and stderr command output. |
| Error response field name | The name of a Boolean output field that will contain true if there was an error and false if the ssh command was executed successfully.                           |

<div class="paragraph">

**Commands**

</div>

| Option                  | Description                                                                    |
| ----------------------- | ------------------------------------------------------------------------------ |
| Get commands from field | Enable this option if you want to execute commands specified in an input field |
| Commands field name     | Select the input field that will contain the commands to execute               |
| Commands                | Field allows you to specify the commands to execute.                           |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:58 +0200

</div>

</div>

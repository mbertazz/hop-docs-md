<div id="header">

# AS/400 Command

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `AS/400 Command` action executes an AS/400 CL Command.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option          | Description                                                                                                                   |
| --------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| Action name     | The name of the workflow action.                                                                                              |
| Server          | Host name or IP address.                                                                                                      |
| User name       | The user name associated with AS/400 server account.                                                                          |
| Password        | The password associated the AS/400 server account.                                                                            |
| Proxy host      | Proxy server host name or IP address.                                                                                         |
| Proxy port      | Proxy server port number.                                                                                                     |
| Command to call | The command to run on the AS/400. If the command is not library qualified, the library list will be used to find the command. |

<div class="admonitionblock note">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Note
</div></td>
<td>This plugin tries to load the as400 library from the as400 database plugin.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:00 +0200

</div>

</div>

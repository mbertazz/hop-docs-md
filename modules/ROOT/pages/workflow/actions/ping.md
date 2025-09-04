<div id="header">

# Ping a host

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Ping a host` action can be used to ping a host using the ICMP protocol.

</div>

<div class="paragraph">

The result it true when the host is reachable, otherwise false.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Workflow action name</p></td>
<td><p>The name of the workflow action.</p></td>
</tr>
<tr class="even">
<td><p>Host name/IP</p></td>
<td><p>The name or the IP address of the host to ping</p></td>
</tr>
<tr class="odd">
<td><p>Ping type</p></td>
<td><div class="content">
<div class="paragraph">
<p>The type of ping to send to the specified hostname or IP address</p>
</div>
<div class="ulist">
<ul>
<li><p>Classic ping: This calls the ping as a command line of the operating system. The result is true when no packets (defined in the &quot;Nr. packets to send&quot; option) are lost.</p></li>
<li><p>System ping: This option uses the Java implemented methods. The result is true when the host name can be resolved and the host is reachable within the given timeout period.</p></li>
<li><p>System ping then classic ping: try both options (first the system ping and when that fails, try the classic ping)</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Timeout (ms)</p></td>
<td><p>The timeout in ms when the system ping option is used.</p></td>
</tr>
<tr class="odd">
<td><p>Nr. packets to send</p></td>
<td><p>The number of packets to send (by default 2, only used by the Classic ping option).</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:22 +0200

</div>

</div>

<div id="header">

</div>

<div id="content">

<div class="dlist">

  - HOP\_WINDOWS\_SHELL\_ENCODING  
    This variable is for Windows users. It is possible that the shell encoding (the things you see in the CMD window) does not match your system encoding. This can cause confusion when using special characters in logging and Shell Action/transform. You can determine which codepage/encoding your system is using by executing following command in Powershell `[System.Text.Encoding]::Default`. You can then use the value shown at `WindowsCodePage` and set the `HOP_WINDOWS_SHELL_ENCODING` parameter to this value.

</div>

<div class="paragraph">

To set Windows Variables go to System → System Properties → Environment Variables and define this on user or system scope

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:50 +0200

</div>

</div>

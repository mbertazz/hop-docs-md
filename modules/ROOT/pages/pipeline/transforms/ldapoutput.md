<div id="header">

# <span class="image image-doc-icon">![LDAP Output transform Icon](../assets/images/transforms/icons/ldapoutput.svg)</span> LDAP Output

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
<p>The LDAP Output transform allows you to write information like users, roles and other data to an LDAP server.</p>
</div>
<div class="paragraph">
<p>The following sections describe the available options for the LDAP Output transform.</p>
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

## General Tab

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Transform name</p></td>
<td><p>Name of the transform; this name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Host</p></td>
<td><p>Host can be the IP address of the LDAP directory server or its DNS name.</p></td>
</tr>
<tr class="odd">
<td><p>Port</p></td>
<td><p>Port number of LDAP directory server.</p></td>
</tr>
<tr class="even">
<td><p>Referral</p></td>
<td><div class="content">
<div class="paragraph">
<p>Determines how to handle referrals.</p>
</div>
<div class="ulist">
<ul>
<li><p>Ignore: Ignore referrals.</p></li>
<li><p>Follow: Automatically follow any referrals.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Derefalias</p></td>
<td><div class="content">
<div class="paragraph">
<p>Determines how aliases are dereferenced.</p>
</div>
<div class="ulist">
<ul>
<li><p>Always: Always dereference aliases.</p></li>
<li><p>Never: Never dereference aliases.</p></li>
<li><p>Finding: Dereference aliases only during name resolution.</p></li>
<li><p>Searching: Dereference aliases only after name resolution.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Protocol</p></td>
<td><div class="content">
<div class="paragraph">
<p>Determines which protocol is used.</p>
</div>
<div class="ulist">
<ul>
<li><p>LDAP</p></li>
<li><p>LDAP SSL</p></li>
<li><p>LDAP TLS</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Use authentication</p></td>
<td><p>To enable LDAP authentication.</p></td>
</tr>
<tr class="even">
<td><p>Username</p></td>
<td><p>The username to be passed during authentication.</p></td>
</tr>
<tr class="odd">
<td><p>Password</p></td>
<td><p>The password to be passed during authentication.</p></td>
</tr>
<tr class="even">
<td><p>Use certificate</p></td>
<td><p>To enable the use of a certificate.</p></td>
</tr>
<tr class="odd">
<td><p>Trust store path</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Trust store password</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Trust all certificates</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Test connection</p></td>
<td><p>Tests the configured connection to the LDAP server.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Settings

<div class="sectionbody">

| Option                       | Description                                                                   |
| ---------------------------- | ----------------------------------------------------------------------------- |
| Operation                    | Insert, Update, Upsert, Add atribute, Delete, Rename DN (distinguished name). |
| Multi valued field seperator |                                                                               |
| Fail if not exist            |                                                                               |
| Dn fieldname                 | Field which contains the distinguished name.                                  |
| Old DN fieldname             | Field which contains the old distinguished name (rename).                     |
| New DN fieldname             | Field which contains the new distinguished name (rename).                     |
| Delete RDN                   | Whether or not to delete the RDN (relative distinguished name)                |

</div>

</div>

<div class="sect1">

## Fields Tab

<div class="sectionbody">

| Option                 | Description                               |
| ---------------------- | ----------------------------------------- |
| Search base for fields | Where to start looking for fields         |
| Attributes             |                                           |
| Stream field           |                                           |
| Update                 | Whether or not to update the fields (Y/N) |
| Get fields             |                                           |
| Edit mapping           |                                           |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:33 +0200

</div>

</div>

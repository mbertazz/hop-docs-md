<div id="header">

# Virtual File Systems

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

[Apache Virtual File System (VFS)](https://commons.apache.org/proper/commons-vfs/) is part of the Apache Commons project. Through VFS, Hop users can access various files from different sources such as files on the local disk, on a HTTP(S) server, inside a ZIP archive and so through a url format.

</div>

<div class="paragraph">

Apache Hop makes fervent usage of VFS. Beyond the standard VFS file system types, we have added a number which are present in the various technology stacks supported by Hop. Like the standard file systems each has its own unique name scheme which you can use.

</div>

</div>

</div>

<div class="sect1">

## Apache Hop VFS File Systems

<div class="sectionbody">

<div class="paragraph">

The table below provides a quick overview of the VFS file systems supported by Apache Hop. Click the File system name to access more detailed file system documentation.

</div>

| File System                                                     | Description                                     | URI Format       |
| --------------------------------------------------------------- | ----------------------------------------------- | ---------------- |
| [AWS S3](vfs/aws-s3-vfs.rBYAT0shKd)                             | Provides access to Amazon S3 Buckets            | `s3://`          |
| [Azure Blob Storage](vfs/azure-blob-storage-vfs.rBYAT0shKd)     | Provides access to Azure Blob Storage           | `azure://`       |
| [Dropbox](vfs/dropbox-vfs.rBYAT0shKd)                           | Provides access to Dropbox                      | `dropbox://`     |
| [Google Cloud Storage](vfs/google-cloud-storage-vfs.rBYAT0shKd) | Provides access to Google Cloud Storage buckets | `gs://`          |
| [Google Drive](vfs/google-drive-vfs.rBYAT0shKd)                 | Provides access to Google Drive folders         | `googledrive://` |

</div>

</div>

<div class="sect1">

## Apache VFS File System Types

<div class="sectionbody">

<div class="paragraph">

The table below lists the file system types provided by the default Apache VFS implementation.

</div>

<div class="paragraph">

Check the Apache VFS [file system types](https://commons.apache.org/proper/commons-vfs/filesystems.html) for more information on the supported functionality per files system.

</div>

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 30%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>File System</th>
<th>Description</th>
<th>URI Format</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>BZIP2</p></td>
<td><p>Provides read-only access to the contents of gzip and bzip2 files.</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>gz:// compressed-file-uri</code></p>
</div>
<div class="paragraph">
<p><code>bz2:// compressed-file-uri</code></p>
</div>
<div class="paragraph">
<p>Where compressed-file-uri refers to a file of any supported type. There is no need to add a <code>!</code> part to the URI if you read the content of the file you always will get the uncompressed version.</p>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="ulist">
<ul>
<li><p><code>gz:/my/gz/file.gz</code></p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>CIFS*</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>File</p></td>
<td><p>Provides access to the files on the local physical file system.</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>[file://] absolute-path</code></p>
</div>
<div class="paragraph">
<p>Where <code>absolute-path</code> is a valid absolute file name for the local platform. UNC names are supported under Windows.</p>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="ulist">
<ul>
<li><p><code>file:///home/someuser/somedir</code></p></li>
<li><p><code>file:///C:/Documents and Settings</code></p></li>
<li><p><code>file://///somehost/someshare/afile.txt</code></p></li>
<li><p><code>/home/someuser/somedir</code></p></li>
<li><p><code>c:\program files\some dir</code></p></li>
<li><p><code>c:/program files/some dir</code></p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>FTP</p></td>
<td><p>Provides access to the files on an FTP server.</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>tp://[ username[: password]@] hostname[: port][ relative-path]</code></p>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="paragraph">
<p><code>ftp://myusername:mypassword@somehost/pub/downloads/somefile.tgz</code></p>
</div>
<div class="paragraph">
<p>By default, the path is relative to the user’s home directory. This can be changed with:</p>
</div>
<div class="paragraph">
<p><code>FtpFileSystemConfigBuilder.getInstance().setUserDirIsRoot(options, false);</code></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>FTPS</p></td>
<td><p>Provides access to the files on an FTP server over SSL.</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>ftps://[ username[: password]@] hostname[: port][ absolute-path]</code></p>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="paragraph">
<p><code>ftps://myusername:mypassword@somehost/pub/downloads/somefile.tgz</code></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>GZIP</p></td>
<td><p>see 'bzip2'</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>HDFS</p></td>
<td><p>Provides access to files in an Apache Hadoop File System (HDFS). On Windows the integration test is disabled by default, as it requires binaries.</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>hdfs:// hostname[: port][ absolute-path]</code></p>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="ulist">
<ul>
<li><p><code>hdfs://somehost:8080/downloads/some_dir</code></p></li>
<li><p><code>hdfs://somehost:8080/downloads/some_file.ext</code></p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>HTTP(S)</p></td>
<td><p>Provides access to files on an HTTP server.</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>http://[ username[: password]@] hostname[: port][ absolute-path]</code></p>
</div>
<div class="paragraph">
<p><code>https://[ username[: password]@] hostname[: port][ absolute-path]</code></p>
</div>
<div class="paragraph">
<p>File System Options</p>
</div>
<div class="ulist">
<ul>
<li><p><strong>proxyHost</strong> The proxy host to connect through.</p></li>
<li><p><strong>proxyPort</strong> The proxy port to use.</p></li>
<li><p><strong>proxyScheme</strong> The proxy scheme (http/https) to use.</p></li>
<li><p><strong>cookies</strong> An array of Cookies to add to the request.</p></li>
<li><p><strong>maxConnectionsPerHost</strong> The maximum number of connections allowed to a specific host and port. The default is 5.</p></li>
<li><p><strong>maxTotalConnections</strong> The maximum number of connections allowed to all hosts. The default is 50.</p></li>
<li><p><strong>keystoreFile</strong> The keystore file for SSL connections.</p></li>
<li><p><strong>keystorePass</strong> The keystore password.</p></li>
<li><p><strong>keystoreType</strong> The keystore type.</p></li>
</ul>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="ulist">
<ul>
<li><p><code>http://somehost:8080/downloads/somefile.jar</code></p></li>
<li><p><code>http://myusername@somehost/index.html</code></p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Jar, Zip and Tar</p></td>
<td><p>Provides read-only access to the contents of Zip, Jar and Tar files.</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>zip:// arch-file-uri[! absolute-path]</code></p>
</div>
<div class="paragraph">
<p><code>jar:// arch-file-uri[! absolute-path]</code></p>
</div>
<div class="paragraph">
<p><code>tar:// arch-file-uri[! absolute-path]</code></p>
</div>
<div class="paragraph">
<p><code>tgz:// arch-file-uri[! absolute-path]</code></p>
</div>
<div class="paragraph">
<p><code>tbz2:// arch-file-uri[! absolute-path]</code></p>
</div>
<div class="paragraph">
<p>Where <code>arch-file-uri</code> refers to a file of any supported type, including other zip files. Note: if you would like to use the ! as normal character it must be escaped using <code>%21</code>. <code>tgz</code> and <code>tbz2</code> are convenience for <code>tar:gz</code> and <code>tar:bz2</code>.</p>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="ulist">
<ul>
<li><p><code>jar:../lib/classes.jar!/META-INF/manifest.mf</code></p></li>
<li><p><code>zip:http://somehost/downloads/somefile.zip</code></p></li>
<li><p><code>jar:zip:outer.zip!/nested.jar!/somedir</code></p></li>
<li><p><code>jar:zip:outer.zip!/nested.jar!/some%21dir</code></p></li>
<li><p><code>tar:gz:http://anyhost/dir/mytar.tar.gz!/mytar.tar!/path/in/tar/README.txt</code></p></li>
<li><p><code>tgz:file://anyhost/dir/mytar.tgz!/somepath/somefile</code></p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>mime*</p></td>
<td><p>This (sandbox) filesystem can read mails and its attachements like archives. If a part in the parsed mail has no name, a dummy name will be generated. The dummy name is: _body_part_X where X will be replaced by the part number.</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>mime:// mime-file-uri[! absolute-path]</code></p>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="ulist">
<ul>
<li><p><code>mime:file:///your/path/mail/anymail.mime!/</code></p></li>
<li><p><code>mime:file:///your/path/mail/anymail.mime!/filename.pdf</code></p></li>
<li><p><code>mime:file:///your/path/mail/anymail.mime!/_body_part_0</code></p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>RAM</p></td>
<td><p>A filesystem which stores all the data in memory (one byte array for each file content).</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>ram://[ path]</code></p>
</div>
<div class="paragraph">
<p>File System Options</p>
</div>
<div class="ulist">
<ul>
<li><p><strong>maxsize</strong> Maximum filesystem size (total bytes of all file contents).</p></li>
</ul>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="ulist">
<ul>
<li><p><code>ram:///any/path/to/file.txt</code></p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>RES</p></td>
<td><p>This is not really a filesystem, it just tries to lookup a resource using javas ClassLoader.getResource() and creates a VFS url for further processing.</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>res://[ path]</code></p>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="ulist">
<ul>
<li><p><code>+res://path/in/classpath/image.png</code> might result in <code>jar:file://my/path/to/images.jar!/path/in/classpath/image.png+</code></p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>SFTP</p></td>
<td><p>Provides access to the files on an SFTP server (that is, an SSH or SCP server).</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>sftp://[ username[: password]@] hostname[: port][ relative-path]</code></p>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="ulist">
<ul>
<li><p><code>sftp://myusername:mypassword@somehost/pub/downloads/somefile.tgz</code></p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Tar</p></td>
<td><p>see 'jar'</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Temp</p></td>
<td><p>Provides access to a temporary file system, or scratchpad, that is deleted when Commons VFS shuts down. The temporary file system is backed by a local file system.</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>tmp://[ absolute-path]</code></p>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="ulist">
<ul>
<li><p><code>tmp://dir/somefile.txt</code></p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>WebDAV</p></td>
<td><p>Provides access to files on a WebDAV server through the modules <code>commons-vfs2-jackrabbit1</code> and <code>commons-vfs2-jackrabbit2</code>.</p></td>
<td><div class="content">
<div class="paragraph">
<p>URI Format</p>
</div>
<div class="paragraph">
<p><code>webdav://[ username[: password]@] hostname[: port][ absolute-path]</code></p>
</div>
<div class="paragraph">
<p>File System Options</p>
</div>
<div class="ulist">
<ul>
<li><p><strong>versioning</strong> true if versioning should be enabled</p></li>
<li><p><strong>creatorName</strong> the user name to be identified with changes to a file. If not set the user name used to authenticate will be used.</p></li>
</ul>
</div>
<div class="paragraph">
<p>Examples</p>
</div>
<div class="ulist">
<ul>
<li><p><code>webdav://somehost:8080/dist</code></p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Zip</p></td>
<td><p>see 'jar'</p></td>
<td></td>
</tr>
</tbody>
</table>

<div class="paragraph">

\*) VFS file system type in development

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:56 +0200

</div>

</div>

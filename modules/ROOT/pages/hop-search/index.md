<div id="header">

# Hop Search

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

Hop Search is a command line tool which allows you to search in your projects. It’s particularly useful if you’re working on a remote server over a ssh connection and you need to find a certain value, setting, transform, action and so on.

</div>

<div class="paragraph">

The search will match names, keys, values, descriptions and so on.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                         | Description                                                                                                                          | Default value                                                     | Available for plugin |
| ------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------- | -------------------- |
| `-j` or `--project`            | The name of the project you want to search in                                                                                        | None or the configured default project when none is specified     | Projects             |
| `-e` or `--environment`        | The environment to search in                                                                                                         | None or the configured default environment when none is specified | Projects             |
| `-h` or `--help`               | Print the help options                                                                                                               | None                                                              |                      |
| `-i` or `--case-insensitive`   | Perform a case insensitive search                                                                                                    | false                                                             |                      |
| `-x` or `--regular-expression` | The specified search string is a (Java) [regular expression](https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html) | false                                                             |                      |
| `-l` or `--print-locations`    | Print which locations are being looked at                                                                                            | false                                                             |                      |
| `-v` or `--version`            | Print version information                                                                                                            | false                                                             |                      |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:51 +0200

</div>

</div>

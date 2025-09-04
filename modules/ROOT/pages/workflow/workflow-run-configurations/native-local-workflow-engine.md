<div id="header">

# Local Workflow Engine

</div>

<div id="content">

<div class="sect1">

## Hop local workflow engine

<div class="sectionbody">

<div class="paragraph">

The local run configuration runs workflows on your local environment.

</div>

<div class="paragraph">

This page describes the options that are specific to the local workflow engine. These options extend the general [workflow run configuration options](workflow/workflow-run-configurations/workflow-run-configurations.J89QVWZpJn).

</div>

<div class="sect2">

### Options

| Option                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| -------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Make this workflow transactional | If you enable this there will always be just one connection used per database. At the end of the workflow there will be a commit or rollback (in case of error) on all named connections at the same time. Note that child pipelines and workflows are also automatically run as a transaction. Also be aware that while you **can** commit and rollback across multiple databases that this still means that you can have a successful commit on one database and a failure on another. This is not a two-phase-commit system. |
| false                            | Safe mode                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:38 +0200

</div>

</div>

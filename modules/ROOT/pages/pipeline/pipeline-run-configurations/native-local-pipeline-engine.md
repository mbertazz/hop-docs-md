<div id="header">

# Local Pipeline Engine

</div>

<div id="content">

<div class="sect1">

## Local

<div class="sectionbody">

<div class="paragraph">

The local runner runs on the local Hop engine. This is the runtime configuration you’ll use when testing pipelines on your local machine while developing.

</div>

<div class="sect2">

### Options

| Option                               | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Default |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------- |
| Row set size                         | The row set buffer size.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | 10.000  |
| Safe mode                            | Checks every row passed through your pipeline and ensure all layouts are identical. If a row does not have the same layout as the first row, an error is generated and reported.                                                                                                                                                                                                                                                                                                                                               | false   |
| Collect metrics                      | Collects metrics to monitor the performance of your pipeline.                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | false   |
| Sort transforms                      | Performs a [topological sort](https://en.wikipedia.org/wiki/Topological_sorting) of the transforms in the pipeline before execution.                                                                                                                                                                                                                                                                                                                                                                                           | false   |
| Log rows feedback                    | Enables log rows feedback, showing a log line every after processing multiple of 50.000 (default) rows.                                                                                                                                                                                                                                                                                                                                                                                                                        | false   |
| Feedback size in rows                | The number of rows to return as feedback.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | 50.000  |
| Wait time buffer check (ms)          | This indicates the polling frequency when there are no rows in the input buffer of a transform, a lower value will cause higher CPU load when the pipeline has many idle transforms.                                                                                                                                                                                                                                                                                                                                           | 20      |
| Sample type while running in the GUI | Here you can specify which rows you want to see when you click on the little grid icons on the transform icons during a pipeline execution. You can choose: `None`: do not show, `First` : show the first rows, `Last` : show the last rows or `Random`: a random selection of rows (reservoir sampling)                                                                                                                                                                                                                       | Last    |
| Number of rows to sample in the GUI  | The number of rows which will be collected                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | 100     |
| Make this pipeline transactional     | If you enable this there will always be just one connection used per database. At the end of the pipeline there will be a commit or rollback (in case of error) on all named connections at the same time. Note that child pipelines or workflows are also automatically run as a transaction. Also be aware that while you **can** commit and rollback across multiple databases that this still means that you can have a successful commit on one database and a failure on another. This is not a two-phase-commit system. | false   |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:32 +0200

</div>

</div>

<div id="header">

# Apache Beam Direct Pipeline Engine

</div>

<div id="content">

<div class="sect1">

## Beam Direct

<div class="sectionbody">

<div class="paragraph">

The Direct runner can be used for local testing and development.

</div>

<div class="paragraph">

The Direct Runner executes pipelines on your machine and is designed to validate that pipelines adhere to the Apache Beam model as closely as possible. Instead of focusing on efficient pipeline execution, the Direct Runner performs additional checks to ensure that users do not rely on semantics that are not guaranteed by the model.

</div>

<div class="ulist">

  - Enforcing immutability of elements

  - Enforcing encodability of elements

  - Elements are processed in an arbitrary order at all points

  - Serialization of user functions (DoFn, CombineFn, etc.)

</div>

<div class="paragraph">

Using the Direct Runner for testing and development helps ensure that pipelines are robust across different Beam runners. In addition, debugging failed runs can be a non-trivial task when a pipeline executes on a remote cluster. Instead, it is often faster and simpler to perform local unit testing on your pipeline code. Unit testing your pipeline locally also allows you to use your preferred local debugging tools.

</div>

<div class="sect2">

### Options

| Option                                       | Description                                                                                                                                                                                                                                                                          |
| -------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Number of workers                            | The Number of threads or subprocesses is used to configure parallelism. From 2.22.0, direct\_num\_workers = 0 is supported. When direct\_num\_workers is set to 0, it will set the number of threads/subprocess to the number of cores of the machine where the pipeline is running. |
| User agent                                   | A user agent string as per [RFC2616](https://tools.ietf.org/html/rfc2616), describing the pipeline to external services.                                                                                                                                                             |
| Temp location                                | Path for temporary files.                                                                                                                                                                                                                                                            |
| Plugins to stage (, delimited)               | Comma separated list of plugins.                                                                                                                                                                                                                                                     |
| Transform plugin classes                     | List of transform plugin classes.                                                                                                                                                                                                                                                    |
| XP plugin classes                            | List of extensions point plugins.                                                                                                                                                                                                                                                    |
| Streaming Hop transforms flush interval (ms) | The amount of time after which the internal buffer is sent completely over the network and emptied.                                                                                                                                                                                  |
| Hop streaming transforms buffer size         | The internal buffer size to use.                                                                                                                                                                                                                                                     |
| Fat jar file location                        | Fat jar location.                                                                                                                                                                                                                                                                    |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:31 +0200

</div>

</div>

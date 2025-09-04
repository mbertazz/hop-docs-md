<div id="header">

# Remote Workflow Engine

</div>

<div id="content">

<div class="sect1">

## Hop Remote workflow engine

<div class="sectionbody">

<div class="paragraph">

The remote run configuration runs workflows on a remote Hop Server.

</div>

<div class="paragraph">

This run configuration requires little configuration, but has two prerequisites:

</div>

<div class="olist arabic">

1.  a running [Hop Server](hop-server/index.lBTu22u5Xj)

2.  a [Hop Server metadata definition](metadata-types/hop-server.lBTu22u5Xj) in your project, pointing to your running Hop Server.

</div>

<div class="paragraph">

This page describes the options that are specific to the remote workflow engine. These options extend the general [workflow run configuration options](workflow/workflow-run-configurations/workflow-run-configurations.lBTu22u5Xj).

</div>

<div class="sect2">

### Options

| Option                                  | Description                                                                                                                                                                                                                                           |
| --------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Hop server                              | The remote Hop server to run your workflow on.                                                                                                                                                                                                        |
| Run Configuration                       | The configuration to use on the remote Hop Server. In most configurations, this will be a local (locally on the server) runtime configuration. In rare cases you might want to run on yet another server using another remote workflow configuration. |
| Server poll delay (ms)                  | The delay in milliseconds between periodic polls to the remote server. If you don’t specify a value this defaults to 1000ms (1 second)                                                                                                                |
| Server poll interval (ms)               | The interval in milliseconds between periodic polls to the remote server. If you don’t specify a value this defaults to 2000ms (2 seconds)                                                                                                            |
| Export linked resources to server?      | Enable this option if you want to not only send the current workflow to the server but also other referenced workflows and pipelines. See below for detailed information                                                                              |
| Named resources reference source folder | This is the reference source folder for the named resources that are being used (e.g. `${PROJECT_HOME}`). See below for detailed information.                                                                                                         |
| Named resources reference target folder | This is where you expect the source folder to map to on the server (e.g. `/path/on/server`). See below for detailed information.                                                                                                                      |

</div>

<div class="sect2">

### Export linked resources to server

<div class="paragraph">

This option sends not just the parent workflow to the server but also all other referenced pipelines and workflows. For example if you have pipelines or workflows referenced in actions they will be sent to the server as well. All the used pipelines and workflows together with the XML presentation of the workflow execution configuration will be sent over to the server in the form of a ZIP archive. The server receives this archive and without unzipping runs the workflow. To make this function correctly, Hop changes the references as well as references to filenames. For example `${PROJECT_HOME}/update-dimensions.hwf` will be changed to `${Internal.Entry.Current.Folder}/update-dimensions.hwf`. As you can see Hop will try to use a relative path to the parent file.

</div>

<div class="paragraph">

If you have are using data files then those file names will be renamed as well. For example, you might be reading a file called `${PROJECT_HOME}/files/bigfile.csv` in a `CSV File Input` transform. During the export the referenced filename will be changed to `${DATA_PATH_1}/bigfile.csv`. For every folder that is referenced a new variable will be defined and set in the execution configuration. By default, the path set for this variable will be the same as on the executing (local) machine. On the server this might not make a lot of sense. For this reason you can specify a reference source folder like `${PROJECT_HOME}` in combination with a target folder like `/server/`. In that example variable `DATA_PATH_1` will get value `/server/files/`. This in turn allows you to transfer required files in advance or map a folder into a docker container and so on. It gives you flexibility when executing remotely while having ease of development on your client.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:39 +0200

</div>

</div>

<div id="header">

# Hop Server

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Hop Server is a lightweight server to run workflows and pipelines with the [Remote pipeline](pipeline/pipeline-run-configurations/native-remote-pipeline-engine.g9KBw176hE) or [Remote workflow](workflow/workflow-run-configurations/native-remote-workflow-engine.g9KBw176hE) run configurations.

</div>

</div>

</div>

<div class="sect1">

## Starting and Stopping Hop Server

<div class="sectionbody">

<div class="sect2">

### General Use

<div class="paragraph">

Hop Server is available as a script in your Hop installation directory.

</div>

<div class="paragraph">

Run Hop Server without any parameters to display its usage options. On Windows, this is `hop-server.bat`, on Mac and Linux, run `./hop-server.sh`.

</div>

<div class="paragraph">

   

</div>

Usage

<div class="content">

<div class="listingblock">

<div class="content">

``` highlight
Usage: <main class> [-k] [-gs] [-e=<environmentOption>] [-id=<id>]
                    [-j=<projectOption>] [-l=<level>] [-n=<serverName>]
                    [-p=<password>] [-ps=<pipelineName>] [-u=<username>]
                    [-ws=<workflowName>] [-s=<systemProperties>[,
                    <systemProperties>...]]... [<parameters>...]
      [<parameters>...]   One XML configuration file or a hostname and port
  -e, --environment=<environmentOption>
                          The name of the lifecycle environment to use
  -gs, --general-status
                          List the general status of the server
      -id=<id>            Specify the ID of the pipeline or workflow to query
  -j, --project=<projectOption>
                          The name of the project to use
  -l, --level=<level>     The debug level, one of NOTHING, ERROR, MINIMAL,
                            BASIC, DETAILED, DEBUG, ROWLEVEL
  -n, --server-name=<serverName>
                          The name of the server to start as defined in the
                            metadata.
  -p, --password=<password>
                          The server password.  Required for administrative
                            operations only, not for starting the server.
  -ps, --pipeline-status=<pipelineName>
                          List the status of the pipeline with this name (also
                            specify the -id option)
  -s, --system-properties=<systemProperties>[,<systemProperties>...]
                          A comma separated list of KEY=VALUE pairs
  -u, --userName=<username>
                          The server user name.  Required for administrative
                            operations only, not for starting the server.
  -ws, --workflow-status=<workflowName>
                          List the status of the workflow with this name (also
                            specify the -id option)
```

</div>

</div>

<div class="paragraph">

The available Hop Server options are:

</div>

| Short | Extended             | Description                                                                                                                  |
| ----- | -------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| \-h   | \--help              | This help text                                                                                                               |
| \-p   | \--password          | The server password. Required for administrative operations only, not for starting the server.                               |
| \-u   | \--userName          | The server password. Required for administrative operations only, not for starting the server.                               |
| \-s   | \--system-properties | Manually set system environment variables. Specify a comma separated list of KEY=VALUE pairs.                                |
| \-e   | \--environment       | The name of the project lifecycle environment to enable before startup. This is provided for by the 'projects' plugin.       |
| \-n   | \--server-name       | Name of the server metadata object to start, has to be used in combination with -e to know which environment to load it from |
| \-j   | \--project           | The name of the project to enable before startup. This is provided for by the 'projects' plugin.                             |
| \-gs  | \--general-status    | List the general status of the server.                                                                                       |
| \-ps  | \--pipeline-status   | List the status of the pipeline with this name (also specify the -id option)                                                 |
| \-ws  | \--workflow-status   | List the status of the workflow with this name (also specify the -id option)                                                 |
| \-id  |                      | Specify the ID of the pipeline or workflow to query                                                                          |

</div>

<div class="paragraph">

   

</div>

</div>

<div class="sect2">

### Start Hop Server with command line parameters

<div class="paragraph">

Hop Server can be started with hostname or ip address and port number as unnamed arguments:

</div>

<div class="paragraph">

Example: `./hop-server.sh 0.0.0.0 8080`

</div>

<div class="paragraph">

Example: `hop-server.bat 192.168.1.221 8081`

</div>

<div class="paragraph">

Example: `./hop-server.sh -e aura-gcp gs://apachehop/hop-server-config.xml`

</div>

<div class="paragraph">

Example: `hop-server.bat 127.0.0.1 8080 --userName cluster --password cluster`

</div>

<div class="listingblock">

<div class="content">

``` highlight
hop-server <Interface address> <Port> [ShutdownPort] [-h] [-p <arg>] [-s] [-u <arg>]
```

</div>

</div>

<div class="paragraph">

Example startup commands are:

</div>

<div class="paragraph">

   

</div>

<div class="exampleblock">

<div class="content">

<div class="dlist">

  - Windows
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-server.bat 127.0.0.1 8080
    ```
    
    </div>
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-server.bat 192.168.1.221 8081
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
     ./hop-server.sh 127.0.0.1 8080
    ```
    
    </div>
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
     ./hop-server.sh 192.168.1.221 8081
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Listen to all interfaces on the server:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
     ./hop-server.sh 0.0.0.0 8080--
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

</div>

<div class="sect2">

### Start Hop Server with a configuration file

<div class="paragraph">

Specify the xml configuration file as the only argument:

</div>

<div class="listingblock">

<div class="content">

``` highlight
hop-server <Configuration File>
```

</div>

</div>

<div class="paragraph">

The syntax of this configuration file is straightforward. Hostname and port are required, other configuration options are optional.

</div>

<div class="listingblock">

<div class="content">

``` highlight
<hop-server-config>

  <hop-server>
    <name>server-8181</name>
    <hostname>localhost</hostname>
    <port>8181</port>
    <shutdownPort>8182</shutdownPort>
    <webAppName></webAppName>
    <username></username>
    <password></password>

    <!-- Proxy settings -->
    <proxy_hostname></proxy_hostname>
    <proxy_port></proxy_port>
    <non_proxy_hosts></non_proxy_hosts>
    <get_properties_from_master></get_properties_from_master>
    <override_existing_properties></override_existing_properties>

    <!-- Add the following line to support querying over https -->
    <sslMode>Y</sslMode>
    <!-- Configure SSL if enabled -->
    <sslConfig>
      <keyStore>/path/to/keystore</keyStore>
      <keyStorePassword>password</keyStorePassword>
      <keyPassword>keyPassword</keyPassword>
    </sslConfig>

    <!-- the network interface to use and then override the host name -->
    <network_interface></network_interface>
  </hop-server>

  <!-- Join the web server thread and wait until it's finished.
       The default is true
  -->
  <joining>true</joining>

  <!-- The maximum number of log lines kept in memory by the server.
       The default is 0 which means: keep all lines
   -->
  <max_log_lines>0</max_log_lines>

  <!-- The time (in minutes) it takes for a log line to be cleaned up in memory.
       The default is 0 which means: never clean up log lines
  -->
  <max_log_timeout_minutes>1440</max_log_timeout_minutes>

  <!-- The time (in minutes) it takes for a pipeline or workflow execution to be removed from the server status.
       The default is 0 which means: never clean executions
  -->
  <object_timeout_minutes>1440</object_timeout_minutes>

  <!-- The folder to read metadata objects from so that web services and database connections for sequences can be found.
       The default is that no metadata is configured: remotely executed pipelines and workflows will have their own metadata.
  -->
  <metadata_folder></metadata_folder>

  <!-- Configure the Jetty server that powers Hop Server.
       Check the Jetty docs for more information: https://jetty.org/docs/jetty/12/programming-guide/server/http.html#connector
  -->
  <jetty_options>
     <!-- The number of thread dedicated to accepting incoming connections. The number of acceptors should be below or equal to the number of CPUs. -->
     <acceptors></acceptors>

     <!-- Number of connection requests that can be queued up before the operating system starts to send rejections. -->
     <acceptQueuSize></acceptQueuSize>

     <!-- This allows the server to rapidly close idle connections in order to gracefully handle high load situations. -->
     <lowResourcesMaxIdleTime></lowResourcesMaxIdleTime>
  </jetty_options>

</hop-server-config>
```

</div>

</div>

<div class="paragraph">

Example startup commands with a configuration file are:  

</div>

<div class="exampleblock">

<div class="content">

<div class="dlist">

  - Windows
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-server.bat C:\<YOUR_PATH>\hop-server-config.xml
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Or with a remote configuration file:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-server.bat http://www.example.com/hop-server-config.xml
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    You can also enable a project lifecyfle environment for the Hop server:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-server.bat -e graph-aws hop-server.xml
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
     ./hop-server.sh /foo/bar/hop-server-config.xml
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Or with a remote configuration file:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
     ./hop-server.sh http://www.example.com/hop-server-config.xml
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    You can also enable a project lifecyfle environment for the Hop server:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
     ./hop-server.sh -e graph-aws hop-server.xml
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="paragraph">

In the sample above the environment contains configuration files with variables which are loaded. With the environment the server also knows the project home folder. The server configuration file is found in the home folder automatically with the implicit relative path.

</div>

</div>

<div class="sect2">

### SSL configuration

<div class="paragraph">

To protect traffic between a Hop Server and its clients ([Hop Run](hop-run/index.g9KBw176hE), [Hop GUI](hop-gui/index.g9KBw176hE), a browser, [Hop Server command line querying](hop-server/index.g9KBw176hE#_query_a_server_from_the_command_line), …​) it’s possible to use encrypt data using a secure socket layer (SSL) connection on top of the regular web traffic with a hyper treading transfer protocol (HTTP). The combination of both is called HTTPS. To run a Hop server using this `https://` protocol you can add an `sslConfig` section in the `hop-server-config/hop-server` path.

</div>

<div class="paragraph">

The 3 main options are:

</div>

<div class="ulist">

  - `keyStore` : the path to the java keystore file, created with `keytool`

  - `keyStorePassword` : the password to the keystore file

  - `keyPassword` : the key password. If this is the same as the keystore password you can omit this option.

</div>

<div class="paragraph">

The HTTP protocol used is version 1.1 or `HTTP/1.1`. The type of keystore read is a Java Keystore or type: `JKS`. Let’s take a look at how we can generate a sample keystore:

</div>

<div class="listingblock">

<div class="content">

``` highlight
# Generate a new key
#
openssl genrsa -des3 -out hop.key

# Make a new certificate
#
openssl req -new -x509 -key hop.key -out hop.crt

# Create a PKCS12 keystore and import it into a JKS keystore
# The resulting file is: keystore
#
keytool -keystore keystore -import -alias hop -file hop.crt -trustcacerts
openssl req -new -key hop.key -out hop.csr
openssl pkcs12 -inkey hop.key -in hop.crt -export -out hop.pkcs12
keytool -importkeystore -srckeystore hop.pkcs12 -srcstoretype PKCS12 -destkeystore keystore
```

</div>

</div>

<div class="paragraph">

Here is an example of the information to include in your server XML:

</div>

<div class="listingblock">

<div class="content">

``` highlight
<hop-server-config>
<hop-server>
...

    <sslConfig>
      <keyStore>/path/to/keystore</keyStore>
      <keyStorePassword>password</keyStorePassword>
      <keyPassword>keyPassword</keyPassword>
    </sslConfig>

    <!-- Add the following line to support querying over https -->
    <sslMode>Y</sslMode>
  </hop-server>
  ...
</hop-server-config>
```

</div>

</div>

</div>

<div class="sect2">

### Enable detailed server logging

<div class="paragraph">

Hop Server provides the `-l` or `--level` option to set a logging level for workflows and pipelines that run on the server.

</div>

<div class="paragraph">

There are scenarios where you may want to see more detailed logging about the server itself. Since Hop Server runs on a Jetty server, you can increase the Jetty server logging by extending the `HOP_OPTIONS` variable near the end of `hop-server.sh` or `hop-server.bat`.

</div>

<div class="paragraph">

Original:

</div>

<div class="listingblock">

<div class="content">

``` highlight
"$_HOP_JAVA" ${HOP_OPTIONS} -Djava.library.path=$LIBPATH -classpath "${CLASSPATH}" org.apache.hop.www.HopServer "$@"
EXITCODE=$?
```

</div>

</div>

<div class="paragraph">

With DEBUG logging:

</div>

<div class="listingblock">

<div class="content">

``` highlight
"$_HOP_JAVA" ${HOP_OPTIONS} -Dorg.eclipse.jetty.util.log.class=org.eclipse.jetty.util.log.StdErrLog -Dorg.eclipse.jetty.LEVEL=DEBUG -Djava.library.path=$LIBPATH -classpath "${CLASSPATH}" org.apache.hop.www.HopServer "$@"
EXITCODE=$?
```

</div>

</div>

<div class="paragraph">

If applied correctly, your Hop Server starts producing *a lot* of logging information similar to the lines below:

</div>

<div class="listingblock">

<div class="content">

``` highlight
2022/07/15 14:18:00 - HopServer - Installing timer to purge stale objects after 1440 minutes.
2022-07-15 14:18:00.267:INFO::main: Logging initialized @3732ms to org.eclipse.jetty.util.log.StdErrLog
2022-07-15 14:18:00.276:DBUG:oejuc.ContainerLifeCycle:main: Server@3749c6ac{STOPPED}[9.4.35.v20201120] added {QueuedThreadPool[qtp1195781551]@47462daf{STOPPED,8<=0<=200,i=0,r=-1,q=0}[NO_TRY],AUTO}
2022-07-15 14:18:00.283:DBUG:oejuc.ContainerLifeCycle:main: ConstraintSecurityHandler@3f473daf{STOPPED} added {org.eclipse.jetty.util.component.DumpableCollection@390e814c,POJO}
2022-07-15 14:18:00.286:DBUG:oejuc.ContainerLifeCycle:main: HashLoginService@7bfedfb7[null] added {org.eclipse.jetty.security.DefaultIdentityService@6d3194ff,POJO}
2022-07-15 14:18:00.290:DBUG:oejuc.ContainerLifeCycle:main: HashLoginService@7bfedfb7[Hop] added {PropertyUserStore@213c812a[users.count=0,identityService=org.eclipse.jetty.security.DefaultIdentityService@25814d3c],AUTO}
2022-07-15 14:18:00.290:DBUG:oejuc.ContainerLifeCycle:main: ConstraintSecurityHandler@3f473daf{STOPPED} added {HashLoginService@7bfedfb7[Hop],AUTO}
2022-07-15 14:18:00.302:DBUG:oejsh.ContextHandlerCollection:main: ->[{o.e.j.s.ServletContextHandler@1a6df932{/,null,STOPPED},[o.e.j.s.ServletContextHandler@1a6df932{/,null,STOPPED}]}]
2022-07-15 14:18:00.303:DBUG:oejuc.ContainerLifeCycle:main: ContextHandlerCollection@74120029{STOPPED} added {o.e.j.s.ServletContextHandler@1a6df932{/,null,STOPPED},AUTO}
2022-07-15 14:18:00.304:DBUG:oeju.DecoratedObjectFactory:main: Adding Decorator: org.eclipse.jetty.util.DeprecationWarning@48cbb4c5
```

</div>

</div>

</div>

<div class="sect2">

### Start Hop Server with docker

<div class="paragraph">

It’s often very convenient to run a Hop docker container since it has all the required software automatically delivered. For a complete description of the standard Hop docker container see the [full reference](https://hop.apache.org/tech-manual/latest/docker-container.html) in the technical documentation. Here is an example of how you would start a "long-lived" docker container:

</div>

<div class="listingblock">

<div class="content">

``` highlight
docker run \
  -p 8080:8080 \
  -p 8079:8079 \
  -e HOP_SERVER_PORT=8080 \
  -e HOP_SERVER_SHUTDOWNPORT=8079 \
  -e HOP_SERVER_USER=username \
  -e HOP_SERVER_PASS=password \
  apache/hop
```

</div>

</div>

</div>

<div class="sect2">

### Stopping Hop Server

<div class="paragraph">

In a testing setup where Hop Server was started from a terminal, the process can be terminated through `CTRL-C`.

</div>

<div class="paragraph">

In headless environments, the same hop-server command used to start the server can be used to stop it: A default listener on shutdown port is configured on port number `8079` when not specifying this in the command it will be used.

</div>

<div class="exampleblock">

<div class="content">

<div class="dlist">

  - Windows
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-server.bat 127.0.0.1 8080 -k -u cluster -p cluster
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
     ./hop-server.sh 127.0.0.1 8080 -k -u cluster -p cluster
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

<div class="paragraph">

You can also trigger the command on a specific shutdown port

</div>

<div class="exampleblock">

<div class="content">

<div class="dlist">

  - Windows
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-server.bat 127.0.0.1 8080 8079 -k -u cluster -p cluster
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
     ./hop-server.sh 127.0.0.1 8080 8079 -k -u cluster -p cluster
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="sect1">

## Verify startup

<div class="sectionbody">

<div class="paragraph">

Starting a Hop Server on the local machine e.g. on port 8081 will only take 1 or 2 seconds.

</div>

<div class="paragraph">

The console output will look similar to what is listed below:

</div>

<div class="listingblock">

<div class="content">

``` highlight
2020/06/20 18:35:12 - HopServer - Installing timer to purge stale objects after 1440 minutes.
2020/06/20 18:35:12 - HopServer - Created listener for webserver @ address : localhost:8081
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Query a server from the command line

<div class="sectionbody">

<div class="paragraph">

You can query the new server with another hop-server command:

</div>

<div class="paragraph">

   

</div>

<div class="exampleblock">

<div class="content">

<div class="dlist">

  - Windows
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    hop-server.bat -gs -u cluster -p cluster 127.0.0.1 8080
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    C:\<YOUR_PATH>\hop>echo off                                                          ===[Environment Settings - hop-server.bat]====================================
    Java identified as "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java"
    HOP_OPTIONS=-Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows -DHOP_PLATFORM_RUNTIME=GUI
    -DHOP_AUTO_CREATE_CONFIG=Y
    Command to start Hop will be:
    "C:\Program Files\Microsoft\jdk-11.0.17.8-hotspot\\bin\java" -classpath lib\core\*;lib\beam\*;lib\swt\win64\*
    -Djava.library.path=lib\core;lib\beam -Xmx2048m -DHOP_AUDIT_FOLDER=.\audit -DHOP_PLATFORM_OS=Windows
    -DHOP_PLATFORM_RUNTIME=GUI -DHOP_AUTO_CREATE_CONFIG=Y org.apache.hop.www.HopServer  -gs -u cluster -p cluster localhost 8181
    ===[Starting HopServer]=========================================================
    2022/12/16 14:02:13 - HopServer - Enabling project 'default'
    Pipelines: 0 found.
    
    Workflows: 0 found.
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

  - Linux, macOS
    
    <div class="openblock">
    
    <div class="content">
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    ./hop-server.sh -gs -u cluster -p cluster 127.0.0.1 8080
    ```
    
    </div>
    
    </div>
    
    <div class="paragraph">
    
    Expected output:
    
    </div>
    
    <div class="listingblock">
    
    <div class="content">
    
    ``` highlight
    Pipelines: 0 found.
    
    Workflows: 0 found.
    ```
    
    </div>
    
    </div>
    
    </div>
    
    </div>

</div>

</div>

</div>

</div>

</div>

<div class="sect1">

## Query a pipeline from the command line

<div class="sectionbody">

<div class="listingblock">

<div class="content">

``` highlight
sh hop-server.sh -id 375c9113-b538-4559-8e98-ee02a435fbb9 -u cluster -p cluster -ps service-example -j my-project hop-server.xml
2021/10/01 13:27:04 - HopServer - Enabling project 'my-project'
  ID: 375c9113-b538-4559-8e98-ee02a435fbb9
      Name:     service-example
      Status:   Finished
      Start:    2021/10/01 13:26:45.128
      End:      2021/10/01 13:26:45.220
      Log date: 2021/10/01 13:27:04.363
      Errors:   0
      Transforms: 4 found.
        1
          Name:      a,b
          Copy:      0
          Status:    Finished
          Input:     0
          Output:    0
          Read:      1
          Written:   1
          Rejected:  0
          Updated:   0
          Errors:    0
        2
...
        3
...
        4
...
      Logging:
          2021/10/01 13:26:45 - service-example - Executing this pipeline using the Local Pipeline Engine with run configuration 'local'
          2021/10/01 13:26:45 - service-example - Execution started for pipeline [service-example]
          2021/10/01 13:26:45 - a,b.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
          2021/10/01 13:26:45 - c,d.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
          2021/10/01 13:26:45 - build JSON.0 - Finished processing (I=0, O=1, R=1, W=1, U=0, E=0)
          2021/10/01 13:26:45 - OUTPUT.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
          2021/10/01 13:26:45 - service-example - Pipeline duration : 0.092 seconds [  0.092" ]
          2021/10/01 13:26:45 - service-example - Execution finished on a local pipeline engine with run configuration 'local'
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Query a workflow from the command line

<div class="sectionbody">

<div class="listingblock">

<div class="content">

``` highlight
sh hop-server.sh -ws test-workflow -id e24b4549-edf0-4d77-987e-f103b630b4cc -u cluster -p cluster localhost 8181
  ID: e24b4549-edf0-4d77-987e-f103b630b4cc
      Name:     test-workflow
      Status:   Finished
      Log date: 2021/10/01 14:27:45.891
      Result:   true
      Errors:   0
      Logging:
          2021/10/01 14:27:45 - test-workflow - Start of workflow execution
          2021/10/01 14:27:46 - test-workflow - Starting action [sample]
          2021/10/01 14:27:46 - sample - Using run configuration [remote-8181]
          2021/10/01 14:27:46 - sample - Executing this pipeline using the Remote Pipeline Engine with run configuration 'remote-8181'
          2021/10/01 14:27:46 - sample - 2021/10/01 14:27:46 - sample - Executing this pipeline using the Local Pipeline Engine with run configuration 'local'
          2021/10/01 14:27:46 - sample - 2021/10/01 14:27:46 - sample - Execution started for pipeline [sample]
          2021/10/01 14:27:47 - sample - 2021/10/01 14:27:47 - 1M.0 - Finished processing (I=0, O=0, R=0, W=1000000, U=0, E=0)
          2021/10/01 14:27:47 - sample - 2021/10/01 14:27:47 - someString,someInt.0 - Finished processing (I=0, O=0, R=1000000, W=1000000, U=0, E=0)
          2021/10/01 14:27:47 - sample - 2021/10/01 14:27:47 - id.0 - Finished processing (I=0, O=0, R=1000000, W=1000000, U=0, E=0)
          2021/10/01 14:27:47 - sample - 2021/10/01 14:27:47 - sample - Pipeline duration : 0.977 seconds [  0.977" ]
          2021/10/01 14:27:47 - sample - 2021/10/01 14:27:47 - sample - Execution finished on a local pipeline engine with run configuration 'local'
          2021/10/01 14:27:47 - sample - Execution finished on a remote pipeline engine with run configuration 'remote-8181'
          2021/10/01 14:27:48 - test-workflow - Starting action [true]
          2021/10/01 14:27:48 - test-workflow - Starting action [false]
          2021/10/01 14:27:48 - test-workflow - Starting action [log-something]
          2021/10/01 14:27:48 - Subject - Message
          2021/10/01 14:27:48 - test-workflow - Starting action [Success]
          2021/10/01 14:27:48 - test-workflow - Finished action [Success] (result=[true])
          2021/10/01 14:27:48 - test-workflow - Finished action [log-something] (result=[true])
          2021/10/01 14:27:48 - test-workflow - Finished action [false] (result=[true])
          2021/10/01 14:27:48 - test-workflow - Finished action [true] (result=[true])
          2021/10/01 14:27:48 - test-workflow - Finished action [sample] (result=[true])
          2021/10/01 14:27:48 - test-workflow - Workflow execution finished
          2021/10/01 14:27:48 - test-workflow - Workflow duration : 2.715 seconds [  2.714" ]
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Connect to the Hop Server UI

<div class="sectionbody">

<div class="paragraph">

To connect to the previously started server, point your browser to `http://localhost:8081`.

</div>

<div class="paragraph">

You’ll be prompted for your username and password. The default is `cluster` for both the username and password. The defaults obviously should be changed in any environment that goes beyond a simple local developer setup.

</div>

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>on startup, the pipeline and workflow lists shown below will be empty. Run a workflow or pipeline through the <a href="pipeline/pipeline-run-configurations/native-remote-pipeline-engine.g9KBw176hE">Hop Remote pipeline engine</a> run configuration or through the <a href="hop-server/web-service.g9KBw176hE">REST api</a>. When pipelines or workflows are executed on the server, you’ll be able to follow the logging output either from the terminal or a log file (e.g. piped from the startup command).</td>
</tr>
</tbody>
</table>

</div>

<div class="imageblock">

<div class="content">

![Hop Server Status](/images/hop-server/hop-server-status.png)

</div>

</div>

<div class="paragraph">

For each of the options in the pipeline and workflow dialogs described below, select a pipeline and workflow from the list and select the desired option.

</div>

<div class="paragraph">

The header bar for workflows and pipelines is almost identical (from left to right).

</div>

| Run                                |                                              |
| ---------------------------------- | -------------------------------------------- |
| Stop the running pipeline/workflow |                                              |
| Cleanup pipeline                   | Cleanup a pipeline: close remote sockets etc |
| View pipeline/workflow details     |                                              |
| Remove pipeline/workflow from list |                                              |

</div>

</div>

<div class="sect1">

## Hop Server web Services

<div class="sectionbody">

<div class="paragraph">

A Hop Server can also be accessed directly through a number of web services and in combination with the [Web Service](hop-server/web-service.g9KBw176hE) and [Asynchronous Web Service](hop-server/async-web-service.g9KBw176hE) metadata types.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:52 +0200

</div>

</div>

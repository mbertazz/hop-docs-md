<div id="header">

# <span class="image">![Apache Airflow](../assets/images/how-to-guides/run-hop-in-apache-airflow/airflow-logo.svg)</span>Run workflows and pipelines in Apache Airflow

</div>

<div id="content">

<div class="sect1">

## What is Apache Airflow?

<div class="sectionbody">

<div class="paragraph">

From the [Apache Airflow website](https://airflow.apache.org/):

</div>

<div class="quoteblock">

> Airflow is a platform created by the community to programmatically author, schedule and monitor workflows.

</div>

<div class="paragraph">

Airflow uses Directed Acyclic Graphs (or [DAGs](https://airflow.apache.org/docs/apache-airflow/1.10.10/concepts.html)). A DAG is a collection of all the tasks you want to run, organized in a way that reflects their relationships and dependencies.

</div>

<div class="paragraph">

A DAG is defined in a Python script, which represents the DAGs structure (tasks and their dependencies) as code.

</div>

<div class="paragraph">

From an Apache Hop point of view, our focus is different: Apache Hop wants to enable citizen developers to be productive data engineers without the need to write code. With that in mind, we don’t need all the bells and whistles Apache Airflow provides (but don’t let that stop you from using Apache Airflow to its full potential\!).

</div>

</div>

</div>

<div class="sect1">

## Run Apache Airflow in Docker Compose

<div class="sectionbody">

<div class="paragraph">

The goal of this page is to get a basic Airflow setup running to demonstrate how Apache Airflow and Apache Hop can be used together. Check out the different [installation options](https://airflow.apache.org/docs/apache-airflow/stable/installation/index.html) if you want to build a production-ready Apache Airflow installation.

</div>

<div class="paragraph">

To keep things simple, we’ll use Docker Compose to get Apache Airflow up and running in a matter of minutes. Even though [Docker Compose](https://docs.docker.com/compose/) has been said to be on the verge of extinction for quite a while now, it still is a quick and convenient way to experiment with data platforms that would otherwise be time-consuming and difficult to set up.

</div>

<div class="paragraph">

Apache Airflow provides a [docker-compose.yaml](https://airflow.apache.org/docs/apache-airflow/2.9.1/docker-compose.yaml) file. Our goal is to run Apache Hop workflows and pipelines in Apache Airflow, so we’re not interested in the Airflow sample DAGs that come with this docker-compose file.

</div>

<div class="paragraph">

Change the **AIRFLOW\_\_CORE\_\_LOAD\_EXAMPLES** variable to "false" in the default file, and add an additional line **/var/run/docker.sock:/var/run/docker.sock** in the volumes section. All of this has already been done if you use the [the file](https://github.com/apache/hop/tree/master/docs/hop-user-manual/modules/ROOT/assets/files/how-to-guides/apache-airflow/docker-compose.yaml) in our github repository.

</div>

<div class="paragraph">

To run Apache Airflow from this docker-compose file, go the directory where you saved this file and run

</div>

<div class="listingblock">

<div class="content">

``` highlight
docker compose up
```

</div>

</div>

<div class="paragraph">

The various Apache Airflow need a couple of moments to start. Once you see a couple of lines like the ones below in the logs, we’re good to go.

</div>

<div class="listingblock">

<div class="content">

``` highlight
apache-airflow-airflow-triggerer-1  | [2024-05-07 07:50:08 +0000] [24] [INFO] Booting worker with pid: 24
apache-airflow-airflow-triggerer-1  | [2024-05-07 07:50:08 +0000] [25] [INFO] Booting worker with pid: 25
apache-airflow-airflow-scheduler-1  |   ____________       _____________
apache-airflow-airflow-scheduler-1  |  ____    |__( )_________  __/__  /________      __
apache-airflow-airflow-scheduler-1  | ____  /| |_  /__  ___/_  /_ __  /_  __ \_ | /| / /
apache-airflow-airflow-scheduler-1  | ___  ___ |  / _  /   _  __/ _  / / /_/ /_ |/ |/ /
apache-airflow-airflow-scheduler-1  |  _/_/  |_/_/  /_/    /_/    /_/  \____/____/|__/
apache-airflow-airflow-scheduler-1  | [2024-05-07T07:50:08.601+0000] {executor_loader.py:114} INFO - Loaded executor: CeleryExecutor
apache-airflow-airflow-scheduler-1  | [2024-05-07T07:50:08.652+0000] {scheduler_job_runner.py:823} INFO - Starting the scheduler
apache-airflow-airflow-scheduler-1  | [2024-05-07T07:50:08.653+0000] {scheduler_job_runner.py:830} INFO - Processing each file at most -1 times
apache-airflow-airflow-scheduler-1  | [2024-05-07T07:50:08.657+0000] {manager.py:165} INFO - Launched DagFileProcessorManager with pid: 34
apache-airflow-airflow-scheduler-1  | [2024-05-07T07:50:08.658+0000] {scheduler_job_runner.py:1576} INFO - Resetting orphaned tasks for active dag runs
apache-airflow-airflow-scheduler-1  | [2024-05-07T07:50:08.660+0000] {settings.py:60} INFO - Configured default timezone Timezone('UTC')
```

</div>

</div>

<div class="paragraph">

Go to <http://localhost:8080/home> in your browser and log on with username "airflow" and password "airflow".

</div>

<div class="paragraph">

Even though we’re not running in production, the username and password can be easily changed from the docker-compose file. Just change the values for the **AIRFLOW\_WWW\_USER\_USERNAME** and **AIRFLOW\_WWW\_USER\_PASSWORD** variables in the docker-compose file or use any of the available ways to [work with variables](https://docs.docker.com/compose/environment-variables/set-environment-variables/) in Docker compose.

</div>

<div class="paragraph">

After you logged on, Apache Airflow will show you an empty list of DAGs. We’re ready for the real fun.

</div>

<div class="paragraph">

<span class="image">![Apache Airflow - Empty server](../assets/images/how-to-guides/run-hop-in-apache-airflow/apache-airflow-empty-server.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Your first Apache Airflow and Apache Hop DAG

<div class="sectionbody">

<div class="paragraph">

We’ll use the Apache Airflow [DockerOperator](https://airflow.apache.org/docs/apache-airflow-providers-docker/stable/_api/airflow/providers/docker/operators/docker/index.html) to run Apache Hop workflows and pipelines from an embedded container in Apache Airflow.

</div>

<div class="paragraph">

Again, you don’t need to be an Apache Airflow, Docker, or Python expert to create DAGs, we’ll treat DAGs as just another text file. Since we’ll use a container to run our workflows and pipelines, the configuration in our DAG will look very similar to the environment variables you’ll pass to the [short-lived Apache Hop container](tech-manual::docker-container.T7KgrUAqmD).

</div>

<div class="paragraph">

Let’s take a closer look at a couple of things in the DAG we’ll use. This will look very familiar if you’ve even run Apache Hop workflows and pipelines in containers:

</div>

<div class="paragraph">

Import the DockerOperator into your DAG:

</div>

<div class="listingblock">

<div class="content">

``` highlight
from airflow.operators.docker_operator import DockerOperator
```

</div>

</div>

<div class="paragraph">

Let’s take a look at the end of the Apache Hop task first:

</div>

<div class="listingblock">

<div class="content">

``` highlight
mounts=[Mount(source='LOCAL_PATH_TO_PROJECT_FOLDER', target='/project', type='bind'),
        Mount(source='LOCAL_PATH_TO_ENV_FOLDER', target='/project-config', type='bind')],
```

</div>

</div>

<div class="paragraph">

The mounts section is where we’ll link your project and environment folders to the container. **LOCAL\_PATH\_TO\_PROJECT\_FOLDER** is the path to the project folder on your local file system (the folder where you keep your hop-config.json file, metadata folder and workflows and pipelines). This folder will be mounted as /project inside the container. **LOCAL\_PATH\_TO\_ENV\_FOLDER** is similar but points to the folder where your environment configuration (json) files are. This folder will be mounted as /project-config inside the container.

</div>

<div class="paragraph">

Define and configure the pipeline in your DAG task:

</div>

<div class="listingblock">

<div class="content">

``` highlight
hop = DockerOperator(
        task_id='sample-pipeline',
        # use the Apache Hop Docker image. Add your tags here in the default apache/hop: syntax
        image='apache/hop',
        api_version='auto',
        auto_remove=True,
        environment= {
            'HOP_RUN_PARAMETERS': 'INPUT_DIR=',
            'HOP_LOG_LEVEL': 'Basic',
            'HOP_FILE_PATH': '${PROJECT_HOME}/transforms/null-if-basic.hpl',
            'HOP_PROJECT_DIRECTORY': '/project',
            'HOP_PROJECT_NAME': 'hop-airflow-sample',
            'HOP_ENVIRONMENT_NAME': 'env-hop-airflow-sample.json',
            'HOP_ENVIRONMENT_CONFIG_FILE_NAME_PATHS': '/project-config/env-hop-airflow-sample.json',
            'HOP_RUN_CONFIG': 'local'
        },
```

</div>

</div>

<div class="paragraph">

The parameters to specify here are:

</div>

<div class="ulist">

  - **task\_id**: a unique id for this Airflow task in the DAG

  - **image**: we use "apache/hop" in this example, which will always grab the latest release. Add a tag to use a specific Apache Hop release, e.g. "apache/hop:2.4.0" or "apache/hop:Development" for the very latest development version

  - **environment** is where we’ll tell the DockerOperator which pipeline to run and provide additional configuration. The environment variables used here are exactly what you would pass to a standalone short-lived container without Airflow:
    
    <div class="ulist">
    
      - HOP\_RUN\_PARAMETERS: parameters to pass to the workflow or pipeline
    
      - HOP\_LOG\_LEVEL: the logging level to use with your workflow or pipeline
    
      - HOP\_FILE\_PATH: the path to the workflow or pipeline you want to use. This is the path in the container and is relative to the project folder
    
      - HOP\_PROJECT\_DIRECTORY: the folder where your project files live. In this example, this is the /project folder we mounted in the previous section.
    
      - HOP\_PROJECT\_NAME: your Apache Hop project’s name. This will only be used internally (and will show in the logs). Your project name is not necessarily the same name you used to develop the project in Hop Gui, but keeping things consistent never hurts.
    
      - HOP\_ENVIRONMENT\_NAME: similar to the project name, this is the name for the environment that will be created through hop-conf when the container starts.
    
      - HOP\_ENVIRONMENT\_CONFIG\_FILE\_NAME\_PATHS: the paths to your environment configuration files. These file paths should be relative to the /project-config folder we mounted in the previous section.
    
      - HOP\_RUN\_CONFIG: the workflow or pipeline run configuration to use. Your mileage may vary, but in the vast majority of cases, using a local run configuration will be what you need.
    
    </div>

</div>

<div class="paragraph">

That’s everything we need to specify for a first run. This DAG will look like the one below:

</div>

<div class="listingblock">

<div class="content">

``` highlight
from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from airflow.operators.docker_operator import DockerOperator
from airflow.operators.python_operator import BranchPythonOperator
from airflow.operators.dummy_operator import DummyOperator
from docker.types import Mount
default_args = {
'owner'                 : 'airflow',
'description'           : 'sample-pipeline',
'depend_on_past'        : False,
'start_date'            : datetime(2022, 1, 1),
'email_on_failure'      : False,
'email_on_retry'        : False,
'retries'               : 1,
'retry_delay'           : timedelta(minutes=5)
}

with DAG('sample-pipeline', default_args=default_args, schedule_interval=None, catchup=False, is_paused_upon_creation=False) as dag:
    start_dag = DummyOperator(
        task_id='start_dag'
        )
    end_dag = DummyOperator(
        task_id='end_dag'
        )
    hop = DockerOperator(
        task_id='sample-pipeline',
        # use the Apache Hop Docker image. Add your tags here in the default apache/hop: syntax
        image='apache/hop',
        api_version='auto',
        auto_remove=True,
        environment= {
            'HOP_RUN_PARAMETERS': 'INPUT_DIR=',
            'HOP_LOG_LEVEL': 'Basic',
            'HOP_FILE_PATH': '${PROJECT_HOME}/transforms/null-if-basic.hpl',
            'HOP_PROJECT_DIRECTORY': '/project',
            'HOP_PROJECT_NAME': 'hop-airflow-sample',
            'HOP_ENVIRONMENT_NAME': 'env-hop-airflow-sample.json',
            'HOP_ENVIRONMENT_CONFIG_FILE_NAME_PATHS': '/project-config/env-hop-airflow-sample.json',
            'HOP_RUN_CONFIG': 'local'
        },
        docker_url="unix://var/run/docker.sock",
        network_mode="bridge",
        mounts=[Mount(source='LOCAL_PATH_TO_PROJECT_FOLDER', target='/project', type='bind'), Mount(source='LOCAL_PATH_TO_ENV_FOLDER', target='/project-config', type='bind')],
        force_pull=False
        )
    start_dag >> hop >> end_dag
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Deploy and run your first DAG

<div class="sectionbody">

<div class="paragraph">

All it takes to deploy your dag is to put it in Airflow’s dags folder. Our docker-compose setup has created a dags folder in the directory where you started the compose file. Airflow will scan this folder every two minutes by default.

</div>

<div class="paragraph">

Save the DAG we just created in your dags folder as apache-hop-dag-simple.py. After a short wait, your DAG will show up in the list of dags.

</div>

<div class="paragraph">

If there are any syntax errors in your DAG, Airflow will let you know. Expand the error dialog for more details about the error, as shown in the image below. Don’t worry, you shouldn’t have any errors with the DAG we just created.

</div>

<div class="admonitionblock note">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Note
</div></td>
<td>If you’re using <code>DockerOperator</code> and need to access a database or service running on your host machine, be sure to set the host as <code>host.docker.internal</code> in the Hop connection configuration to allow the container to access the host services.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

<span class="image">![Apache Airflow - DAG error](../assets/images/how-to-guides/run-hop-in-apache-airflow/apache-airflow-dag-error.png)</span>

</div>

<div class="paragraph">

If your DAG is deployed correctly (it should), you’ll see it show up in the list of available DAGs.

</div>

<div class="paragraph">

<span class="image">![Apache Airflow - DAG available](../assets/images/how-to-guides/run-hop-in-apache-airflow/apache-airflow-dag-available.png)</span>

</div>

<div class="paragraph">

Click on the **sample-pipeline** DAG to see more details about it. From the tab list at the top of the page, select "Code" to review the DAG you just deployed, or "Graph" to see the graph representation of the DAG. This graph is extremely simple, but we’re exploring Apache Airflow, so that’s intentional.

</div>

<div class="paragraph">

<span class="image">![Apache Airflow - DAG graph](../assets/images/how-to-guides/run-hop-in-apache-airflow/apache-airflow-dag-graph.png)</span>

</div>

<div class="paragraph">

To run this DAG, click the play icon with the **Trigger DAG** option. The icon is available from multiple locations in the Apache Airflow user interface. It is almost always available in the upper right corner.

</div>

<div class="paragraph">

<span class="image">![Apache Airflow - trigger DAG](../assets/images/how-to-guides/run-hop-in-apache-airflow/apache-airflow-dag-run.png)</span>

</div>

<div class="paragraph">

Your DAG will run in the background. To follow up and check the logs, click on your DAG name to go to its details page.

</div>

<div class="paragraph">

<span class="image">![Apache Airflow - DAG logs](../assets/images/how-to-guides/run-hop-in-apache-airflow/apache-airflow-dag-logs.png)</span>

</div>

<div class="listingblock">

<div class="content">

``` highlight
2024-05-07, 13:54:39 UTC] {docker.py:391} INFO - 2023/05/07 13:54:39 - Ouput.0 - Finished processing (I=0, O=0, R=5, W=5, U=0, E=0)
[2024-05-07, 13:54:39 UTC] {docker.py:391} INFO - 2023/05/07 13:54:39 - null-if-basic - Pipeline duration : 0.45 seconds [  0.450 ]
[2024-05-07, 13:54:39 UTC] {docker.py:391} INFO - HopRun exit.
[2024-05-07, 13:54:39 UTC] {docker.py:391} INFO - 2023/05/07 13:54:39 - null-if-basic - Execution finished on a local pipeline engine with run configuration 'local'
[2024-05-07, 13:54:40 UTC] {taskinstance.py:1373} INFO - Marking task as SUCCESS. dag_id=sample-pipeline, task_id=sample-pipeline, execution_date=20230507T135409, start_date=20230507T135411, end_date=20230507T135440
[2024-05-07, 13:54:40 UTC] {local_task_job_runner.py:232} INFO - Task exited with return code 0
```

</div>

</div>

<div class="paragraph">

When you return to the Airflow home screen, your DAG will now show green circles for successful runs.

</div>

<div class="paragraph">

<span class="image">![Apache Airflow - DAG logs](../assets/images/how-to-guides/run-hop-in-apache-airflow/apache-airflow-dag-runs.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Using variables and parameters in a DAG

<div class="sectionbody">

<div class="paragraph">

Your real-life pipelines will be more complex than the extremely simple example pipeline we just ran.

</div>

<div class="paragraph">

In the basic example we just ran, we passed an environment file but didn’t use it. In a lot of cases, you’ll want to not only use variables from your environment files, you may also want to pass parameters to your pipelines and workflows. Let’s have a closer look at that.

</div>

<div class="paragraph">

Create the environment configuration below to a config folder next to your project folder. We’ll use the pipeline `pipelines/pipeline-with-parameter.hpl` from the samples project to print a pipeline parameter and a variable from the environment configuration file to the logs. Again, these examples are extremely simple, your real-life projects will be more complex, but the process remains the same.

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
  "variables" : [ {
    "name" : "ENV_VARIABLE",
    "value" : "variable value",
    "description" : ""
  } ]
}
```

</div>

</div>

<div class="paragraph">

This pipeline is again very basic. All we’ll do is accept a parameter and print it in the logs:

</div>

<div class="paragraph">

<span class="image">![Apache Airflow - run a pipeline with parameters](../assets/images/how-to-guides/run-hop-in-apache-airflow/apache-airflow-pipeline-with-parameter.png)</span>

</div>

<div class="paragraph">

We’ll create a new DAG for this example. Most of it will be the same or similar to the previous example, with some minor changes:

</div>

<div class="paragraph">

First of all, we’ll need to add one additional import at the start of the DAG:

</div>

<div class="listingblock">

<div class="content">

``` highlight
from airflow import DAG
from airflow.models import Variable
from airflow.operators.bash_operator import BashOperator
```

</div>

</div>

<div class="paragraph">

Next, we’ll need to add the parameter in this pipeline and tell Airflow to pick up the values from the run configuration we’ll pass to the DAG later on.

</div>

<div class="paragraph">

We’ll also use logging level Detailed to make sure we can see the parameters we’ll pass to the pipeline.

</div>

<div class="listingblock">

<div class="content">

``` highlight
environment= {
            'HOP_RUN_PARAMETERS': 'PRM_EXAMPLE=',
            'HOP_LOG_LEVEL': 'Detailed',
            'HOP_FILE_PATH': '${PROJECT_HOME}/hop/pipeline-with-parameter.hpl',
            'HOP_PROJECT_DIRECTORY': '/project',
            'HOP_PROJECT_NAME': 'hop-airflow-sample',
            'HOP_ENVIRONMENT_NAME': 'env-hop-airflow-sample.json',
            'HOP_ENVIRONMENT_CONFIG_FILE_NAME_PATHS': '/project-config/hop-airflow-config.json',
            'HOP_RUN_CONFIG': 'local'
        },
```

</div>

</div>

<div class="paragraph">

Also, we really need the environment configuration file this time, so make sure your mounts are correct.

</div>

<div class="listingblock">

<div class="content">

``` highlight
mounts=[Mount(source='<YOUR_PROJECT_PATH>/', target='/project', type='bind'),
                Mount(source='<YOUR_CONFIG_PATH>/config/', target='/project-config', type='bind')],
```

</div>

</div>

<div class="paragraph">

Add this new DAG to your dags folder and wait for it to appear in your Apache Airflow console.

</div>

<div class="paragraph">

To run this DAG with parameters, we’ll use the **Trigger DAG w/ config** option. We’ll specify the **prm\_example** value that Airflow will pass to the **PRM\_EXAMPLE** parameter in the pipeline. The syntax to use is shown below. Click "Trigger" when you’re done.

</div>

<div class="paragraph">

<span class="image">![Apache Airflow - two DAGs](../assets/images/how-to-guides/run-hop-in-apache-airflow/apache-airflow-two-dags.png)</span>

</div>

|                                                                                                                                                                             |                                                                                                                                                                |                                                                                                                                                             |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="image">![Apache Airflow - trigger DAG with config](../assets/images/how-to-guides/run-hop-in-apache-airflow/apache-airflow-trigger-dag-with-config.png)</span> | <span class="image">![Apache Airflow - trigger DAG with config](../assets/images/how-to-guides/run-hop-in-apache-airflow/apache-airflow-run-config.png)</span> | <span class="image">![Apache Airflow - trigger DAG with config](../assets/images/how-to-guides/run-hop-in-apache-airflow/apache-airflow-trigger.png)</span> |

<div class="paragraph">

Your DAG logs will now show the environment variable and the parameter we used in this example:

</div>

<div class="listingblock">

<div class="content">

``` highlight
[2024-05-08, 08:21:34 UTC] {docker.py:391} INFO - 2023/05/08 08:21:34 - pipeline-with-parameter - Pipeline has allocated 5 threads and 4 rowsets.
[2024-05-08, 08:21:34 UTC] {docker.py:391} INFO - 2023/05/08 08:21:34 - generate 1 row.0 - Starting to run...
[2024-05-08, 08:21:34 UTC] {docker.py:391} INFO - 2023/05/08 08:21:34 - generate 1 row.0 - Finished processing (I=0, O=0, R=0, W=1, U=0, E=0)
[2024-05-08, 08:21:34 UTC] {docker.py:391} INFO - 2023/05/08 08:21:34 - get ${PRM_EXAMPLE}.0 - field [example] has value [EXAMPLE VALUE]
[2024-05-08, 08:21:34 UTC] {docker.py:391} INFO - 2023/05/08 08:21:34 - get ${PRM_EXAMPLE}.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
[2024-05-08, 08:21:34 UTC] {docker.py:391} INFO - 2023/05/08 08:21:34 - write parameter to log.0 -
[2024-05-08, 08:21:34 UTC] {docker.py:391} INFO - 2023/05/08 08:21:34 - get ${ENV_VARIABLE}.0 - field [env_variable] has value [variable value]
[2024-05-08, 08:21:34 UTC] {docker.py:391} INFO - 2023/05/08 08:21:34 - write env_variable to log.0 -
[2024-05-08, 08:21:34 UTC] {docker.py:391} INFO - 2023/05/08 08:21:34 - write parameter to log.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
[2024-05-08, 08:21:34 UTC] {docker.py:391} INFO - 2023/05/08 08:21:34 - get ${ENV_VARIABLE}.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
[2024-05-08, 08:21:34 UTC] {docker.py:391} INFO - 2023/05/08 08:21:34 - write env_variable to log.0 - Finished processing (I=0, O=0, R=1, W=1, U=0, E=0)
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Scheduling a DAG in Apache Airflow

<div class="sectionbody">

<div class="paragraph">

So far, we’ve looked at DAG that we ran manually and ad-hoc. There are lots of [well-documented](https://airflow.apache.org/docs/apache-airflow/stable/authoring-and-scheduling/index.html) options to schedule DAGs in Apache Airflow. Since scheduling your DAGs is not really Apache Hop related, we’ll only cover this briefly here.

</div>

<div class="paragraph">

One option is to provide a cron string to schedule your DAG execution. For example, to run a specific DAG at 10:00 am every morning, we’ll change the schedule\_interval from None to a cron expression in the "with DAG" line in our DAG (line breaks added for readability):

</div>

<div class="listingblock">

<div class="content">

``` highlight
  with DAG(
      'sample-pipeline',
      default_args=default_args,
      schedule_interval='0 10 * * *',
      catchup=False,
      is_paused_upon_creation=False
    ) as dag:
```

</div>

</div>

<div class="paragraph">

For a more detailed description of the scheduling options in Apache Airflow, you may find [this Medium post](https://medium.com/@thehippieandtheboss/how-to-define-the-dag-schedule-interval-parameter-cb2d81d2a02e) helpful.

</div>

</div>

</div>

<div class="sect1">

## Summary

<div class="sectionbody">

<div class="paragraph">

We’ve covered the basics of running Apache Hop pipelines (or workflows) in Apache Airflow with the DockerOperator.

</div>

<div class="paragraph">

There are other options: you could use Airflow’s [BashOperator](https://airflow.apache.org/docs/apache-airflow/stable/howto/operator/bash.html) to use [hop-run](hop-run/index.T7KgrUAqmD) directly or the [HTTP operator](https://airflow.apache.org/docs/apache-airflow-providers-http/stable/operators.html) to run pipelines or workflows on a remote hop server.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:04 +0200

</div>

</div>

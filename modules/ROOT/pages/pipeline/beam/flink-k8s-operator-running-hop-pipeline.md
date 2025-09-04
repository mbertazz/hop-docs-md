<div id="header">

# Running a Hop pipeline using the Flink Kubernetes Operator

<div id="toc" class="toc">

<div id="toctitle">

Table of Contents

</div>

  - [Prerequisites](#_prerequisites)
  - [Flink Kubernetes Operator](#_flink_kubernetes_operator)
  - [Example setup](#_example_setup)
  - [The Flink Deployment](#_the_flink_deployment)
  - [Execution](#_execution)
  - [Monitoring and logging](#_monitoring_and_logging)
  - [Termination](#_termination)

</div>

</div>

<div id="content">

<div class="sect1">

## Prerequisites

<div class="sectionbody">

<div class="paragraph">

Please have a look at the [Getting started with Beam](pipeline/beam/getting-started-with-beam.wAUSyPrBjQ) guide to get a basic understanding of the Beam integration in Hop. These are the files we need to make use of the Flink Kubernetes Operator in the example below:

</div>

<div class="ulist">

  - A Hop fat jar : generate once for the version of Hop you want to use (use the Hop GUI `Tools` menu or use `hop-conf.sh -fj`.

  - Hop metadata export: a JSON file containing the metadata of your project (use the Hop GUI `Tools` menu or use `hop-conf.sh -xm`

  - A Hop pipeline: A .hpl file (XML) which contains the pipeline metadata

</div>

<div class="paragraph">

***Note***: Hop is capable of reading/writing files directly to [s3://](vfs/aws-s3-vfs.wAUSyPrBjQ) buckets (or [gs://](hop-gui/../vfs/google-cloud-storage-vfs.wAUSyPrBjQ) or [azure://](vfs/azure-blob-storage-vfs.wAUSyPrBjQ)).

</div>

</div>

</div>

<div class="sect1">

## Flink Kubernetes Operator

<div class="sectionbody">

<div class="paragraph">

The [Flink](http://flink.apache.org) operator wants to make it easy for you to start a new deployment of a Flink cluster on Kubernetes. To install it on your own K8s setup you can follow the [Quick Start](https://nightlies.apache.org/flink/flink-kubernetes-operator-docs-release-1.0/docs/try-flink-kubernetes-operator/quick-start/) guide.

</div>

</div>

</div>

<div class="sect1">

## Example setup

<div class="sectionbody">

<div class="paragraph">

We’ll be running our setup on Amazon Web Services' Elastic Kubernetes Service (EKS). Our Apache Hop fat jar as well as our pipeline and metadata JSON file are all stored in a folder on S3.

</div>

<div class="paragraph">

The goal in our setup is to generate sample data with an unbound (never ending) pipeline and then to send that data to a Kinesis stream:

</div>

<div class="paragraph">

<span class="image">![Sending test data to a Kinesis stream](../assets/images/beam/synthetic-data-to-kinesis.svg)</span>

</div>

</div>

</div>

<div class="sect1">

## The Flink Deployment

<div class="sectionbody">

<div class="paragraph">

In the Flink deployment file below we’ll do the following things different from a standard setup:

</div>

<div class="ulist">

  - Run with Java 11 since we’re using Apache Hop \>= 2.0.0

  - Run with Java 17 since we’re using Apache Hop \>= 2.10.0

  - Create an ephemeral volume called `hop-resources` which is mounted by all images in folder `/hop`

  - Before any Flink container starts we run an initContainer to copy our Hop files (fat jar, pipeline, metadata) to the `hop-resources` volume. Container [agiledigital/s3-artifact-fetcher](https://hub.docker.com/r/agiledigital/s3-artifact-fetcher) is used to synchronize an S3 folder with our ephemeral volume shared by the nodes/containers.

  - We specify the Hop main Beam class and pass in the pipeline and metadata JSON filenames (now found locally on the container) along with the name of the Flink Hop pipeline run configuration as arguments.

</div>

<div class="paragraph">

Consider the following file called `flink-deployment.yml`:

</div>

<div class="listingblock">

<div class="content">

``` highlight
apiVersion: flink.apache.org/v1beta1
kind: FlinkDeployment
metadata:
  namespace: default
  name: hop-flink
spec:
  image: flink:1.15-java11
  flinkVersion: v1_15
  flinkConfiguration:
    taskmanager.numberOfTaskSlots: "8"
    taskmanager.memory.jvm-metaspace.size: "512m"
  serviceAccount: flink
  podTemplate:
    apiVersion: v1
    kind: Pod
    metadata:
      name: flink-pod-template
    spec:
      serviceAccount: flink
      containers:
        #
        # Make an ephemeral volume available to the main flink container
        #
        - name: flink-main-container
          volumeMounts:
            - mountPath: /hop
              name: hop-resources
      initContainers:
        #
        # Copy a folder from s3:// to an ephemeral volume
        # Put a Hop fat jar in it as well as Hop metadata (JSON)
        # and the pipeline to run.
        #
        - name: fetcher
          image: agiledigital/s3-artifact-fetcher
          env:
            - name: SOURCE_URL
              value: "s3://<source-folder-of-hop-fat-jar-and-metadata>"
            - name: ARTIFACT_DIR
              value: "/hop/"
            - name: RUNNER_USER
              value: root
            - name: AWS_ACCESS_KEY_ID
              value: <your-aws-access-key>
            - name: AWS_SECRET_ACCESS_KEY
              value: "<your-aws-secret-key>"
            - name: AWS_DEFAULT_REGION
              value: <your-aws-region>
          volumeMounts:
            - mountPath: /hop
              name: hop-resources
      volumes:
        - name: hop-resources
          emptyDir: {}
  jobManager:
    replicas: 1
    resource:
      memory: "2g"
      cpu: 1
  taskManager:
    resource:
      memory: "2g"
      cpu: 2
  job:
    jarURI: local:///hop/<your-hop-fat-jar>
    parallelism: 4
    upgradeMode: stateless
    entryClass: org.apache.hop.beam.run.MainBeam
    args:
      - /hop/<your-hop-pipeline-hpl>
      - /hop/hop-metadata.json
      - Flink
```

</div>

</div>

<div class="paragraph">

Tip: you can provide a 4th argument (in the args list) after the run configuration name: the name of the environment configuration file to use.

</div>

<div class="paragraph">

Please note that the `parallelism` argument is mandatory in the `spec.job` section. This parameter is ignored however as our pipeline is executed using Apache Beam. The Flink runner has its own parallelism setting. You can configure this in the pipeline run configuration (called `Flink` above). In this run configuration you can specify Flink master `[auto]`.

</div>

</div>

</div>

<div class="sect1">

## Execution

<div class="sectionbody">

<div class="paragraph">

Just as is shown in the Flink operator documentation we can now create this Flink deployment by running the following command.

</div>

<div class="paragraph">

`kubectl create -f flink-deployment.yml`

</div>

<div class="paragraph">

You can then see the various pods move through their stages of initialisation:

</div>

<div class="paragraph">

`kubectl get pods`

</div>

<div class="paragraph">

Obviously the first thing that will happen is that we want a Flink job manager. Before starting we’re initializing the `hop-resources` volume by copying data from S3 with the `s3-artifact-fetcher`. This leads to an `init` state:

</div>

<div class="listingblock">

<div class="content">

``` highlight
hop-flink-85b8fc7d5f-fkxvq                  0/1     Init:0/1   0          2s
```

</div>

</div>

<div class="paragraph">

After a while we’ll start the job manager itself and we’ll end up with this pod status:

</div>

<div class="listingblock">

<div class="content">

``` highlight
hop-flink-85b8fc7d5f-fkxvq                  1/1     Running   0          45s
```

</div>

</div>

<div class="paragraph">

Once the job manager is ready the job itself will start and (in our case) a task manager will get started as well:

</div>

<div class="listingblock">

<div class="content">

``` highlight
$ kubectl get pods
NAME                                        READY   STATUS    RESTARTS   AGE
flink-kubernetes-operator-6976569cb-68c6g   1/1     Running   0          2d16h
hop-flink-85b8fc7d5f-fkxvq                  1/1     Running   0          95s
hop-flink-taskmanager-1-1                   1/1     Running   0          21s
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Monitoring and logging

<div class="sectionbody">

<div class="paragraph">

To see what’s going on we can do a port forward from the job manager:

</div>

<div class="listingblock">

<div class="content">

``` highlight
kubectl port-forward pod/hop-flink-85b8fc7d5f-fkxvq 8081
Forwarding from 127.0.0.1:8081 -> 8081
Forwarding from [::1]:8081 -> 8081
Handling connection for 8081
...
```

</div>

</div>

<div class="paragraph">

You can now browse to [localhost:8081](http://localhost:8081) to have a look at the Flink job.

</div>

<div class="paragraph">

To see the detailed logging on the job manager you can run `kubectl logs`. The logging from the Hop pipeline execution can be found in between the Flink job manager logs:

</div>

<div class="listingblock">

<div class="content">

``` highlight
kubectl logs -f pod/hop-flink-85b8fc7d5f-fkxvq
...
Argument 1 : Pipeline filename (.hpl)   : /hop/<your-hop-pipeline>.hpl
Argument 2 : Metadata filename (.json)  : /hop/hop-metadata.json
Argument 3 : Pipeline run configuration : Flink
>>>>>> Initializing Hop...
...
>>>>>> Loading pipeline metadata
>>>>>> Building Apache Beam Pipeline...
>>>>>> Found Beam Input transform plugin class loader
>>>>>> Pipeline executing starting...
2022/06/27 13:37:27 - General - Created Apache Beam pipeline with name 'synthetic-data-to-kinesis'
2022/06/27 13:37:28 - General - Handled transform (ROW GENERATOR) : oo rows
2022/06/27 13:37:28 - General - Handled generic transform (TRANSFORM) : sysdate, gets data from 1 previous transform(s), targets=0, infos=0
2022/06/27 13:37:28 - General - Handled generic transform (TRANSFORM) : Random values, gets data from 1 previous transform(s), targets=0, infos=0
2022/06/27 13:37:28 - General - Handled generic transform (TRANSFORM) : JSON output, gets data from 1 previous transform(s), targets=0, infos=0
2022/06/27 13:37:28 - General - Handled transform (KINESIS OUTPUT) : Beam Kinesis Produce, gets data from JSON output
2022/06/27 13:37:28 - General - Executing this pipeline using the Beam Pipeline Engine with run configuration 'Flink'
...
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Termination

<div class="sectionbody">

<div class="paragraph">

To shut down the job along with the cluster we can simply delete the Flink deployment:

</div>

<div class="listingblock">

<div class="content">

``` highlight
kubectl delete -f flink-deployment.yml
```

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:26 +0200

</div>

</div>

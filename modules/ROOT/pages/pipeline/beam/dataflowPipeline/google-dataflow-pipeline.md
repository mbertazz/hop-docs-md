<div id="header">

# Google Dataflow Pipeline (Template)

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Apache Hop pipelines can be scheduled and triggered in various ways. In this section we will walk through the steps needed to schedule a pipeline on Google Dataflow using [Dataflow Templates](https://cloud.google.com/dataflow/docs/concepts/dataflow-templates). Apache Hop uses a [flex template](https://cloud.google.com/dataflow/docs/guides/templates/using-flex-templates) to launch a job on Google Dataflow.

</div>

</div>

</div>

<div class="sect1">

## Preparing your environment

<div class="sectionbody">

<div class="paragraph">

Before we can add a new pipeline in the Google Cloud Platform [console](https://console.cloud.google.com/dataflow/pipelines) we need to create a Google Storage bucket that contains 3 types of files.

</div>

<div class="sect2">

### Hop pipelines

<div class="paragraph">

The pipelines you created using the Hop Gui and wish to schedule in Google Dataflow.

</div>

<div class="dlist">

  - Tip  
    You can also create a Hop project using a Google Storage bucket this way you can directly create and edit Hop pipelines in GS

</div>

</div>

<div class="sect2">

### Hop Metadata

<div class="paragraph">

For the pipeline to be able to use Hop metadata objects and other run configurations we need to generate a hop metadata.json file. This file can be generated from the GUI under Tools → Export metadata to JSON or using the export-metadata function from the [Hop conf](hop-tools/hop-conf/hop-conf.smdEl1MRLN) tool.

</div>

</div>

<div class="sect2">

### Beam Flex template metadata file:

<div class="paragraph">

The final part to get everything working is a metadata file used by Dataflow to stitch all the parts together.

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
    "defaultEnvironment": {},
    "image": "apache/hop-dataflow-template:latest",
    "metadata": {
        "description": "This template allows you to start Hop pipelines on dataflow",
        "name": "Template to start a hop pipeline",
        "parameters": [
            {
                "helpText": "Google storage location pointing to the Hop metadata file",
                "label": "Hop Metadata Location",
                "name": "hopMetadataLocation",
                "regexes": [
                    ".*"
                ]
            },
            {
                "helpText": "Google storage location pointing to the pipeline you wish to start",
                "label": "Hop Pipeline Location",
                "name": "hopPipelineLocation",
                "regexes": [
                    ".*"
                ]
            }
        ]
    },
    "sdkInfo": {
        "language": "JAVA"
    }
}
```

</div>

</div>

<div class="dlist">

  - Important  
    You can change the docker image used in the metadata file

</div>

</div>

</div>

</div>

<div class="sect1">

## Creating a Dataflow pipeline

<div class="sectionbody">

<div class="paragraph">

Now we can go back to the [console](https://console.cloud.google.com/dataflow/pipelines) and "Create data pipeline"

</div>

<div class="imageblock">

<div class="content">

![beam dataflow template](../assets/images/beam/beam-dataflow-template.png)

</div>

</div>

<div class="paragraph">

When selecting the Beam Flex template metadata file you will notice required parameters showing up. You can then add the path yo yhe Hop metadata and Hop pipeline stored in cloud storage.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:25 +0200

</div>

</div>

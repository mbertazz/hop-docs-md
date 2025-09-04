<div id="header">

# Google Technology

</div>

<div id="content">

<div class="sect1">

## Introduction

<div class="sectionbody">

<div class="paragraph">

The Google technology stack is supported in Hop through a number of plugins. We briefly touch upon them below.

</div>

</div>

</div>

<div class="sect1">

## Pipeline Transforms

<div class="sectionbody">

<div class="ulist">

  - [BigQuery Input (Beam)](pipeline/transforms/beambigqueryinput.Ezb5SMN9kQ)

  - [BigQuery Output (Beam)](pipeline/transforms/beambigqueryoutput.Ezb5SMN9kQ)

  - [Bigtable Input (Beam)](pipeline/transforms/beambigtableinput.Ezb5SMN9kQ)

  - [Bigtable Output (Beam)](pipeline/transforms/beambigtableinput.Ezb5SMN9kQ)

  - [GCP Pub/Sub Publisher (Beam)](pipeline/transforms/beamgcppublisher.Ezb5SMN9kQ)

  - [GCP Pub/Sub Subscriber (Beam)](pipeline/transforms/beamgcpsubscriber.Ezb5SMN9kQ)

</div>

</div>

</div>

<div class="sect1">

## VFS

<div class="sectionbody">

<div class="paragraph">

Apache [VFS Support](vfs.Ezb5SMN9kQ) in Hop allows you to directly read from a multitude of file systems and protocols, including Google:

</div>

<div class="ulist">

  - [Google Drive](vfs/google-drive-vfs.Ezb5SMN9kQ): read and write data directly from and to Google Drive files and folders.

  - [Google Cloud Storage](vfs/google-cloud-storage-vfs.Ezb5SMN9kQ): read and write data directly from and to files and folders in Google Cloud Storage buckets

</div>

</div>

</div>

<div class="sect1">

## Beam vs Google Cloud

<div class="sectionbody">

<div class="paragraph">

When executing your pipeline using a Beam runner which is NOT DataFlow, make sure to pass the default Google cloud project ID by running:

</div>

<div class="paragraph">

`gcloud config set project <project-id>`

</div>

<div class="paragraph">

This affects Google Cloud specific APIs like BigQuery, Pub/Sub and others.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:52 +0200

</div>

</div>

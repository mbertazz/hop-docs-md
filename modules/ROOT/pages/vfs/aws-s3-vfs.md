<div id="header">

# AWS S3

</div>

<div id="content">

<div class="sect1">

## Scheme

<div class="sectionbody">

<div class="paragraph">

The scheme you can use to access your files in Amazon Simple Storage is

</div>

<div class="paragraph">

`s3://`

</div>

</div>

</div>

<div class="sect1">

## Configuration

<div class="sectionbody">

<div class="paragraph">

The configuration of the Amazon Web Services Simple Cloud Storage can be done through a variety of ways. Most require you to have an `Access Key` and a `Secret Key`.

</div>

<div class="paragraph">

**Best practice is to create a specific IAM user for Apache Hop** so that if needed you can fine-tune the permissions (set it to read-only for example) or indeed delete the user if it’s no longer needed.

</div>

<div class="paragraph">

For a complete list see [Working with credentials](https://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/credentials.html) in the AWS documentation.

</div>

<div class="paragraph">

Below are 2 popular ways of configuring access.

</div>

<div class="sect2">

### Credentials file

<div class="paragraph">

You can create a file in your home folder in the `.aws/credentials` file which then contains content like this:

</div>

<div class="listingblock">

<div class="content">

``` highlight
[default]
aws_access_key_id = yourSecretKey
aws_secret_access_key = a-long/series-of-characters-for-your-access-key
```

</div>

</div>

</div>

<div class="sect2">

### Variables

<div class="paragraph">

You can set the following system environment variables:

</div>

<div class="ulist">

  - `AWS_ACCESS_KEY_ID` : set it to your AWS access key

  - `AWS_SECRET_ACCESS_KEY` : set it to your secret access key

</div>

</div>

</div>

</div>

<div class="sect1">

## Part size

<div class="sectionbody">

<div class="paragraph">

You can set the default part size for new files on S3 by setting the following variable:

</div>

<div class="paragraph">

`HOP_S3_VFS_PART_SIZE`

</div>

<div class="paragraph">

This needs to be set as a global Hop configuration variable (in hop-config.json). You can use the Tools/Edit config variables menu in Hop GUI or you can use the hop-conf command line tool to do so.

</div>

<div class="paragraph">

Acceptable are `5MB` as a minimum and `5GB` as a maximum value.

</div>

<div class="paragraph">

If this variable is not set, `5MB` will be taken as value and a message will be printed on the console while creating files on S3:

</div>

<div class="paragraph">

`Part size null less than minimum of 5MB, set to minimum`.

</div>

</div>

</div>

<div class="sect1">

## Usage and testing

<div class="sectionbody">

<div class="paragraph">

To test if the configuration works you can simply upload a small CSV file in an S3 bucket and then use File/Open in Hop GUI. Then you type in `s3://` as a file location and hit enter (or click the refresh button). Browse to the CSV file you uploaded and open it. If all is configured correctly you should be able to see the content in the Hop GUI.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:56 +0200

</div>

</div>

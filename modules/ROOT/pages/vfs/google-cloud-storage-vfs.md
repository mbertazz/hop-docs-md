<div id="header">

# Google Cloud Storage VFS

</div>

<div id="content">

<div class="sect1">

## Scheme

<div class="sectionbody">

<div class="paragraph">

The scheme you can use to access your files in Google Cloud Storage is

</div>

<div class="paragraph">

`gs://`

</div>

</div>

</div>

<div class="sect1">

## Configuration

<div class="sectionbody">

<div class="paragraph">

You need to generate a key file for a service account to make it work. Go to the Google Cloud console to do this. Once you have a key file for your service account, with permissions to access your GCP storage, point to it with either a system environment variable called `GOOGLE_APPLICATION_CREDENTIALS` (standard Google way of doing this) or in the Options dialog in the 'Google Cloud' tab. You can also use `hop-conf`:

</div>

<div class="listingblock">

<div class="content">

``` highlight
      -gck, --google-cloud-service-account-key-file=<serviceAccountKeyFile>
                            Configure the path to a Google Cloud service account JSON key file
```

</div>

</div>

<div class="paragraph">

Once done you will see a `googleCloud` entry in the central `hop-config.json` file:

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
  "googleCloud" : {
    "serviceAccountKeyFile" : "/path/to/your/google-key.json"
  }
}
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Usage and testing

<div class="sectionbody">

<div class="paragraph">

To test if the configuration works type use File/Open in the GUI and type in gs:// as a file location. Then hit enter (or click the refresh button). Browse to a CSV, JSON or text file you uploaded and open it. If all is configured correctly you should be able to see the content in the Hop GUI.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:58 +0200

</div>

</div>

<div id="header">

# Google Drive VFS

</div>

<div id="content">

<div class="sect1">

## Scheme

<div class="sectionbody">

<div class="paragraph">

The scheme you can use to access your files in Google Drive is

</div>

<div class="paragraph">

`googledrive://`

</div>

</div>

</div>

<div class="sect1">

## Configuration

<div class="sectionbody">

<div class="paragraph">

You need to generate a credentials file to make it work. Follow the [Google documentation](https://developers.google.com/drive/api/quickstart/java#authorize_credentials_for_a_desktop_application) to see how that is done. You also need to specify a folder in which security tokens are going to be saved. You can specify both in the Hop system configuration options. This can be done in the Hop GUI: go to the "Google Drive" tab in the Options dialog (from the Tools menu). You can also use the `hop-conf` script with the following options:

</div>

<div class="listingblock">

<div class="content">

``` highlight
      -gdc, --google-drive-credentials-file=<credentialsFile>
                            Configure the path to a Google Drive credentials JSON
                              file
      -gdt, --google-drive-tokens-folder=<tokensFolder>
                            Configure the path to a Google Drive tokens folder
```

</div>

</div>

<div class="paragraph">

Once done you will see a `googleDrive` entry in the central `hop-config.json` file:

</div>

<div class="listingblock">

<div class="content">

``` highlight
{
  "googleDrive" : {
    "credentialsFile" : "/path/to/google-drive-credentials.json",
    "tokensFolder" : "/path/to/tokens"
  }
}
```

</div>

</div>

<div class="paragraph">

When you try to run the first time you’ll see a message on the console where you executed Hop GUI or Hop Run saying something like:

</div>

<div class="listingblock">

<div class="content">

``` highlight
Please open the following address in your browser:
  https://accounts.google.com/o/oauth2/auth?access_type=offline&client_id=yourClientId&redirect_uri=http://localhost:8888/Callback&response_type=code&scope=https://www.googleapis.com/auth/drive
```

</div>

</div>

<div class="paragraph">

Open that URL in a browser and authenticate the given client ID. You’ll then get a token in the configured `tokens folder` with which you can work.

</div>

</div>

</div>

<div class="sect1">

## Usage and testing

<div class="sectionbody">

<div class="paragraph">

To test if the configuration works you can simply put a small CSV file in Google Drive and then use File/Open in Hop GUI. Then you type in googledrive:// as a file location and hit enter (or click the refresh button). Browse to the CSV file you uploaded and open it. If all is configured correctly you should be able to see the content in the Hop GUI.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:58 +0200

</div>

</div>

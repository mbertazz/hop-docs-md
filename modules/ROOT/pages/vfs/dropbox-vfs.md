<div id="header">

# Dropbox VFS

</div>

<div id="content">

<div class="sect1">

## Scheme

<div class="sectionbody">

<div class="paragraph">

The scheme you can use to access your files in Dropbox is

</div>

<div class="paragraph">

`dropbox://`

</div>

</div>

</div>

<div class="sect1">

## Configuration

<div class="sectionbody">

<div class="paragraph">

You need to set up an OAuth 2.0 access for Dropbox by using stored access tokens.

</div>

<div class="olist arabic">

1.  Create an app at your Oauth2.0 provider Dropbox: (See [Dropbox documentation](https://www.dropbox.com/developers/reference/oauth-guide))
    
    <div class="olist loweralpha">
    
    1.  Open a browser and go to <https://www.dropbox.com/developers>
    
    2.  Select My Apps and click Create app
    
    3.  Choose the API dropbox API . Choose the type of access that you need. Give a unique name for your app. Then, click Create App. Dropbox displays the App Settings panel for the app that you created
    
    4.  In the App Settings page, select Access token expiration to 'No expiration' and then click Generated Access Token
    
    5.  Note the value of the access token that you created
    
    </div>

2.  Specify this access token in the Hop system configuration:
    
    <div class="ulist">
    
      - This can be done in the Hop GUI: go to the "Dropbox" tab in the Options dialog (from the Tools menu)
    
      - You can also use the `hop-conf` script with the following options:
    
    </div>

</div>

<div class="listingblock">

<div class="content">

``` highlight
      -dbxt, --dropbox-access-token=<accessToken>
                            Configure the access token to Dropbox
```

</div>

</div>

<div class="paragraph">

Once done you will see a `dropbox` entry in the central `hop-config.json` file:

</div>

</div>

</div>

<div class="sect1">

## Usage and testing

<div class="sectionbody">

<div class="paragraph">

To test if the configuration works you can simply put a small CSV file in Dropbox and then use File/Open in Hop GUI. Then you type in dropbox:// as a file location and hit enter (or click the refresh button). Browse to the CSV file you uploaded and open it. If all is configured correctly you should be able to see the content in the Hop GUI.

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
<td>A the moment, this implementation can’t upload file larger than 150 MB.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:57 +0200

</div>

</div>

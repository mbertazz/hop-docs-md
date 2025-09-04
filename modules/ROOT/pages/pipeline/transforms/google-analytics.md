<div id="header">

# <span class="image image-doc-icon">![Google Analytics Input transform Icon](../assets/images/transforms/icons/google-analytics.svg)</span> Google Analytics Input

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 75%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="content">
<div class="sect1">
<h2 id="_description">Description</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The Google Analytics Input transform reads data from a Google Analytics 4 account, using the Google Analytics Data API.</p>
</div>
<div class="paragraph">
<p>The <a href="https://ga-dev-tools.google/ga4/query-explorer/">GA4 Query Explorer</a> provides a dedicated website to developing and testing queries with the Google Analytics API (outside of Apache Hop).</p>
</div>
</div>
</div>
</div></td>
<td><div class="content">
<div class="sect1">
<h2 id="_supported_engines">Supported Engines</h2>
<div class="sectionbody">
<table>
<tbody>
<tr class="odd">
<td><p>Hop Engine</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Spark</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
</tbody>
</table>
</div>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Configuration

<div class="sectionbody">

<div class="ulist">

  - You need a Google Analytics account with access and sufficient permissions to a GA4 property.

  - You need a Google Cloud project with a service account. The Google Analytics api needs to be enabled for this project.

</div>

<div class="paragraph">

Check the Google Cloud docs for more information on how the [create a service account](https://cloud.google.com/iam/docs/service-accounts-create) and to [set up a project](https://developers.google.com/analytics/devguides/reporting/data/v1/quickstart-client-libraries) for use with the Google Analytics Data API.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### Google Analytics Connection Settings

| Option              | Description                                                                                                           |
| ------------------- | --------------------------------------------------------------------------------------------------------------------- |
| Application name    | Enter an application name such as "Apache Hop" or leave the default.                                                  |
| OAuth service email | Your Google Developer Service Account’s Email Address (e.g. "\<random <characters@developer.gserviceaccount.com>\>"). |
| Key file            | The path to the P12 private key associated with your OAuth Service account.                                           |
| Property Id         | the GA4 property to read from                                                                                         |

</div>

<div class="sect2">

### Query Definition

| Option                 | Description                                                                                                                                                                        |
| ---------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Start date (YYYY-MM-DD | Specifies the start date associated with the query. The date must be entered in the following format: YYYY-MM-DD.                                                                  |
| End date (YYYY-MM-DD   | Specifies the end date associated with the query. The date must be entered in the following format: YYYY-MM-DD.                                                                    |
| Dimension              | Specifies the dimension fields for which you want to query. The Google Analytics Data API documentation provides you with a list of valid inputs and metrics that can be combined. |
| Metrics                | Specifies the metrics fields you want returned. At least one metric must be provided.                                                                                              |
| Sort                   | Specifies a dimension field on which to sort.                                                                                                                                      |

</div>

<div class="sect2">

### Fields

<div class="paragraph">

Click **Get Fields** to retrieve a list of possible fields based on the query you defined. Click **Preview** to preview data based on the defined query.

</div>

</div>

<div class="sect2">

### Limit Size

<div class="paragraph">

Limit the number of rows to retrieve for the specified GA4 property to a number of rows. Set the limit size to 0 to fetch all available rows.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:23 +0200

</div>

</div>

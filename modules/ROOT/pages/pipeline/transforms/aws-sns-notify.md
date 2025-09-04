<div id="header">

# <span class="image image-doc-icon">![Notify via AWS SNS](../assets/images/transforms/icons/aws-sns.svg)</span> AWS SNS Notify

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
<p>The AWS SNS Notify transform enables you to send notifications from an Apache Hop pipeline via Amazon Web Services Simple Notification Service to subscribed users.</p>
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
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Supported" width="24" /></span></p>
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

## Preconditions

<div class="sectionbody">

<div class="paragraph">

Before the first execution you need to create an IAM-Role (e.g. for usage on EC2/ECS) or an IAM-User with an AWS Key and Secret and attach the required policies for pushing notifications via SNS.

</div>

<div class="paragraph">

You also need to create one ore more subscription topics you want to push the messages to.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### AWS Settings tab

| option                    | description                                                                                                                                                                                                  |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Use AWS Credentials chain | Apache Hop tries to pick up the AWS credentials from the host environment. For more information, check the [Credentials](https://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/credentials.html) docs. |
| AWS Access Key            | your AWS Access Key (`AWS_ACCESS_KEY_ID`)                                                                                                                                                                    |
| AWS Secret Access Key     | the secret for your AWS Access Key (`AWS_SECRET_ACCESS_KEY`)                                                                                                                                                 |
| AWS Region                | the AWS-Region the service is running in.                                                                                                                                                                    |

</div>

<div class="sect2">

### Notifications

<div class="paragraph">

On the Notifications Tab you can define the behaviour when notifications will be send, the topicARN, the content and a Field for the MessageID.

</div>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Event type</p></td>
<td><div class="content">
<div class="paragraph">
<p>please choose whether a notifications should be send with:</p>
</div>
<div class="ulist">
<ul>
<li><p>the first row (recommended)</p></li>
<li><p>or for each row (be carefully not to spam your users!).</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Message ID</p></td>
<td><p>for each notification a Message-ID is retrieved from SNS. This can be written to an output field defined here.</p></td>
</tr>
<tr class="odd">
<td><p>SNS-Fields table</p></td>
<td><div class="content">
<div class="paragraph">
<p><strong>In the table only three rows</strong> are valid (all others will be ignored an refused on save/load of transformation).</p>
</div>
<div class="paragraph">
<p>All rows can be specified either from a field (<code>Field</code> column) or as a static value (<code>Static value</code> column). Toggle between field or static value with the <code>Value in Field?</code> option.</p>
</div>
<div class="ulist">
<ul>
<li><p>topicARN: the ARN for your SNS topic</p></li>
<li><p>Subject: the subject for the notification you want to send</p></li>
<li><p>Message: the message you want to send</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:43 +0200

</div>

</div>

<div id="header">

# <span class="image image-doc-icon">![AWS SQS Reader](../assets/images/transforms/icons/aws-sqs.svg)</span> AWS SQS Reader

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
<p>The AWS SQS Reader transform enables you to receive messages from Amazon Web Services Simple Queue Service within an Apache Hop pipeline.</p>
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
| SQS Queueu URL            | the URL of the SQS Queue (starting with https:// - not the ARN\!)                                                                                                                                            |

</div>

<div class="sect2">

### Output definition

<div class="paragraph">

On the Output Definition Tab you can define the output fields for the informations read from the SQS message as well as some initial settings for receiving the messages.

</div>

<div class="sect3">

#### Output Settings

| Option                       | Description                                                                                             |
| ---------------------------- | ------------------------------------------------------------------------------------------------------- |
| Delete Message(s)            | delete the message(s) be from the queue after receiving?                                                |
| Maximum messages to retrieve | finish after reaching this maximum number of messages. Zero (0) will receive all messages in the queue. |

</div>

<div class="sect3">

#### Output Settings

| Option                | Description                                                                                                              |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| MessageID             | For each message an unique ID is retrieved from SQS. This can be written to an output field defined here.                |
| MessageBody           | Complete content of the message.                                                                                         |
| ReceiptHandle         | Unique identifier for receiving a message.                                                                               |
| MD5 Hash              | MD5 hash of the message body                                                                                             |
| Message Node from SNS | if the message was sent from SNS this field will contain the content of the JSON node "Message" within the Message body. |

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:43 +0200

</div>

</div>

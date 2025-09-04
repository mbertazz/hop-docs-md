<div id="header">

# Pipeline Error Handling

</div>

<div id="content">

<div class="paragraph">

When a major failure occurs in one of the transforms, the pipeline is notified and halts all active operations. This is fine in most cases, pipeline failures are typically handled in the parent workflow (check the [create workflow](/workflow/create-workflow.Md7FxafVDC) page to learn about error hops in workflows). In some cases however, there are errors you’ll want to handle gracefully without halting the entire pipeline.

</div>

<div class="paragraph">

In these cases where you don’t want your pipeline to fail when an error occurs, Hop pipelines support error handling on transforms and hops.

</div>

<div class="paragraph">

When you create a hop from a transform that supports error handling to another transform, the Hop pipeline editor will ask you if you want to create a hop for the main output or for the error handling of your transform.

</div>

<div class="paragraph">

<span class="image">![Error handling hop option](../assets/images/error-handling-hop-option.png)</span>

</div>

<div class="paragraph">

If you choose to create an error handling transform, the hop will be shown in red instead of the default black (or white, if you’re in dark mode).

</div>

<div class="paragraph">

<span class="image">![Error handling hop](../assets/images/error-handling-hop.png)</span>

</div>

<div class="paragraph">

For each transform that supports error handling, there are a number of options you can configure. Click on the transform icon to open the context dialog and selected the 'Error handling' icon.

</div>

<div class="paragraph">

<span class="image">![Error handling context dialog](../assets/images/error-handling-context-dialog.png)</span>

</div>

<div class="paragraph">

In the error handling dialog, you can specify additional fields that will be added to your pipeline stream.

</div>

<div class="paragraph">

<span class="image">![Error handling dialog](../assets/images/error-handling-dialog.png)</span>

</div>

<div class="paragraph">

The available options are:

</div>

| option                                           | description                                                                                                                                                                                                             |
| ------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| target transform                                 | the transform that will receive the error information                                                                                                                                                                   |
| enable the error handling                        | enable error handling from this transform                                                                                                                                                                               |
| nr of errors fieldname                           | the nummer of errors that occurred in the pipeline                                                                                                                                                                      |
| error description fieldname                      | fieldname to contain the error description                                                                                                                                                                              |
| error fields fieldname                           | the pipeline field where an error occurred                                                                                                                                                                              |
| error codes fieldname                            | the error code for the error that occurred                                                                                                                                                                              |
| max nr errors allowed                            | max number of errors allowed before the pipeline fails.                                                                                                                                                                 |
| max % errors allowed (empty = 100%)              | the percentage of errors that is allowed before the pipeline fails                                                                                                                                                      |
| min nr of rows to read before doing % evaluation | number of rows to read before doing the percentage evaluation. These rows will be taken into account in the evaluation, but the evaluation will only be performed once the specified number of rows has been processed. |

<div class="paragraph">

An example output when trying to cast an invalid date string to a date is shown below.

</div>

<div class="paragraph">

<span class="image">![Error handling output](../assets/images/error-handling-output.png)</span>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:28 +0200

</div>

</div>

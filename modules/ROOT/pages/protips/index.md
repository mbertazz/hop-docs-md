<div id="header">

# Pro Tips

</div>

<div id="content">

<div class="sect1">

## Useful Variables

<div class="sectionbody">

<div class="paragraph">

A lot of Hop’s default behavior can be customized through global variables. Check [full list of variables](variables.VUevCdJ1J8) to check them all. A couple of useful and often overlooked environment variables can be set (outside of Hop):

</div>

<div class="paragraph">

Unresolved directive in tmp.8ZynrBCUCV - include::../snippets/variables/hop-audit-folder.adoc\[\]

</div>

<div class="paragraph">

Unresolved directive in tmp.8ZynrBCUCV - include::../snippets/variables/hop-config-folder.adoc\[\]

</div>

<div class="paragraph">

Unresolved directive in tmp.8ZynrBCUCV - include::../snippets/variables/hop-plugin-base-folders.adoc\[\]

</div>

<div class="paragraph">

Unresolved directive in tmp.8ZynrBCUCV - include::../snippets/variables/hop-shared-jdbc-folder.adoc\[\]

</div>

<div class="paragraph">

Unresolved directive in tmp.8ZynrBCUCV - include::../snippets/variables/hop-windows-shell-encoding.adoc\[\]

</div>

</div>

</div>

<div class="sect1">

## Keyboard Shortcuts and Mouse actions

<div class="sectionbody">

<div class="dlist">

  - CTRL-K  
    In any table view in a Hop dialog, select one or more lines and use `CTRL-K` to remove all lines but your selection

  - CTRL-SHIFT-Click  
    Hover your mouse pointer over any pipeline action in a workflow, pipeline or workflow executor transform etc and use `CTRL-SHIFT-Click` to open that item in a new tab. The same behavior can be triggered by hovering over an item and hitting the `Z` key.

  - Copy as pipeline action  
    In any pipeline or workflow, click anywhere on the canvas and choose 'Copy as pipeline action' or 'Copy as workflow action'. The selected pipeline or workflow can now be pasted (CTRL-V) as a fully configured workflow or pipeline action in any workflow.

  - Transform hover + SPACE  
    In a pipeline, hover over any transform and hit `SPACE` to show the list of output fields for the selected transform.

  - Action or transform hover + `Z`  
    Hover your mouse pointer over any pipeline action in a workflow, pipeline or workflow executor transform etc and hit the `Z` key to open that item in a new tab. The same behavior can be triggered by hovering over an item and hitting the use `CTRL-SHIFT-Click` key combination.

</div>

</div>

</div>

<div class="sect1">

## Projects and Environments

<div class="sectionbody">

<div class="ulist">

  - Projects can inherit metadata items (e.g. database connections) from parent projects. Use parent projects to reuse metadata items across multiple projects.

  - a best practice rather than a pro tip: use project variables only for variables that are valid across all environments. Variable that have different values in different environments should be created on the environment level.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:31 +0200

</div>

</div>

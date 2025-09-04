<div id="header">

</div>

<div id="content">

<div class="sect1">

## Functionality

<div class="sectionbody">

<div class="paragraph">

You can define variable resolvers to help you resolve expressions in the following format:

</div>

<div class="listingblock">

<div class="content">

``` highlight
#{name:key:element}
```

</div>

</div>

<div class="ulist">

  - `name`: The name of the metadata element to use to resolve the variable

  - `key`: The key or path to use to retrieve the value.

  - `element`: In case the value retrieved is in JSON form, we can pick one of the values out of it (OPTIONAL)

</div>

<div class="admonitionblock important">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Important
</div></td>
<td>An error in resolving a variable does not lead to a failure on the level of a pipeline or workflow.</td>
</tr>
</tbody>
</table>

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
<td>Because of usability reasons, errors are not immediately shown in the user interface. It would become impossible to type in any expression because of it. Check the log in the <a href="hop-gui/index.ORLMDqfuXn">Hop GUI</a> execution pane to see any errors thrown back by the resolvers.</td>
</tr>
</tbody>
</table>

</div>

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>If you find that typing in variable expressions in a table view (table grid) is too slow, uncheck the option to resolve variables in tooltips in the <a href="hop-gui/perspective-configuration.ORLMDqfuXn">configuration perspective</a>.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Nested resolving

<div class="sectionbody">

<div class="paragraph">

Suppose you have a variable with its value being a resolve expression. In that case you’ll notice that when you ask for the value of the variable, the variable resolver also is being used.

</div>

<div class="paragraph">

For example, you can have a `PASSWORD` variable pointing to value `p@55w0rd` in a development environment, and to a secrets vault in production by setting `PASSWORD` to a resolver expression like:

</div>

<div class="listingblock">

<div class="content">

``` highlight
#{vault:secret/data/database:password}
```

</div>

</div>

<div class="paragraph">

When executing a pipeline or workflow, the value of variable `PASSWORD` will then first be resolved to the expression and then, using the variable resolver called `vault`, the password is retrieved from the secrets vault.

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
<td>For now, the variable resolver is not doing any more nested resolving to avoid complications like infinite loops.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Plugins

<div class="sectionbody">

<div class="paragraph">

Here are the available variable resolver plugins:

</div>

<div class="ulist">

  - [Pipeline variable resolver](metadata-types/variable-resolver/pipeline-variable-resolver.ORLMDqfuXn)

  - [Hashicorp Vault variable resolver](metadata-types/variable-resolver/vault-variable-resolver.ORLMDqfuXn)

  - [Google Secret Manager Variable Resolver](metadata-types/variable-resolver/google-secret-manager-variable-resolver.ORLMDqfuXn)

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:20 +0200

</div>

</div>

<div id="header">

# Set variables

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Set variables` action sets variables at various scopes.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

Option

</div>

</div>

</div>

Description

Properties file

Workflow action name

The name of the workflow action.

Name of properties file

The name of the properties file.

Variable scope

<div class="content">

<div class="ulist">

  - Valid in the Java Virtual machine

  - Valid in the current workflow

  - Valid in the parent workflow

  - Valid in the root workflow

</div>

</div>

Settings

Variable substitution

Whether or not to substitute variables. Leave unchecked only if you actually want to set a literal value like `${MyVariable}` in the Value column.

Variables

A list of variables to set to a certain value at a certain scope.

<div class="sect1">

## Working with Properties Files

<div class="sectionbody">

<div class="paragraph">

Properties files are simple text files used to store key-value pairs. They are commonly used to manage configuration settings and variables outside of the codebase. In Apache Hop, a properties file can be used to set multiple variables at once in a workflow.

</div>

<div class="paragraph">

A properties file is a text file with the `.properties` extension. Each line in the file represents a key-value pair. The key and value can be separated by an equals sign (`=`), a colon (`:`), or whitespace characters.

</div>

</div>

</div>

<div class="sect1">

## Variable substitution

<div class="sectionbody">

<div class="paragraph">

The "Variable substitution" option allows you to dynamically create and set variables based on existing variable values. When enabled, any variable references in the variable name or value fields will be resolved before the variables are set. This enables the creation of new variables whose names and values depend on other variable contents, providing a flexible and dynamic approach to variable management within workflows. The syntax `${MyVariable}` is used to retrieve variable values.

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:25 +0200

</div>

</div>

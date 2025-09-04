<div id="header">

</div>

<div id="content">

<div id="Variables" class="paragraph">

Parameterize everything\! [Variables](variables.J345BCUqje) provide an easy way to avoid hard-coding all sorts of things in your system, environment or project.

</div>

<div class="ulist">

  - Put environment specific settings in one or more [environment](projects/projects-environments.J345BCUqje) configuration files. This allows you to deploy your project to another environment (dev/uat/prod) without changing your project, you’ll only need to configure another set of configuration files.

  - When referencing file locations, prefer `${PROJECT_HOME}` over expressions like `${Internal.Entry.Current.Directory}` or `${Internal.Pipeline.Filename.Directory}`

  - Configure transform copies with variables to allow for easy transition between differently sized environments.

  - use the [Environment Variables](variables.J345BCUqje#_environment_variables) to keep your projects and environments, audit information etc outside of your Apache Hop installation.

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:36 +0200

</div>

</div>

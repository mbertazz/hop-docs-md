<div id="header">

# Snowflake warehouse manager

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

The `Snowflake warehouse manager` action provides functionality to create, drop, resume, suspend, and alter Snowflake warehouses.

</div>

<div class="paragraph">

This allows Apache Hop workflows to resume a warehouse before loading, and then suspend the warehouse as soon as it is done, along with resizing warehouses for portions of the load that may require more processing power.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="ulist">

  - **Connection**: The connection to the Snowflake database to use

  - **Warehouse name**: The name of the warehouse

  - **Action**: (Create, Drop, Resume, Suspend, Alter) What is the action you wish to take against the warehouse.

</div>

<div class="sect2">

### Action: Create warehouse

<div class="paragraph">

This action creates a new warehouse using the settings you provide.

</div>

| Option                    | Description                                                                                                                                                         |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Replace?                  | If the warehouse already exists, replace the existing warehouse with your new settings.                                                                             |
| Fail if warehouse exists? | If the warehouse already exists the action will fail. If not checked and Replace? is not checked the action will perform no action if the warehouse already exists. |
| Warehouse Size            | (X-Small, Small, Medium, Large, X-Large, 2X-Large, 3X-Large) The size of the warehouse to create.                                                                   |
| Warehouse Type            | (Standard, Enterprise) The type of warehouse to create. Enterprise warehouses have more memory available than Standard warehouses.                                  |
| Max cluster size          | The maximum cluster size for clustered warehouses.                                                                                                                  |
| Min cluster size          | The minimum cluster size for clustered warehouses.                                                                                                                  |
| Auto suspend              | The number of minutes of inactivity after which the warehouse will automatically suspend.                                                                           |
| Auto resume?              | Should the warehouse automatically resume when queries are run against it?                                                                                          |
| Initially suspended?      | Should the warehouse be created in a suspended state.                                                                                                               |
| Resource monitor          | The resource monitor used for tracking Snowflake usage and billing.                                                                                                 |
| Comment                   | A comment to be included about the warehouse.                                                                                                                       |

</div>

<div class="sect2">

### Action: Drop warehouse

<div class="paragraph">

This action removes a warehouse from Snowflake.

</div>

| Option                            | Description                                            |
| --------------------------------- | ------------------------------------------------------ |
| Fail if warehouse does not exist? | If the warehouse does not exist, the action will fail. |

</div>

<div class="sect2">

### Action: Resume warehouse

<div class="paragraph">

This action resumes a warehouse in Snowflake. The warehouse must be in a suspended state prior to this action, or the action will fail.

</div>

| Option                            | Description                                            |
| --------------------------------- | ------------------------------------------------------ |
| Fail if warehouse does not exist? | If the warehouse does not exist, the action will fail. |

</div>

<div class="sect2">

### Action: Suspend warehouse

<div class="paragraph">

This action suspends a warehouse in Snowflake. The warehouse must be in a started state prior to this action, or the action will fail.

</div>

| Option                            | Description                                            |
| --------------------------------- | ------------------------------------------------------ |
| Fail if warehouse does not exist? | If the warehouse does not exist, the action will fail. |

</div>

<div class="sect2">

### Action: Alter warehouse

<div class="paragraph">

This action alters the warehouse, enabling users to re-size, change warehouse types, change auto-suspend settings, etc.

</div>

| Option                            | Description                                                                                                                        |
| --------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| Fail if warehouse does not exist? | If the warehouse does not exist, the action will fail.                                                                             |
| Warehouse Size                    | (X-Small, Small, Medium, Large, X-Large, 2X-Large, 3X-Large) The size of the warehouse to create.                                  |
| Warehouse Type                    | (Standard, Enterprise) The type of warehouse to create. Enterprise warehouses have more memory available than Standard warehouses. |
| Max cluster size                  | The maximum cluster size for clustered warehouses.                                                                                 |
| Min cluster size                  | The minimum cluster size for clustered warehouses.                                                                                 |
| Auto suspend                      | The number of minutes of inactivity after which the warehouse will automatically suspend.                                          |
| Auto resume?                      | Should the warehouse automatically resume when queries are run against it?                                                         |
| Resource monitor                  | The resource monitor used for tracking Snowflake usage and billing.                                                                |
| Comment                           | A comment to be included about the warehouse.                                                                                      |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:28 +0200

</div>

</div>

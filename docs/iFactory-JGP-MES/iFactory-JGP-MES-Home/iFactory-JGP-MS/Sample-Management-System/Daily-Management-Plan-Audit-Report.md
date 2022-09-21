# Introduction

Daily Management Plan Audit Report is allowed user to 
view all the changes have been done in Daily Management Plan Maintenance screen. This report can be accessed from any of the assigned data partition.


### How to get there?



::: mermaid
graph LR
A("Sample Report & Dashboard")-->0("Daily Management Plan Audit Report")

:::


#### **Permission** 


The following permissions need to be granted for accessing the screen :

- Can view Daily Management Plan Audit Report


#### Screen Activity


This report allows user to view the following :

- Value changes like Routine check up frequency ,Routine review Frequency ,Notification before Due date , Escalation if task overdue, Task Owner, Active in Daily Management Plan


#### Pre Condition


The following item need to be ready before view Daily Management Plan

- Permission granted.


- If there is changes on the mentioned fields



#### Screen Dependency


The following screen(s) has direct dependency with this report.

- Daily Management Plan


#### Filters 


<table class="relative-table confluenceTable" style="width: 66.852%;"><colgroup><col style="width: 12.6886%;" /><col style="width: 87.3244%;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Filter</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Project</td><td style="text-align: left;" class="confluenceTd">Allow user to search all the assigned project regardless of logged-on Data partition.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Product Group</td><td style="text-align: left;" class="confluenceTd">Always default to ALL once project selected</td></tr><tr><td style="text-align: left;" class="confluenceTd">Task Type</td><td style="text-align: left;" class="confluenceTd">Task Types available for selection are Routine Checkup , Routine Review , Expired Review , Q&E Review, Phase Change Review , EOL Review.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Sample Type</td><td style="text-align: left;" colspan="1" class="confluenceTd">User is allowed to select ALL or specific sample type</td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd">The configuration is active or inactive . Values : YES or No </td></tr><tr><td colspan="1" class="confluenceTd">Modified Date from</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Filter the modified date from when</span></td></tr><tr><td colspan="1" class="confluenceTd">Modified Date to</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Filter the modified date to when</span></td></tr><tr><td colspan="1" class="confluenceTd">Change Category </td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">The following is the available change/update category:</span></p><ul><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Routine check up frequency </span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Routine review Frequency </span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Notification before Due date ,</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);"> Escalation if task overdue</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Task Owner</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Active</span></span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Modified by </td><td colspan="1" class="confluenceTd">Able to filter by Active or Inactive user</td></tr></tbody></table>


- #### Report

<table class="relative-table confluenceTable" style="width: 50.8687%;"><colgroup><col style="width: 18.3328%;" /><col style="width: 81.6809%;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Item </p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Project</td><td style="text-align: left;" class="confluenceTd">The configured project.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Product Group</td><td style="text-align: left;" class="confluenceTd">The configured product group</td></tr><tr><td style="text-align: left;" class="confluenceTd">Task Type</td><td style="text-align: left;" class="confluenceTd">The configured task type</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Sample Type</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The configured sample type</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Change Category </td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Which field have been changed by user</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">New value</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The old values before changes</span></td></tr><tr><td colspan="1" class="confluenceTd">Old Value</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The new values after changes</span></td></tr><tr><td colspan="1" class="confluenceTd">Modified by</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The modification is done by who</span></td></tr><tr><td colspan="1" class="confluenceTd">Modified datetime</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The modification data time</span></td></tr></tbody></table>


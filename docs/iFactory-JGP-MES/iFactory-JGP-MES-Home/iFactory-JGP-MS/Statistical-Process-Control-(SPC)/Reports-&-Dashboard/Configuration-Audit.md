# Introduction

Configuration Audit is an report to allow user to view all the changes have been done in Manage Configuration and it is segregated by data partition. 


### How to get there?



::: mermaid
graph LR
A("REPORT")-->0("Configuration Audit")

:::


#### **Permission** 


The following permissions need to be granted for accessing the screen :

- Can view system change logs
Screen Activity
Configuration Audit screen allows to perform the following activities:

- View all the changes done in Manage Configuration screen.


#### Pre Condition


The following item need to be ready before view Configuration Audit:


- Create Chart Configuration



#### Screen Dependency


The following screen(s) has direct dependency with Configuration Audit

- Manage Configuration


#### Filtering 


<table class="confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Filter</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" colspan="1" class="confluenceTd">From Date</td><td style="text-align: left;" colspan="1" class="confluenceTd">Filter the modified date and  it needs to work together with To Date and To Time.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">From Time</td><td style="text-align: left;" colspan="1" class="confluenceTd">Filter the modified  time and  it needs to work together with To Date and To Time.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">To Date</td><td style="text-align: left;" colspan="1" class="confluenceTd">Filter the modified date and  it needs to work together with From Date and From Time</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">To Time</td><td style="text-align: left;" colspan="1" class="confluenceTd">Filter the modified time and  it needs to work together with From Date and From Time</td></tr><tr><td colspan="1" class="confluenceTd">SPC Number</td><td colspan="1" class="confluenceTd">Filter the available SPC Number in the report.</td></tr><tr><td colspan="1" class="confluenceTd">Change/Update Category </td><td colspan="1" class="confluenceTd"><p>Filter the change/update category. The following is the available change/update category:</p><ul><li>Data Capture Frequency</li><li>LCL-CL-UCL Approval Received</li><li>LCL-CL-UCL Send For Approval</li><li>Configuration Created</li><li>Notification Email</li><li>CPK Rule</li><li>CPK Expectation</li><li>SPC Phase Review</li><li>LSL USL Change</li><li>Rule Violation</li><li>Active Status</li><li>Deleted</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Modified by</td><td colspan="1" class="confluenceTd">Filter by who has modified the configuration by employee ID.</td></tr><tr><td colspan="1" class="confluenceTd">Filter</td><td colspan="1" class="confluenceTd">Filter is to churn out the report with filtering.</td></tr><tr><td colspan="1" class="confluenceTd">Reset</td><td colspan="1" class="confluenceTd">Reset the filters</td></tr></tbody></table>


- #### Fields

<table class="relative-table confluenceTable" style="width: 80.7505%;"><colgroup><col style="width: 19.6382%;" /><col style="width: 80.3445%;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field </p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" colspan="1" class="confluenceTd">No.</td><td style="text-align: left;" colspan="1" class="confluenceTd">Item numbering.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">SPC Number</td><td style="text-align: left;" colspan="1" class="confluenceTd">SPC number is referring to which product/process (CTQ/CTF) configuration has been modified.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Change/Update Category </td><td style="text-align: left;" colspan="1" class="confluenceTd">Which field have been changed by user</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Old Values</td><td style="text-align: left;" colspan="1" class="confluenceTd">The old values before changes</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">New Values</td><td style="text-align: left;" colspan="1" class="confluenceTd">The new values after changes</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Modified by</td><td style="text-align: left;" colspan="1" class="confluenceTd">The modification is done by who</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Modified DateTime</td><td style="text-align: left;" colspan="1" class="confluenceTd">The modification data time</td></tr></tbody></table>


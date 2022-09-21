# Introduction

Report for Global is allowed user to view the summary of SPC item , closed , pending and open corrective action form (CAF) for each site in one glance. The data is presented in table , pie chart and bar chart form.
There are 4 levels reports can be viewed in Report for Global. User can navigate from Report For Global→ Report For Site→ Report for Workcell→ SPC List for the particular project.


### How to get there?



::: mermaid
graph LR
A("REPORT")-->0("Report For Global")

:::


#### **Permission** 


The following permissions need to be granted for accessing the screen :

- Can view Top Management Dashboard



#### Screen Activity


Report for Global allows user to view  the following :

- Summary of SPC item for each site

- Summary of closed CAF for each site

- Summary of Pending approved CAF for each site

- Summary of open CAF for each site


#### Pre Condition


The following item need to be ready before view Report for Global:


- Permission granted.


- If there is site using SPC system and configuration added



#### Screen Dependency


The following screen(s) has direct dependency with Report for Global.

- Performance Monitor

- Report For Site

- Report for Workcell


#### Filters 


<table class="relative-table confluenceTable" style="width: 74.2877%;"><colgroup><col style="width: 12.8839%;" /><col style="width: 87.0412%;" /></colgroup><tbody><tr><th class="confluenceTh">Filter</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Start Date </td><td class="confluenceTd">The start datetime of Corrective Action Form creation and this need to work together with End Date.</td></tr><tr><td class="confluenceTd">End Date </td><td class="confluenceTd">The end datetime of Corrective Action Form creation and this need to work together with Start Date.</td></tr><tr><td class="confluenceTd">View Report </td><td class="confluenceTd">View report is to churn out the report based on start date and end date.</td></tr><tr><td colspan="1" class="confluenceTd">Reload</td><td colspan="1" class="confluenceTd">Reload is to get the latest data.</td></tr></tbody></table>

<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Item </th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Site</td><td class="confluenceTd">List of available site that using SPC system.</td></tr><tr><td class="confluenceTd">SPC Item Count</td><td class="confluenceTd">The grand total of product/process(CTQ/CTF ) created .</td></tr><tr><td class="confluenceTd">Total</td><td class="confluenceTd">The grand total of data points violated the rules since the 1st data point plotted on control chart.</td></tr><tr><td colspan="1" class="confluenceTd">Closed</td><td colspan="1" class="confluenceTd">The total correction action form approved since the 1st data point plotted on control chart.</td></tr><tr><td colspan="1" class="confluenceTd">Open 2</td><td colspan="1" class="confluenceTd">The total correction action form submitted by user/ rejected by approver since the 1st data point plotted on control chart.</td></tr><tr><td colspan="1" class="confluenceTd">Open 1</td><td colspan="1" class="confluenceTd">The total correction action form yet to submit by user since the 1st data point plotted on control chart.</td></tr></tbody></table>



#### Attachments

[image2021-1-20_16-29-5.png](/.attachments/86311098.png)

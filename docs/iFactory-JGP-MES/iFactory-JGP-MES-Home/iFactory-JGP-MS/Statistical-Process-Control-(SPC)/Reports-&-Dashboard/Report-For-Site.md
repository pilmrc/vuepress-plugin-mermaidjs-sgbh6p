# Introduction

Report for Site is allowed user to view the summary of SPC item , closed , pending and open corrective action form (CAF) for each customer in one glance. The data is presented in table and stacked bar chart form.
There are 3 levels reports can be viewed in Report for Site. User can navigate from  Report For Site→ Report for Workcell→ SPC List for the particular project.


### How to get there?



::: mermaid
graph LR
A("REPORT")-->0("REPORT FOR SITE")

:::


#### **Permission** 


The following permissions need to be granted for accessing the screen :

- Can view Site Manager Dashboard



#### Screen Activity


Report for Site allows user to view  the following :

- Summary of SPC item for each customer

- Summary of closed CAF for each customer

- Summary of Pending approved CAF for each customer

- Summary of open CAF for each customer


#### Pre Condition


The following item need to be ready before view Report for Site:


- Permission granted.


- If there is site using SPC system and configuration added



#### Screen Dependency


The following screen(s) has direct dependency with Report for Site.

- Performance Monitor

- Report For Global

- Report for Workcell


#### Filters 


<table class="relative-table confluenceTable" style="width: 780.8px;"><colgroup><col style="width: 0.0px;" /><col style="width: 0.0px;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Filter</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Start Date </td><td style="text-align: left;" class="confluenceTd">The start datetime of Corrective Action Form creation and this need to work together with End Date.</td></tr><tr><td style="text-align: left;" class="confluenceTd">End Date </td><td style="text-align: left;" class="confluenceTd">The end datetime of Corrective Action Form creation and this need to work together with Start Date.</td></tr><tr><td style="text-align: left;" class="confluenceTd">View Report </td><td style="text-align: left;" class="confluenceTd">View report is to churn out the report based on start date and end date.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Reload</td><td style="text-align: left;" colspan="1" class="confluenceTd">Reload is to get the latest data.</td></tr></tbody></table>

<table class="relative-table confluenceTable" style="width: 64.0028%;"><colgroup><col style="width: 16.087%;" /><col style="width: 83.913%;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Item </p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Customer Name</td><td style="text-align: left;" class="confluenceTd">List of customer in the particular site that using SPC system.</td></tr><tr><td style="text-align: left;" class="confluenceTd">SPC Item Count</td><td style="text-align: left;" class="confluenceTd">The grand total of product/process(CTQ/CTF ) created .</td></tr><tr><td style="text-align: left;" class="confluenceTd">SPC No. Violation Count</td><td style="text-align: left;" class="confluenceTd">The grand total of data points violated the rules since the 1st data point plotted on control chart.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Closed</td><td style="text-align: left;" colspan="1" class="confluenceTd">The total correction action form approved since the 1st data point plotted on control chart.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Open 2</td><td style="text-align: left;" colspan="1" class="confluenceTd">The total correction action form submitted by user/ rejected by approver since the 1st data point plotted on control chart.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Open 1</td><td style="text-align: left;" colspan="1" class="confluenceTd">The total correction action form yet to submit by user since the 1st data point plotted on control chart.</td></tr></tbody></table>



#### Attachments

[image2021-1-20_16-37-53.png](/.attachments/86311107.png)

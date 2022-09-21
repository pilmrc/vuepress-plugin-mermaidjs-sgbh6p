# Introduction

The UpdInfo Report can search UPD info by period of time or Pallet/container/SN

- By period of time - System could Search UPD info by linked UPD time

- By Pallet/Container/SN - System could search UPD info by "Pallet/Container/SN"  "Customer" "Division" and ignore Start Time and End Time


### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")

:::
**UPDINFO** 
![image2022-7-20_9-13-48.png](/.attachments/122749524.png)




#### Screen Activity


The UPDInfo Report allows the following activity:

- If Pallet/Container/SN is blank, system could search UPD Info by Start Date and End Date and Customer Division
![image2022-7-19_17-9-38.png](/.attachments/122749460.png)


2. if Pallet/Container/SN is not blank, system could ignore Start Date and End Date,

- Query By is "Pallet", system could search UPD Info by Pallet

- Query By is "Container", system could search UPD Info by Container

- Query By is "SN", system could search UPD Info by SN
![image2022-7-19_17-10-52.png](/.attachments/122749461.png)


3.View results in grid table.
4.Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


#### Selection Criteria


<table class="relative-table wrapped confluenceTable" style="width: 81.9949%;"><colgroup><col style="width: 14.7908%;" /><col style="width: 85.2371%;" /></colgroup><tbody><tr><th class="confluenceTh"><p><strong>Field</strong></p></th><th class="confluenceTh"><p><strong>Description</strong></p></th></tr><tr><td class="confluenceTd">Start Date</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">UPD Linked date, Allow maximum 7 days of duration from date</span></td></tr><tr><td colspan="1" class="confluenceTd">End Date</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">UPD Linked date, Allow maximum 7 days of duration from date</span></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Wip's Customer</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Wip's Division</td></tr><tr><td colspan="1" class="confluenceTd">Query By</td><td colspan="1" class="confluenceTd"><ul><li>Pallet</li><li>Container</li><li style="text-align: left;">SN</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Pallet/Container/SN</td><td colspan="1" class="confluenceTd"><p>Allow blank, refer to the value of "Query By"</p><ul><li style="text-align: left;">Query by is "Pallet", then input Pallet, system could search By Pallet, Allow maxinumn 2</li><li>Query by is "Container", then input Pallet, system could search By Container, Allow maxinumn 30</li><li>Query by is "SN", then input Pallet, system could search By SN, Allow maxinumn 10000</li></ul></td></tr></tbody></table>


- #### **Report Fields**

<table class="wrapped confluenceTable"><colgroup><col style="width: 112.0px;" /><col style="width: 645.0px;" /></colgroup><tbody><tr><th class="confluenceTh"><p><strong>Field</strong></p></th><th class="confluenceTh"><p><strong>Description</strong></p></th></tr><tr><td class="confluenceTd">Customer</td><td class="confluenceTd">The WIP's customer.</td></tr><tr><td class="confluenceTd">Division</td><td class="confluenceTd">The WIP's division.</td></tr><tr><td class="confluenceTd">Product Family</td><td class="confluenceTd">The WIP's Product Family.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The WIP's material.</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">WIP's serial number</span></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The Route of UPD Assignment</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">The Routestep of UPD Assignment</span></td></tr><tr><td colspan="1" class="confluenceTd">Container No</td><td colspan="1" class="confluenceTd">The WIP's Container No</td></tr><tr><td colspan="1" class="confluenceTd">Pallet No</td><td colspan="1" class="confluenceTd">The WIP's Pallet No</td></tr><tr><td colspan="1" class="confluenceTd">UPD Name</td><td colspan="1" class="confluenceTd">The WIP's linked UPD Name, if one wip has multiple upd names, system could display in multiple rows</td></tr><tr><td colspan="1" class="confluenceTd">UPD Type</td><td colspan="1" class="confluenceTd">The UPD Type</td></tr><tr><td colspan="1" class="confluenceTd">UPD Value</td><td colspan="1" class="confluenceTd">The WIP's linked UPD Value, if one wip has multiple upd values, system could display in multiple rows</td></tr><tr><td colspan="1" class="confluenceTd">Linked Date</td><td colspan="1" class="confluenceTd">The WIP's linked UPD Date</td></tr></tbody></table>

**The WIP’s customer.** 
DivisionThe WIP’s division.Product FamilyThe WIP’s Product Family.MaterialThe WIP’s material.Serial NumberWIP’s serial number
RouteThe Route of UPD Assignment
Route StepThe Routestep of UPD Assignment
Container NoThe WIP's Container NoPallet NoThe WIP's Pallet NoUPD NameThe WIP's linked UPD Name, if one wip has multiple upd names, system could display in multiple rowsUPD TypeThe UPD TypeUPD ValueThe WIP's linked UPD Value, if one wip has multiple upd values, system could display in multiple rowsLinked DateThe WIP's linked UPD Date

#### Attachments

[image2022-7-19_16-58-45.png](/.attachments/122749458.png)
[image2022-7-19_17-9-38.png](/.attachments/122749460.png)
[image2022-7-19_17-10-52.png](/.attachments/122749461.png)
[image2022-7-20_9-13-48.png](/.attachments/122749524.png)

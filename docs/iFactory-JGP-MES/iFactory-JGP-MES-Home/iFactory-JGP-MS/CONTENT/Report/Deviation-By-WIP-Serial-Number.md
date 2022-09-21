# Introduction

The DeviationByWIPSerialNumber Report can shows a list of deviation number match with the criteria where the WIP serial have any below deviation event type:

- WIP: Assigned To Deviation (When decision made to assign the deviation during deviation condition met)

- WIP: Added To Deviation (When directly added the WIP to a deviation)

- WIP: Removed from Deviation (When removed the WIP from an added deviation)


### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("DeviationByWIPSerialNumber")

:::
![image2021-2-5_15-41-46.png](/.attachments/86311437.png)




#### **Screen Activity** 


The DeviationByWIPSerialNumber Report allows the following activity:

- Show a list of Deviation Number match with the criteria where the WIP serial have any   added/removed/assigned deviation event.

- View results in grid table.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


#### Pre-Condition



- The following data needs to be ready before user runs the DeviationByWIPSerialNumber Report:


- WIPs has any deviation transaction added/removed/assigned
![image2021-2-5_15-47-14.png](/.attachments/86311438.png)





#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Mandatory to select one Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Mandatory to select Division. Filter by Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">A list of WIP serial number to query with deviation event</td></tr></tbody></table>





#### Report Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The WIP's serial number</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The WIP's customer.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">The WIP's division.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The WIP's assembly rev</td></tr><tr><td colspan="1" class="confluenceTd">Assembly Description </td><td colspan="1" class="confluenceTd">The description of this assembly</td></tr><tr><td colspan="1" class="confluenceTd"><p>Deviation</p></td><td colspan="1" class="confluenceTd"><p>A Deviation Number </p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Performed At</p></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Refers to Last Modified date and time in WIP View's Audit Log</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Performed By</p></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Refers to Last Modified By in WIP View's Audit Log</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Event Type</p></td><td colspan="1" class="confluenceTd"><p>Only valid for:</p><ul><li>WIP: Assigned To Deviation (When decision made to assign the deviation during deviation condition met)</li><li>WIP: Added To Deviation (When directly added the WIP to a deviation)</li><li>WIP: Removed from Deviation (When removed the WIP from an added deviation)</li></ul></td></tr></tbody></table>

**The WIP’s customer.** 
DivisionThe WIP’s division.AssemblyThe WIP’s assembly revAssembly Description The description of this assemblyDeviation
A Deviation Number 
Performed At
Refers to Last Modified date and time in WIP View’s Audit Log
Performed By
Refers to Last Modified By in WIP View’s Audit Log
Event Type
Only valid for:

- WIP: Assigned To Deviation (When decision made to assign the deviation during deviation condition met)

- WIP: Added To Deviation (When directly added the WIP to a deviation)

- WIP: Removed from Deviation (When removed the WIP from an added deviation)


#### (Note: Report shows with sorting by Serial Number and Performed At (time) in ascending order)





#### Attachments

[image2020-12-16_14-38-23.png](/.attachments/86311426.png)













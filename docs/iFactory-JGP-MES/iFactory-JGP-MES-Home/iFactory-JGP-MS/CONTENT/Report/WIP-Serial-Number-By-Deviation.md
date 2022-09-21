# Introduction

The WIPSerialNumberByDeviation Report can shows a list of WIP serial number match with the criteria where the Deviation have any WIP with below deviation event type:

- WIP: Assigned To Deviation (When decision made to assign the deviation during deviation condition met)

- WIP: Added To Deviation (When directly added the WIP to a deviation)

- WIP: Removed from Deviation (When removed the WIP from an added deviation)


### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("WIPSerialNumberBYDEVIATion")

:::
![image2021-2-5_16-40-19.png](/.attachments/86311454.png)




#### **Screen Activity** 


The WIPSerialNumberByDeviation Report allows the following activity:

- Show a list of WIP serial number match with the criteria where the Deviation have any WIP(s) with added/removed/assigned deviation event.

- View results in grid table.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


#### Pre-Condition



- The following data needs to be ready before user runs the WIPSerialNumberByDeviation Report:


- WIPs has any deviation transaction added/removed/assigned
![image2021-2-5_16-42-28.png](/.attachments/86311455.png)





#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Mandatory to select one Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Mandatory to select Division. Filter by Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Deviation</td><td colspan="1" class="confluenceTd">A list of Deviation to query all WIPs with these deviations </td></tr></tbody></table>





#### Report Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Deviation</td><td colspan="1" class="confluenceTd">The search deviation number</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The WIP's serial number</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The WIP's customer.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">The WIP's division.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The WIP's assembly rev</td></tr><tr><td colspan="1" class="confluenceTd">Assembly Description </td><td colspan="1" class="confluenceTd">The description of this assembly</td></tr><tr><td colspan="1" class="confluenceTd"><p>Performed At</p></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Refers to Last Modified date and time in WIP View's Audit Log</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Performed By</p></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Refers to Last Modified By in WIP View's Audit Log</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Event Type</p></td><td colspan="1" class="confluenceTd"><p>Only valid for:</p><ul><li>WIP: Assigned To Deviation (When decision made to assign the deviation during deviation condition met)</li><li>WIP: Added To Deviation (When directly added the WIP to a deviation)</li><li>WIP: Removed from Deviation (When removed the WIP from an added deviation)</li></ul></td></tr></tbody></table>

**The WIP’s customer.** 
DivisionThe WIP’s division.AssemblyThe WIP’s assembly revAssembly Description The description of this assemblyPerformed At
Refers to Last Modified date and time in WIP View’s Audit Log
Performed By
Refers to Last Modified By in WIP View’s Audit Log
Event Type
Only valid for:

- WIP: Assigned To Deviation (When decision made to assign the deviation during deviation condition met)

- WIP: Added To Deviation (When directly added the WIP to a deviation)

- WIP: Removed from Deviation (When removed the WIP from an added deviation)




#### Attachments

[image2021-2-5_15-47-14.png](/.attachments/86311441.png)















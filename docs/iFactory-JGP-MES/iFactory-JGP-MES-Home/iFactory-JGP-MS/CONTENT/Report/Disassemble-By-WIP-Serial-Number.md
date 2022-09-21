# Introduction

The DisassembleByWIPSerialNumber Report can shows a list of disassemble components and steps which match with the criteria where the WIP serial have disassemble event performed.


### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("DISASSEMBLEByWIPSerialNumber")

:::
![image2021-3-15_15-58-5.png](/.attachments/89587760.png)




#### **Screen Activity** 


The DisassembleByWIPSerialNumber Report allows the following activity:

- Show a list of disassemble components and steps which match with the criteria where the WIP serial have any disasseble event.

- View results in grid table.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


#### Pre-Condition



- The following data needs to be ready before user runs the DisassembleByWIPSerialNumber Report:


- WIPs has any disassemble transaction.
![image2021-3-15_16-0-23.png](/.attachments/89587761.png)





#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Mandatory to select one Customer. (Customer with disassemble event occur will be shown)</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Mandatory to select Division. Filter by Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">A list of WIP serial number to query with deviation event</td></tr></tbody></table>





#### Report Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The WIP's serial number</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The WIP's customer.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">The WIP's division.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The WIP's assembly rev</td></tr><tr><td colspan="1" class="confluenceTd">Assembly Description </td><td colspan="1" class="confluenceTd">The description of this assembly</td></tr><tr><td colspan="1" class="confluenceTd"><p>Event Type</p></td><td colspan="1" class="confluenceTd"><p>Disassemble event only </p></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Refers to route that occur disassemble event</span></td></tr><tr><td colspan="1" class="confluenceTd">Step</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Refers to route step that occur disassemble event</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Material</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Refers to disassemble material in Operation screen</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Identifier</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Refers to identifier of the disassembled material in Operation screen</span></td></tr><tr><td colspan="1" class="confluenceTd"><p>Performed At</p></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Refers to Date Time performed disassemble In Operation screen</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Performed By</p></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Refers to user performed disassemble in Operation screen</span></p></td></tr></tbody></table>

**The WIP’s customer.** 
DivisionThe WIP’s division.AssemblyThe WIP’s assembly revAssembly Description The description of this assemblyEvent Type
Disassemble event only 
RouteRefers to route that occur disassemble event
StepRefers to route step that occur disassemble event
Material
Refers to disassemble material in Operation screen
Identifier
Refers to identifier of the disassembled material in Operation screen
Performed At
Refers to Date Time performed disassemble In Operation screen
Performed By
Refers to user performed disassemble in Operation screen


#### (Note: Report shows with sorting by Serial Number and Performed At (time) in ascending order)





#### Attachments

[image2021-2-5_15-47-14.png](/.attachments/89587747.png)
[image2021-2-5_15-41-46.png](/.attachments/89587748.png)
[image2020-5-18_16-20-22.png](/.attachments/89587749.png)
[image2020-5-18_16-16-17.png](/.attachments/89587750.png)
[Smaller.jpg](/.attachments/89587751.jpg)
[7-9-2013 2-58-11 PM.jpg](/.attachments/89587752.jpg)
[image2013-7-9 13:37:43.png](/.attachments/89587753.png)
[image2013-7-9 13:36:46.png](/.attachments/89587754.png)
[image2013-7-9 13:35:13.png](/.attachments/89587755.png)
[image2020-3-25_14-6-43.png](/.attachments/89587756.png)
[image2020-3-25_14-18-49.png](/.attachments/89587757.png)
[image2020-12-16_14-30-6.png](/.attachments/89587758.png)
[image2020-12-16_14-38-23.png](/.attachments/89587759.png)
[image2021-3-15_15-58-5.png](/.attachments/89587760.png)
[image2021-3-15_16-0-23.png](/.attachments/89587761.png)

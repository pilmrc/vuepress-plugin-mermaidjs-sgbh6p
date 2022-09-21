# Introduction

Display all Route Step Details passed by WIP Scan in a specific Route.


### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("RouteStepWipScan")

:::
![image2022-4-1_16-59-15.png](/.attachments/110920662.png)




#### **Screen Activity** 


The ReleasedWIPs Report allows the following activity:

- Show a list of WIPs match with scan in route step, means has operation history.

- View results in grid table.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


#### Pre-Condition



- The following data needs to be ready before user runs the RouteStepWipScan Report:


- WIPs scan in route step.
![image2022-4-1_16-59-48.png](/.attachments/110920663.png)





#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Customer(s).</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Division(s). Filter by Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd">Default to All. .</td></tr><tr><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd">Default to All.</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Route</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Default to All.</td></tr><tr><td colspan="1" class="confluenceTd">Family</td><td colspan="1" class="confluenceTd">Defalut to All, through Customer\Division to filter mapping Family</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Defalut to All, through Customer\Division\Family\Route to filter mapping Family</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd">Default to All.</td></tr><tr><td colspan="1" class="confluenceTd">Start Time</td><td colspan="1" class="confluenceTd">WIP scan start time.</td></tr><tr><td colspan="1" class="confluenceTd">End Time</td><td colspan="1" class="confluenceTd">WIP scan end time.</td></tr></tbody></table>





#### Report Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Route Name</td><td colspan="1" class="confluenceTd">The WIP's route.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The WIP's route step.</td></tr><tr><td colspan="1" class="confluenceTd">WIPCOUNT</td><td colspan="1" class="confluenceTd">Total number of WIPs on the route step.</td></tr></tbody></table>

**The WIP’s route.** 
Route StepThe WIP’s route step.WIPCOUNTTotal number of WIPs on the route step.

#### Report Fields - Detail


![image2022-4-1_17-3-3.png](/.attachments/110920666.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The WIP's SN.</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The WIP's customer.</td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">The WIP's Product Family</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The WIP's Material</td></tr><tr><td colspan="1" class="confluenceTd">Route Name</td><td colspan="1" class="confluenceTd">The WIP's route.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The WIP's route step.</td></tr><tr><td colspan="1" class="confluenceTd">Start Time</td><td colspan="1" class="confluenceTd">The WIP's start time.</td></tr><tr><td colspan="1" class="confluenceTd">End Time</td><td colspan="1" class="confluenceTd">The WIP's end time.</td></tr><tr><td colspan="1" class="confluenceTd">User</td><td colspan="1" class="confluenceTd">Operator</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">The WIP's status.</td></tr><tr><td colspan="1" class="confluenceTd"><p>Resource</p></td><td colspan="1" class="confluenceTd"><p>The WIP scan in which resource.</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>MA</p></td><td colspan="1" class="confluenceTd"><p>The WIP scan in which MA.</p></td></tr></tbody></table>

**The WIP’s SN.** 
CustomerThe WIP’s customer.Product FamilyThe WIP's Product FamilyMaterialThe WIP's MaterialRoute NameThe WIP’s route.Route StepThe WIP’s route step.Start TimeThe WIP’s start time.End TimeThe WIP’s end time.UserOperatorStatusThe WIP’s status.Resource
The WIP scan in which resource.
MA
The WIP scan in which MA.


#### Attachments

[image2020-12-16_14-38-23.png](/.attachments/88113344.png)
[image2020-12-16_14-30-6.png](/.attachments/88113345.png)
[image2020-3-25_14-18-49.png](/.attachments/88113346.png)
[image2020-3-25_14-6-43.png](/.attachments/88113347.png)
[image2013-7-9 13:35:13.png](/.attachments/88113348.png)
[image2013-7-9 13:36:46.png](/.attachments/88113349.png)
[image2013-7-9 13:37:43.png](/.attachments/88113350.png)
[7-9-2013 2-58-11 PM.jpg](/.attachments/88113351.jpg)
[Smaller.jpg](/.attachments/88113352.jpg)
[image2020-5-18_16-16-17.png](/.attachments/88113353.png)
[image2020-5-18_16-20-22.png](/.attachments/88113354.png)
[image2021-2-26_15-15-33.png](/.attachments/88113356.png)
[image2021-2-26_15-20-25.png](/.attachments/88113357.png)
[image2021-2-26_15-33-27.png](/.attachments/88113358.png)
[image2022-4-1_16-59-15.png](/.attachments/110920662.png)
[image2022-4-1_16-59-48.png](/.attachments/110920663.png)
[image2022-4-1_17-3-3.png](/.attachments/110920666.png)

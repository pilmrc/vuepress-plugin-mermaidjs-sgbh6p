# Introduction

The Disassemble station allow users to disassemble materials from a WIP. The material must NOT contain any Open Defect recorded.


### **How to get there?** 


**Stations Login (Enforce Assemble selection at station = OFF)** 


::: mermaid
graph LR
A("1. STATIONS")-->0("2. SELECT RESOURCE")
0-->1("3. SELECT ROUTE & ROUTE STEP")
1-->2("4. CLICK DISASSEMBLE ICON")

:::
![](/.attachments/35356965.png)



**Stations Login (Enforce Assemble selection at station = ON)** 


::: mermaid
graph LR
A("1. STATIONS")-->0("2. SELECT RESOURCE")
0-->1("3. SELECT ROUTE & ROUTE STEP")
1-->2("4. CLICK DISASSEMBLE ICON")
2-->3("5. SELECT ASSEMBLY")

:::
![](/.attachments/35356967.png)




#### **Permission** 


1) Can Access Assembly Configuration 

2) Can Assemble 
3) Can Disassemble

#### **Screen Activity** 



Disassemble station enables user to perform the following activity:

- Disassemble materials from a WIP


#### **Pre Condition** 



The following data needs to be pre-configured (if used)

- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)
(Station Type: Disassemble)
- [Resources](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)

- [Data Collection](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Stations/Disassemble-Station/Disassemble-(Single-Entry-Mode).md)
(if any)
- [Pre-Start Rules](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Pre%2DStart-Rules.md)
(if any)

- [Certifications](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Courses/Certification-Course-Requirements.md)

(if any)

#### **Disassemble Station Interface** 


*Disassemble screen without Data Collection* 

- Users will have to scan a WIP to start the disassemble action.
![](/.attachments/35356970.png)



Disassemble screen with Data Collection

- With Data Collection configured, users will have to enter all the Data Collections required before proceed with Disassemble operation.

- If users cancel the data collection, the whole Disassemble operation will be Abort.
![](/.attachments/35356968.png)



<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>1. Route Step Name</p></td><td colspan="1" class="confluenceTd">Display Route Step Name for Disassemble Station</td></tr><tr><td colspan="1" class="confluenceTd">2. Batch Entry Mode</td><td colspan="1" class="confluenceTd"><p>Toggle "OFF" to allow users to remain at Single Entry Mode</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>3. Scan WIP & Clear</p></td><td colspan="1" class="confluenceTd"><p>Scan WIP Serial Number at this field to start disassemble operation.</p><p>"X" button to abort the Disassemble operation.</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>4. WIP, Material & Assemble</p></td><td colspan="1" class="confluenceTd">Information on WIP, material and assembly information for the WIP that users scanned</td></tr><tr><td colspan="1" class="confluenceTd">5. Items Assembled</td><td colspan="1" class="confluenceTd"><p>All Items that already assembled to the WIP at Assemble station will be shown at this section.</p></td></tr><tr><td colspan="1" class="confluenceTd">6. Disassemble</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Disassemble selected assembled items.</p><p>Note: User can use CTRL key to select multiple items for disassembling</p></div></td></tr><tr><td colspan="1" class="confluenceTd">7. Disassemble All</td><td colspan="1" class="confluenceTd"><p>Disassemble ALL assembled items.</p></td></tr></tbody></table>


Disassemble Materials
- WIP will
***NOT***  start for the following conditions and system will prompt error:
- WIP does not have items assembled to it which it can be disassembled at Disassemble station.

- WIP does not match the selected assembly (Enforce Assemble selection at station = ON).

- WIP does not match the Pre-Start Rule.

- WIP does not belongs to the selected Route.

- WIP does not exist.

- WIP that is on hold.

- User does not have the Certification to access the station.



- WIP with Open Defect

- Users scan WIP Serial Number and WIP is started.

- When users select the assembled materials that contain Open Defect, system will prompt error and DO NOT allow users to perform disassemble action.

- When users select the assembled materials that do not contain Open Defect / contain Close Defect, users will be able to perform disassemble action.

- When users select Disassemble All, system will prompt error and DO NOT allow users to perform disassemble action



- When perform Disassemble or Disassemble ALL, system will prompt confirmation window

- Click "OK" to disassemble the selected items / all items. WIP will then move to next PASS route step with PASS status.

- Click "Cancel" to discard the disassemble action.
4.When the parent WIP has an assembled child WIP, the user can seach by seach the child WIP and perform the final Disassemble.
![image2022-7-11_15-29-23.png](/.attachments/122748934.png)


![image2022-7-11_15-29-49.png](/.attachments/122748935.png)




**NOTE** 
: Disassemble Station (Single Entry Mode) is applicable for Repetitive flow and DO NOT support Panelization. 

#### Attachments

[image2016-7-5 14:43:22.png](/.attachments/35356955.png)
[image2016-7-5 14:44:2.png](/.attachments/35356956.png)
[image2016-7-5 15-48-55.png](/.attachments/35356957.png)
[image2016-7-5 15:56:16.png](/.attachments/35356958.png)
[image2016-7-5 16:25:18.png](/.attachments/35356959.png)
[image2017-7-27 10:10:43.png](/.attachments/35356960.png)
[image2016-7-6 11:42:44.png](/.attachments/35356961.png)
[image2018-6-13_17-46-49.png](/.attachments/35356962.png)
[image2018-6-13_17-48-23.png](/.attachments/35356963.png)
[image2018-9-25_13-55-0.png](/.attachments/35356964.png)
[image2018-9-25_13-55-7.png](/.attachments/35356965.png)
[image2018-9-25_14-0-27.png](/.attachments/35356967.png)
[image2018-9-25_14-17-34.png](/.attachments/35356968.png)
[image2018-9-25_14-21-59.png](/.attachments/35356969.png)
[image2018-9-25_14-37-3.png](/.attachments/35356970.png)
[image2022-7-11_15-26-48.png](/.attachments/122748929.png)
[image2022-7-11_15-27-21.png](/.attachments/122748930.png)
[image2022-7-11_15-29-23.png](/.attachments/122748934.png)
[image2022-7-11_15-29-49.png](/.attachments/122748935.png)

# Introduction

The Disassemble station for Batch Mode allow users to disassemble same materials from a WIP continuously. The material must NOT contain any Open Defect recorded.


### **How to get there?** 


**Stations Login (Enforce Assemble selection at station = OFF)** 


::: mermaid
graph LR
A("1. STATIONS")-->0("2. SELECT RESOURCE")
0-->1("3. SELECT ROUTE & ROUTE STEP")
1-->2("4. CLICK DISASSEMBLE ICON")

:::
![](/.attachments/35357033.png)



**Stations Login (Enforce Assemble selection at station = ON)** 


::: mermaid
graph LR
A("1. STATIONS")-->0("2. SELECT RESOURCE")
0-->1("3. SELECT ROUTE & ROUTE STEP")
1-->2("4. CLICK DISASSEMBLE ICON")
2-->3("5. SELECT ASSEMBLE")

:::
![](/.attachments/35357034.png)




#### **Permission** 




- Can Access Assembly Configuration


- Can Assemble


- Can Disassemble


- Allow Disassemble By File Upload




#### **Screen Activity** 



Disassemble station enables user to perform the following activity:

- Disassemble same materials from a WIP continuously


#### **Pre Condition** 



The following data needs to be pre-configured (if used)

- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)
(Station Type: Disassemble)
- [Resources](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)

- [Data Collection](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Stations/Disassemble-Station/Disassemble-(Batch-Entry-Mode).md)
(if any)
- [Pre-Start Rules](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Pre%2DStart-Rules.md)
(if any)
- [Certifications](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Courses/Certification-Course-Requirements.md)
(if any)


#### **Disassemble Station Interface** 


![](/.attachments/35357041.png)


<table class="relative-table wrapped confluenceTable" style="width: 82.4271%;"><colgroup><col style="width: 19.3301%;" /><col style="width: 80.6699%;" /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>1. Route Step Name</p></td><td colspan="1" class="confluenceTd">Display Route Step Name for Disassemble Station</td></tr><tr><td colspan="1" class="confluenceTd">2. Batch Entry Mode</td><td colspan="1" class="confluenceTd"><p>Toggle "ON" to allow users to enter Batch Mode</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>3. Select Assembly</p></td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>In Batch Mode, all the WIP scan / upload must be from the same assembly</p><p><br /></p><p>If Enforce Assemble selection at Station = ON, the selection here will be defaulted to what users select upon station login</p><p><span>If Enforce Assemble selection at Station = OFF, the selection is a mandatory field where system will prompt error if there is no assembly selected </span></p></div></td></tr><tr><td colspan="1" class="confluenceTd"><p>4. Disassemble Section</p></td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>By default, this section will be collapse. Users will have to click on bar / arrow in order to expand this section. Users will have to select at least one material to be disassemble else system will prompt error</p><p><br /></p><p><u><strong>3 types of selections:</strong></u></p><p><u>Disassemble by: ALL</u></p><ul><li>Users able to disassemble all materials in the assemble's BOM</li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource confluence-content-image-border" height="179" width="800" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357058.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/35356951/image2018-9-27-15-37-49.png?version=1&modificationDate=1538033869727&api=v2" /></span></p><p><br /></p><p><u><u>Disassemble by: </u>Material Type</u></p><ul><li>Users able to select materials to be disassembled based on material type</li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource confluence-content-image-border" height="125" width="800" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357060.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/35356951/image2018-9-27-15-39-27.png?version=1&modificationDate=1538033967847&api=v2" /></span></p><p><br /></p><p><u><u>Disassemble by: </u>Manual Setup Sheet</u></p><ul><li>Users able to select materials to be disassembled based on manual setup sheet</li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource confluence-content-image-border" height="90" width="800" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357061.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/35356951/image2018-9-27-15-39-47.png?version=1&modificationDate=1538033987673&api=v2" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">5. Scan WIP</td><td colspan="1" class="confluenceTd"><p>Scan WIP serial number at this field to start disassemble operation</p></td></tr><tr><td colspan="1" class="confluenceTd">6. WIP Count & Reset</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>WIP counter that keep track on how many WIPs users continuously scanned. Reset button is to reset the WIP counter to 0.</p></div></td></tr><tr><td colspan="1" class="confluenceTd">7. File Upload</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Users have the option to perform file upload on the WIPs that need disassemble. Require to grant access on “Allow Disassemble By File Upload” permission for user using it.</p><p>This option will be <strong><em>enable</em></strong> when there is NO Data Collection or there is Retained Data Collection configured.</p><p>This option will be <strong><em>disable</em> </strong>when there is Non-Retained Data Collection configured.</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource confluence-content-image-border" height="121" width="400" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/35357158.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/35356951/image2018-9-28-14-54-25.png?version=1&modificationDate=1538117666247&api=v2" /></span></p><p>File template: <strong><a href="attachments/35356951/35357057.csv" data-linked-resource-id="35357057" data-linked-resource-version="2" data-linked-resource-type="attachment" data-linked-resource-default-alias="Wips.csv" data-linked-resource-content-type="text/csv" data-linked-resource-container-id="35356951" data-linked-resource-container-version="17">Wips.csv</a></strong></p></div></td></tr></tbody></table>







- *Disassemble screen without Data Collection*

![](/.attachments/35357062.png)



*Scan WIP* 

- After selecting assemble and the material(s) that required to disassemble, users can proceed to scan the WIP.

- Once disassemble operation complete:

- WIP will move to the next PASS route step with PASS status.

- WIP view - Genealogy will not able to see the disassembled materials.

- WIP view - History - Operation will able to see the disassembled materials.
*File Upload* 

- After selecting assemble and the material(s) that required to disassemble, users will have to prepare the .csv file that contain all the WIP(s) that are going to disassemble.

- When performing File Upload:

- If the WIPs having error, system will not start and perform the disassemble operation. Users will be able to see the Error Reason in the grid, refer screenshot below.

- Total WIP's Processed: - Indicate how many WIPs had been processed from the .csv file.

- Total WIP's Disassembled: - Indicate how many WIPs had been started and disassembled successfully.

![](/.attachments/35357161.png)



- Once disassemble operation complete:


- WIPs will move to the next PASS route step with PASS status.

- WIP view - Genealogy will not able to see the disassembled materials.

- WIP view - History - Operation will able to see the disassembled materials.

*Disassemble screen with Data Collection* 


- With Data Collection configured, users will have to enter all the Data Collections required before proceed with scanning / upload WIP.

- If users cancel the data collection, the whole Disassemble operation will be Abort.
![](/.attachments/35357157.png)


*Scan WIP* 

- After selecting assemble and the material(s) that required to disassemble, users can proceed to scan the WIP.

- Once disassemble operation complete:

- WIP will move to the next PASS route step with PASS status.

- WIP view - Genealogy will not able to see the disassembled materials.

- WIP view - History - Operation will able to see the disassembled materials.

- WIP view - Data Collections collected will display at this tab accordingly.
*File Upload* 

- After selecting assemble and the material(s) that required to disassemble, users will have to prepare the .csv file that contain all the WIP(s) that are going to disassemble.

- When performing File Upload:

- If the WIPs having error, system will not start and perform the disassemble operation. Users will be able to see the Error Reason in the grid, refer screenshot below.

- Total WIP's Processed: - Indicate how many WIPs had been processed from the .csv file.

- Total WIP's Disassembled: - Indicate how many WIPs had been started and disassembled successfully.

![](/.attachments/35357161.png)



- Once disassemble operation complete:


- WIPs will move to the next PASS route step with PASS status.

- WIP view - Genealogy will not able to see the disassembled materials.

- WIP view - History - Operation will able to see the disassembled materials.

- WIP view - Data Collections collected will display at this tab accordingly.



#### **Disassemble Materials** 



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

*Single Entry* 

- When users select the assembled materials that contain Open Defect, system will prompt error and DO NOT allow users to perform disassemble action.

- When users select the assembled materials that do not contain Open Defect / contain Close Defect, users will be able to perform disassemble action.

- When users select Disassemble All, system will prompt error and DO NOT allow users to perform disassemble action



- *Batch Entry*


- After selecting materials to be disassemble in Disassemble Section, users will have the option to scan / upload WIP in Batch Mode.

- Upon scan / upload WIP, system will check if the selected disassemble materials contain Open Defect, system will prompt error and DO NOT allow users to perform disassemble action.

- When perform Disassemble or Disassemble ALL, system will prompt confirmation window

- Click "OK" to disassemble the selected items / all items. WIP will then move to next PASS route step with PASS status.

- Click "Cancel" to discard the disassemble action.


**4.When the parent WIP has an assembled child WIP, the user can seach by seach the child WIP and perform the final Disassemble.** 
![image2022-7-11_15-26-48.png](/.attachments/122748932.png)


![image2022-7-11_15-27-21.png](/.attachments/122748933.png)


**NOTE** 
: Disassemble Station (Single Entry Mode) is applicable for Repetitive flow and DO NOT support Panelization.

#### Attachments

[image2018-9-25_13-55-7.png](/.attachments/35357033.png)
[image2018-9-25_14-0-27.png](/.attachments/35357034.png)
[image2018-9-25_14-37-3.png](/.attachments/35357035.png)
[image2018-9-25_14-17-34.png](/.attachments/35357036.png)
[image2018-9-27_14-25-2.png](/.attachments/35357041.png)
[image2018-9-27_14-37-12.png](/.attachments/35357043.png)
[image2018-9-27_14-38-42.png](/.attachments/35357044.png)
[image2018-9-27_14-39-14.png](/.attachments/35357045.png)
[image2018-9-27_14-39-39.png](/.attachments/35357046.png)
[image2018-9-27_14-44-33.png](/.attachments/35357047.png)
[image2018-9-27_14-49-37.png](/.attachments/35357049.png)
[image2018-9-27_15-20-22.png](/.attachments/35357053.png)
[image2018-9-27_15-24-40.png](/.attachments/35357054.png)
[Wips.csv](/.attachments/45974896.csv)
[image2018-9-27_15-37-49.png](/.attachments/35357058.png)
[image2018-9-27_15-39-27.png](/.attachments/35357060.png)
[image2018-9-27_15-39-47.png](/.attachments/35357061.png)
[image2018-9-27_16-15-50.png](/.attachments/35357062.png)
[image2018-9-28_14-53-53.png](/.attachments/35357157.png)
[image2018-9-28_14-54-25.png](/.attachments/35357158.png)
[image2018-9-28_15-57-1.png](/.attachments/35357160.png)
[image2018-9-28_15-57-29.png](/.attachments/35357161.png)
[Wips.csv](/.attachments/35357057.csv)
[image2022-7-11_15-26-48.png](/.attachments/122748932.png)
[image2022-7-11_15-27-21.png](/.attachments/122748933.png)

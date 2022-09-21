# Introduction

Visual Aid Deviation is used to temporarily display or hide certain visual aid from displaying for a period of time. There are 3 visual aid deviation that user can configure. A "Replacement" action will display a deviated visual aid in replacement of the standard visual aid. A "Removal" action will hide a standard visual aid from displaying. An "Addition" action will display an additional deviated visual aid. All standard and deviated visual aids are configured for a material and against a specific route step. The route step is where visual aid is displayed or gets hidden if a "Removal" visual aid deviation is configured. 
If the visual aid's own validity date expires and the visual aid was configured in visual aid deviation, system will ignore the visual aid's own validity date and follow the deviation's validity dates. This is to ensure the deviation request is conformed. 



### How to get there?



::: mermaid
graph LR
A("CONFIGURE")-->0("DEVIATION")
0-->1("VISUAL AID DEVIATION (TAB)")

:::


#### Screen Activity


Visual Aid Deviation enables user to perform the following activity:

- Add a deviated visual aid. The deviated visual aid will display in addition of any standard visual aid.

- Remove a standard visual aid from displaying

- Replace a standard visual aid with a deviated visual aid

Pre Condition
The following data needs to be pre-configured before user configures Route Deviation

- Required data in Deviation's General tab is configured

- Visual Aid in
[Visual Aid Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Visual-Aid.md)
- WIP must be assigned to the deviation that contains Visual Aid deviation




#### Screen Dependency


The following screen(s) has direct dependency with Visual Aid Deviation

- All operator stations supporting visual aid except for Packout stations



#### Fields 



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="VisualAidDeviation(4.2)-VisualAidDeviation"><strong>Visual Aid Deviation</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Deviation Action</p></td><td class="confluenceTd"><ul><li>Addition - To add a new visual aid to be displayed</li><li>Removal - To remove a visual aid from displaying</li><li>Replacement - To replace the display of a standard visual aid with a deviated visual aid</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">Select the route in order to select the route step to display the deviated visual aid. Only applicable for "Addition" deviation action.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The route step to apply the deviated visual aid. <span>Only applicable for "Addition" deviation action.</span></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The material to attach the deviated visual aid. <span>Only applicable for "Addition" deviation action.</span></td></tr><tr><td colspan="1" class="confluenceTd">Original Visual Aid/Version</td><td colspan="1" class="confluenceTd">The standard visual aid to apply visual aid deviation</td></tr><tr><td colspan="1" class="confluenceTd">Deviated Visual Aid</td><td colspan="1" class="confluenceTd"><span>The deviated visual aid. Only applicable for "Addition" and "Replacement" deviation action</span></td></tr></tbody></table>


- #### **Add a deviated visual aid by configuring Deviation Action 'Addition'**



- Go to Visual Aid Deviation tab

- Choose Deviation Action "Addition"

- Enter all mandatory fields: Route, Route Step, Material, Deviated Visual Aid. The data must be active for selection

- Click the "Add" button to add this configuration in the table
![image2017-8-7 14:52:8.png](/.attachments/29918365.png)




#### Remove a visual aid by configuring Deviation Action 'Removal'




- Go to Visual Aid Deviation tab

- Choose Deviation Action "Removal"

- Enter all mandatory field: Original Visual Aid. There must be a visual aid configured for at least one of the material in the BOM for selection

- Click the "Add" button to add this configuration in the table

![image2017-8-7 15:1:35.png](/.attachments/29918364.png)





#### Replace a visual aid by configuring Deviation Action 'Replacement'




- Go to Visual Aid Deviation tab

- Choose Deviation Action "Replacement"

- Enter all mandatory field: Original Visual Aid and Deviated Visual Aid

- Click the "Add" button to add this configuration in the table


![image2017-8-7 15:33:25.png](/.attachments/29918363.png)




#### Attachments

[image2017-8-7 15:33:25.png](/.attachments/29918363.png)
[image2017-8-7 15:1:35.png](/.attachments/29918364.png)
[image2017-8-7 14:52:8.png](/.attachments/29918365.png)

# Introduction

Material Deviation is used to temporarily replace a material with another material, add a new material or remove a material that was defined in the BOM. Material deviation is normally created when there is a customer request, shortage of material or material with quality issues. Instead of modifying SAP BOM, shop floor creates material deviation here 
to accommodate this temporary condition. Material Deviation is only applicable for Planned Order or Production Order WIP that uses Assemble Point as the "recipe" to build the WIP.


### How to get there?



::: mermaid
graph LR
A("CONFIGURE")-->0("DEVIATION")
0-->1("MATERIAL DEVIATION (TAB)")

:::


#### Screen Activity


Material Deviation enables user to perform the following activity:

- Remove a material from being assembled to the WIP

- Replace a material with another material for assembly

- Edit/Delete the material deviation if deviation is at "New" status

- Configuration conflict prevention:

Once a material is configured for removal deviation, the same material cannot be configured again for a replacement deviation within the same Deviation Request.
Once a material is configured for replacement deviation, the same material cannot be configured again for a removal deviation within the same Deviation Request. 
Otherwise, a conflict will occur where the material was supposed to be replaced but also appears for removal.
Pre Condition
The following data needs to be pre-configuredbefore user configures Material Deviation

- Required data in Deviation's General tab is configured. This includes associating at least a Planned Order or Production Order so the Deviation's Material & BOM (header) is established

- Assemble Point needs to be configured for the deviation's material (seen in the deviation's header) as the material, assemble type and quantity configured in assemble point will be referenced as a standard configuration that will be deviated when material deviation is configured


- WIP must be associated to the Deviation Request to apply material deviation


#### Screen Dependency


The following screen(s) has direct dependency with Material Deviation

- Assemble station when processing Planned or Production Order WIPs

- Manual Inspection Entry (MIE) station
when processing Planned or Production Order WIPs
- Inspection & Rework station
when processing Planned or Production Order WIPs


#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Deviation Action</p></td><td class="confluenceTd"><p>List three material deviation actions:</p><ul><li>Removal - To remove a material from the BOM from being assembled to the WIP.</li><li>Replacement - To change a material from the BOM to another material for assembly. <span>The replacement material can be within or outside of the deviation's BOM. A replacement material deviation is just changing the material. The deviated material's assemble type, CRD and quantity will follow the original material's config/properties. </span></li></ul></td></tr><tr><td class="confluenceTd"><p>Original Material</p></td><td class="confluenceTd"><p>To define a non phantom material found in the deviation's BOM that will be deviated. This field will only be activated for "Removal" or "Replacement" Deviation Action. User can select any non phantom material within a multi level BOM for configuration.</p></td></tr><tr><td class="confluenceTd"><p>Deviated Material</p></td><td class="confluenceTd"><p>The material that will be added or to replace the original material. <span>This field will only be activated for "Addition" or "Replacement" Deviation Action </span></p></td></tr><tr><td colspan="1" class="confluenceTd">Assemble Type</td><td colspan="1" class="confluenceTd">When a new material is being added under "Addition" Deviation Action, user is required to configure its Assemble Type so the system will be able to determine where the material will be displayed for assembly</td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd"><span>When a new material is being added under "Addition" Deviation Action, user has an option to configure its CRD. CRDs are configured in BOM Maintenance. Since a new material is added without changing the BOM, user has an option to configure the deviated material's CRD here. </span></td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd"><span>When a new material is being added under "Addition" Deviation Action, user is required to configure its material quantity</span></td></tr></tbody></table>


- #### **Remove a material by configuring Deviation Action 'Removal'**



- Go to Material Deviation tab

- Choose Deviation Action "Removal"

- In Original Material field, select the material to remove. Only non phantom material associated to the deviation's BOM are available for remove.

- Click the Add button to add the record into the table
![image2017-10-2 13:59:3.png](/.attachments/29918313.png)


![image2017-10-2 13:59:45.png](/.attachments/29918312.png)





#### Replace a material by configuring Deviation Action 'Replacement'




- Go to Material Deviation tab

- Choose Deviation Action "Replacement"

- In Original Material field, select the material to be replaced

- In the Deviated Material field, select the material that will replace the original material. The "Original Material", o
nly non phantom material associated to the deviation's BOM are available. For "Deviated Material", user can select anymaterial 
outside of the deviation's order/assembly's BOM provided the
material is Active, is a non phantom and belongs to the same Customer/Division of the deviation request.

Note: For a replacement material deviation, only the material is changed. Other configurations such as Assemble Type, Quantity and CRD defined for the "Original Material" will be followed. 
- Click the Add button to add the record into the table

![image2017-10-2 14:10:11.png](/.attachments/29918311.png)


![image2017-10-2 14:11:7.png](/.attachments/29918310.png)





#### Events when a WIP was added to a deviation in mid production


If a material was assembled and later a 'removal' deviation was added to remove it, 
the  material will still show in the WIP's genealogy. User has to go to Assemble station to disassemble the deviated material. After the disassembly, the deviated material is no longer shown to assemble. User can also go to Inspection & Rework station to remove the deviated material from the WIP. 
The WIP's genealogy shall reflect the current material that was assembled.
System will not force the user to disassemble the deviated material immediately. It is the user's responsibility to remove the deviated material manually. The same applies for 'replacement' and 'addition' deviation. 
![image2017-10-2 15:10:41.png](/.attachments/29918303.png)





#### Material Deviation Run Time


Before the WIP is assigned to the deviation, the materials below are displayed in Assemble station.

![image2017-10-2 14:20:40.png](/.attachments/29918309.png)


User configures the following Material Deviation as above:

- Replacement Deviation: Replace material 053-0035-01 to 053-0002-02

- Removal Deviation:

Removed 101-0204-01![image2017-10-2 14:41:12.png](/.attachments/29918306.png)


Assign WIP to the deviation
![image2017-10-2 14:50:40.png](/.attachments/29918305.png)



After the WIP is assigned to the deviation, in Assemble station, changes are seen. 

- Material 101-0204-01 is no longer shown for assembly as it was removed from deviation


- Material

053-0002-02
appears replacing 053-0035-01
per the deviation

![image2017-10-2 14:54:59.png](/.attachments/29918304.png)



Caution & Exclusion

- If a deviation was added to an in progress WIP, user is required to abort and restart the WIP to see the deviation application

- Removing or replacing material (due to material deviation) for in-progress WIP must be managed carefully. System will not warn user. The production line must determine if the WIP was assembled with the material that was supposed to be removed or replaced and enqueue the WIP to the appropriate route steps to reassemble or perform rework.


- Material deviation is not supported in Assemble Validation station




#### Attachments

[image2017-10-2 15:10:41.png](/.attachments/29918303.png)
[image2017-10-2 14:54:59.png](/.attachments/29918304.png)
[image2017-10-2 14:50:40.png](/.attachments/29918305.png)
[image2017-10-2 14:41:12.png](/.attachments/29918306.png)
[image2017-10-2 14:26:39.png](/.attachments/29918307.png)
[image2017-10-2 14:26:16.png](/.attachments/29918308.png)
[image2017-10-2 14:20:40.png](/.attachments/29918309.png)
[image2017-10-2 14:11:7.png](/.attachments/29918310.png)
[image2017-10-2 14:10:11.png](/.attachments/29918311.png)
[image2017-10-2 13:59:45.png](/.attachments/29918312.png)
[image2017-10-2 13:59:3.png](/.attachments/29918313.png)
[image2017-7-28 15:0:35.png](/.attachments/29918314.png)
[image2017-7-28 14:51:43.png](/.attachments/29918315.png)
[image2017-7-28 14:49:9.png](/.attachments/29918316.png)
[image2017-7-25 22:52:13.png](/.attachments/29918317.png)
[image2017-7-25 22:27:6.png](/.attachments/29918318.png)
[image2017-7-25 22:26:26.png](/.attachments/29918319.png)
[image2017-7-25 22:25:21.png](/.attachments/29918320.png)
[image2017-7-25 22:24:31.png](/.attachments/29918321.png)
[image2017-7-25 22:23:56.png](/.attachments/29918322.png)
[image2017-7-24 23:4:9.png](/.attachments/29918323.png)
[image2017-7-24 22:59:55.png](/.attachments/29918324.png)

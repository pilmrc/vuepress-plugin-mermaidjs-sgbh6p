# Introduction

**WIP Transformation** 
client is used to assemble additional materials and disassemble excess materials after a WIP has gone through an **Order** **Conversion** . After the order conversion, the WIP’s material may change. Therefore, requiring a different set of materials to be assembled/disassembled into the WIP. Unlike the **[Assembly Station](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Assemble/Assemble-(3.0).md)** that only displays materials to be assembled according to the assemble type, the **WIP Transformation** station will display *all* the items to be assembled and all excess items to be disassembled (in red font) based on the new material’s assemble point. This behavior is similar to assembly station that is configured for ad-hoc assembly. 

- Navigation: Select
**Phoenix Client**  icon from the desktop. Double click to load the application.
- Log in screen will be loaded for user to log in. Only users with a valid user id and permission can successfully log in.









Select the WIP Transformation Route, Route Step and Resource.
![image2013-7-12 15:24:21.png](/.attachments/29917734.png)



The main interface is identical with the 
[Assembly Station](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Assemble/Assemble-(3.0).md)![image2013-7-12 15:25:24.png](/.attachments/29917733.png)



<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><strong>Phoenix Status Details</strong></td></tr><tr><td class="highlight confluenceTd"><strong>Field</strong></td><td class="highlight confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">User</td><td class="confluenceTd">Display the current user who logged on to the station</td></tr><tr><td class="confluenceTd">Route</td><td class="confluenceTd">Display the Route of the station</td></tr><tr><td class="confluenceTd">Route Step</td><td class="confluenceTd">Display the Route Step of the station</td></tr><tr><td class="confluenceTd">Resource</td><td class="confluenceTd">Display the Resource that is being used at the station</td></tr></tbody></table>



### **Start WIP** 


To Start a WIP, user can scan in the WIP’s serial number or search for a serial number by clicking on the magnifying glass icon. A list will be displayed with all WIP’s serial number that is currently in queue in the station that is waiting for WIP transformation.
![image2013-7-12 15:28:2.png](/.attachments/29917731.png)


Since WIP Transformation station is designed to assemble all materials as defined in the material’s assemble point, visual aids configured for each of the materials to be assembled will be displayed. Visual aids will appear in a separate window from the main WIP Transformation client. If there are multiple visual aids, user can select the desired visual aid to view from the drop down list.
![image2013-7-12 15:28:44.png](/.attachments/29917730.png)


The 
**WIP Transformation** interface is similar to the **Assembly Station** ’s interface. Refer to [Assembly Station](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Assemble/Assemble-(3.0).md)for details.In the
**Items to Assemble** tab, the WIP Transformation client will display additional materials to be assembled into the WIP based on the new top level material’s assemble point. The assembly process is similar to the standard Assembly Station. Refer to section 1.1 of the Assembly station.![image2013-7-12 15:30:45.png](/.attachments/29917728.png)



In the 
**Items Assembled** tab, rows in black font depicts materials that has been assembled into the WIP and are still required by the new top level material’s assemble point. Rows in red font depicts material that is no longer required by the new top level material’s assemble point and needs to be disassembled permanently from the WIP.![image2013-7-12 15:30:9.png](/.attachments/29917729.png)



<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><p><strong>WIP Details</strong></p></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>Display the WIP's serial number that the user is currently working on</p></td></tr><tr><td class="confluenceTd"><p>BOM</p></td><td class="confluenceTd"><p>Display the BOM of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Display the material name of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Customer Order</p></td><td class="confluenceTd"><p>If the WIP is generated from a customer order, this field will display the Customer Order number.</p></td></tr><tr><td class="confluenceTd"><p>Shop Floor Order</p></td><td class="confluenceTd"><p>Display the SFO that is associated to the WIP</p></td></tr><tr><td class="confluenceTd"><p>Batch</p></td><td class="confluenceTd"><p>Display the batch of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Planned Order</p></td><td class="confluenceTd"><p>If the WIP is generated from a planned order, this field will display the Planned Order number.</p></td></tr><tr><td colspan="2" class="confluenceTd"><p><strong>Items to Assemble Tab Details</strong></p></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Seq.</p></td><td class="confluenceTd"><p>Display the sequence of the material to be assemble that has been configured in Assemble Point Configuration.</p></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>Display the serial number that is required for the material.</p></td></tr><tr><td class="confluenceTd"><p>MPN</p></td><td class="confluenceTd"><p>Display the MPN that is required for the material.</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Display the material name that is required to be assembled to the WIP</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Display the material's description</p></td></tr><tr><td class="confluenceTd"><p>Qty</p></td><td class="confluenceTd"><p>Display the quantity of material that is required to be assembed</p></td></tr><tr><td class="confluenceTd"><p>CRD</p></td><td class="confluenceTd"><p>Display the CRD location of the material on the WIP</p></td></tr></tbody></table>



#### Attachments

[image2013-7-12 15:30:45.png](/.attachments/29917728.png)

[image2013-7-12 15:30:9.png](/.attachments/29917729.png)

[image2013-7-12 15:28:44.png](/.attachments/29917730.png)

[image2013-7-12 15:28:2.png](/.attachments/29917731.png)

[image2013-7-12 15:26:41.png](/.attachments/29917732.png)

[image2013-7-12 15:25:24.png](/.attachments/29917733.png)

[image2013-7-12 15:24:21.png](/.attachments/29917734.png)


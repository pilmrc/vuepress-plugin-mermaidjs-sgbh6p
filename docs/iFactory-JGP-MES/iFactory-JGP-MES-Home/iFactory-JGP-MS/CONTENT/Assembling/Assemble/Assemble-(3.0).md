# Introduction

The Assemble station enables users to assemble materials such as sub-assemblies, serialized materials and unserialized materials to a WIP. The Assemble station is a client side application (resides on the computer being used) which is different from other stations which can be accessed through a web browser.


- Navigation: Select
**Phoenix Client**  icon from the desktop. Double click to load the application.
- Log in screen will be loaded for user to log in. Only users with a valid user id and permissions can successfully log in.

![image2013-7-11 11:28:31.png](/.attachments/29917683.png)



![image2013-7-11 11:29:31.png](/.attachments/29917682.png)



When the Assemble Station is accessed for the first time by a user, a screen will pop up to select Route, Route Step and Resource. Once loaded, the station will load the same configurations by default, unless users make changes to other Route, Route Step or Resource.

![image2013-7-11 11:34:46.png](/.attachments/29917681.png)



In the Assemble Station there are different sections displaying different information. The “Phoenix Status” displays the Route, Route Step and Resource that users log on to. It also displays the user who is currently logged on to the station. 
![image2013-7-11 11:36:7.png](/.attachments/29917680.png)



<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><p><strong>Phoenix Status Details</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>User</p></td><td class="confluenceTd"><p>Display the current user who logged on to the station</p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>Display the Route of the station</p></td></tr><tr><td class="confluenceTd"><p>Route Step</p></td><td class="confluenceTd"><p>Display the Route Step of the station</p></td></tr><tr><td class="confluenceTd"><p>Resource</p></td><td class="confluenceTd"><p>Display the Resource that is being used at the station</p></td></tr></tbody></table>

**To Start a WIP, scan in the WIP’s serial number or search for a serial number by clicking on the magnify glass icon. A list will pop up to display all WIP’s serial number that are currently in queue in the station that is waiting for assembly.** 
![image2013-7-11 11:42:9.png](/.attachments/29917679.png)


![image2013-7-11 11:42:54.png](/.attachments/29917677.png)



Users can also filter by Order (Planned Order or Delivery Order) to start WIP. 
![image2013-7-11 11:43:22.png](/.attachments/29917676.png)


![image2013-7-11 11:45:24.png](/.attachments/29917674.png)


When filtered by Order, the pop up list will only display all WIP’s serial number that are associated to the selected Order.
![image2013-7-11 12:52:29.png](/.attachments/29917672.png)



Select a WIP’s serial number from the list and click “Start” button to start the assembly.
![image2013-7-11 12:53:11.png](/.attachments/29917671.png)



Visual Aids (VA) will be displayed in Browser View if there are VAs configured for the material at the assemble route step. Display panel at bottom will display the status of the operation and a timer.
![image2013-7-11 12:54:50.png](/.attachments/29917670.png)



Another pop up window will be displayed for assembly. The assembly screen will display the WIP’s Details, materials to be assembled and materials that have been assembled.
![image2013-7-11 12:55:34.png](/.attachments/29917669.png)


<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><p><strong>WIP Details</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>Display the WIP's serial number that the user is currently working on</p></td></tr><tr><td class="confluenceTd"><p>BOM</p></td><td class="confluenceTd"><p>Display the BOM of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Display the material name of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Customer Order</p></td><td class="confluenceTd"><p>If the WIP is generated from a customer order, this field will display the Customer Order number.</p></td></tr><tr><td class="confluenceTd"><p>Shop Floor Order</p></td><td class="confluenceTd"><p>Display the SFO that is associated to the WIP</p></td></tr><tr><td class="confluenceTd"><p>Batch</p></td><td class="confluenceTd"><p>Display the batch of the WIP</p></td></tr><tr><td class="confluenceTd"><p>Planned Order</p></td><td class="confluenceTd"><p>If the WIP is generated from a planned order, this field will display the Planned Order number.</p></td></tr><tr><td colspan="2" class="confluenceTd"><p><strong>Items to Assemble Tab Details</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Seq.</p></td><td class="confluenceTd"><p>Display the sequence of the material to be assemble that has been configured in Assemble Point Configuration.</p></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>Display the serial number that is required for the material.</p></td></tr><tr><td class="confluenceTd"><p>MPN</p></td><td class="confluenceTd"><p>Display the MPN that is required for the material.</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Display the material name that is required to be assembled to the WIP</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Display the material's description</p></td></tr><tr><td class="confluenceTd"><p>Qty</p></td><td class="confluenceTd"><p>Display the quantity of material that is required to be assembed</p></td></tr><tr><td class="confluenceTd"><p>CRD</p></td><td class="confluenceTd"><p>Display the CRD location of the material on the WIP</p></td></tr></tbody></table>

**Display the WIP’s serial number that the user is currently working on** 
BOM
Display the BOM of the WIP
Material
Display the material name of the WIP
Customer Order
If the WIP is generated from a customer order, this field will display the Customer Order number.
Shop Floor Order
Display the SFO that is associated to the WIP
Batch
Display the batch of the WIP
Planned Order
If the WIP is generated from a planned order, this field will display the Planned Order number.
**Items to Assemble Tab Details** 
**Field** 
**Description** 
Seq.
Display the sequence of the material to be assemble that has been configured in Assemble Point Configuration.
Serial Number
Display the serial number that is required for the material.
MPN
Display the MPN that is required for the material.
Material
Display the material name that is required to be assembled to the WIP
Description
Display the material’s description
Qty
Display the quantity of material that is required to be assembed
CRD
Display the CRD location of the material on the WIP

The right part of the screen is the where users are required to scan in information for assembly. If a sub-assembly is required to be assembled, the Serial Number field will be displayed for user entry. If serialized material is required to be assembled, the serial number field will be displayed for user entry. For unserialized material, the material name field will be displayed for user entry if “Enforce Material Name” is enabled in Material Maintenance screen. Else, the material will be auto-assembled without user entry. Some materials require Material Matching by Manufacturer or MPN depending on configuration in Material Maintenance screen.
![image2013-7-11 12:56:24.png](/.attachments/29917668.png)



On the Items Assembled tab, the system will display all items that have been assembled to the WIP and allows users to disassemble items.
![image2013-7-11 12:58:12.png](/.attachments/29917667.png)


<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><p><strong>Items Assembled Tab Details</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Material Identifier</p></td><td class="confluenceTd"><p>Display the serial number of WIP or Serialized Material</p></td></tr><tr><td class="confluenceTd"><p>MPN</p></td><td class="confluenceTd"><p>Display the MPN of the material if MPN is collected during assembly</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Display the material name of the item</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Display the description of the material</p></td></tr><tr><td class="confluenceTd"><p>CRD</p></td><td class="confluenceTd"><p>Display the CRD location of the item on the WIP</p></td></tr><tr><td class="confluenceTd"><p>Assembled By</p></td><td class="confluenceTd"><p>Display the user who assemble the item</p></td></tr><tr><td class="confluenceTd"><p>Assembled Date</p></td><td class="confluenceTd"><p>Display the date and time when the item is being assembled</p></td></tr><tr><td class="confluenceTd"><p>Qty</p></td><td class="confluenceTd"><p>Display the quantity of the material that has been assembled</p></td></tr><tr><td class="confluenceTd"><p>Disassemble All Button</p></td><td class="confluenceTd"><p>User can click this button to disassemble all items in the list.</p></td></tr><tr><td class="confluenceTd"><p>Disassemble Button</p></td><td class="confluenceTd"><p>User can select item from the list and click this button to disassemble it.</p></td></tr><tr><td class="confluenceTd"><p>Undo Button</p></td><td class="confluenceTd"><p>This button will clear all selection done by user for disassemble.</p></td></tr><tr><td class="confluenceTd"><p>Save / Refresh Button</p></td><td class="confluenceTd"><p>This is a confirmation button to disassemble the items. This button will trigger the system to disassemble all selected items done by user and save the records into database.</p></td></tr></tbody></table>



### **Assembling Material** 


All items required to be assembled will be displayed in the “Items to Assemble” list. Users can scan in or enter the serial number on the right side to assemble the selected item in the list.
![image2013-7-12 9:4:11.png](/.attachments/29917666.png)



If a valid serial number has been entered, the material will be removed from “Items to Assemble” tab and moved to “Items Assembled” tab.  If an invalid Serial Number has been entered, system will display an error.
![image2013-7-12 9:4:59.png](/.attachments/29917665.png)



Some materials require users to enter the Manufacturer Part Number (MPN) during assembly. Users need to scan in or enter the valid MPN configured in Material Maintenance. If an invalid MPN value is entered, system will not assemble the material and display an error message.
![image2013-7-12 9:5:33.png](/.attachments/29917664.png)



If all information entered is valid, the system will assemble the material and the material will be moved to “Items Assembled” tab.
![image2013-7-12 9:6:5.png](/.attachments/29917663.png)





### Disassembling Material

In the “Items Assembled” tab, the system displays all items that have been assembled. To disassemble items, users can click on “Disassemble All” button to highlight all items to be disassembled...
![image2013-7-12 9:7:39.png](/.attachments/29917662.png)


Or Users can also select specific material and click on “Disassemble” button to highlight the items to be disassembled.
![image2013-7-12 9:8:23.png](/.attachments/29917661.png)



When all selections have been made to be disassembled, user should click on “Save/Refresh” button to trigger the system for confirmation. The system will disassemble the selected items and move them back to “Items to Assemble” tab.
![image2013-7-12 9:20:4.png](/.attachments/29917660.png)



![image2013-7-12 9:20:44.png](/.attachments/29917659.png)





### Completing WIP

When all items have been assembled successfully, the system will complete the assembly by closing the assemble screen and returning to the main Assemble Station screen. A “Pass” message will be displayed and a message with the next route step the WIP has been enqueued at.
![image2013-7-12 9:21:46.png](/.attachments/29917658.png)





#### Attachments

[image2013-7-12 9:21:46.png](/.attachments/29917658.png)
[image2013-7-12 9:20:44.png](/.attachments/29917659.png)
[image2013-7-12 9:20:4.png](/.attachments/29917660.png)
[image2013-7-12 9:8:23.png](/.attachments/29917661.png)
[image2013-7-12 9:7:39.png](/.attachments/29917662.png)
[image2013-7-12 9:6:5.png](/.attachments/29917663.png)
[image2013-7-12 9:5:33.png](/.attachments/29917664.png)
[image2013-7-12 9:4:59.png](/.attachments/29917665.png)
[image2013-7-12 9:4:11.png](/.attachments/29917666.png)
[image2013-7-11 12:58:12.png](/.attachments/29917667.png)
[image2013-7-11 12:56:24.png](/.attachments/29917668.png)
[image2013-7-11 12:55:34.png](/.attachments/29917669.png)
[image2013-7-11 12:54:50.png](/.attachments/29917670.png)
[image2013-7-11 12:53:11.png](/.attachments/29917671.png)
[image2013-7-11 12:52:29.png](/.attachments/29917672.png)
[image2013-7-11 12:5:32.png](/.attachments/29917673.png)
[image2013-7-11 11:45:24.png](/.attachments/29917674.png)
[image2013-7-11 11:44:35.png](/.attachments/29917675.png)
[image2013-7-11 11:43:22.png](/.attachments/29917676.png)
[image2013-7-11 11:42:54.png](/.attachments/29917677.png)
[image2013-7-11 11:42:45.png](/.attachments/29917678.png)
[image2013-7-11 11:42:9.png](/.attachments/29917679.png)
[image2013-7-11 11:36:7.png](/.attachments/29917680.png)
[image2013-7-11 11:34:46.png](/.attachments/29917681.png)
[image2013-7-11 11:29:31.png](/.attachments/29917682.png)
[image2013-7-11 11:28:31.png](/.attachments/29917683.png)

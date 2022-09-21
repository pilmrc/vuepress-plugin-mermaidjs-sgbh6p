# Introduction

The Palletization station enables user to pack containers into a pallet for a delivery order. Users can create pallets and pack containers into it. For Delivery Packout, please refer to the Delivery Packout Station Wiki.


### How to get there?


Select Production from the horizontal drop down bar, then select the Station Login link.
![image2013-7-24 13:12:38.png](/.attachments/29918923.png)



Select Station Type, Factory, Route, Route Step and Resource and log in to the station. Or if you've logged into the Station before (and the selection parameters are the same), click on the green arrow to go to that station.
![image2013-7-24 13:15:0.png](/.attachments/29918922.png)


<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Station Type</p></td><td class="confluenceTd"><p>All predefined station types will be displayed here for user selection.</p></td></tr><tr><td class="confluenceTd"><p>Factory</p></td><td class="confluenceTd"><p>Search field for all the factories that have been configured in system.</p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>Search field for all the Routes that have been configured in system and is associated to the selected Factory.</p></td></tr><tr><td class="confluenceTd"><p>Route Step</p></td><td class="confluenceTd"><p>Search field for all the Route Steps that have been configured in the selected Route and are associated to the selected Station Type.</p></td></tr><tr><td class="confluenceTd"><p>Resource</p></td><td class="confluenceTd"><p>Search field for all the Resources that have been associated to the selected Route Step.</p></td></tr><tr><td class="confluenceTd"><p>Login Button</p></td><td class="confluenceTd"><p>Click this button to enter the selected station. Only authorized user can enter the station.</p></td></tr><tr><td class="confluenceTd"><p>Reset Button</p></td><td class="confluenceTd"><p>Click this button to clear all selections.</p></td></tr><tr><td class="confluenceTd"><p>Recent Login Stations</p></td><td class="confluenceTd"><p>Select and click on the recent login station. This section allow user to log in to frequent visited stations without making all selections repeatingly.</p></td></tr></tbody></table>


Once in the Palletization station, Station Details displays details regarding route, route step, resources being used at an operation and operator. Pack Mode permits end users to select Delivery Number and Container Type for packing. The Container section displays the pallet that has been generated and allows users to handle the pallet (such as Open, Close or Scrap the pallet). The 'Scan Item To Be Palletized' section allows user to scan in or key in containers that need to be palletized.
![image2013-7-24 13:22:31.png](/.attachments/29918921.png)



<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><p><strong>Station Details</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>The route of the palletization station</p></td></tr><tr><td class="confluenceTd"><p>Route Step</p></td><td class="confluenceTd"><p>The route step of the palletization station</p></td></tr><tr><td class="confluenceTd"><p>Resource</p></td><td class="confluenceTd"><p>The resource that is used at palletization station</p></td></tr><tr><td class="confluenceTd"><p>Operator</p></td><td class="confluenceTd"><p>The operator who log in to palletization station and perform palletizing</p></td></tr><tr><td colspan="2" class="confluenceTd"><p><strong>Pack Mode</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Delivery Number</p></td><td class="confluenceTd"><p>User can select the Delivery Number for palletization. The delivery needs to complete packout and audit before palletization.</p></td></tr><tr><td class="confluenceTd"><p>Container Type</p></td><td class="confluenceTd"><p>User can select the Container Type that has been created in <a href="http://usplnd0wiki01:8090/display/PB/Container+Type" rel="nofollow">Container Type Maintenance</a> screen. Container Type that has Pallet usage type only will be displayed for selection.</p></td></tr><tr><td class="confluenceTd"><p>Container Type Status</p></td><td class="confluenceTd"><p>Display the status of the selected Container Type</p></td></tr><tr><td class="confluenceTd"><p>Container Type Usage</p></td><td class="confluenceTd"><p>Display the usage of the selected Container Type. The value shall be Pallet.</p></td></tr><tr><td class="confluenceTd"><p>Create Handling Unit Button</p></td><td class="confluenceTd"><p>This button will trigger the system to generate a new pallet for the selected Container Type</p></td></tr><tr><td colspan="2" class="confluenceTd"><p><strong>Container</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Container</p></td><td class="confluenceTd"><p>Display the pallet number. User can select to generate new handling unit or select from a list of existing pallets.</p></td></tr><tr><td class="confluenceTd"><p>Container Status</p></td><td class="confluenceTd"><p>Display the status of the pallet. The value shall be Opened, Closed, Scrapped or Packed.</p></td></tr><tr><td class="confluenceTd"><p>Total Items</p></td><td class="confluenceTd"><p>Display the total quantity of item count being packed in the pallet</p></td></tr><tr><td class="confluenceTd"><p>Total Estimated Weight</p></td><td class="confluenceTd"><p>If the weight of material is configured in <a href="http://usplnd0wiki01:8090/display/PB/Material" rel="nofollow">Material Maintenance</a> screen - Packout Attributes tab, system shall be able to display the total estimated weight of packed items.</p></td></tr><tr><td class="confluenceTd"><p>Total Estimated Volume</p></td><td class="confluenceTd"><p>If the volume of material is configured in <a href="http://usplnd0wiki01:8090/display/PB/Material" rel="nofollow">Material Maintenance</a> screen - Packout Attributes tab, system shall be able to display the total estimated volume of packed items.</p></td></tr><tr><td class="confluenceTd"><p>Enforce Weight</p></td><td class="confluenceTd"><p>If the Enforce Weight is checked in Container Type Maintenance screen, this check box will be checked.</p></td></tr><tr><td class="confluenceTd"><p>Enforce Volume</p></td><td class="confluenceTd"><p>If the Enforce Volume is checked in Container Type Maintenance screen, this check box will be checked.</p></td></tr><tr><td class="confluenceTd"><p>Open / Close Button</p></td><td class="confluenceTd"><p>This button will trigger the system to close a selected pallet if it is open and vice versa.</p></td></tr><tr><td class="confluenceTd"><p>Scrap Button</p></td><td class="confluenceTd"><p>This button will trigger the system to scrap the selected  pallet</p></td></tr><tr><td class="confluenceTd"><p>Add Attachment Button</p></td><td class="confluenceTd"><p>This button will load a pop up screen for user to upload attachment.</p></td></tr><tr><td colspan="2" class="confluenceTd"><p><strong>Scan Container To Be Palletized</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Scan</p></td><td class="confluenceTd"><p>User can scan or enter the container number for packing</p></td></tr><tr><td class="confluenceTd"><p>Name</p></td><td class="confluenceTd"><p>Display the serial number of the WIP or packed container.</p></td></tr><tr><td class="confluenceTd"><p>Material Name</p></td><td class="confluenceTd"><p>Display the material name of the WIP item</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Display the description of the WIP item's material</p></td></tr><tr><td class="confluenceTd"><p>Palletized By</p></td><td class="confluenceTd"><p>Display the user who perform the palletize operation</p></td></tr><tr><td class="confluenceTd"><p>Palletized At</p></td><td class="confluenceTd"><p>Display the date and time of the palletize operation</p></td></tr><tr><td class="confluenceTd"><p>Palletize Button</p></td><td class="confluenceTd"><p>This button will trigger the system to pack the scanned in item</p></td></tr><tr><td class="confluenceTd"><p>Depalletize Button</p></td><td class="confluenceTd"><p>This button will trigger the system to unpack the selected item at “Palletized Containers” section</p></td></tr><tr><td class="confluenceTd"><p>Complete Palletization</p></td><td class="confluenceTd"><p>This button will trigger the system to complete the palletization activity. Additional validation will be performed by the system to ensure all required items have been packed and all pallets have been closed.</p></td></tr></tbody></table>

**Display the description of the WIP item’s material** 
Palletized By
Display the user who perform the palletize operation
Palletized At
Display the date and time of the palletize operation
Palletize Button
This button will trigger the system to pack the scanned in item
Depalletize Button
This button will trigger the system to unpack the selected item at “Palletized Containers” section
Complete Palletization
This button will trigger the system to complete the palletization activity. Additional validation will be performed by the system to ensure all required items have been packed and all pallets have been closed.


All Delivery Order containers that are needed to be palletized will be listed in the 'Containers To Be Palletizeds section. It will display container number, packed item, item type, packed quantity and material name of the packed item. 
Pallets that have been created and containers that have been palletized will be display at 'Palletized Containers' section. This section will display the pallet number, container number, packed item, item type, packed quantity and material name.
![image2013-7-24 13:27:33.png](/.attachments/29918920.png)





#### Creating Pallets


User is able to select Container Type with Pallet usage type that has been configured in Container Type Maintenance screen and click on the ‘Create Handling Unit” button. System will generate a new pallet name and list the new pallet at Container section and Palletized Containers section.
![image2013-7-24 13:28:52.png](/.attachments/29918919.png)




#### Palletizing Containers


At the 'Scan Container To Be Palletized' section, user shall be able to enter or scan in the container number to be palletized.
![image2013-7-24 13:30:25.png](/.attachments/29918918.png)



If a user scans in an invalid container number, the system will not palletize the container and prompt the following error message.
![image2013-7-24 13:32:31.png](/.attachments/29918917.png)



When the correct container number is entered, the system will palletize the container into the selected pallet. Container and packed items in 'Containers To Be Palletized' will be moved to 'Palletized Containers' section.
![image2013-7-24 13:34:23.png](/.attachments/29918916.png)




#### Depalletizing Containers


Users can click on “Palletized Containers” grid view to make selection and click on “Depalletize” button to depalletize the container.
![image2013-7-24 13:36:31.png](/.attachments/29918915.png)



When the container is successfully depalletize, the container will be removed from the “Palletized Container” grid view and move back to “Containers To Be Palletized” section.
![image2013-7-24 13:39:48.png](/.attachments/29918913.png)




#### Completing Palletization


When all containers have been palletized, users can click on the “Complete Palletization” button to end the palletize process. When the button is triggered, system will validate all pallets are closed and all containers are palletized before completing palletization. If users have not completly palletized all containers, the system will prompt a validation checklist to notify user.
![image2013-7-24 13:41:59.png](/.attachments/29918912.png)



If all containers have been palletized and all pallets are closed, system will allow user to complete the palletization. When the palletization is completed, all buttons will be disabled.
![image2013-7-24 13:42:52.png](/.attachments/29918911.png)


![image2013-7-24 13:44:13.png](/.attachments/29918910.png)





#### Attachments

[image2013-7-24 13:44:13.png](/.attachments/29918910.png)
[image2013-7-24 13:42:52.png](/.attachments/29918911.png)
[image2013-7-24 13:41:59.png](/.attachments/29918912.png)
[image2013-7-24 13:39:48.png](/.attachments/29918913.png)
[image2013-7-24 13:37:42.png](/.attachments/29918914.png)
[image2013-7-24 13:36:31.png](/.attachments/29918915.png)
[image2013-7-24 13:34:23.png](/.attachments/29918916.png)
[image2013-7-24 13:32:31.png](/.attachments/29918917.png)
[image2013-7-24 13:30:25.png](/.attachments/29918918.png)
[image2013-7-24 13:28:52.png](/.attachments/29918919.png)
[image2013-7-24 13:27:33.png](/.attachments/29918920.png)
[image2013-7-24 13:22:31.png](/.attachments/29918921.png)
[image2013-7-24 13:15:0.png](/.attachments/29918922.png)
[image2013-7-24 13:12:38.png](/.attachments/29918923.png)

# Introduction


The Delivery Packout station enables user to pack Delivery items into Containers. Users can also pack WIP, Serialized Material, Unserialized Material and Inventory ID items which belong to a Delivery Order.  




### How to get there?




::: mermaid
graph LR
A("PRODUCTION")-->0("STATION LOGIN")
0-->1("STATION TYPE")
1-->2("DELIVERY PACKOUT")

:::
![image2013-7-12 11:11:8.png](/.attachments/29918908.png)


![image2013-7-12 11:11:44.png](/.attachments/29918907.png)


<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Station Type</p></td><td class="confluenceTd"><p>All predefined station types will be displayed here for user selection.</p></td></tr><tr><td class="confluenceTd"><p>Factory</p></td><td class="confluenceTd"><p>Search field for all the factories that have been configured in system.</p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>Search field for all the Routes that have been configured in system and is associated to the selected Factory.</p></td></tr><tr><td class="confluenceTd"><p>Route Step</p></td><td class="confluenceTd"><p>Search field for all the Route Steps that have been configured in the selected Route and are associated to the selected Station Type.</p></td></tr><tr><td class="confluenceTd"><p>Resource</p></td><td class="confluenceTd"><p>Search field for all the Resources that have been associated to the selected Route Step.</p></td></tr><tr><td class="confluenceTd"><p>Login Button</p></td><td class="confluenceTd"><p>Click this button to enter the selected station. Only authorized user can enter the station.</p></td></tr><tr><td class="confluenceTd"><p>Reset Button</p></td><td class="confluenceTd"><p>Click this button to clear all selections.</p></td></tr><tr><td class="confluenceTd"><p>Recent Login Stations</p></td><td class="confluenceTd"><p>Select and click on the recent login station. This section allow user to log in to frequent visited stations without making all selections repeatingly.</p></td></tr></tbody></table>


Precondition
The following items need to be pre-configured to login Delivery Packout

- [Resource Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance/Resource-Type.md)

- [Resources Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

- [Container Type (3.0)](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Delivery-Packout.md)
(creating pallet or container)
- [WIP Release - Customer Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order/WIP-Release-%2D-Customer-Order.md)
(Release Delivery Items)
Screen Activity
Delivery Packout enables user to perform the following activity:

- Create, Open, Close and Scrap containers or pallets

- Pack and unpack Delivery Items into a container

- Pack and unpack container into another container or pallet

- Complete packout

- View all containers and packed items in a tree view format


#### Screen Dependency


The following screen(s) has direct dependency with Delivery Packout

- [Container Type (3.0)](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Delivery-Packout.md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

- [WIP Release - Customer Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order/WIP-Release-%2D-Customer-Order.md)
In the Delivery Packout station, the Station Details section displays details regarding route, route step, resources being used at an operation and the operator. Pack Mode permits end users to select Delivery Number and Container Type for packing. Container section display the handling unit that has been generated and allows users to handle the containers such as Open, Close or Scrap the container. Scan Item To Be Packed section allows users to scan in or enter the serial number or material name that needs to be packed.
![image2013-7-12 15:18:12.png](/.attachments/29918905.png)


<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><p><strong>Station Details</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>The route of the packout station</p></td></tr><tr><td class="confluenceTd"><p>Route Step</p></td><td class="confluenceTd"><p>The route step of the packout station</p></td></tr><tr><td class="confluenceTd"><p>Resource</p></td><td class="confluenceTd"><p>The resource that is used at packout station</p></td></tr><tr><td class="confluenceTd"><p>Operator</p></td><td class="confluenceTd"><p>The operator who log in to packout station and perform packing</p></td></tr><tr><td colspan="2" class="confluenceTd"><p><strong>Pack Mode</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Delivery Number</p></td><td class="confluenceTd"><p>User can select the Delivery Number for packing</p></td></tr><tr><td class="confluenceTd"><p>Container Type</p></td><td class="confluenceTd"><p>User can select the Container Type that has been created in <a href="http://usplnd0wiki01:8090/display/PB/Container+Type" rel="nofollow">Container Type Maintenance</a> screen</p></td></tr><tr><td class="confluenceTd"><p>Container Type Status</p></td><td class="confluenceTd"><p>Display the status of the selected Container Type</p></td></tr><tr><td class="confluenceTd"><p>Container Type Usage</p></td><td class="confluenceTd"><p>Display the usage of the selected Container Type. The value shall be Box or Pallet.</p></td></tr><tr><td class="confluenceTd"><p>Create Handling Unit Button</p></td><td class="confluenceTd"><p>This button will trigger the system to generate a new handling unit for the selected Container Type</p></td></tr><tr><td colspan="2" class="confluenceTd"><p><strong>Container</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Container</p></td><td class="confluenceTd"><p>Display the handling unit serial number. User can select to generate new handling unit or select from a list of existing handling units.</p></td></tr><tr><td class="confluenceTd"><p>Container Status</p></td><td class="confluenceTd"><p>Display the status of the handling unit. The value shall be Opened, Closed, Scrapped or Packed.</p></td></tr><tr><td class="confluenceTd"><p>Total Items</p></td><td class="confluenceTd"><p>Display the total quantity of item count being packed in the handling unit</p></td></tr><tr><td class="confluenceTd"><p>Total Estimated Weight</p></td><td class="confluenceTd"><p>If the weight of material is configured in <a href="http://usplnd0wiki01:8090/display/PB/Material" rel="nofollow">Material Maintenance</a> screen - Packout Attributes tab, system shall be able to display the total estimated weight of packed items.</p></td></tr><tr><td class="confluenceTd"><p>Total Estimated Volume</p></td><td class="confluenceTd"><p>If the volume of material is configured in <a href="http://usplnd0wiki01:8090/display/PB/Material" rel="nofollow">Material Maintenance</a> screen - Packout Attributes tab, system shall be able to display the total estimated volume of packed items.</p></td></tr><tr><td class="confluenceTd"><p>Enforce Weight</p></td><td class="confluenceTd"><p>If the Enforce Weight is checked in Container Type Maintenance screen, this check box will be checked.</p></td></tr><tr><td class="confluenceTd"><p>Enforce Volume</p></td><td class="confluenceTd"><p>If the Enforce Volume is checked in Container Type Maintenance screen, this check box will be checked.</p></td></tr><tr><td class="confluenceTd"><p>Open / Close Button</p></td><td class="confluenceTd"><p>This button will trigger the system to close a selected container if it is open and vice versa.</p></td></tr><tr><td class="confluenceTd"><p>Scrap Button</p></td><td class="confluenceTd"><p>This button will trigger the system to scrap the selected  container</p></td></tr><tr><td class="confluenceTd"><p>Add Attachment Button</p></td><td class="confluenceTd"><p>This button will load a pop up screen for user to upload attachment.</p></td></tr><tr><td colspan="2" class="confluenceTd"><p><strong>Scan Item To Be Packed</strong></p></td></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Scan</p></td><td class="confluenceTd"><p>User can scan or enter the packed item's serial number here</p></td></tr><tr><td class="confluenceTd"><p>Name</p></td><td class="confluenceTd"><p>Display the serial number of the packed item or packed container.</p></td></tr><tr><td class="confluenceTd"><p>Material Name</p></td><td class="confluenceTd"><p>Display the material name of the packed item</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Display the description of the packed item's material</p></td></tr><tr><td class="confluenceTd"><p>Packed By</p></td><td class="confluenceTd"><p>Display the user who perform the packing operation</p></td></tr><tr><td class="confluenceTd"><p>Packed At</p></td><td class="confluenceTd"><p>Display the date and time of the packing operation</p></td></tr><tr><td class="confluenceTd"><p>Pack Button</p></td><td class="confluenceTd"><p>This button will trigger the system to pack the scanned in item</p></td></tr><tr><td class="confluenceTd"><p>Unpack Button</p></td><td class="confluenceTd"><p>This button will trigger the system to unpack the selected item at “Packed Items” section</p></td></tr><tr><td class="confluenceTd"><p>Complete Packout</p></td><td class="confluenceTd"><p>This button will trigger the system to complete the packout activity. Additional validation will be performed by the system to ensure all required items have been packed and all containers have been closed.</p></td></tr></tbody></table>

**Display the description of the packed item’s material** 
Packed By
Display the user who perform the packing operation
Packed At
Display the date and time of the packing operation
Pack Button
This button will trigger the system to pack the scanned in item
Unpack Button
This button will trigger the system to unpack the selected item at “Packed Items” section
Complete Packout
This button will trigger the system to complete the packout activity. Additional validation will be performed by the system to ensure all required items have been packed and all containers have been closed.

All Delivery Order Line Items that need to be pack will be listed in the Items To Be Packed section. This section will display Delivery Number, Material Name, packed quantity, quantity required and Serial Number of the WIP that needs to be packed. There are three 3 color indicators next to every line item: Red, Orange and Green. Red represents items yet to be packed. Orange represents material that has been partially packed. Green represents items have been packed.
Containers that have been created and items that have been packed will be display in the at Packed Items section. This section will display the container name, WIP Serial number, material name, packed item type and the quantity that has been packed.
![for WIKI.JPG](/.attachments/29918893.jpg)





### Create Container

User is able to select Container Type that has been configured in Container Type Maintenance screen and click on the ‘Create Handling Unit” button. System will generate a new containers name and list the new container at Container section and Packed Items section.
![for WIKI.JPG](/.attachments/29918893.jpg)





### Pack Delivery Item

At “Scan Item To Be Packed” section, users are able to enter or scan in the WIP serial number or material to be packed.
![for WIKI.JPG](/.attachments/29918893.jpg)



If the user scans in invalid material or invalid WIP serial number, system will not pack the item and display an error message.
![for WIKI.JPG](/.attachments/29918893.jpg)



If the correct material or WIP Serial Number is entered, the system will pack the item into the selected container. The indicator at the “Items To Be Packed” section will turn to green and increase the packed quantity.
![for WIKI.JPG](/.attachments/29918893.jpg)





### Unpack Delivery Item

Users can click on “Packed Items” grid view to make a selection and click on “Unpack” button to unpack the item.
![for WIKI.JPG](/.attachments/29918893.jpg)



When the item is successfully unpacked, the item will be removed from the “Packed Items” grid view. The “Items To Be Packed” section will reduce the packed quantity and indicator will change back to Red.
![for WIKI.JPG](/.attachments/29918893.jpg)





### Complete Packout

When all delivery items have been packed, users can click on the “Complete Packout” button to end the packout process. When the button is triggered, system will validate all packed items against delivery items. The system will also validate other container type rules and make sure all containers are closed before they complete packout. If the user has not completed packing all delivery items, system will prompt a validation checklist to display which rules have been violated and which material has yet to be packed.
![for WIKI.JPG](/.attachments/29918893.jpg)



If all delivery items have been packed, system will allow user to complete the packout. When the delivery packout is completed, all buttons will be disabled.
![for WIKI.JPG](/.attachments/29918893.jpg)



![for WIKI.JPG](/.attachments/29918893.jpg)





#### Attachments

[for WIKI.JPG](/.attachments/29918893.jpg)
[image2013-7-12 15:38:15.png](/.attachments/29918894.png)
[image2013-7-12 15:37:52.png](/.attachments/29918895.png)
[image2013-7-12 15:37:10.png](/.attachments/29918896.png)
[image2013-7-12 15:36:23.png](/.attachments/29918897.png)
[image2013-7-12 15:35:19.png](/.attachments/29918898.png)
[image2013-7-12 15:34:28.png](/.attachments/29918899.png)
[image2013-7-12 15:34:13.png](/.attachments/29918900.png)
[image2013-7-12 15:33:28.png](/.attachments/29918901.png)
[image2013-7-12 15:33:0.png](/.attachments/29918902.png)
[image2013-7-12 15:32:16.png](/.attachments/29918903.png)
[image2013-7-12 15:27:29.png](/.attachments/29918904.png)
[image2013-7-12 15:18:12.png](/.attachments/29918905.png)
[image2013-7-12 15:17:28.png](/.attachments/29918906.png)
[image2013-7-12 11:11:44.png](/.attachments/29918907.png)
[image2013-7-12 11:11:8.png](/.attachments/29918908.png)

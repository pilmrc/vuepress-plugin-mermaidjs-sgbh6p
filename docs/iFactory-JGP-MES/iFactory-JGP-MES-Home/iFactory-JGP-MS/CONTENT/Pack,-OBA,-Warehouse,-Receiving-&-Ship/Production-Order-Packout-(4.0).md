# Introduction

The Production Order Packout station enables user to pack items required in the Production Order into Containers. Production Order Packout allows user to pack a completed or non completed WIP. User will need to create a container to begin packing items into it. Each container will have its unique container name/ID. When the handling unit message is triggered the completion route step, the container name and its packed contents' serial number will be sent to SAP. 
The minimum and maximum items that can be packed into a container is dependent on the selected Container Type. When a container reaches its maximum allowed packed items, system will auto close the container. If the maximum packed quantity is not reached, system allows user to manually close short a container provided the minimum packed quantity configured in Container Type is met. 


### How to get there?




::: mermaid
graph LR
A("PRODUCTION")-->0("STATION LOGIN")
0-->1("STATION TYPE")
1-->2("PRODUCTION ORDER PACKOUT")

:::
![image2014-5-8 16:4:10.png](/.attachments/29918941.png)



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Station Type</p></td><td class="confluenceTd"><p>All predefined station types will be displayed here for user selection.</p></td></tr><tr><td class="confluenceTd"><p>Factory</p></td><td class="confluenceTd"><p>Search field for all the factories that have been configured in system.</p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>Search field for all the Routes that have been configured in system and is associated to the selected Factory.</p></td></tr><tr><td class="confluenceTd"><p>Route Step</p></td><td class="confluenceTd"><p>Search field for all the Route Steps that have been configured in the selected Route and are associated to the selected Station Type.</p></td></tr><tr><td class="confluenceTd"><p>Resource</p></td><td class="confluenceTd"><p>Search field for all the Resources that have been associated to the selected Route Step.</p></td></tr><tr><td class="confluenceTd"><p>Login Button</p></td><td class="confluenceTd"><p>Click this button to enter the selected station. Only authorized user can enter the station.</p></td></tr><tr><td class="confluenceTd"><p>Reset Button</p></td><td class="confluenceTd"><p>Click this button to clear all selections.</p></td></tr></tbody></table>



#### **Screen Activity** 


Production Order Packout enables user to perform the following activity:

- Create, Open, Close and Scrap containers

- Pack and unpack Items into a container

- View Items to be packed

- View all containers and packed items for the production order

- Triggers label printing for the container on container open or close action



#### Screen Dependency


The following screen(s) has direct dependency with Production Order Packout

- [Container Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)

- [Document Assignment (3.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Assignment-(3.0).md)



## **Pack Production Order** 


- Search and load a Production Order by entering the Production Order number in
**Production Order #** field, 
System will display available items to pack in Items to pack section. Previously packed items will be displayed in Packed Items section.![image2014-5-14 13:32:44.png](/.attachments/29918950.png)


2. Select a Container Type
3. Click the Create button to create the container based on the Container Type selected. Packing will follow the packing rules defined in the container type.
![image2014-5-14 13:33:25.png](/.attachments/29918952.png)


4. In the Scan Item field, scan/enter the Serial Number of the item to pack. 

The scanned item will be displayed in the Packed Items section ![image2014-5-14 13:29:54.png](/.attachments/29918949.png)


5. Once the container is fulfilled, user can manually close the container by clicking on the corresponding container "Close" button.

Alternatively, if the maximum quantity for the container is met, system will auto close the container. 

Depending on the document print trigger, container labels will be printed on container create or container close action. 

![image2014-5-14 13:38:57.png](/.attachments/29918955.png)



Container status will be updated from "Opened" to "Closed". The button label will be changed from "Close" to "Open" to allow reopening of a container.
![image2014-5-14 13:40:42.png](/.attachments/29918954.png)


Container can also be scrapped by clicking on the corresponding container's Scrap button. 

Once the container is scrapped, the items packed will return back to the "Items To Pack" section to allow them to be repacked into another container. 

## Unpack Production Order


- To unpack, click on the Switch Mode button. The Switch Mode allows user to switch between Pack and Unpack mode.

In Pack mode, all items scanned in Scan Item field will be packed into a container. 
In Unpack mode, all items scanned in the Scan Item field will be unpacked from a container ![image2014-5-14 13:48:34.png](/.attachments/29918953.png)


2. After switching to unpack mode, search the box (container) required for unpacking. 

In this example, I am searching for BOX-0051 that I need to unpack WIP "HC-NetApp-0012"
You only need to perform this step if the container you wanted to unpack is not displayed in **Search Boxes** field.![image2014-5-14 13:59:47.png](/.attachments/29918958.png)


3. Next, scan the WIP "HC-NetApp-0012" to unpack it from "BOX-0051"
![image2014-5-14 14:0:19.png](/.attachments/29918957.png)


4. The WIP that was unpacked successfully from the container will return to Items to pack section. This will can be repacked into another container. 
![image2014-5-14 14:1:39.png](/.attachments/29918960.png)




### Fields


<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Production Order #</td><td class="confluenceTd">Scan the production order number to pack items</td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd">The container type needs to be selected to create a container. The container name generated is based on the next number configured in the container type.<br />Packing rules such as allowable material, minimum pack quantity, maximum pack quantity etc follows the container type selected <br />Refer to <a class="createlink" href="/pages/createpage.action?spaceKey=IJM&title=Container+Type+%283.0%29&linkCreation=true&fromPageId=29918938">Container Type Maintenance</a> to perform these configuration.  </td></tr><tr><td colspan="1" class="confluenceTd">Create button</td><td colspan="1" class="confluenceTd">Creates a new container and generates the container name/ID based on the next number of the container type</td></tr><tr><td colspan="1" class="confluenceTd">Scan Item</td><td colspan="1" class="confluenceTd">Scannable field for user to scan items to be packed/unpacked</td></tr><tr><td colspan="1" class="confluenceTd">Pack/Unpack button</td><td colspan="1" class="confluenceTd">There are 3 ways to pack/unpack item<ol><li>Scan the Serial Number</li><li><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">Manually enter the Serial Number and press [Enter Key]</span></li><li><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">Manually enter the Serial Number and click the "Pack/Unpack" button</span></li></ol></td></tr><tr><td colspan="1" class="confluenceTd">Switch Mode button</td><td colspan="1" class="confluenceTd">Clicking this button allows user to switch between Pack mode or Unpack mode. <br />In Pack mode, all items scanned in Scan Item field will be packed into a container. <br />In Unpack mode, all items scanned in the Scan Item field will be unpacked from a container  </td></tr><tr><td colspan="1" class="confluenceTd">Search Boxes</td><td colspan="1" class="confluenceTd">Allows user to search a container name/ID by <span>scan/enter the <span>container name/ID here. <br />If the container is found, system will load the container and its packed contents in the Packed Items section. <br />The <span>container name/ID displayed in this box signifies the current active container for packing or unpacking.</span></span></span></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Items To Pack section</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The Serial Number of the WIP/Serialized Material available for packing</td></tr><tr><td colspan="1" class="confluenceTd">Material Name</td><td colspan="1" class="confluenceTd">The Serial Number's material name</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">The status of the Serial Number</td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong style="text-align: center;">Packed Items section</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,51,102);">Description</span></td></tr><tr><td colspan="1" class="confluenceTd">Box Name/ID line</td><td colspan="1" class="confluenceTd"><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918959.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918959.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918959" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2014-5-14 15:52:42.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918938" data-linked-resource-container-version="1" /></span></p><p>In this line, user shall see:</p><ul style="list-style-type: square;"><li>Box Name/ID</li><li>Container status (Opened, Closed, Scrapped or Packed)</li><li>Weight<br />- Total Weight of the packed items. The weight for a material is configured in Material Maintenance's Packout Attributes tab. <br />- If Material-A Weight is 1KG, packing 2 units of <span>Material-A in this container will show the total Weight: 2<br /><span>- If the container type was set to only allow maximum Weight: 1KG, packing the second unit of Material-A is not allowed in the container as it exceeded the max allowed weight.</span></span></li><li><span><span>Volume<br />- Total Volume of the packed items. The volume for a material is configured in Material Maintenance's Packout Attributes tab. </span><br /><span>- If Material-A Volume is 1L, packing 2 units of </span><span>Material-A in this container will show the total Weight: 2<br /><span>- If the container type was set to only allow maximum Volume: 1L, packing the second unit of Material-A is not allowed in the container as it exceeded the max allowed volume.</span></span></span></li><li><span> </span>Quantity<br />- The total number of units packed into this container<br />- <span>If 2 units of </span><span>Material-A is packed in this container, system will show the total Quantity: 2</span><span><br /> </span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd"><span>The Serial Number of the WIP/Serialized Material available for packing</span></td></tr><tr><td colspan="1" class="confluenceTd">Material Name</td><td colspan="1" class="confluenceTd"><span>The Serial Number's material name</span></td></tr><tr><td colspan="1" class="confluenceTd">Scrap button</td><td colspan="1" class="confluenceTd">Allows user to scrap the corresponding container. This will unpack all items in the container.</td></tr><tr><td colspan="1" class="confluenceTd">Open/Close button</td><td colspan="1" class="confluenceTd">Allows user to change the container status between "Open" and "Closed"</td></tr></tbody></table>










- - If Material_A Weight is 1KG, packing 2 units of
Material_A in this container will show the total Weight: 2
- If the container type was set to only allow maximum Weight: 1KG, packing the second unit of Material_A is not allowed in the container as it exceeded the max allowed weight.
- Volume

- Total Volume of the packed items. The volume for a material is configured in Material Maintenance's Packout Attributes tab. 
- If Material_A Volume is 1L, packing 2 units of Material_A in this container will show the total Weight: 2
- If the container type was set to only allow maximum Volume: 1L, packing the second unit of Material_A is not allowed in the container as it exceeded the max allowed volume.
- Quantity

- The total number of units packed into this container
- If 2 units of Material_A is packed in this container, system will show the total Quantity: 2
Serial NumberThe Serial Number of the WIP/Serialized Material available for packingMaterial NameThe Serial Number's material nameScrap buttonAllows user to scrap the corresponding container. This will unpack all items in the container.Open/Close buttonAllows user to change the container status between "Open" and "Closed"




#### Attachments

[image2014-5-8 16:2:50.png](/.attachments/29918939.png)
[image2014-5-14 12:57:7.png](/.attachments/29918940.png)
[image2014-5-8 16:4:10.png](/.attachments/29918941.png)
[image2014-5-14 12:58:38.png](/.attachments/29918942.png)
[image2014-5-14 13:0:58.png](/.attachments/29918943.png)
[image2014-5-14 13:16:18.png](/.attachments/29918944.png)
[image2014-5-14 13:17:21.png](/.attachments/29918945.png)
[image2014-5-14 13:21:31.png](/.attachments/29918946.png)
[image2014-5-14 13:22:16.png](/.attachments/29918947.png)
[image2014-5-14 13:24:12.png](/.attachments/29918948.png)
[image2014-5-14 13:29:54.png](/.attachments/29918949.png)
[image2014-5-14 13:32:44.png](/.attachments/29918950.png)
[image2014-5-14 13:38:25.png](/.attachments/29918951.png)
[image2014-5-14 13:33:25.png](/.attachments/29918952.png)
[image2014-5-14 13:48:34.png](/.attachments/29918953.png)
[image2014-5-14 13:40:42.png](/.attachments/29918954.png)
[image2014-5-14 13:38:57.png](/.attachments/29918955.png)
[image2014-5-14 13:59:1.png](/.attachments/29918956.png)
[image2014-5-14 14:0:19.png](/.attachments/29918957.png)
[image2014-5-14 13:59:47.png](/.attachments/29918958.png)
[image2014-5-14 15:52:42.png](/.attachments/29918959.png)
[image2014-5-14 14:1:39.png](/.attachments/29918960.png)

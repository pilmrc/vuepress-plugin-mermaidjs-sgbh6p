# Introduction

The Planned Order Packout (Lot/Batch Build) station enables the user to pack Carriers or Containers (overpack) into Containers. The user will need to create a container to begin packing carrier or container (overpack) into it or pack into an existing container. Each container will have its unique container name/ID
. The minimum and maximum items that can be packed into a container are dependent on the selected Container Type. When a container reaches its maximum allowed packed items, the system will auto close the container. If the maximum packed quantity is not reached, the system allows the user to manually close short a container provided the minimum packed quantity configured in Container Type is met. 

### How to get there?



::: mermaid
graph LR
A("Lot STATION ")
:::
Select Resource, Carrier/Container,
Route Step (Planned Order Packout type)
& Assembly (if "Enforce Assembly Selection at Station" is turned On)



#### Permission


To Access the screen:
Lot Packout - Allows the user access the Packout
To Pack: 

Pack Lot
- Allows the user to pack lots into an existing containerTo Unpack
/Unpack All (only users with this permission will be able to see the "Unpack All" button): 

Unpack Lot - Allows the user to unpack a lot that was packed into a container
To Create Container: 

Create Lot Container - Allows the user to create a lot containerTo Open Container (only users with this permission will be able to see the "Open" button): 

Open Lot Container - Allows the user to open a closed lot containerTo Close Container (only users with this permission will be able to see the "Close" button): 

Close Partial Lot Container - Allows the user to close container even the container is not a full capacity.To Hold Container (only users with this permission will be able to see the "Hold" button): 

Hold Lot Container - Allows the user to put a container on holdTo Release Container (only users with this permission will be able to see the "Release" button): 

Release Lot Container - Allows the user to release an existing hold on a container
To Scrap Container (only users with this permission will be able to see the "Scrap" button): 

Scrap Lot Container - Allows the user to scrap an existing container



#### Screen Activity


Planned Order Packout (Lot/Batch Build) enables the user to perform the following activity:

- Scan Carrier/Container to pack

- Pick a Container Type

- Pack Carrier/Container

- Unpack Carrier/Container

- Unpack Entire Container

- Resume Packout

- Create, Open, Close Container

- Print Label on Container Create or Container Close

- Pack Scrapped Lot

- Scrap Container

- Hold Container

- Release Container from Hold



#### Pre Condition


The following data needs to be pre-configured before user is able to packout

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)
defined
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
defined for Lot/Batch Build
- Create a
[Planned Order](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Planned-Order-Packout-(Batch-Manufacturing-2.0).md)and assign to Route, Lot Release (at [MOE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Manual-Operation-Entry-(Batch-Manufacturing-2.0).md)or [MIE](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Manual-Inspection-Entry-(Batch-Manufacturing-2.0).md)) must have occurred for the Planned Order/Super Lot, Lot is assigned to Carrier(s), and the Lot is enqueued at the Route Step if the operation is to Start 
- Manual Station Login - User must identify the Resource they are using before performing the Operation activities

- [Container Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)
defined
- [Next Number](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Planned-Order-Packout-(Batch-Manufacturing-2.0).md)
, defined to generate Container Number
- [Document Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Planned-Order-Packout-(Batch-Manufacturing-2.0).md)
, if Container Label is required to print
- [Document Assignment](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Planned-Order-Packout-(Batch-Manufacturing-2.0).md)
, if Container Label is required to print 
- Lot Scrap to pack scrapped lot



#### Process




### ***Packout***  




#### *Initialization* 


If the carrier scanned (at Scan Carrier or Carrier Number fields) has an assembly which does not match the selected assembly 
(if "Enforce Assembly Selection at Station" is turned On)
at Manual Station Login, system will return a warning message. Once a valid Carrier Number (assigned to a Lot) is scanned, a list of container type will be available for user selection. If only one container type is available, system will auto select the container type. The list of the Container Type should show all the compatible container types (even if there is no route step type configured) based on the configuration in 
[Container Type Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md). "Is Restricted to Alias Assembly" and "Is Restricted to Batch" container type packout rules are not valid for Planned Order Packout.Once the container type is selected, system will show the list of open containers.
![image2020-12-8_23-20-5.png](/.attachments/82904194.png)


User can click on Create button or select an open container from the list and system will automatically pack the carrier if it passes all the validations (Container Defect Type, Restrict To Same Attributes, etc.). If Create button was clicked, system will generate the Container number according to the Next Number assigned. Document is printed if it is configured to print "On Container Create". When the carrier is packed into the new or existing container, the open containers list will be hidden and only the information box of the open container that the carrier is packed into is shown. The focus will then be on the 'Carrier Number' field to allow the user to continue scanning Carrier to pack into the container (box).
![image2020-12-8_22-9-57.png](/.attachments/82904192.png)


System does not allow to start lot if the lot's Planned Order is on hold. Once the first carrier of the lot is packed, the Operation status will be "Started".
![image2020-12-8_23-45-37.png](/.attachments/82904198.png)


![image2020-12-8_23-44-54.png](/.attachments/82904197.png)




#### *Creating A New Container* 


The system has a validation check when generating the container number to prevent having duplicate container number between WIP container and Lot container. The duplicate container number will happen if there is same segment in the different Next Number Configuration for the type "Container ID" which is applied to both Lot container type and WIP container type. This validation is applicable to Overpack as well.
Next Number for WIP Container Type:
![image2019-12-26_13-53-23.png](/.attachments/82903970.png)


**Next Number for Lot Container Type:** 
![image2019-12-26_13-54-18.png](/.attachments/82903969.png)


**Next Number for WIP Pallet Container Type:** 
![image2019-12-26_14-13-21.png](/.attachments/82903968.png)


**Next Number for Lot Pallet Container Type:** 
![image2019-12-26_14-14-26.png](/.attachments/82903967.png)


**During Lot Packout or Lot Overpack, the system will trigger the validation when they click on the Create button and the system will prompt the error message "New container number generated already exists. Please check the container next number configuration for duplication." to prevent having duplicate container number generated between WIP container and Lot container.** 


#### *Pack Items* 

Carrier Number is scanned to pack into the container.

![image2020-12-8_23-27-21.png](/.attachments/82904195.png)


Warning message will be returned if:

- Carrier is already packed into a container

- Carrier does not meet the Packout Configurations of the container type

- Scanning a carrier from another lot when the active lot at the resource has not completed the packout operation

- Packing the carrier will exceed the configured Max Carrier

![image2020-12-8_23-35-22.png](/.attachments/82904196.png)


A lot can be packed into multiple containers but a carrier cannot be split to multiple containers. Lots that have "Started" in a station will be allowed to complete that operation if the planned order is put on hold. Once the last carrier of the lot is packed, the Operation status will be "Pass". Lot status will remain as "In Progress" unless it is a completion route step.
![image2020-12-8_23-50-44.png](/.attachments/82904199.png)


![image2020-12-8_23-55-34.png](/.attachments/82904200.png)


If the Route Step is a Completion Step, system will validate if the Super Lot has been fully released and all the lots assigned to it are completed. If yes, then the Super Lot status will be changed to "Complete". 
All carriers that belong to the same lot must be processed at the same resource and route step. 
Once a lot has started the operation at the particular resource and route step, system does not allow other lots to start there until it has completed the operation.

#### *Unpack Items* 

User can switch to "Unpack" mode and then scan a Carrier Number to unpack.

![image2020-12-9_0-5-49.png](/.attachments/82904201.png)


User can only unpack when the all the carriers of the lot has been packed. "Unpack" will unpack the whole lot from all containers.
![image2020-12-9_0-13-6.png](/.attachments/82904202.png)




#### *Unpack Entire Container* 


When the container is opened, user can choose to "Unpack All". 
"Unpack All" will unpack all lots (if there are multiple lots in the container) from all related containers only when there is no active lot (lot that has not completed) at the resource and route step.
![image2020-12-9_0-17-11.png](/.attachments/82904203.png)


System will prompt user for confirmation to unpack all items in the selected container.
![image2020-12-9_0-19-12.png](/.attachments/82904204.png)




#### *Resume Packout* 


User can scan an existing Container number or the Carrier that has been packed. System will load the container information box. If the container status is Closed, the open containers list will be shown. If the container status is Opened,  the open containers list is hidden and Carrier Number can be scanned to continue packing.
![image2020-12-9_8-54-28.png](/.attachments/82904213.png)




#### *Open, Close and Scrap Container* 


Container is automatically closed when the maximum capacity is reached. An open container can be manually closed when the Min Quantity configured for the container type is met. Once the container is closed, the open containers list of the selected container type will be displayed whereas the container information box will be hidden. System will automatically create a new container number based on the Container Type selected and auto pack it if user continues to scan carrier serial number in the “Carrier Number” field.
![image2020-12-9_13-11-48.png](/.attachments/82904228.png)


![image2020-12-9_13-16-18.png](/.attachments/82904230.png)


![image2020-12-9_13-17-16.png](/.attachments/82904232.png)


Document is printed if it is configured to print "On Container Close". 
![image2020-12-9_9-23-44.png](/.attachments/82904220.png)


If user scans a closed container, there is an "Open" button that allows user to reopen the container in order to unpack or pack more items if it has not reached maximum capacity. 
![image2020-12-11_14-18-11.png](/.attachments/82904273.png)


Container can also be scrapped by clicking on the Scrap button. System will prompt user for confirmation to scrap the selected container. 
"Scrap" will scrap the current container and unpack all lots (if there are multiple lots in the container) from all related containers only when there is no active lot (lot that has not completed) at the resource and route step.![image2020-12-9_9-38-4.png](/.attachments/82904222.png)




#### *Pack Scrapped Lot* 


The system allows to pack multiple scrapped lots to a container packed with scrapped lot following the packout rules configured in Container Type Maintenance. 
Scrapped Lot is allowed to be packed for options "
Same Open Defect
" and "
Any
Open Defect
" Container Defect Type.
It is not allowed to pack a non-scrapped lot to a container with scrapped lot. If the container with scrapped lots is fully unpacked, user will be allowed to pack a non-scrapped or scrapped lot to the empty container.![image2020-12-9_10-14-11.png](/.attachments/82904223.png)


![image2020-12-9_10-14-32.png](/.attachments/82904224.png)


![image2020-12-9_10-14-58.png](/.attachments/82904225.png)




#### *Hold Container* 


Only users with "Hold Lot Container" permission can see the Hold button and hold the container.

![image2021-1-8_10-37-13.png](/.attachments/84705606.png)



![image2021-1-8_10-37-52.png](/.attachments/84705607.png)




#### *When user puts a container on hold, all the lots in the container as well as all the containers those lots are packed in will be placed on hold.* 



Example:

LotABC is packed into Box1, Box2, Box3. LotDEF is packed into Box3, Box4.

If Box3 is put on hold, all the lots found in the box (LotABC & LotDEF) will be put on hold. All the containers where those lots are packed into will also be put on hold.
Box3 -" On Hold by user
Box1, Box2, Box4, LotABC & LotDEF -" On Hold by system
System will record the who and when the action is performed at Container View-Lot - History tab with Event = Hold and Lot View – Lot Holds tab with Hold Type = “Container”.

- For the container that user placed on hold:

![image2021-1-8_10-45-3.png](/.attachments/84705608.png)



- For the containers that system put on hold because the lot in the container user put on hold is packed into it:


![image2021-1-8_10-46-21.png](/.attachments/84705609.png)



- For the lots that system put on hold:


![image2021-1-8_10-47-48.png](/.attachments/84705610.png)



If the container is on hold, no other operation can be done on the container except to release it at packout station. 
At Lot Hold screen, if user scans a lot on hold with Hold Type = "Container", system will prompt warning message. If there are Super Lot hold and Container hold, system will show warning message for the latest hold type.

#### *Release Container From Hold* 

Only users with "Release Lot Container" permission can see the Release button and release the container if it is on hold.

![image2021-1-8_10-51-58.png](/.attachments/84705611.png)


All the lots in the container as well as all the containers the lots are packed in will be released from hold. 
Only containers that were placed on hold by the user can be manually released by the user. 
Example:

LotDEF is packed in Box3 and Box4.

When user put Box3 on hold, Box4 will be on hold by the system because LotDEF is on hold.

User is not allowed to directly release Box4. User is required to release Box3 and then Box4 will be automatically released by the system.
System will record the who and when the action is performed at Container View-Lot - History tab with Event = "Release Hold" and Lot View - Lot Holds tab.

- For the container that user released from hold:


![image2021-1-8_10-59-42.png](/.attachments/84705612.png)



- For the containers that system released from hold because the source container was released:


![image2021-1-8_11-0-0.png](/.attachments/84705613.png)



- For the lots that system released from hold:


![image2021-1-8_11-0-26.png](/.attachments/84705614.png)


If a container has multiple holds, each hold must be released before the container is released.

Example:

LotDEF is packed in
Box3
and Box4.

LotXYZ


is packed in Box4 and Box5.

User put Box3 on hold followed by putting Box5 on hold. Box4 will have multiple hold records. User cannot directly release Box4. User must release both Box3 and Box5 before Box4 is released by the system.


#### *Shipped & Consumed Container* 


Shipped and Consumed containers are not allowed to use at Lot Packout station.
![image2020-12-8_16-40-18.png](/.attachments/82904186.png)


![image2020-12-8_16-48-34.png](/.attachments/82904188.png)





#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Scan Carrier / Container</p></td><td class="confluenceTd"><p><span>Only accepts full match of Carrier or Container number to initialize Packout. </span></p></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917970.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-10-26%2015%3A57%3A25.png?version=1&modificationDate=1530103789143&api=v2" /></span></p></div></td><td class="confluenceTd">Clear button. Clear all contents to only show the Scan Carrier / Container field.</td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd"><p>Display after a Carrier / Container number is scanned. Only display the list of Container Type that is compatible with the Carrier/Container scanned. Container Type with <span style="color: rgb(51,51,51);">"Is Restricted to Alias Assembly" or "Is Restricted to Batch" is not valid for Planned Order Packout hence will not be displayed.</span><br />If scanned Carrier has been packed into a Container, display the container's Container Type.<br /><span style="background-color: transparent;font-size: 10.0pt;">If scanned an existing Container Number, display the container's Container Type </span></p></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917942.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A39%3A52.png?version=1&modificationDate=1530103788733&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">Create button. To create new Container based on the Next Number configured against the selected Container Type.</td></tr><tr><td colspan="1" class="confluenceTd">Carrier Number</td><td colspan="1" class="confluenceTd">Scan Carrier Number to pack or unpack from the Container. Disabled when a closed container is scanned.</td></tr><tr><td colspan="1" class="confluenceTd">Carrier Quantity</td><td colspan="1" class="confluenceTd">Total number of carriers packed in the container.</td></tr><tr><td colspan="1" class="confluenceTd">Lot Quantity</td><td colspan="1" class="confluenceTd">Total number of units packed (sum of quantity in all carriers) in the container.</td></tr><tr><td colspan="1" class="confluenceTd">Show Content</td><td colspan="1" class="confluenceTd">Hyperlink to Container View - Contents tab to show all items packed into the container.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Material name of items packed into the container.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">Assembly/Revision/Version of items packed into the container.</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">Sum of units belonging to that material and assembly.</td></tr><tr><td colspan="1" class="confluenceTd">Max Allowed</td><td colspan="1" class="confluenceTd">Value configured for Max Quantity in Container Type - Container Type Items.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917941.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A49%3A0.png?version=1&modificationDate=1530103788717&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">Switch button to switch between Pack and Unpack mode.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917940.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A51%3A51.png?version=1&modificationDate=1530103788707&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">To <span>unpack all lots from all related containers only when there is no active lot (lot that has not completed) at the resource and route step. Only visible when a container is opened.</span></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917939.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A52%3A44.png?version=1&modificationDate=1530103788693&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">To close an opened container. Only visible when a container is opened.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917938.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A56%3A26.png?version=1&modificationDate=1530103788680&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">To open a closed container. Only visible when a container is closed.</td></tr><tr><td colspan="1" class="confluenceTd">Scrap button</td><td colspan="1" class="confluenceTd">To scrap an opened or closed container. <span>System will prompt user for confirmation to scrap the selected container. All lots (if there are multiple lots in the container) will be unpacked from all related containers and current container scrapped only when there is no active lot (lot that has not completed) at the resource and route step.</span>. Container number can no longer be used.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" width="65" src="attachments/thumbnails/29917882/41058488" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/29917882/image2019-1-22-16-29-29.png?version=1&modificationDate=1548145769407&api=v2" /></span></p></div></td><td colspan="1" class="confluenceTd">To hold a closed or opened container. </td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" height="36" src="attachments/thumbnails/29917882/41058487" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/29917882/image2019-1-22-16-28-11.png?version=1&modificationDate=1548145691637&api=v2" /></span></p></div></td><td colspan="1" class="confluenceTd"><span>To release a container from hold. Only visible when container is with Hold status.</span></td></tr></tbody></table>





### ***Overpack***  




#### *Initialization* 


When user scans a Container, system will show all the compatible container types for selection. Upper level container (pallet) packout rules will have the same or less restriction (higher level) than the lower level container (box) packout rule.

![image2021-2-25_10-24-44.png](/.attachments/88113318.png)


![image2021-2-25_10-25-19.png](/.attachments/88113319.png)


System will show the list of open container(s) compatible with the selected container type.

![image2021-2-25_10-27-42.png](/.attachments/88113320.png)





#### *Pack Items* 

User can click on Create button or select an open container from the list and system will automatically pack the Container. If Create button was clicked, system will generate the container number according to the Next Number assigned. Document is printed if it is configured to print "On Container Create". When the container is packed into the new or existing container, the open containers list will be hidden and only the information box of the open upper level container that the lower level container (box) is packed into, is shown. The focus will then be on the 'Scan Container' field to allow the user to continue scanning containers to pack into the upper level container (pallet).

![image2021-2-25_10-34-39.png](/.attachments/88113321.png)



Warning message will be returned if:

- Container is already packed into another container

- Container does not meet the Packout Configurations of the container type

- Packing the container will exceed the configured Max Container
System does not allow to start lot if the lot's Planned Order is on hold. 
The lot's operation status is "Started" when the first container containing carrier(s) of that lot is packed into the upper level container. The lot's operation status is "Pass" when the last container containing carrier(s) of that lot is packed into the upper level container.
![image2021-2-25_10-42-43.png](/.attachments/88113322.png)


![image2021-2-25_10-51-20.png](/.attachments/88113323.png)


User is able to pack different container types into the upper level container as long as the packout rules are compatible. Example: Box with Restrict To Same Lot & box with Restrict To Same Product Family can be packed into the same pallet with Restrict To Same Product Family rule or higher. If the pallet has mix container types packed, the container will not auto close.
![image2021-2-25_11-59-17.png](/.attachments/88113326.png)


If the Route Step is a Completion Step, system will validate if the Super Lot has been fully released and all the lots assigned to it are completed. If yes, then the Super Lot status will be changed to "Complete". 


#### *Unpack Items* 

User can switch to "Unpack" mode and then scan a Container Number to unpack the box from the pallet. If a lot has completed the overpack operation, unpacking a box from the pallet will create a new history with "Started" status. Once the lot's containers are completely packed again, the operation status will show as "Pass". If the lot's containers are completely unpacked, the operation status will show as "Abort".


#### *Unpack Entire Container* 

When the container is opened, user can choose to "Unpack All". 
"Unpack All" will unpack all the lower level containers from the current container. 
![image2021-2-25_12-7-24.png](/.attachments/88113327.png)





#### *Resume Packout* 

User can scan an existing upper level container number (pallet) or the lower level container (box) that has been packed into a pallet. System will load the pallet container information box. If the pallet container status is Closed, the open containers list for that container type will be shown. If the pallet container status is Opened,  the open containers list is hidden and Container Number can be scanned to continue packing.


#### *Open, Close and Scrap Container* 

Container is automatically closed when the maximum capacity is reached. An open container can be manually closed when the Min Quantity configured for the container type is met. Once the container is closed, the open containers list of the selected container type will be displayed whereas the container information box will be hidden. System will automatically create a new container number based on the Container Type selected and auto pack it if user continues to scan container number in the “Scan Container” field.
Document is printed if it is configured to print "On Container Close".

![image2021-2-25_12-25-55.png](/.attachments/88113328.png)


If user scans a closed container, there is an "Open" button that allows user to reopen the container in order to unpack or pack more items if it has not reached maximum capacity. 
Container can also be scrapped by clicking on the "Scrap" button. System will prompt user for confirmation to scrap the selected container. 
"Scrap" will unpack all boxes in the current pallet container and scrap the pallet container.

#### *Hold Container* 

Only users with "Hold Lot Container" permission can see the Hold button and hold the container.

![image2021-3-4_10-3-21.png](/.attachments/88113469.png)



![image2021-3-4_10-3-55.png](/.attachments/88113470.png)


When user puts a container on hold, all the lots in the container as well as all the lower and upper level containers the lots are packed in will be placed on hold.

Example:

LotABC is packed into Box1 and Box2. Box1 is packed into Pallet1 and Box2 is packed into Pallet2.
LotDEF is packed into Box3 and Box4. 
Box3 is packed into Pallet2 and Box4 is packed into Pallet3.

If Pallet2 is put on hold, all the lots found in the box (LotABC & LotDEF) will be put on hold. All the containers where those lots are packed into will also be put on hold.

Pallet2 
-" On Hold by user

LotABC, LotDEF, 
Box1, Box2, Box3, Box4, Pallet1, Pallet3 -" On Hold by system
\*If Box5 with LotXYZ is also in 
Pallet3, they will not be placed on hold.
System will record the who and when the action is performed at Container View-Lot - History tab with Event = Hold and Lot View – Lot Holds tab with Hold Type = “Container”.

- For the container that user placed on hold:


![image2021-3-4_10-26-31.png](/.attachments/88113471.png)




- For the containers (lower and upper level containers) that system put on hold because the lot in the container user put on hold, is packed into it:


![image2021-3-4_10-28-33.png](/.attachments/88113473.png)




![image2021-3-4_10-28-49.png](/.attachments/88113474.png)



- For the lots that system put on hold:


![image2021-3-4_10-30-50.png](/.attachments/88113475.png)


When the container is on hold, only the "Release" button will be visible in the container information box. 
If the container is on hold, no other operation can be done on the container except to release it at packout station. 
At Lot Hold screen, if user scans a lot on hold with Hold Type = "Container", system will prompt warning message. If there are Super Lot hold and Container hold, system will show warning message for the latest hold type.


#### *Release Container From Hold* 

Only users with "Release Lot Container" permission can see the Release button and release the container if it is on hold.

![image2021-3-4_10-38-31.png](/.attachments/88113477.png)


All the lots in the container as well as all the lower and upper level containers the lots are packed in will be released from hold. Only containers that were placed on hold by the user can be manually released by the user.

Example:

LotABC is packed into Box1 and Box2. Box1 is packed into Pallet1 and Box2 is packed into Pallet2.

When user put Pallet1 on hold, LotABC, Box1, Box2 and Pallet2 will also be on hold by the system.

User is not allowed to directly release Pallet2. User is required to release Pallet1 and then LotABC, Box1, Box2 and Pallet2 will be automatically released by the system.
System will record the who and when the action is performed at Container View-Lot - History tab with Event = "Release Hold" and Lot View - Lot Holds tab.

- For the container that user released from hold:


![image2021-3-4_11-23-44.png](/.attachments/88113478.png)



- For the containers (lower and upper level containers) that system released from hold because the source container was released:


![image2021-3-4_11-42-56.png](/.attachments/88113484.png)




![image2021-3-4_11-43-15.png](/.attachments/88113485.png)



- For the lots that system released from hold:


![image2021-3-4_11-45-7.png](/.attachments/88113486.png)



If a container has multiple holds, each hold must be released before the container is released.

Example:
LotABC is packed into Box1 and Box2. Box1 is packed into Pallet1 and Box2 is packed into Pallet2.

LotDEF is packed into Box3 and Box4. Box3 is packed into Pallet2 and Box4 is packed into Pallet3.

User put Pallet1 on hold followed by putting Pallet3 on hold. Pallet2 will have multiple hold records. User cannot directly release Pallet2. User must release both Pallet1 and Pallet3 before Pallet2 is released by the system.


### ***Generate Shop Floor GRN upon a Container closed***  


The system to generate shop floor GRN upon container closed at Lot packout station so that can consolidate all the small batches of material and can be consumed by GRN.
1. Container pack in the packout station must be from the container type which has configured with "Generate GRN" turn On.  "Generate GRN" toggle is enabled with default value off if the content rule selected is 1

of the following, which restricts the container items to the same material. Else, the toggle is disabled.
- "Is Restricted to Same Lot"

- "Is Restricted to Same Super Lot"

- "Is Restricted to Same Order"

- "Is Restricted to Same Assembly Revision"

- "Is Restricted to Same Material"
![image2021-4-15_14-12-38.png](/.attachments/91127867.png)



2. 
GRN will not be generate upon container close

- Container is packed with Scrap Lot


- GRN has already created before

3.
If a container is scrapped, remove the GRN from the system.  4. GRN details to create as of following format:

- GRN:
Generate by referring to the container number and verify with GRN Validation Mask configured at Material Maintenance (Assemble tab). If the GRN Validation Mask does not meet, then
toastr message to show “GRN is not match with defined validation mask rules.”
. 

- If the GRN Validation Mask configured but no rules in Validation Mask, then

toastr message to show “The validation mask is without rules, hence not possible to generate GRN.
”
. 
If no GRN Validation Mask configured, Container name must meet the 16 alphanumeric GRN rules or toastr message to show "GRN is not meet the 16 alphanumeric GRN rule".

- Material: Material packed into container.

- Vendor: Jabil

- Quantity: Total Lot Qty packed into Container (Total Lot Qty of each of the Lot containers if the packed container is Pallet)
5. 
GRN quantity to be updated if the container reopen and pack with new quantity of material. Quantity to be updated upon container close.
![image2021-4-15_14-29-35.png](/.attachments/91127870.png)


6. 
GRN Maintenance screen field named as "Created by Packout" is not editable. If the GRN is created at Packout upon container closed then set as "ON". 
Else, 
set as "Off" by default.
![image2021-4-15_14-30-34.png](/.attachments/91127871.png)


7. 
If a container is on hold, turn on the GRN “Use Prohibited” option and release to turn off the GRN "Use Prohibited" option at the GRN Maintenance screen. 
![image2021-4-15_14-32-41.png](/.attachments/91127872.png)


8. 
The closed container status with GRN is updated to “Consumed” after Setup Verification installed.

- Status of the Lot associated in the container is updated to "Consumed".

- Consumed status container cannot be reopen or Scrap. Only Hold/Release function available.



#### Attachments

[image2019-12-26_15-23-4.png](/.attachments/82903965.png)































































































































































































































































































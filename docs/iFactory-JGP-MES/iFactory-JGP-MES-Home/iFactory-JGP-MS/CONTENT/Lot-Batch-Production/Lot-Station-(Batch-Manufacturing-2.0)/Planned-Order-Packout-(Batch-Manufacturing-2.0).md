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
[image2019-12-26_15-8-21.png](/.attachments/82903966.png)
[image2019-12-26_14-14-26.png](/.attachments/82903967.png)
[image2019-12-26_14-13-21.png](/.attachments/82903968.png)
[image2019-12-26_13-54-18.png](/.attachments/82903969.png)
[image2019-12-26_13-53-23.png](/.attachments/82903970.png)
[image2019-11-23_11-26-42.png](/.attachments/82903971.png)
[image2019-11-23_11-23-58.png](/.attachments/82903972.png)
[image2019-11-23_11-23-42.png](/.attachments/82903973.png)
[image2019-11-23_11-20-41.png](/.attachments/82903974.png)
[image2019-6-11_16-13-2.png](/.attachments/82903975.png)
[image2019-6-11_16-12-39.png](/.attachments/82903976.png)
[image2019-6-11_16-11-29.png](/.attachments/82903977.png)
[image2019-5-9_10-41-39.png](/.attachments/82903978.png)
[image2019-5-9_10-40-3.png](/.attachments/82903979.png)
[image2019-5-9_10-37-43.png](/.attachments/82903980.png)
[image2019-5-9_10-31-58.png](/.attachments/82903981.png)
[image2019-5-9_10-29-36.png](/.attachments/82903982.png)
[image2019-3-29_8-46-38.png](/.attachments/82903983.png)
[image2019-3-29_8-42-6.png](/.attachments/82903984.png)
[image2019-3-29_8-31-35.png](/.attachments/82903985.png)
[image2019-3-29_8-30-2.png](/.attachments/82903986.png)
[image2019-3-29_8-20-52.png](/.attachments/82903987.png)
[image2019-3-29_8-19-24.png](/.attachments/82903988.png)
[image2019-3-29_8-15-44.png](/.attachments/82903989.png)
[image2019-3-29_8-14-40.png](/.attachments/82903990.png)
[image2019-3-29_8-12-43.png](/.attachments/82903991.png)
[image2019-3-29_8-9-44.png](/.attachments/82903992.png)
[image2019-3-29_8-7-3.png](/.attachments/82903993.png)
[image2019-3-28_16-36-1.png](/.attachments/82903994.png)
[image2019-3-28_16-33-58.png](/.attachments/82903995.png)
[image2019-3-28_16-32-51.png](/.attachments/82903996.png)
[image2019-3-28_16-21-29.png](/.attachments/82903997.png)
[image2019-3-28_16-19-42.png](/.attachments/82903998.png)
[image2019-3-28_16-18-41.png](/.attachments/82903999.png)
[image2019-3-28_16-16-0.png](/.attachments/82904000.png)
[image2019-3-28_16-14-54.png](/.attachments/82904001.png)
[image2019-3-28_16-13-57.png](/.attachments/82904002.png)
[image2019-3-28_16-12-27.png](/.attachments/82904003.png)
[image2019-3-28_16-10-45.png](/.attachments/82904004.png)
[image2019-3-28_16-8-52.png](/.attachments/82904005.png)
[image2019-3-28_16-6-59.png](/.attachments/82904006.png)
[image2019-3-28_16-5-23.png](/.attachments/82904007.png)
[image2019-3-28_16-2-53.png](/.attachments/82904008.png)
[image2019-3-28_15-59-56.png](/.attachments/82904009.png)
[image2019-3-28_15-56-3.png](/.attachments/82904010.png)
[image2019-3-28_15-54-50.png](/.attachments/82904011.png)
[image2019-3-28_15-51-44.png](/.attachments/82904012.png)
[image2019-3-28_15-49-38.png](/.attachments/82904013.png)
[image2019-3-4_10-42-27.png](/.attachments/82904014.png)
[image2019-2-21_9-41-30.png](/.attachments/82904015.png)
[image2019-2-21_8-51-11.png](/.attachments/82904016.png)
[image2019-2-20_13-53-27.png](/.attachments/82904017.png)
[image2019-2-20_13-40-12.png](/.attachments/82904018.png)
[image2019-2-20_10-57-26.png](/.attachments/82904019.png)
[image2019-2-20_10-50-34.png](/.attachments/82904020.png)
[image2019-2-20_10-50-28.png](/.attachments/82904021.png)
[image2019-2-20_10-50-15.png](/.attachments/82904022.png)
[image2019-2-20_10-49-47.png](/.attachments/82904023.png)
[image2019-2-20_9-51-30.png](/.attachments/82904024.png)
[image2019-2-20_9-6-9.png](/.attachments/82904025.png)
[image2019-2-20_9-2-53.png](/.attachments/82904026.png)
[image2019-2-20_8-59-59.png](/.attachments/82904027.png)
[image2019-2-20_8-57-13.png](/.attachments/82904028.png)
[image2019-2-20_8-52-33.png](/.attachments/82904029.png)
[image2019-2-20_8-48-37.png](/.attachments/82904030.png)
[image2019-2-20_8-47-42.png](/.attachments/82904031.png)
[image2019-2-19_10-56-44.png](/.attachments/82904032.png)
[image2019-2-11_16-14-58.png](/.attachments/82904033.png)
[image2019-2-11_16-14-2.png](/.attachments/82904034.png)
[image2019-2-11_16-13-14.png](/.attachments/82904035.png)
[image2019-2-11_16-13-0.png](/.attachments/82904036.png)
[image2019-2-11_16-12-16.png](/.attachments/82904037.png)
[image2019-2-11_16-5-40.png](/.attachments/82904038.png)
[image2019-2-11_16-3-44.png](/.attachments/82904039.png)
[image2019-1-30_16-46-40.png](/.attachments/82904040.png)
[image2019-1-30_16-43-36.png](/.attachments/82904041.png)
[image2019-1-30_16-41-47.png](/.attachments/82904042.png)
[image2019-1-30_16-41-19.png](/.attachments/82904043.png)
[image2019-1-30_16-39-40.png](/.attachments/82904044.png)
[image2019-1-30_16-36-44.png](/.attachments/82904045.png)
[image2019-1-30_16-35-49.png](/.attachments/82904046.png)
[image2019-1-30_16-32-51.png](/.attachments/82904047.png)
[image2019-1-30_16-31-20.png](/.attachments/82904048.png)
[image2019-1-30_16-29-30.png](/.attachments/82904049.png)
[image2019-1-30_16-27-31.png](/.attachments/82904050.png)
[image2019-1-30_16-24-23.png](/.attachments/82904051.png)
[image2019-1-30_13-45-52.png](/.attachments/82904052.png)
[image2019-1-30_13-44-49.png](/.attachments/82904053.png)
[image2019-1-30_11-21-5.png](/.attachments/82904054.png)
[image2019-1-30_9-58-33.png](/.attachments/82904055.png)
[image2019-1-30_9-57-55.png](/.attachments/82904056.png)
[image2019-1-30_9-23-52.png](/.attachments/82904057.png)
[image2019-1-30_9-23-16.png](/.attachments/82904058.png)
[image2019-1-29_18-11-4.png](/.attachments/82904059.png)
[image2019-1-29_18-11-0.png](/.attachments/82904060.png)
[image2019-1-29_18-9-4.png](/.attachments/82904061.png)
[image2019-1-29_18-7-35.png](/.attachments/82904062.png)
[image2019-1-29_18-5-48.png](/.attachments/82904063.png)
[image2019-1-29_18-5-7.png](/.attachments/82904064.png)
[image2019-1-29_18-4-26.png](/.attachments/82904065.png)
[image2019-1-29_17-57-6.png](/.attachments/82904066.png)
[image2019-1-29_17-56-28.png](/.attachments/82904067.png)
[image2019-1-29_17-54-53.png](/.attachments/82904068.png)
[image2019-1-29_17-53-38.png](/.attachments/82904069.png)
[image2019-1-29_17-52-37.png](/.attachments/82904070.png)
[image2019-1-29_17-51-42.png](/.attachments/82904071.png)
[image2019-1-29_17-46-42.png](/.attachments/82904072.png)
[image2019-1-29_17-45-8.png](/.attachments/82904073.png)
[image2019-1-29_17-41-13.png](/.attachments/82904074.png)
[image2019-1-29_17-37-34.png](/.attachments/82904075.png)
[image2019-1-29_17-36-30.png](/.attachments/82904076.png)
[image2019-1-29_17-34-32.png](/.attachments/82904077.png)
[image2019-1-29_17-32-24.png](/.attachments/82904078.png)
[image2019-1-29_17-30-7.png](/.attachments/82904079.png)
[image2019-1-29_17-27-48.png](/.attachments/82904080.png)
[image2019-1-29_17-27-1.png](/.attachments/82904081.png)
[image2019-1-29_17-26-54.png](/.attachments/82904082.png)
[image2019-1-29_17-26-25.png](/.attachments/82904083.png)
[image2019-1-29_17-25-24.png](/.attachments/82904084.png)
[image2019-1-22_16-29-29.png](/.attachments/82904085.png)
[image2019-1-22_16-28-11.png](/.attachments/82904086.png)
[image2019-1-22_16-10-25.png](/.attachments/82904087.png)
[image2019-1-22_16-10-23.png](/.attachments/82904088.png)
[image2019-1-22_16-10-10.png](/.attachments/82904089.png)
[image2016-10-26 15:28:56.png](/.attachments/82904090.png)
[image2016-10-26 15:37:37.png](/.attachments/82904091.png)
[image2016-10-26 15:38:58.png](/.attachments/82904092.png)
[image2016-10-26 15:42:13.png](/.attachments/82904093.png)
[image2016-10-26 15:54:54.png](/.attachments/82904094.png)
[image2016-10-26 15:57:25.png](/.attachments/82904095.png)
[image2016-11-25 15:2:19.png](/.attachments/82904096.png)
[image2016-11-25 15:5:39.png](/.attachments/82904097.png)
[image2016-11-30 15:12:15.png](/.attachments/82904098.png)
[image2016-11-30 15:40:55.png](/.attachments/82904099.png)
[image2016-11-30 15:42:38.png](/.attachments/82904100.png)
[image2016-11-30 15:44:1.png](/.attachments/82904101.png)
[image2016-11-30 15:45:46.png](/.attachments/82904102.png)
[image2016-11-30 15:48:40.png](/.attachments/82904103.png)
[image2016-11-30 15:49:46.png](/.attachments/82904104.png)
[image2016-11-30 15:54:43.png](/.attachments/82904105.png)
[image2016-11-30 15:58:24.png](/.attachments/82904106.png)
[image2016-12-1 13:30:50.png](/.attachments/82904107.png)
[image2016-12-1 13:31:49.png](/.attachments/82904108.png)
[image2016-12-1 13:32:53.png](/.attachments/82904109.png)
[image2016-12-1 13:34:10.png](/.attachments/82904110.png)
[image2016-12-1 13:41:0.png](/.attachments/82904111.png)
[image2016-12-1 13:41:22.png](/.attachments/82904112.png)
[image2016-12-1 13:46:57.png](/.attachments/82904113.png)
[image2016-12-1 14:16:0.png](/.attachments/82904114.png)
[image2016-12-1 14:17:6.png](/.attachments/82904115.png)
[image2016-12-1 14:28:9.png](/.attachments/82904116.png)
[image2016-12-1 14:29:20.png](/.attachments/82904117.png)
[image2016-12-1 14:29:55.png](/.attachments/82904118.png)
[image2016-12-1 14:30:36.png](/.attachments/82904119.png)
[image2016-12-1 14:33:3.png](/.attachments/82904120.png)
[image2016-12-1 14:34:17.png](/.attachments/82904121.png)
[image2016-12-1 14:34:23.png](/.attachments/82904122.png)
[image2016-12-1 14:39:52.png](/.attachments/82904123.png)
[image2016-12-1 14:49:0.png](/.attachments/82904124.png)
[image2016-12-1 14:51:51.png](/.attachments/82904125.png)
[image2016-12-1 14:52:44.png](/.attachments/82904126.png)
[image2016-12-1 14:56:26.png](/.attachments/82904127.png)
[image2016-12-20 10:9:34.png](/.attachments/82904128.png)
[image2016-12-20 10:11:35.png](/.attachments/82904129.png)
[image2016-12-20 10:12:58.png](/.attachments/82904130.png)
[image2016-12-20 10:13:59.png](/.attachments/82904131.png)
[image2016-12-20 10:16:0.png](/.attachments/82904132.png)
[image2016-12-20 10:17:24.png](/.attachments/82904133.png)
[image2016-12-20 10:18:10.png](/.attachments/82904134.png)
[image2016-12-20 10:18:44.png](/.attachments/82904135.png)
[image2016-12-20 10:19:45.png](/.attachments/82904136.png)
[image2016-12-20 10:22:35.png](/.attachments/82904137.png)
[image2016-12-20 10:22:58.png](/.attachments/82904138.png)
[image2016-12-20 10:23:25.png](/.attachments/82904139.png)
[image2016-12-20 10:24:26.png](/.attachments/82904140.png)
[image2016-12-20 10:24:46.png](/.attachments/82904141.png)
[image2016-12-20 10:28:13.png](/.attachments/82904142.png)
[image2016-12-20 10:28:52.png](/.attachments/82904143.png)
[image2016-12-20 10:30:14.png](/.attachments/82904144.png)
[image2016-12-20 10:32:34.png](/.attachments/82904145.png)
[image2016-12-20 10:35:5.png](/.attachments/82904146.png)
[image2016-12-20 10:42:6.png](/.attachments/82904147.png)
[image2016-12-20 10:42:31.png](/.attachments/82904148.png)
[image2016-12-20 10:57:12.png](/.attachments/82904149.png)
[image2016-12-20 10:58:46.png](/.attachments/82904150.png)
[image2016-12-20 10:59:7.png](/.attachments/82904151.png)
[image2016-12-20 11:4:5.png](/.attachments/82904152.png)
[image2017-8-9 10:16:49.png](/.attachments/82904153.png)
[image2017-8-9 10:20:16.png](/.attachments/82904154.png)
[image2017-8-9 10:21:10.png](/.attachments/82904155.png)
[image2017-8-9 10:24:11.png](/.attachments/82904156.png)
[image2017-8-9 10:27:3.png](/.attachments/82904157.png)
[image2017-8-9 10:30:51.png](/.attachments/82904158.png)
[image2017-8-9 10:49:45.png](/.attachments/82904159.png)
[image2017-8-9 10:52:6.png](/.attachments/82904160.png)
[image2017-8-9 10:54:52.png](/.attachments/82904161.png)
[image2017-8-9 10:58:18.png](/.attachments/82904162.png)
[image2017-8-9 10:58:57.png](/.attachments/82904163.png)
[image2017-8-9 11:4:9.png](/.attachments/82904164.png)
[image2017-8-9 11:7:1.png](/.attachments/82904165.png)
[image2017-8-9 11:9:37.png](/.attachments/82904166.png)
[image2017-8-9 11:12:55.png](/.attachments/82904167.png)
[image2017-8-9 11:15:43.png](/.attachments/82904168.png)
[image2017-8-9 11:18:58.png](/.attachments/82904169.png)
[image2017-8-9 11:24:21.png](/.attachments/82904170.png)
[image2017-8-9 11:27:58.png](/.attachments/82904171.png)
[image2017-8-9 11:36:50.png](/.attachments/82904172.png)
[image2017-8-9 11:39:25.png](/.attachments/82904173.png)
[image2017-10-10 11:28:10.png](/.attachments/82904174.png)
[image2017-10-10 14:34:26.png](/.attachments/82904175.png)
[image2017-10-10 14:36:59.png](/.attachments/82904176.png)
[image2017-10-10 14:50:21.png](/.attachments/82904177.png)
[image2017-10-10 15:28:23.png](/.attachments/82904178.png)
[image2017-10-10 15:31:5.png](/.attachments/82904179.png)
[image2017-10-10 15:41:54.png](/.attachments/82904180.png)
[image2017-10-10 15:46:32.png](/.attachments/82904181.png)
[image2017-11-28 11:2:32.png](/.attachments/82904182.png)
[image2020-12-8_16-39-40.png](/.attachments/82904185.png)
[image2020-12-8_16-40-18.png](/.attachments/82904186.png)
[image2020-12-8_16-48-9.png](/.attachments/82904187.png)
[image2020-12-8_16-48-34.png](/.attachments/82904188.png)
[image2020-12-8_21-54-16.png](/.attachments/82904191.png)
[image2020-12-8_22-9-57.png](/.attachments/82904192.png)
[image2020-12-8_23-20-5.png](/.attachments/82904194.png)
[image2020-12-8_23-27-21.png](/.attachments/82904195.png)
[image2020-12-8_23-35-22.png](/.attachments/82904196.png)
[image2020-12-8_23-44-54.png](/.attachments/82904197.png)
[image2020-12-8_23-45-37.png](/.attachments/82904198.png)
[image2020-12-8_23-50-44.png](/.attachments/82904199.png)
[image2020-12-8_23-55-34.png](/.attachments/82904200.png)
[image2020-12-9_0-5-49.png](/.attachments/82904201.png)
[image2020-12-9_0-13-6.png](/.attachments/82904202.png)
[image2020-12-9_0-17-11.png](/.attachments/82904203.png)
[image2020-12-9_0-19-12.png](/.attachments/82904204.png)
[image2020-12-9_8-54-28.png](/.attachments/82904213.png)
[image2020-12-9_9-18-40.png](/.attachments/82904217.png)
[image2020-12-9_9-19-28.png](/.attachments/82904218.png)
[image2020-12-9_9-21-29.png](/.attachments/82904219.png)
[image2020-12-9_9-23-44.png](/.attachments/82904220.png)
[image2020-12-9_9-28-11.png](/.attachments/82904221.png)
[image2020-12-9_9-38-4.png](/.attachments/82904222.png)
[image2020-12-9_10-14-11.png](/.attachments/82904223.png)
[image2020-12-9_10-14-32.png](/.attachments/82904224.png)
[image2020-12-9_10-14-58.png](/.attachments/82904225.png)
[image2020-12-9_13-11-48.png](/.attachments/82904228.png)
[image2020-12-9_13-14-37.png](/.attachments/82904229.png)
[image2020-12-9_13-16-18.png](/.attachments/82904230.png)
[image2020-12-9_13-16-57.png](/.attachments/82904231.png)
[image2020-12-9_13-17-16.png](/.attachments/82904232.png)
[image2020-12-11_14-18-11.png](/.attachments/82904273.png)
[image2021-1-8_10-37-13.png](/.attachments/84705606.png)
[image2021-1-8_10-37-52.png](/.attachments/84705607.png)
[image2021-1-8_10-45-3.png](/.attachments/84705608.png)
[image2021-1-8_10-46-21.png](/.attachments/84705609.png)
[image2021-1-8_10-47-48.png](/.attachments/84705610.png)
[image2021-1-8_10-51-58.png](/.attachments/84705611.png)
[image2021-1-8_10-59-42.png](/.attachments/84705612.png)
[image2021-1-8_11-0-0.png](/.attachments/84705613.png)
[image2021-1-8_11-0-26.png](/.attachments/84705614.png)
[image2021-2-25_10-24-44.png](/.attachments/88113318.png)
[image2021-2-25_10-25-19.png](/.attachments/88113319.png)
[image2021-2-25_10-27-42.png](/.attachments/88113320.png)
[image2021-2-25_10-34-39.png](/.attachments/88113321.png)
[image2021-2-25_10-42-43.png](/.attachments/88113322.png)
[image2021-2-25_10-51-20.png](/.attachments/88113323.png)
[image2021-2-25_11-59-17.png](/.attachments/88113326.png)
[image2021-2-25_12-7-24.png](/.attachments/88113327.png)
[image2021-2-25_12-25-55.png](/.attachments/88113328.png)
[image2021-3-4_10-3-21.png](/.attachments/88113469.png)
[image2021-3-4_10-3-55.png](/.attachments/88113470.png)
[image2021-3-4_10-26-31.png](/.attachments/88113471.png)
[image2021-3-4_10-28-10.png](/.attachments/88113472.png)
[image2021-3-4_10-28-33.png](/.attachments/88113473.png)
[image2021-3-4_10-28-49.png](/.attachments/88113474.png)
[image2021-3-4_10-30-50.png](/.attachments/88113475.png)
[image2021-3-4_10-38-31.png](/.attachments/88113477.png)
[image2021-3-4_11-23-44.png](/.attachments/88113478.png)
[image2021-3-4_11-42-56.png](/.attachments/88113484.png)
[image2021-3-4_11-43-15.png](/.attachments/88113485.png)
[image2021-3-4_11-45-7.png](/.attachments/88113486.png)
[image2021-4-15_14-12-38.png](/.attachments/91127867.png)
[image2021-4-15_14-24-42.png](/.attachments/91127868.png)
[image2021-4-15_14-27-47.png](/.attachments/91127869.png)
[image2021-4-15_14-29-35.png](/.attachments/91127870.png)
[image2021-4-15_14-30-34.png](/.attachments/91127871.png)
[image2021-4-15_14-32-41.png](/.attachments/91127872.png)

# Introduction

The Planned Order Packout (Lot/Batch Build) station enables the user to pack Carrier/Lot or Containers (overpack) into Containers. The user will need to create a container to begin packing carrier/Lot or container (overpack) into it or pack into an existing container. Each container will have its unique container name/ID
. The minimum and maximum items that can be packed into a container are dependent on the selected Container Type. When a container reaches its maximum allowed packed items, the system will auto close the container. If the maximum packed quantity is not reached, the system allows the user to manually close short a container provided the minimum packed quantity configured in Container Type is met. 

### How to get there?



::: mermaid
graph LR
A("MANUAL STATION LOGIN ")-->0("Planned Order Packout")

:::


#### Permission


Pack: 
1. Manual Station Login - Allows the user to manually log into a station associated with a route, step, and resource 

2. View Planned Order Details - Allows the user to view details about Planned Orders (associated lots, release dates, etc.) 
3. View Lot Details - Allows the user to view detailed lot information (operation history, attributes, etc.) 
4. Inspection - Permissions related to the inspection process 
5. Manual Operation Entry - Permissions related to manual operation entry 
6. Rework - Permissions related to performing rework on defective lots 
7. Pack Lot - Allows the user to pack lots into an existing container Unpack/Unpack All: 

Permissions 1 - 6 as above. 

7. Unpack Lot - Allows the user to unpack a lot that was packed into a container 
Hold Container: 
Permissions 1 - 6 as above. 

7. Pack Lot - Allows the user to pack lots into an existing container 
8. Hold Container - Allows the user to put a container on hold Release Container: 
Permissions 1 - 6 as above. 

7. Pack Lot - Allows the user to pack lots into an existing container 
8. Release Container - Allows the user to release an existing hold on a containerScrap Container: 
Permissions 1 - 6 as above. 

7. Scrap Container - Allows the user to scrap an existing containerOpen Container:
Permissions 1 - 6 as above.
7. Open Container - Open Container Permission
Permissions 1 - 6 as above.
7. Can Close Partial Lot Container - Allows the user to close the container even the container is not full capacity.


#### Screen Activity


Planned Order Packout (Lot /Batch Build) enables the user to perform the following activity:

- Scan Carrier/Container to pack

- Pick a Container Type

- Pack Carrier/Container

- UnPack Carrier/Container

- Unpack Entire Container

- Resume Packout

- Create, Open, Close Container

- Print Label on Container Create or Container Close

- Pack Scrapped Lot

- Auto Split and pack into multiple containers

- Scrap Container

- Hold Container

- Release Hold Container


#### Security



- Only users with "Can Access Lot/Batch Build " Packout Unserilized Product " Unpack Lot" permission is able to see the "Unpack All" button.

![](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/77f5cbea-a432-45df-932e-0524c9a74548?fileName=image.png)




- Users with "Can Access Lot/Batch Build " Container Lot " Scrap Container" permission will be able to see the "Scrap" button.

![](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/84418b16-07ad-4893-a8df-758574009968?fileName=image.png)





#### Pre Condition


The following data needs to be pre-configured before user is able to packout

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)
defined
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
defined for Lot/Batch Build
- [Create Carrier](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
, Create a [Planned Order](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)and assign to Route,  [Lot Release](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)must have occurred for the Planned Order, Lot is assigned to a Carrier, and the Carrier present to start a the Route Step if the operation is to Start 
- [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
User must identify the Resource they are using before performing the Operation activities  
- [Container Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)
defined
- [Next Number](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
, defined to generate Container Number
- [Document Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
, if Container Label is required to print
- [Document Assignment](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
, if Container Label is required to print 
- [Lot Scrap](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
to pack scrapped lot
- Carrier Template to configure Batch manage carrier in order to auto split to multiple containers at a time.



## Scan Items to pack


If the carrier scanned (at Scan Carrier or Carrier fields) 
has an assembly which does not match the selected assembly at [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md), system shall return an error message.The screen will show how many units Completed/Started at the current session.

Re-entering the station or selecting the Refresh button will reset the Counter to Zero

Abort Operation will not increase the Counter
- Login to Planned Order Packout through

[Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md). Planned Order Packout is a screen that allows the user to pack lot through scanning carrier to a container
![image2019-1-29_17-25-24.png](/.attachments/42991670.png)



- Scans an invalid Carrier Number or Carrier Number not assigned to a Lot. System will return error message of "Carrier, Lot or Container Number not found for "Carrier Number""


![image2019-1-29_17-27-1.png](/.attachments/42991673.png)





- Once a valid Carrier Number (assigned to a Lot) is scanned, a list of container type will be available for user selection. If only one container type available, system will auto select the container type.

\*If Carrier is scanned in Lot Packout station, the list of the Container Type should show all the compatible Container Type (even though no route step type configured) upon the WIP scanned.
\*If scanned box container type is configured with Route step Type which is NOT the packout and overpackout station configured, system behave as below:
- No Information Box should be showed
- Container Type list will show the Container Type associated with the Route Step Type and the compatible container type
- "Carrier/ Lot Number" textbox is disabled 
- Pack and Switch buttons are disabled
- Warning toastr message "Container Type '"Container Type Name"' is not configured with the Route Step Type '"Route Step Type Name"'"
\*If Carrier in Lot Overpack Station, the list of the Container Type should only show the Container Type defined with Route Step Types upon the Lot scanned.
![image2019-1-29_17-27-48.png](/.attachments/42991674.png)




## Pick a Container Type



- Container Type List will display based on the following criteria:


- Status = "Active"

- Usage Type = "Box"

- Material's Customer match with the Container Type Customer

![image2019-1-29_17-30-7.png](/.attachments/42991675.png)



- ### Once the container type is selected, system will show the list of open container.


![image2019-1-29_17-36-30.png](/.attachments/42991678.png)



- If any open container is selected then the Carrier will be automatically packed into the container and open container list will be hidden.


![image2019-3-28_15-49-38.png](/.attachments/45973936.png)



- Select the Container Type and creates a Container. The system will create Container Number according to the Next Number assigned. Document prints if is configured to print onContainerCreate. Carrier is packed to the container once the container is created and open container list will be hide and only show the open container that the carrier packed into.


![image2019-3-28_15-51-44.png](/.attachments/45973937.png)



- System will auto pack the scanned Carrier if


- Carrier scanned is not packed to any container

- Carrier is en-queue at current Route Step

- Carrier is allow to pack into the container type selected

- Carrier
has an assembly that matches the selected assembly at Manual Station Login

## Create a new container

If the value scanned is a WIP that is not associated with any container, when a new container is created or an open container is selected, the system will automatically pack the WIP. The focus will then be on the 'Carrier / Lot Number' field to allow the user to continue scanning WIP to pack into the container (box). The system will show the container information box with the container just created.
![image2019-11-23_11-20-41.png](/.attachments/61079653.png)


The system has a new validation check when generating the container number to prevent have the duplicate container number between WIP container and Lot container. The duplicate container number will happen if there is the same segment in the different Next Number Configuration for the type "Container ID" which is applied to Lot container type and WIP container type. This is applicable to the Overpack as well.
**Next Number for the WIP Container Container type** 
![image2019-12-26_13-53-23.png](/.attachments/62423229.png)


**Next Number for the Lot Container Container type** 
![image2019-12-26_13-54-18.png](/.attachments/62423230.png)


**Next Number for the WIP Pallet Container type** 
![image2019-12-26_14-13-21.png](/.attachments/62423231.png)


**Next Number for the Lot Pallet Container type** 
![image2019-12-26_14-14-26.png](/.attachments/62423232.png)


**During Lot Packout or Lot Overpack, the system will trigger the validation when they click on the Create button and the system will prompt the error message "New container number generated already exists. Please check the container next number configuration for duplication." to prevent have the duplicate container number generated between WIP container and Lot container.** 
![image2019-12-26_15-8-21.png](/.attachments/62423233.png)


![image2019-12-26_15-23-4.png](/.attachments/62423234.png)


**Once the container closed, the system will automatically create the container number base on the Container Type selected and auto pack it if the operator continues to scan carrier serial number in the “Carrier / Lot Number” field.** 
![image2019-11-23_11-23-58.png](/.attachments/61079655.png)


![image2019-11-23_11-26-42.png](/.attachments/61079656.png)





## Pack Items  


- Scan Carrier Number or Lot Number to pack into the container.

![image2019-3-28_15-56-3.png](/.attachments/45973939.png)



- Return message when Carrier successfully packed into the container.

Carrier "CarrierNumber" Lot "LotNumber" is packed to container "containerNumber".
Carrier Quantity, Lot Quantity and Material are updated with the items packed into the container.
![image2019-3-28_15-54-50.png](/.attachments/45973938.png)





- Return message if the Carrier or Lot already packed to container

![image2019-3-28_15-59-56.png](/.attachments/45973940.png)



- Return message if exceeded the configured Max Carrier.


![image2019-6-11_16-12-39.png](/.attachments/51871805.png)




![image2019-6-11_16-13-2.png](/.attachments/51871806.png)




## Pack Items by scan container which fulfill validation mask



- Create Container Type with Validation Mask

![image2019-6-11_16-13-2.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/20833590-670d-4954-a2a4-0b389f7198e6?fileName=image.png)


2. Scan the carrier/Container in Lot Packout Station as usual
![image2019-6-11_16-13-2.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/97522ced-fe50-415e-b3d0-a8aec198ae4a?fileName=image.png)



3. Select the Container type which is configured to use Validation Mask (Not Next Number) 
![image2019-6-11_16-13-2.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/29d9f0c3-b2b8-4cd7-9a36-3c78c89753a5?fileName=image.png)



4. Scan in the Container Number which is match with the Validation Mask
![image2019-6-11_16-13-2.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/fbc9febb-4649-46aa-b7ca-de2a9471bb2a?fileName=image.png)



5. If the container number scanned in is matched the validation mask, the container will be created automatically
![image2019-6-11_16-13-2.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/839df187-8482-4772-88e3-ba7b9b171d7b?fileName=image.png)




## Unpack Items 



- Switch to "Unpack" Mode

![image2019-3-28_16-2-53.png](/.attachments/45973941.png)





- Scan Carrier Number or Lot Number to unpack

![image2019-3-28_16-5-23.png](/.attachments/45973942.png)





- Return message when Carrier or Lot unpacked from the Container. "Carrier "CarrierNumber" Lot "LotNumber" is unpacked from container "ContainerNumber".

Carrier Quantity, Lot Quantity and Material are updated when the Carrier is unpacked from container.
![image2019-3-28_16-6-59.png](/.attachments/45973943.png)



- Return message if the Carrier or Lot is not packed to any Container or is not packed into the selected Container


![image2019-3-28_16-8-52.png](/.attachments/45973944.png)




## Unpack Entire Container  



- Select an Open Container and click on "Unpack All" button

![image2019-3-28_16-10-45.png](/.attachments/45973945.png)



- Prompt user for confirmation to unpack all items in the selected container.


Click "OK" to unpack all. 
Click "Cancel" to cancel the unpack action and return to the Packout screen.
![image2019-1-29_17-57-6.png](/.attachments/42991689.png)





- Return message when all items successfully unpacked. "All Items from container(s) "Container Number" unpacked successfully"

![image2019-2-11_16-3-44.png](/.attachments/43974659.png)




## Resume Packout  



- Scan an existing Container Number or the Carrier/Lot that has been packed

![image2019-1-29_18-4-26.png](/.attachments/42991690.png)



- Load Container Items for the scanned Container Number


![image2019-3-28_16-12-27.png](/.attachments/45973946.png)





- Scan Carrier Number or Lot Number to continue packing if Container Status is Opened.

![image2019-3-28_16-13-57.png](/.attachments/45973947.png)




## Open, Close and Scrap Container



- Scan an existing Open Container

![image2019-1-29_18-4-26.png](/.attachments/42991690.png)



- Pack a Carrier or Lot to the container


![image2019-3-28_16-14-54.png](/.attachments/45973948.png)



- Manual Close Container when minimum capacity met. Open containers will be shown on the list.


![image2019-3-28_16-16-0.png](/.attachments/45973949.png)



![image2019-3-28_16-18-41.png](/.attachments/45973950.png)



- Reopen Container. Open button will only be shown if user has permission for "Open Container".


![image2019-3-28_16-19-42.png](/.attachments/45973951.png)



- Unpack All Items from the Container.


![image2019-3-28_16-21-29.png](/.attachments/45973952.png)



- Pack a Carrier or Lot that met the maximum capacity set at

[Container Type Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
- Auto Close Container when Maximum capacity met.

- When container is auto Close or manual close,
system shall show the list of all the open containers of the selected container type and the container information box will be hide.

- If an open container is active, the container list is hidden and changing container type will not show the list.



- Document prints if is configured to print onContainerClose
Open or Close Container
- Container can also be scrapped by clicking on the Scrap button

- On container close, user is allowed to create a new container refer to the container type selection and scan the next carrier(s) need to pack without clear and return to the initial page of Scan Carrier / Container if the following condition meet:

- Container Type Items (Container Type Maintenance) is defined with the material need to be packed.

- Material need to be packed for the current box (Close) and new box created should be the same.
![image2019-3-28_16-13-57.png](/.attachments/45973947.png)



- Container type Items should define the material need to be packed into the container.


![image2019-1-30_11-21-5.png](/.attachments/42991717.png)




## Pack Scrapped Lot



- The system allow to pack multiple scrapped lot to a container packed with scrapped lot

![image2019-5-9_10-29-36.png](/.attachments/48169644.png)



![image2019-5-9_10-31-58.png](/.attachments/48169645.png)



- The system do not allow user to pack a non-scrap lot to a container with scrapped lot


![image2019-5-9_10-40-3.png](/.attachments/48169647.png)


![image2019-5-9_10-37-43.png](/.attachments/48169646.png)





- Unpack All scrapped lot from a container allows user to pack a non-scrap / scrapped lot to the empty container.

![image2019-5-9_10-41-39.png](/.attachments/48169648.png)




## Packing a Batch Managed Carrier to multiple containers  



- Scan a Batch managed Carrier Number

![image2019-1-30_16-27-31.png](/.attachments/42991721.png)



- Select a Container Type. System will show the split box function and calculate and display the minimum number of containers required, based upon container capacity (if configured) and by default will fill them with the maximum qty allowed, with the remainder being in the last container.


![image2019-1-30_16-29-30.png](/.attachments/42991722.png)



- System will display the allocated, to pack and total qty's for the operation and the create container button becomes active, since the initial proposal will allocate all of the items to a container - Note by default the system will fill the containers to the max Qty in sequence, with the remainder in the last one.


- The user can then click on "Create Container" to proceed with the proposed allocation

- The user can also edit the allocation as follows:-


- Edit - Allows the user to edit the proposed allocation - Clicking this allows user to add additional containers, delete added containers or change the allocated qty's manually in each container as required - Note the "Create Container" will only be active when the total Qty is allocated

![image2019-1-30_16-31-20.png](/.attachments/42991723.png)



- Fill - Clicking the "Fill" button will allocate the max qty to each container in sequence, with the remainder in the last one as per the default behavior. Note if the user adds containers and manually changes the allocated qty, clicking this will undo/revert to default allocation.


- Distribute - Clicking on the "Distribute" button will allocate the qty's to each container evenly, so in the example where we have a total item qty of 4, max container qty is 4, the system will propose allocating 1 to each container - Note the user can still modify the proposal until they have exactly what is needed

![image2019-1-30_16-35-49.png](/.attachments/42991725.png)



- Once the user has a satisfactory allocation (and the total qty is allocated), the user can Click on "Create" button, at which point the system will create the containers and automatically close them. Once created then the page will be back to the initial screen.


![image2019-1-30_16-36-44.png](/.attachments/42991726.png)


![image2019-1-30_16-39-40.png](/.attachments/42991727.png)





- The "Scrap & Unpack All" button, will unpack the full qty, scrap all of the containers and re-enqueue the batch managed carrier to the packout step.

![image2019-3-29_8-7-3.png](/.attachments/45974021.png)


![image2019-1-30_16-43-36.png](/.attachments/42991730.png)




## Hold Container



- Ensure you have the permission before perform the Hold on a container:

- Can Access Lot/Batch Build → Container Lot → Hold Container.


- After user retrieved the container,

- Batch managed carrier:
a “Hold” button is on top of the container information box to put all the related containers on hold.
![image2019-3-29_8-9-44.png](/.attachments/45974022.png)




- Non-batch managed carrier: the container information box have a “Hold” button to put the container on hold.

![image2019-3-29_8-12-43.png](/.attachments/45974023.png)




- When the container is on hold, only the "Release" button will be visible in the container information box.

- If the container is on hold, no other operation can be done to the container except to release it at packout station.


- Action performed history is recorded and show under Container View-Lot " History tab.


![image2019-3-29_8-12-43.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/3bb28138-78bb-4cf3-bdcc-ed46d952eda4?fileName=image.png)




- System is able to print the container label if it is assigned to "On Container Hold" at Document Assignment.


- Lot View → Lot Holds tab to show the event details


![image2019-3-29_8-12-43.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/ad166625-8827-4f67-97ce-2161d0d6c163?fileName=image.png)




## Release Hold Container



- Ensure you have the permission before perform the Hold on a container:

- Can Access Lot/Batch Build → Container Lot → Release Container.


- After user retrieved the container,

- Batch managed carrier:
a “Release” button is on top of the container information box to release all the related containers.
![image2019-3-29_8-14-40.png](/.attachments/45974024.png)




- Non-batch managed carrier: the container information box have a “Release” button to release the container.

![image2019-3-29_8-15-44.png](/.attachments/45974025.png)




- Action performed history is recorded and show under Container View-Lot " History tab.

![image2019-3-29_8-15-44.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/94d4ceef-74e4-4968-9399-8637f0b9586d?fileName=image.png)



- All Lot in the container will be release from hold.


- Lot View → Lot Holds tab to show the event details

![image2019-3-29_8-15-44.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/902af60b-48a5-49ea-babc-913210a441d4?fileName=image.png)




## Auto Split to Multiple Box



- For non-batch managed carrier, the "Auto Split to Multiple Box" checkbox will be shown when the carrier is scanned whereas if the Container is scanned, checkbox is hidden.
![image2019-1-30_16-46-40.png](/.attachments/42991731.png)





## Shipped Container



- Shipped container is not allowed to use at Lot Packout station.

![image2019-6-11_16-11-29.png](/.attachments/51871804.png)




### Fields




<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Carrier / Lot / Container Number</p></td><td class="confluenceTd"><p><span>Only accepts full match of Carrier or Lot or Container number to start Packout. </span></p></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917970.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-10-26%2015%3A57%3A25.png?version=1&modificationDate=1530103789143&api=v2" /></span></p></div></td><td class="confluenceTd">Clear button. Clear all contents to only show the Scan Carrier field</td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd"><p>Display after a Carrier / Lot / Container Number scanned. Only display the list of Container Type that has the same Customer with the material of the scanned items.<br />If scanned Carrier / Lot has been packed into a Container, display the container's Container Type.<br /><span style="background-color: transparent;font-size: 10.0pt;">If scanned an existing Container Number, display the container's Container Type </span></p></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917942.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A39%3A52.png?version=1&modificationDate=1530103788733&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">Create button. To create new Container based on the Next Number configured against the selected Container Type.<br />Gray out the button, when a Container is selected to pack. </td></tr><tr><td colspan="1" class="confluenceTd">Carrier / Lot Number</td><td colspan="1" class="confluenceTd">Scan Carrier Number or Lot Number to pack or unpack from the Container. Disable when a container is closed </td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">Total Packed Quantity from Container</td></tr><tr><td colspan="1" class="confluenceTd">Show Content</td><td colspan="1" class="confluenceTd">Hyperlink to Container View - Contents tab to show all items packed into the container</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Customer for the Container</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Division for the Container</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Material Name of items packed into the container. Only allow one Material to pack in a Container.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917941.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A49%3A0.png?version=1&modificationDate=1530103788717&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">Switch button to switch between Pack Mode and Unpack Mode.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917940.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A51%3A51.png?version=1&modificationDate=1530103788707&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">To unpack all items from the container. Only visible when a container is opened.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917939.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A52%3A44.png?version=1&modificationDate=1530103788693&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">To close an opened container. Only visible when a container is opened.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917938.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A56%3A26.png?version=1&modificationDate=1530103788680&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">To open a closed container. Only visible when a container is closed.</td></tr><tr><td colspan="1" class="confluenceTd">Scrap button</td><td colspan="1" class="confluenceTd">To scrap an open container. Only visible when a container is opened.Scrapped Container will unpack all the items from the container. Container Number no longer can be used</td></tr><tr><td colspan="1" class="confluenceTd">Completed/Started</td><td colspan="1" class="confluenceTd">The number of started and completed lot for the current session. Restart a new session or Refresh button will restart the counter.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" width="65" src="attachments/thumbnails/29917882/41058488" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/29917882/image2019-1-22-16-29-29.png?version=1&modificationDate=1548145769407&api=v2" /></span></p></div></td><td colspan="1" class="confluenceTd">To hold a container. Only visible to those have permission.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" height="36" src="attachments/thumbnails/29917882/41058487" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/29917882/image2019-1-22-16-28-11.png?version=1&modificationDate=1548145691637&api=v2" /></span></p></div></td><td colspan="1" class="confluenceTd"><span>To Release a container. Only visible to those have permission and container is with Hold status.</span></td></tr></tbody></table>






## Overpack




### Initialization


During initialization, when user scan in Container:

- Scan container (container type items, item type = "material") in closed status:
Container Type is defaulted to the container type of the scanned container and shows other compatible container type (upper level). Container Type values is according to values configured in Container Type Items and Route Step Types. The Container Usage Type must be the same as defined in the lower level container's "Requires Over Pack" field.
![image2019-3-29_8-30-2.png](/.attachments/45974028.png)


System will show the list of open container(s) compatible with the selected container type.
![image2019-3-29_8-31-35.png](/.attachments/45974029.png)




- Scan container (container type items, item type = "container") in open status: System displays the selected container to enable user to continue packing lower level container into it.
![image2019-2-20_8-57-13.png](/.attachments/44761173.png)




- Scan container (container type items, item type = "container") in closed status:
Container Type is defaulted to the container type of the scanned container and system displays the list of open container(s) compatible with the selected container type.
![image2019-2-20_8-59-59.png](/.attachments/44761174.png)




- Scan container (container type items, item type = "container") in hold status: The system retrieves data for the container but only allows to release it.

![image2019-2-20_9-6-9.png](/.attachments/44761176.png)





#### Create a new container


If the value scanned is a container that is not associated with any upper level container, when a new container is created or an open container is selected, system will automatically pack the container if 
the lower level container has an assembly that matches the selected assembly at Manual Station Login. Focus will then be on the 'Scan Container' control to allow the user to continue scanning containers (box) to pack into the upper level container (pallet/box). The system will show the container information box with the upper level container just created.![image2019-2-20_9-51-30.png](/.attachments/44761177.png)





#### Pack a container


The Container Type Packout Rule available for lot overpack is “Restrict To Same Planned Orders”. When “Restrict To Same Planned Orders” is turned OFF, lower level containers with carriers from different planned orders can be packed in the upper level container. When “Restrict To Same Planned Orders” is turned ON, lower level containers with carriers from different planned orders cannot be packed in the upper level container.
![image2019-2-20_13-40-12.png](/.attachments/44761196.png)


When user scans a container to pack, system will perform the following validations:

- When lower level container has the “Restrict To Same Planned Orders” rule turned on, the overpack container can have the “Restrict To Same Planned Orders” rule on or off.

- When lower level container has the “Restrict To Same Planned Orders” rule turned off, the overpack container must have the “Restrict To Same Planned Orders” rule off.

- The materials in the lower level containers must be the same. In case of empty container, the first container (box) packed will force the following containers to have the same material.


- The

overpackcontainer’s Usage Type must match the value configured at the lower level container’s Custom Data Packout - Requires Over Pack field.
- If the first container (box) packed contains scrapped materials, the subsequent containers to be packed have to contain scrapped materials only.


- If the first container packed contains good materials, the subsequent containers to be packed cannot contain scrapped materials.


- Lot must be enqueued at the current route step.


- Lower level container has an assembly that matches the selected assembly at Manual Station Login
.If the container scanned is part of batch managed carrier, all related containers will be packed. If it is over the max quantity configured, an error message is shown and all the related containers will not be packed.
![image2019-2-20_13-53-27.png](/.attachments/44761197.png)


When the container (box) is packed, the lot will enqueue at the next route step if available. System shall check for the container’s max quantity which is configured under Container Type Items. If the max quantity is reached, the overpack container will automatically close.



#### Unpack a container from overpack


In order to be able to unpack, the overpack container must be in open status. The 'Scan Container' and Pack/Unpack button are disabled for other statuses. User must also have the security permission for 
"Can Access Lot/Batch Build " Packout Unserilized Product " Unpack Lot"to be able to unpack the container and see the "Unpack All" button.When user scans the container to be unpacked from overpack:

- If the container is not associated to the overpack, the system shall raise an error message

- If the container is associated, the system will unpack the container


- If the container is part of a batch managed carrier, all the related lower level containers will be unpacked from the overpack container.

When the container is unpacked, the lot will enqueue back at current route step.
If user uses the “Unpack All” button:

- The system asks with a confirmation message to continue the operation.


- The system removes all lower level containers from the overpack container. The unpacked containers (box) remain in current status.


- The overpack container's status is not changed and remains in Open status.




#### Manual Close a container



- The container must be only in open status. Any other status will be stopped to close the container.

- The container must contain at least 1 lower level container to have the "Close" button in the container information box.

- If user manually closes the container, system shall validate if the MIN quantity that is configured at Container Type Items has been reached. If not, show message "Total quantity packed for '"material"' must have at least the minimum quantity of '"min qty"'"
![image2019-2-20_10-50-34.png](/.attachments/44761193.png)



- When the operator press “Close” button, the container status changes to close. The container information box will be hidden and the system shall show the list of all the open containers of the selected container type.

![image2019-2-20_10-50-34.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/556c4921-e55c-45e2-9f07-da9e25c6c227?fileName=image.png)




#### Reopen a closed container



- In the container information box “Open” button is available only if the following conditions are validated:


- The container is not overpacked.

- The container status is closed

- The container status not on hold

- User has permission for "Open Container".

- When the user press on the “Open” button into the Container information box, the container status change to open.

![image2019-2-20_10-50-34.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/db16a7d9-8fe3-4d1b-a088-b2e5450d3b94?fileName=image.png)




#### Scrap a container



- User is required to have permission to perform operation (
Can Access Lot/Batch Build -" Container Lot -" Scrap Container) ![image2019-2-20_10-50-34.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/8bdf52bb-20b3-4865-a9e5-60405ceaafc9?fileName=image.png)



- The container must not be overpacked


- The container must not be on hold

- When the authorized
user press the scrap button from the container information box, a pop up a warning message will show: “Are you sure you want to scrap container(s) "Container number"?” 
![image2019-2-21_8-51-11.png](/.attachments/44761251.png)



- Once confirm, the container contents (lower level) is released (unpacked) and this container (upper level) status will be set to "Scrapped". The container could not be used anymore.


- System will record who and when the action is performed at Container View-Lot, History tab.

Event = "Scrapped". Event Details = “Container # "container number"”.
- After the container is scrapped, the Lot will be in queue at current route step.


#### Hold a container



- The container can be in any status but not associated to any upper level container

- Only users with
"Can Place Container On Hold"permission can hold the container (Can Access Lot/Batch Build -" Container Lot -" Hold Container). Authorized user should have the container information box with the “Hold” button to put container on hold.![image2019-2-21_9-41-30.png](/.attachments/44761252.png)



- When the container is on hold, only the "Release" button will be visible in the container information box.


- All lower level containers and Lots packed will be placed on hold.



- If the container is on hold, no other operation can be done on the container except to release it at packout station.


- When placed on hold, message “The Container "container number" has been placed on hold and any container inside has been placed on hold” to be shown.


- System will record who and when the action is performed at Container View-Lot, History tab. The Event Details will be: “Hold Comment - Container is placed on hold by "username"”.

- For the lower level containers, the Event Details in Container View-Lot -" History tab shall be "Hold Comment - Container is placed on hold because the parent container is placed on hold"


#### Release a container



- The container should be no hold status to show the “Release” button.

- Only users with "Can Access Lot/Batch Build -" Container Lot -"
Release Container" permissioncan see the release button and release the container.![image2019-2-21_9-41-30.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/14d3bca8-70d2-45ab-b59f-ac7692fc22bd?fileName=image.png)



- System will record who and when the action is performed at Container View-Lot, History tab. Event = "Release Hold".

Event Details will be generated by the system: “Release Comment - Container is released by "username"”.

- For the lower level containers, the Event Details in

Container View-Lot -" History tab shall be "
Release Comment - Container is released with parent container release."


- The system will show the following message: “The Container
"container number"has been released and any container inside has been released”
- All lower level containers and the lots in them will be released from hold.


#### Generate Shop Floor GRN upon a container close



- Container pack in the packout station must be from the container type which has configured with "Generate GRN" turn On.

- GRN details to create as of following format:

- GRN:
Generate by referring to the container number and verify with GRN Validation Mask configured at Material Maintenance (Assemble tab). If the GRN Validation Mask does not meet, then
toastr message to show “GRN is not match with defined validation mask rules.”
. If no GRN Validation Mask configured, Container name must meet the 16 alphanumeric GRN rules or toastr message to show "GRN is not meet the 16 alphanumeric GRN rule".

- Part Number: Material packed into container.

- Vendor: Jabil

- Quantity: Total Lot Qty packed into Container (Total Lot Qty of each of the Lot containers if the packed container is Pallet)

- GRN will not be generate upon container close


- Container is packed with Scrap Lot


- GRN has already created before


- GRN Maintenance screen have a new field named as "Created by Packout" and this is not editable.

- set as "Yes" if the GRN is created at Packout upon container closed

- set as "No" by default

- GRN quantity to be updated if the container reopen and pack with new quantity of material. Quantity to be updated upon container close.
![image2019-3-4_10-42-27.png](/.attachments/44761564.png)



- The closed container status with GRN is updated to “Consumed” after Part Allocation Setup Sheet installed.


- Status of the Lot associated in the container is updated to "Consumed".

- Consumed status container cannot be reopen or Scrap. Only Hold/Release function available.

- If a container is scrapped, remove the GRN from the system.

- If a container is on hold, turn on the GRN “Use Prohibited” option and release to turn off the GRN "Use Prohibited" option at the GRN Maintenance screen.

The Planned Order Packout (Lot/Batch Build) station enables the user to pack Carrier/Lot or Containers (overpack) into Containers. The user will need to create a container to begin packing carrier/Lot or container (overpack) into it or pack into an existing container. Each container will have its unique container name/ID
. The minimum and maximum items that can be packed into a container are dependent on the selected Container Type. When a container reaches its maximum allowed packed items, the system will auto close the container. If the maximum packed quantity is not reached, the system allows the user to manually close short a container provided the minimum packed quantity configured in Container Type is met. 

#### How to get there?



::: mermaid
graph LR
A("MANUAL STATION LOGIN ")-->0("Planned Order Packout")

:::


#### Permission


Pack: 
1. Manual Station Login - Allows the user to manually log into a station associated with a route, step, and resource 

2. View Planned Order Details - Allows the user to view details about Planned Orders (associated lots, release dates, etc.) 
3. View Lot Details - Allows the user to view detailed lot information (operation history, attributes, etc.) 
4. Inspection - Permissions related to the inspection process 
5. Manual Operation Entry - Permissions related to manual operation entry 
6. Rework - Permissions related to performing rework on defective lots 
7. Pack Lot - Allows the user to pack lots into an existing container Unpack/Unpack All: 

Permissions 1 - 6 as above. 

7. Unpack Lot - Allows the user to unpack a lot that was packed into a container 
Hold Container: 
Permissions 1 - 6 as above. 

7. Pack Lot - Allows the user to pack lots into an existing container 
8. Hold Container - Allows the user to put a container on hold Release Container: 
Permissions 1 - 6 as above. 

7. Pack Lot - Allows the user to pack lots into an existing container 
8. Release Container - Allows the user to release an existing hold on a containerScrap Container: 
Permissions 1 - 6 as above. 

7. Scrap Container - Allows the user to scrap an existing containerOpen Container:
Permissions 1 - 6 as above.
7. Open Container - Open Container Permission
Permissions 1 - 6 as above.
7. Can Close Partial Lot Container - Allows the user to close the container even the container is not full capacity.


#### Screen Activity


Planned Order Packout (Lot /Batch Build) enables the user to perform the following activity:

- Scan Carrier/Container to pack

- Pick a Container Type

- Pack Carrier/Container

- UnPack Carrier/Container

- Unpack Entire Container

- Resume Packout

- Create, Open, Close Container

- Print Label on Container Create or Container Close

- Pack Scrapped Lot

- Auto Split and pack into multiple containers

- Scrap Container

- Hold Container

- Release Hold Container


#### Security



- Only users with "Can Access Lot/Batch Build " Packout Unserilized Product " Unpack Lot" permission is able to see the "Unpack All" button.

![image2019-3-4_10-42-27.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/77f5cbea-a432-45df-932e-0524c9a74548?fileName=image.png)




- Users with "Can Access Lot/Batch Build " Container Lot " Scrap Container" permission will be able to see the "Scrap" button.

![image2019-3-4_10-42-27.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/84418b16-07ad-4893-a8df-758574009968?fileName=image.png)





#### Pre Condition


The following data needs to be pre-configured before user is able to packout

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)
defined
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
defined for Lot/Batch Build
- [Create Carrier](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
, Create a [Planned Order](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)and assign to Route,  [Lot Release](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)must have occurred for the Planned Order, Lot is assigned to a Carrier, and the Carrier present to start a the Route Step if the operation is to Start 
- [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
User must identify the Resource they are using before performing the Operation activities  
- [Container Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)
defined
- [Next Number](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
, defined to generate Container Number
- [Document Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
, if Container Label is required to print
- [Document Assignment](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
, if Container Label is required to print 
- [Lot Scrap](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
to pack scrapped lot
- Carrier Template to configure Batch manage carrier in order to auto split to multiple containers at a time.



## Scan Items to pack


If the carrier scanned (at Scan Carrier or Carrier fields) 
has an assembly which does not match the selected assembly at [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md), system shall return an error message.The screen will show how many units Completed/Started at the current session.

Re-entering the station or selecting the Refresh button will reset the Counter to Zero

Abort Operation will not increase the Counter
- Login to Planned Order Packout through

[Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md). Planned Order Packout is a screen that allows the user to pack lot through scanning carrier to a container
![image2019-1-29_17-25-24.png](/.attachments/42991670.png)



- Scans an invalid Carrier Number or Carrier Number not assigned to a Lot. System will return error message of "Carrier, Lot or Container Number not found for "Carrier Number""


![image2019-1-29_17-27-1.png](/.attachments/42991673.png)





- Once a valid Carrier Number (assigned to a Lot) is scanned, a list of container type will be available for user selection. If only one container type available, system will auto select the container type.

\*If Carrier is scanned in Lot Packout station, the list of the Container Type should show all the compatible Container Type (even though no route step type configured) upon the WIP scanned.
\*If scanned box container type is configured with Route step Type which is NOT the packout and overpackout station configured, system behave as below:
- No Information Box should be showed
- Container Type list will show the Container Type associated with the Route Step Type and the compatible container type
- "Carrier/ Lot Number" textbox is disabled 
- Pack and Switch buttons are disabled
- Warning toastr message "Container Type '"Container Type Name"' is not configured with the Route Step Type '"Route Step Type Name"'"
\*If Carrier in Lot Overpack Station, the list of the Container Type should only show the Container Type defined with Route Step Types upon the Lot scanned.
![image2019-1-29_17-27-48.png](/.attachments/42991674.png)




## Pick a Container Type



- Container Type List will display based on the following criteria:


- Status = "Active"

- Usage Type = "Box"

- Material's Customer match with the Container Type Customer

![image2019-1-29_17-30-7.png](/.attachments/42991675.png)



- ### Once the container type is selected, system will show the list of open container.


![image2019-1-29_17-36-30.png](/.attachments/42991678.png)



- If any open container is selected then the Carrier will be automatically packed into the container and open container list will be hidden.


![image2019-3-28_15-49-38.png](/.attachments/45973936.png)



- Select the Container Type and creates a Container. The system will create Container Number according to the Next Number assigned. Document prints if is configured to print onContainerCreate. Carrier is packed to the container once the container is created and open container list will be hide and only show the open container that the carrier packed into.


![image2019-3-28_15-51-44.png](/.attachments/45973937.png)



- System will auto pack the scanned Carrier if


- Carrier scanned is not packed to any container

- Carrier is en-queue at current Route Step

- Carrier is allow to pack into the container type selected

- Carrier
has an assembly that matches the selected assembly at Manual Station Login

## Create a new container

If the value scanned is a WIP that is not associated with any container, when a new container is created or an open container is selected, the system will automatically pack the WIP. The focus will then be on the 'Carrier / Lot Number' field to allow the user to continue scanning WIP to pack into the container (box). The system will show the container information box with the container just created.
![image2019-11-23_11-20-41.png](/.attachments/61079653.png)


The system has a new validation check when generating the container number to prevent have the duplicate container number between WIP container and Lot container. The duplicate container number will happen if there is the same segment in the different Next Number Configuration for the type "Container ID" which is applied to Lot container type and WIP container type. This is applicable to the Overpack as well.
**Next Number for the WIP Container Container type** 
![image2019-12-26_13-53-23.png](/.attachments/62423229.png)


**Next Number for the Lot Container Container type** 
![image2019-12-26_13-54-18.png](/.attachments/62423230.png)


**Next Number for the WIP Pallet Container type** 
![image2019-12-26_14-13-21.png](/.attachments/62423231.png)


**Next Number for the Lot Pallet Container type** 
![image2019-12-26_14-14-26.png](/.attachments/62423232.png)


**During Lot Packout or Lot Overpack, the system will trigger the validation when they click on the Create button and the system will prompt the error message "New container number generated already exists. Please check the container next number configuration for duplication." to prevent have the duplicate container number generated between WIP container and Lot container.** 
![image2019-12-26_15-8-21.png](/.attachments/62423233.png)


![image2019-12-26_15-23-4.png](/.attachments/62423234.png)


**Once the container closed, the system will automatically create the container number base on the Container Type selected and auto pack it if the operator continues to scan carrier serial number in the “Carrier / Lot Number” field.** 
![image2019-11-23_11-23-58.png](/.attachments/61079655.png)


![image2019-11-23_11-26-42.png](/.attachments/61079656.png)





## Pack Items  


- Scan Carrier Number or Lot Number to pack into the container.

![image2019-3-28_15-56-3.png](/.attachments/45973939.png)



- Return message when Carrier successfully packed into the container.

Carrier "CarrierNumber" Lot "LotNumber" is packed to container "containerNumber".
Carrier Quantity, Lot Quantity and Material are updated with the items packed into the container.
![image2019-3-28_15-54-50.png](/.attachments/45973938.png)





- Return message if the Carrier or Lot already packed to container

![image2019-3-28_15-59-56.png](/.attachments/45973940.png)



- Return message if exceeded the configured Max Carrier.


![image2019-6-11_16-12-39.png](/.attachments/51871805.png)




![image2019-6-11_16-13-2.png](/.attachments/51871806.png)





## Unpack Items 


- Switch to "Unpack" Mode

![image2019-3-28_16-2-53.png](/.attachments/45973941.png)





- Scan Carrier Number or Lot Number to unpack

![image2019-3-28_16-5-23.png](/.attachments/45973942.png)





- Return message when Carrier or Lot unpacked from the Container. "Carrier "CarrierNumber" Lot "LotNumber" is unpacked from container "ContainerNumber".

Carrier Quantity, Lot Quantity and Material are updated when the Carrier is unpacked from container.
![image2019-3-28_16-6-59.png](/.attachments/45973943.png)



- Return message if the Carrier or Lot is not packed to any Container or is not packed into the selected Container


![image2019-3-28_16-8-52.png](/.attachments/45973944.png)




## Unpack Entire Container  



- Select an Open Container and click on "Unpack All" button

![image2019-3-28_16-10-45.png](/.attachments/45973945.png)



- Prompt user for confirmation to unpack all items in the selected container.


Click "OK" to unpack all. 
Click "Cancel" to cancel the unpack action and return to the Packout screen.
![image2019-1-29_17-57-6.png](/.attachments/42991689.png)





- Return message when all items successfully unpacked. "All Items from container(s) "Container Number" unpacked successfully"

![image2019-2-11_16-3-44.png](/.attachments/43974659.png)




## Resume Packout  



- Scan an existing Container Number or the Carrier/Lot that has been packed

![image2019-1-29_18-4-26.png](/.attachments/42991690.png)



- Load Container Items for the scanned Container Number


![image2019-3-28_16-12-27.png](/.attachments/45973946.png)





- Scan Carrier Number or Lot Number to continue packing if Container Status is Opened.

![image2019-3-28_16-13-57.png](/.attachments/45973947.png)




## Open, Close and Scrap Container



- Scan an existing Open Container

![image2019-1-29_18-4-26.png](/.attachments/42991690.png)



- Pack a Carrier or Lot to the container


![image2019-3-28_16-14-54.png](/.attachments/45973948.png)



- Manual Close Container when minimum capacity met. Open containers will be shown on the list.


![image2019-3-28_16-16-0.png](/.attachments/45973949.png)



![image2019-3-28_16-18-41.png](/.attachments/45973950.png)



- Reopen Container. Open button will only be shown if user has permission for "Open Container".


![image2019-3-28_16-19-42.png](/.attachments/45973951.png)



- Unpack All Items from the Container.


![image2019-3-28_16-21-29.png](/.attachments/45973952.png)



- Pack a Carrier or Lot that met the maximum capacity set at

[Container Type Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Planned-Order-Packout-(Lot-%2D-Batch-Build).md)
- Auto Close Container when Maximum capacity met.

- When container is auto Close or manual close,
system shall show the list of all the open containers of the selected container type and the container information box will be hide.

- If an open container is active, the container list is hidden and changing container type will not show the list.



- Document prints if is configured to print onContainerClose
Open or Close Container
- Container can also be scrapped by clicking on the Scrap button

- On container close, user is allowed to create a new container refer to the container type selection and scan the next carrier(s) need to pack without clear and return to the initial page of Scan Carrier / Container if the following condition meet:

- Container Type Items (Container Type Maintenance) is defined with the material need to be packed.

- Material need to be packed for the current box (Close) and new box created should be the same.
![image2019-3-28_16-13-57.png](/.attachments/45973947.png)



- Container type Items should define the material need to be packed into the container.


![image2019-1-30_11-21-5.png](/.attachments/42991717.png)




## Pack Scrapped Lot



- The system allow to pack multiple scrapped lot to a container packed with scrapped lot

![image2019-5-9_10-29-36.png](/.attachments/48169644.png)



![image2019-5-9_10-31-58.png](/.attachments/48169645.png)



- The system do not allow user to pack a non-scrap lot to a container with scrapped lot


![image2019-5-9_10-40-3.png](/.attachments/48169647.png)


![image2019-5-9_10-37-43.png](/.attachments/48169646.png)





- Unpack All scrapped lot from a container allows user to pack a non-scrap / scrapped lot to the empty container.

![image2019-5-9_10-41-39.png](/.attachments/48169648.png)




## Packing a Batch Managed Carrier to multiple containers  



- Scan a Batch managed Carrier Number

![image2019-1-30_16-27-31.png](/.attachments/42991721.png)



- Select a Container Type. System will show the split box function and calculate and display the minimum number of containers required, based upon container capacity (if configured) and by default will fill them with the maximum qty allowed, with the remainder being in the last container.


![image2019-1-30_16-29-30.png](/.attachments/42991722.png)



- System will display the allocated, to pack and total qty's for the operation and the create container button becomes active, since the initial proposal will allocate all of the items to a container - Note by default the system will fill the containers to the max Qty in sequence, with the remainder in the last one.


- The user can then click on "Create Container" to proceed with the proposed allocation

- The user can also edit the allocation as follows:-


- Edit - Allows the user to edit the proposed allocation - Clicking this allows user to add additional containers, delete added containers or change the allocated qty's manually in each container as required - Note the "Create Container" will only be active when the total Qty is allocated

![image2019-1-30_16-31-20.png](/.attachments/42991723.png)



- Fill - Clicking the "Fill" button will allocate the max qty to each container in sequence, with the remainder in the last one as per the default behavior. Note if the user adds containers and manually changes the allocated qty, clicking this will undo/revert to default allocation.


- Distribute - Clicking on the "Distribute" button will allocate the qty's to each container evenly, so in the example where we have a total item qty of 4, max container qty is 4, the system will propose allocating 1 to each container - Note the user can still modify the proposal until they have exactly what is needed

![image2019-1-30_16-35-49.png](/.attachments/42991725.png)



- Once the user has a satisfactory allocation (and the total qty is allocated), the user can Click on "Create" button, at which point the system will create the containers and automatically close them. Once created then the page will be back to the initial screen.


![image2019-1-30_16-36-44.png](/.attachments/42991726.png)


![image2019-1-30_16-39-40.png](/.attachments/42991727.png)





- The "Scrap & Unpack All" button, will unpack the full qty, scrap all of the containers and re-enqueue the batch managed carrier to the packout step.

![image2019-3-29_8-7-3.png](/.attachments/45974021.png)


![image2019-1-30_16-43-36.png](/.attachments/42991730.png)




## Hold Container



- Ensure you have the permission before perform the Hold on a container:

- Can Access Lot/Batch Build → Container Lot → Hold Container.


- After user retrieved the container,

- Batch managed carrier:
a “Hold” button is on top of the container information box to put all the related containers on hold.
![image2019-3-29_8-9-44.png](/.attachments/45974022.png)




- Non-batch managed carrier: the container information box have a “Hold” button to put the container on hold.

![image2019-3-29_8-12-43.png](/.attachments/45974023.png)




- When the container is on hold, only the "Release" button will be visible in the container information box.

- If the container is on hold, no other operation can be done to the container except to release it at packout station.


- Action performed history is recorded and show under Container View-Lot " History tab.


![image2019-3-29_8-12-43.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/3bb28138-78bb-4cf3-bdcc-ed46d952eda4?fileName=image.png)




- System is able to print the container label if it is assigned to "On Container Hold" at Document Assignment.


- Lot View → Lot Holds tab to show the event details


![image2019-3-29_8-12-43.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/ad166625-8827-4f67-97ce-2161d0d6c163?fileName=image.png)




## Release Hold Container



- Ensure you have the permission before perform the Hold on a container:

- Can Access Lot/Batch Build → Container Lot → Release Container.


- After user retrieved the container,

- Batch managed carrier:
a “Release” button is on top of the container information box to release all the related containers.
![image2019-3-29_8-14-40.png](/.attachments/45974024.png)




- Non-batch managed carrier: the container information box have a “Release” button to release the container.

![image2019-3-29_8-15-44.png](/.attachments/45974025.png)




- Action performed history is recorded and show under Container View-Lot " History tab.

![image2019-3-29_8-15-44.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/94d4ceef-74e4-4968-9399-8637f0b9586d?fileName=image.png)



- All Lot in the container will be release from hold.


- Lot View → Lot Holds tab to show the event details

![image2019-3-29_8-15-44.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/902af60b-48a5-49ea-babc-913210a441d4?fileName=image.png)




## Auto Split to Multiple Box



- For non-batch managed carrier, the "Auto Split to Multiple Box" checkbox will be shown when the carrier is scanned whereas if the Container is scanned, checkbox is hidden.
![image2019-1-30_16-46-40.png](/.attachments/42991731.png)





## Shipped Container



- Shipped container is not allowed to use at Lot Packout station.

![image2019-6-11_16-11-29.png](/.attachments/51871804.png)




### Fields




<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Carrier / Lot / Container Number</p></td><td class="confluenceTd"><p><span>Only accepts full match of Carrier or Lot or Container number to start Packout. </span></p></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917970.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-10-26%2015%3A57%3A25.png?version=1&modificationDate=1530103789143&api=v2" /></span></p></div></td><td class="confluenceTd">Clear button. Clear all contents to only show the Scan Carrier field</td></tr><tr><td colspan="1" class="confluenceTd">Container Type</td><td colspan="1" class="confluenceTd"><p>Display after a Carrier / Lot / Container Number scanned. Only display the list of Container Type that has the same Customer with the material of the scanned items.<br />If scanned Carrier / Lot has been packed into a Container, display the container's Container Type.<br /><span style="background-color: transparent;font-size: 10.0pt;">If scanned an existing Container Number, display the container's Container Type </span></p></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917942.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A39%3A52.png?version=1&modificationDate=1530103788733&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">Create button. To create new Container based on the Next Number configured against the selected Container Type.<br />Gray out the button, when a Container is selected to pack. </td></tr><tr><td colspan="1" class="confluenceTd">Carrier / Lot Number</td><td colspan="1" class="confluenceTd">Scan Carrier Number or Lot Number to pack or unpack from the Container. Disable when a container is closed </td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">Total Packed Quantity from Container</td></tr><tr><td colspan="1" class="confluenceTd">Show Content</td><td colspan="1" class="confluenceTd">Hyperlink to Container View - Contents tab to show all items packed into the container</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Customer for the Container</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Division for the Container</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Material Name of items packed into the container. Only allow one Material to pack in a Container.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917941.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A49%3A0.png?version=1&modificationDate=1530103788717&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">Switch button to switch between Pack Mode and Unpack Mode.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917940.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A51%3A51.png?version=1&modificationDate=1530103788707&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">To unpack all items from the container. Only visible when a container is opened.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917939.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A52%3A44.png?version=1&modificationDate=1530103788693&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">To close an opened container. Only visible when a container is opened.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917938.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917882/image2016-12-1%2014%3A56%3A26.png?version=1&modificationDate=1530103788680&api=v2" /></span></div></td><td colspan="1" class="confluenceTd">To open a closed container. Only visible when a container is closed.</td></tr><tr><td colspan="1" class="confluenceTd">Scrap button</td><td colspan="1" class="confluenceTd">To scrap an open container. Only visible when a container is opened.Scrapped Container will unpack all the items from the container. Container Number no longer can be used</td></tr><tr><td colspan="1" class="confluenceTd">Completed/Started</td><td colspan="1" class="confluenceTd">The number of started and completed lot for the current session. Restart a new session or Refresh button will restart the counter.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" width="65" src="attachments/thumbnails/29917882/41058488" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/29917882/image2019-1-22-16-29-29.png?version=1&modificationDate=1548145769407&api=v2" /></span></p></div></td><td colspan="1" class="confluenceTd">To hold a container. Only visible to those have permission.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" height="36" src="attachments/thumbnails/29917882/41058487" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/29917882/image2019-1-22-16-28-11.png?version=1&modificationDate=1548145691637&api=v2" /></span></p></div></td><td colspan="1" class="confluenceTd"><span>To Release a container. Only visible to those have permission and container is with Hold status.</span></td></tr></tbody></table>






## Overpack




### Initialization


During initialization, when user scan in Container:

- Scan container (container type items, item type = "material") in closed status:
Container Type is defaulted to the container type of the scanned container and shows other compatible container type (upper level). Container Type values is according to values configured in Container Type Items and Route Step Types. The Container Usage Type must be the same as defined in the lower level container's "Requires Over Pack" field.
![image2019-3-29_8-30-2.png](/.attachments/45974028.png)


System will show the list of open container(s) compatible with the selected container type.
![image2019-3-29_8-31-35.png](/.attachments/45974029.png)




- Scan container (container type items, item type = "container") in open status: System displays the selected container to enable user to continue packing lower level container into it.
![image2019-2-20_8-57-13.png](/.attachments/44761173.png)




- Scan container (container type items, item type = "container") in closed status:
Container Type is defaulted to the container type of the scanned container and system displays the list of open container(s) compatible with the selected container type.
![image2019-2-20_8-59-59.png](/.attachments/44761174.png)




- Scan container (container type items, item type = "container") in hold status: The system retrieves data for the container but only allows to release it.

![image2019-2-20_9-6-9.png](/.attachments/44761176.png)





#### Create a new container


If the value scanned is a container that is not associated with any upper level container, when a new container is created or an open container is selected, system will automatically pack the container if 
the lower level container has an assembly that matches the selected assembly at Manual Station Login. Focus will then be on the 'Scan Container' control to allow the user to continue scanning containers (box) to pack into the upper level container (pallet/box). The system will show the container information box with the upper level container just created.![image2019-2-20_9-51-30.png](/.attachments/44761177.png)





#### Pack a container


The Container Type Packout Rule available for lot overpack is “Restrict To Same Planned Orders”. When “Restrict To Same Planned Orders” is turned OFF, lower level containers with carriers from different planned orders can be packed in the upper level container. When “Restrict To Same Planned Orders” is turned ON, lower level containers with carriers from different planned orders cannot be packed in the upper level container.
![image2019-2-20_13-40-12.png](/.attachments/44761196.png)


When user scans a container to pack, system will perform the following validations:

- When lower level container has the “Restrict To Same Planned Orders” rule turned on, the overpack container can have the “Restrict To Same Planned Orders” rule on or off.

- When lower level container has the “Restrict To Same Planned Orders” rule turned off, the overpack container must have the “Restrict To Same Planned Orders” rule off.

- The materials in the lower level containers must be the same. In case of empty container, the first container (box) packed will force the following containers to have the same material.


- The

overpackcontainer’s Usage Type must match the value configured at the lower level container’s Custom Data Packout - Requires Over Pack field.
- If the first container (box) packed contains scrapped materials, the subsequent containers to be packed have to contain scrapped materials only.


- If the first container packed contains good materials, the subsequent containers to be packed cannot contain scrapped materials.


- Lot must be enqueued at the current route step.


- Lower level container has an assembly that matches the selected assembly at Manual Station Login
.If the container scanned is part of batch managed carrier, all related containers will be packed. If it is over the max quantity configured, an error message is shown and all the related containers will not be packed.
![image2019-2-20_13-53-27.png](/.attachments/44761197.png)


When the container (box) is packed, the lot will enqueue at the next route step if available. System shall check for the container’s max quantity which is configured under Container Type Items. If the max quantity is reached, the overpack container will automatically close.



#### Unpack a container from overpack


In order to be able to unpack, the overpack container must be in open status. The 'Scan Container' and Pack/Unpack button are disabled for other statuses. User must also have the security permission for 
"Can Access Lot/Batch Build " Packout Unserilized Product " Unpack Lot"to be able to unpack the container and see the "Unpack All" button.When user scans the container to be unpacked from overpack:

- If the container is not associated to the overpack, the system shall raise an error message

- If the container is associated, the system will unpack the container


- If the container is part of a batch managed carrier, all the related lower level containers will be unpacked from the overpack container.

When the container is unpacked, the lot will enqueue back at current route step.
If user uses the “Unpack All” button:

- The system asks with a confirmation message to continue the operation.


- The system removes all lower level containers from the overpack container. The unpacked containers (box) remain in current status.


- The overpack container's status is not changed and remains in Open status.




#### Manual Close a container



- The container must be only in open status. Any other status will be stopped to close the container.

- The container must contain at least 1 lower level container to have the "Close" button in the container information box.

- If user manually closes the container, system shall validate if the MIN quantity that is configured at Container Type Items has been reached. If not, show message "Total quantity packed for '"material"' must have at least the minimum quantity of '"min qty"'"
![image2019-2-20_10-50-34.png](/.attachments/44761193.png)



- When the operator press “Close” button, the container status changes to close. The container information box will be hidden and the system shall show the list of all the open containers of the selected container type.

![image2019-2-20_10-50-34.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/556c4921-e55c-45e2-9f07-da9e25c6c227?fileName=image.png)




#### Reopen a closed container



- In the container information box “Open” button is available only if the following conditions are validated:


- The container is not overpacked.

- The container status is closed

- The container status not on hold

- User has permission for "Open Container".

- When the user press on the “Open” button into the Container information box, the container status change to open.

![image2019-2-20_10-50-34.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/db16a7d9-8fe3-4d1b-a088-b2e5450d3b94?fileName=image.png)




#### Scrap a container



- User is required to have permission to perform operation (
Can Access Lot/Batch Build -" Container Lot -" Scrap Container) ![image2019-2-20_10-50-34.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/8bdf52bb-20b3-4865-a9e5-60405ceaafc9?fileName=image.png)



- The container must not be overpacked


- The container must not be on hold

- When the authorized
user press the scrap button from the container information box, a pop up a warning message will show: “Are you sure you want to scrap container(s) "Container number"?” 
![image2019-2-21_8-51-11.png](/.attachments/44761251.png)



- Once confirm, the container contents (lower level) is released (unpacked) and this container (upper level) status will be set to "Scrapped". The container could not be used anymore.


- System will record who and when the action is performed at Container View-Lot, History tab.

Event = "Scrapped". Event Details = “Container # "container number"”.
- After the container is scrapped, the Lot will be in queue at current route step.


#### Hold a container



- The container can be in any status but not associated to any upper level container

- Only users with
"Can Place Container On Hold"permission can hold the container (Can Access Lot/Batch Build -" Container Lot -" Hold Container). Authorized user should have the container information box with the “Hold” button to put container on hold.![image2019-2-21_9-41-30.png](/.attachments/44761252.png)



- When the container is on hold, only the "Release" button will be visible in the container information box.


- All lower level containers and Lots packed will be placed on hold.



- If the container is on hold, no other operation can be done on the container except to release it at packout station.


- When placed on hold, message “The Container "container number" has been placed on hold and any container inside has been placed on hold” to be shown.


- System will record who and when the action is performed at Container View-Lot, History tab. The Event Details will be: “Hold Comment - Container is placed on hold by "username"”.

- For the lower level containers, the Event Details in Container View-Lot -" History tab shall be "Hold Comment - Container is placed on hold because the parent container is placed on hold"


#### Release a container



- The container should be no hold status to show the “Release” button.

- Only users with "Can Access Lot/Batch Build -" Container Lot -"
Release Container" permissioncan see the release button and release the container.![image2019-2-21_9-41-30.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/14d3bca8-70d2-45ab-b59f-ac7692fc22bd?fileName=image.png)



- System will record who and when the action is performed at Container View-Lot, History tab. Event = "Release Hold".

Event Details will be generated by the system: “Release Comment - Container is released by "username"”.

- For the lower level containers, the Event Details in

Container View-Lot -" History tab shall be "
Release Comment - Container is released with parent container release."


- The system will show the following message: “The Container
"container number"has been released and any container inside has been released”
- All lower level containers and the lots in them will be released from hold.


#### Generate Shop Floor GRN upon a container close



- Container pack in the packout station must be from the container type which has configured with "Generate GRN" turn On.

- GRN details to create as of following format:

- GRN:
Generate by referring to the container number and verify with GRN Validation Mask configured at Material Maintenance (Assemble tab). If the GRN Validation Mask does not meet, then
toastr message to show “GRN is not match with defined validation mask rules.”
. If no GRN Validation Mask configured, Container name must meet the 16 alphanumeric GRN rules or toastr message to show "GRN is not meet the 16 alphanumeric GRN rule".

- Part Number: Material packed into container.

- Vendor: Jabil

- Quantity: Total Lot Qty packed into Container (Total Lot Qty of each of the Lot containers if the packed container is Pallet)

- GRN will not be generate upon container close


- Container is packed with Scrap Lot


- GRN has already created before


- GRN Maintenance screen have a new field named as "Created by Packout" and this is not editable.

- set as "Yes" if the GRN is created at Packout upon container closed

- set as "No" by default

- GRN quantity to be updated if the container reopen and pack with new quantity of material. Quantity to be updated upon container close.
![image2019-3-4_10-42-27.png](/.attachments/44761564.png)



- The closed container status with GRN is updated to “Consumed” after Part Allocation Setup Sheet installed.


- Status of the Lot associated in the container is updated to "Consumed".

- Consumed status container cannot be reopen or Scrap. Only Hold/Release function available.

- If a container is scrapped, remove the GRN from the system.

- If a container is on hold, turn on the GRN “Use Prohibited” option and release to turn off the GRN "Use Prohibited" option at the GRN Maintenance screen.



#### Attachments

[image2017-11-28 11:2:32.png](/.attachments/29917883.png)
[image2017-10-10 15:46:32.png](/.attachments/29917884.png)
[image2017-10-10 15:41:54.png](/.attachments/29917885.png)
[image2017-10-10 15:31:5.png](/.attachments/29917886.png)
[image2017-10-10 15:28:23.png](/.attachments/29917887.png)
[image2017-10-10 14:50:21.png](/.attachments/29917888.png)
[image2017-10-10 14:36:59.png](/.attachments/29917889.png)
[image2017-10-10 14:34:26.png](/.attachments/29917890.png)
[image2017-10-10 11:28:10.png](/.attachments/29917891.png)
[image2017-8-9 11:39:25.png](/.attachments/29917892.png)
[image2017-8-9 11:36:50.png](/.attachments/29917893.png)
[image2017-8-9 11:27:58.png](/.attachments/29917894.png)
[image2017-8-9 11:24:21.png](/.attachments/29917895.png)
[image2017-8-9 11:18:58.png](/.attachments/29917896.png)
[image2017-8-9 11:15:43.png](/.attachments/29917897.png)
[image2017-8-9 11:12:55.png](/.attachments/29917898.png)
[image2017-8-9 11:9:37.png](/.attachments/29917899.png)
[image2017-8-9 11:7:1.png](/.attachments/29917900.png)
[image2017-8-9 11:4:9.png](/.attachments/29917901.png)
[image2017-8-9 10:58:57.png](/.attachments/29917902.png)
[image2017-8-9 10:58:18.png](/.attachments/29917903.png)
[image2017-8-9 10:54:52.png](/.attachments/29917904.png)
[image2017-8-9 10:52:6.png](/.attachments/29917905.png)
[image2017-8-9 10:49:45.png](/.attachments/29917906.png)
[image2017-8-9 10:30:51.png](/.attachments/29917907.png)
[image2017-8-9 10:27:3.png](/.attachments/29917908.png)
[image2017-8-9 10:24:11.png](/.attachments/29917909.png)
[image2017-8-9 10:21:10.png](/.attachments/29917910.png)
[image2017-8-9 10:20:16.png](/.attachments/29917911.png)
[image2017-8-9 10:16:49.png](/.attachments/29917912.png)
[image2016-12-20 11:4:5.png](/.attachments/29917913.png)
[image2016-12-20 10:59:7.png](/.attachments/29917914.png)
[image2016-12-20 10:58:46.png](/.attachments/29917915.png)
[image2016-12-20 10:57:12.png](/.attachments/29917916.png)
[image2016-12-20 10:42:31.png](/.attachments/29917917.png)
[image2016-12-20 10:42:6.png](/.attachments/29917918.png)
[image2016-12-20 10:35:5.png](/.attachments/29917919.png)
[image2016-12-20 10:32:34.png](/.attachments/29917920.png)
[image2016-12-20 10:30:14.png](/.attachments/29917921.png)
[image2016-12-20 10:28:52.png](/.attachments/29917922.png)
[image2016-12-20 10:28:13.png](/.attachments/29917923.png)
[image2016-12-20 10:24:46.png](/.attachments/29917924.png)
[image2016-12-20 10:24:26.png](/.attachments/29917925.png)
[image2016-12-20 10:23:25.png](/.attachments/29917926.png)
[image2016-12-20 10:22:58.png](/.attachments/29917927.png)
[image2016-12-20 10:22:35.png](/.attachments/29917928.png)
[image2016-12-20 10:19:45.png](/.attachments/29917929.png)
[image2016-12-20 10:18:44.png](/.attachments/29917930.png)
[image2016-12-20 10:18:10.png](/.attachments/29917931.png)
[image2016-12-20 10:17:24.png](/.attachments/29917932.png)
[image2016-12-20 10:16:0.png](/.attachments/29917933.png)
[image2016-12-20 10:13:59.png](/.attachments/29917934.png)
[image2016-12-20 10:12:58.png](/.attachments/29917935.png)
[image2016-12-20 10:11:35.png](/.attachments/29917936.png)
[image2016-12-20 10:9:34.png](/.attachments/29917937.png)
[image2016-12-1 14:56:26.png](/.attachments/29917938.png)
[image2016-12-1 14:52:44.png](/.attachments/29917939.png)
[image2016-12-1 14:51:51.png](/.attachments/29917940.png)
[image2016-12-1 14:49:0.png](/.attachments/29917941.png)
[image2016-12-1 14:39:52.png](/.attachments/29917942.png)
[image2016-12-1 14:34:23.png](/.attachments/29917943.png)
[image2016-12-1 14:34:17.png](/.attachments/29917944.png)
[image2016-12-1 14:33:3.png](/.attachments/29917945.png)
[image2016-12-1 14:30:36.png](/.attachments/29917946.png)
[image2016-12-1 14:29:55.png](/.attachments/29917947.png)
[image2016-12-1 14:29:20.png](/.attachments/29917948.png)
[image2016-12-1 14:28:9.png](/.attachments/29917949.png)
[image2016-12-1 14:17:6.png](/.attachments/29917950.png)
[image2016-12-1 14:16:0.png](/.attachments/29917951.png)
[image2016-12-1 13:46:57.png](/.attachments/29917952.png)
[image2016-12-1 13:41:22.png](/.attachments/29917953.png)
[image2016-12-1 13:41:0.png](/.attachments/29917954.png)
[image2016-12-1 13:34:10.png](/.attachments/29917955.png)
[image2016-12-1 13:32:53.png](/.attachments/29917956.png)
[image2016-12-1 13:31:49.png](/.attachments/29917957.png)
[image2016-12-1 13:30:50.png](/.attachments/29917958.png)
[image2016-11-30 15:58:24.png](/.attachments/29917959.png)
[image2016-11-30 15:54:43.png](/.attachments/29917960.png)
[image2016-11-30 15:49:46.png](/.attachments/29917961.png)
[image2016-11-30 15:48:40.png](/.attachments/29917962.png)
[image2016-11-30 15:45:46.png](/.attachments/29917963.png)
[image2016-11-30 15:44:1.png](/.attachments/29917964.png)
[image2016-11-30 15:42:38.png](/.attachments/29917965.png)
[image2016-11-30 15:40:55.png](/.attachments/29917966.png)
[image2016-11-30 15:12:15.png](/.attachments/29917967.png)
[image2016-11-25 15:5:39.png](/.attachments/29917968.png)
[image2016-11-25 15:2:19.png](/.attachments/29917969.png)
[image2016-10-26 15:57:25.png](/.attachments/29917970.png)
[image2016-10-26 15:54:54.png](/.attachments/29917971.png)
[image2016-10-26 15:42:13.png](/.attachments/29917972.png)
[image2016-10-26 15:38:58.png](/.attachments/29917973.png)
[image2016-10-26 15:37:37.png](/.attachments/29917974.png)
[image2016-10-26 15:28:56.png](/.attachments/29917975.png)
[image2019-1-22_16-10-10.png](/.attachments/41058484.png)
[image2019-1-22_16-10-23.png](/.attachments/41058485.png)
[image2019-1-22_16-10-25.png](/.attachments/41058486.png)
[image2019-1-22_16-28-11.png](/.attachments/41058487.png)
[image2019-1-22_16-29-29.png](/.attachments/41058488.png)
[image2019-1-29_17-25-24.png](/.attachments/42991670.png)
[image2019-1-29_17-26-25.png](/.attachments/42991671.png)
[image2019-1-29_17-26-54.png](/.attachments/42991672.png)
[image2019-1-29_17-27-1.png](/.attachments/42991673.png)
[image2019-1-29_17-27-48.png](/.attachments/42991674.png)
[image2019-1-29_17-30-7.png](/.attachments/42991675.png)
[image2019-1-29_17-32-24.png](/.attachments/42991676.png)
[image2019-1-29_17-34-32.png](/.attachments/42991677.png)
[image2019-1-29_17-36-30.png](/.attachments/42991678.png)
[image2019-1-29_17-37-34.png](/.attachments/42991679.png)
[image2019-1-29_17-41-13.png](/.attachments/42991680.png)
[image2019-1-29_17-45-8.png](/.attachments/42991681.png)
[image2019-1-29_17-46-42.png](/.attachments/42991682.png)
[image2019-1-29_17-51-42.png](/.attachments/42991683.png)
[image2019-1-29_17-52-37.png](/.attachments/42991684.png)
[image2019-1-29_17-53-38.png](/.attachments/42991685.png)
[image2019-1-29_17-54-53.png](/.attachments/42991686.png)
[image2019-1-29_17-56-28.png](/.attachments/42991688.png)
[image2019-1-29_17-57-6.png](/.attachments/42991689.png)
[image2019-1-29_18-4-26.png](/.attachments/42991690.png)
[image2019-1-29_18-5-7.png](/.attachments/42991691.png)
[image2019-1-29_18-5-48.png](/.attachments/42991692.png)
[image2019-1-29_18-7-35.png](/.attachments/42991693.png)
[image2019-1-29_18-9-4.png](/.attachments/42991694.png)
[image2019-1-29_18-11-0.png](/.attachments/42991695.png)
[image2019-1-29_18-11-4.png](/.attachments/42991696.png)
[image2019-1-30_9-23-16.png](/.attachments/42991712.png)
[image2019-1-30_9-23-52.png](/.attachments/42991713.png)
[image2019-1-30_9-57-55.png](/.attachments/42991714.png)
[image2019-1-30_9-58-33.png](/.attachments/42991715.png)
[image2019-1-30_11-21-5.png](/.attachments/42991717.png)
[image2019-1-30_13-44-49.png](/.attachments/42991718.png)
[image2019-1-30_13-45-52.png](/.attachments/42991719.png)
[image2019-1-30_16-24-23.png](/.attachments/42991720.png)
[image2019-1-30_16-27-31.png](/.attachments/42991721.png)
[image2019-1-30_16-29-30.png](/.attachments/42991722.png)
[image2019-1-30_16-31-20.png](/.attachments/42991723.png)
[image2019-1-30_16-32-51.png](/.attachments/42991724.png)
[image2019-1-30_16-35-49.png](/.attachments/42991725.png)
[image2019-1-30_16-36-44.png](/.attachments/42991726.png)
[image2019-1-30_16-39-40.png](/.attachments/42991727.png)
[image2019-1-30_16-41-19.png](/.attachments/42991728.png)
[image2019-1-30_16-41-47.png](/.attachments/42991729.png)
[image2019-1-30_16-43-36.png](/.attachments/42991730.png)
[image2019-1-30_16-46-40.png](/.attachments/42991731.png)
[image2019-2-11_16-3-44.png](/.attachments/43974659.png)
[image2019-2-11_16-5-40.png](/.attachments/43974660.png)
[image2019-2-11_16-12-16.png](/.attachments/43974661.png)
[image2019-2-11_16-13-0.png](/.attachments/43974662.png)
[image2019-2-11_16-13-14.png](/.attachments/43974663.png)
[image2019-2-11_16-14-2.png](/.attachments/43974664.png)
[image2019-2-11_16-14-58.png](/.attachments/43974665.png)
[image2019-2-19_10-56-44.png](/.attachments/44761129.png)
[image2019-2-20_8-47-42.png](/.attachments/44761170.png)
[image2019-2-20_8-48-37.png](/.attachments/44761171.png)
[image2019-2-20_8-52-33.png](/.attachments/44761172.png)
[image2019-2-20_8-57-13.png](/.attachments/44761173.png)
[image2019-2-20_8-59-59.png](/.attachments/44761174.png)
[image2019-2-20_9-2-53.png](/.attachments/44761175.png)
[image2019-2-20_9-6-9.png](/.attachments/44761176.png)
[image2019-2-20_9-51-30.png](/.attachments/44761177.png)
[image2019-2-20_10-49-47.png](/.attachments/44761190.png)
[image2019-2-20_10-50-15.png](/.attachments/44761191.png)
[image2019-2-20_10-50-28.png](/.attachments/44761192.png)
[image2019-2-20_10-50-34.png](/.attachments/44761193.png)
[image2019-2-20_10-57-26.png](/.attachments/44761194.png)
[image2019-2-20_13-40-12.png](/.attachments/44761196.png)
[image2019-2-20_13-53-27.png](/.attachments/44761197.png)
[image2019-2-21_8-51-11.png](/.attachments/44761251.png)
[image2019-2-21_9-41-30.png](/.attachments/44761252.png)
[image2019-3-4_10-42-27.png](/.attachments/44761564.png)
[image2019-3-28_15-49-38.png](/.attachments/45973936.png)
[image2019-3-28_15-51-44.png](/.attachments/45973937.png)
[image2019-3-28_15-54-50.png](/.attachments/45973938.png)
[image2019-3-28_15-56-3.png](/.attachments/45973939.png)
[image2019-3-28_15-59-56.png](/.attachments/45973940.png)
[image2019-3-28_16-2-53.png](/.attachments/45973941.png)
[image2019-3-28_16-5-23.png](/.attachments/45973942.png)
[image2019-3-28_16-6-59.png](/.attachments/45973943.png)
[image2019-3-28_16-8-52.png](/.attachments/45973944.png)
[image2019-3-28_16-10-45.png](/.attachments/45973945.png)
[image2019-3-28_16-12-27.png](/.attachments/45973946.png)
[image2019-3-28_16-13-57.png](/.attachments/45973947.png)
[image2019-3-28_16-14-54.png](/.attachments/45973948.png)
[image2019-3-28_16-16-0.png](/.attachments/45973949.png)
[image2019-3-28_16-18-41.png](/.attachments/45973950.png)
[image2019-3-28_16-19-42.png](/.attachments/45973951.png)
[image2019-3-28_16-21-29.png](/.attachments/45973952.png)
[image2019-3-28_16-32-51.png](/.attachments/45973953.png)
[image2019-3-28_16-33-58.png](/.attachments/45973954.png)
[image2019-3-28_16-36-1.png](/.attachments/45973955.png)
[image2019-3-29_8-7-3.png](/.attachments/45974021.png)
[image2019-3-29_8-9-44.png](/.attachments/45974022.png)
[image2019-3-29_8-12-43.png](/.attachments/45974023.png)
[image2019-3-29_8-14-40.png](/.attachments/45974024.png)
[image2019-3-29_8-15-44.png](/.attachments/45974025.png)
[image2019-3-29_8-19-24.png](/.attachments/45974026.png)
[image2019-3-29_8-20-52.png](/.attachments/45974027.png)
[image2019-3-29_8-30-2.png](/.attachments/45974028.png)
[image2019-3-29_8-31-35.png](/.attachments/45974029.png)
[image2019-3-29_8-42-6.png](/.attachments/45974030.png)
[image2019-3-29_8-46-38.png](/.attachments/45974031.png)
[image2019-5-9_10-29-36.png](/.attachments/48169644.png)
[image2019-5-9_10-31-58.png](/.attachments/48169645.png)
[image2019-5-9_10-37-43.png](/.attachments/48169646.png)
[image2019-5-9_10-40-3.png](/.attachments/48169647.png)
[image2019-5-9_10-41-39.png](/.attachments/48169648.png)
[image2019-6-11_16-11-29.png](/.attachments/51871804.png)
[image2019-6-11_16-12-39.png](/.attachments/51871805.png)
[image2019-6-11_16-13-2.png](/.attachments/51871806.png)
[image2019-11-23_11-20-41.png](/.attachments/61079653.png)
[image2019-11-23_11-23-42.png](/.attachments/61079654.png)
[image2019-11-23_11-23-58.png](/.attachments/61079655.png)
[image2019-11-23_11-26-42.png](/.attachments/61079656.png)
[image2019-12-26_13-53-23.png](/.attachments/62423229.png)
[image2019-12-26_13-54-18.png](/.attachments/62423230.png)
[image2019-12-26_14-13-21.png](/.attachments/62423231.png)
[image2019-12-26_14-14-26.png](/.attachments/62423232.png)
[image2019-12-26_15-8-21.png](/.attachments/62423233.png)
[image2019-12-26_15-23-4.png](/.attachments/62423234.png)

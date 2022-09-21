# Introduction

At the Receiving station, the user can receive a single container with multiple lots/carriers back to their original carriers (default). The operation is considered complete only when all the carriers of a lot has been received. Once there is a carrier from the lot started in the particular resource and route step, system does not allow other carriers that belong to other lot to start here.



### How to get there?



::: mermaid
graph LR
A("LOT STATION")
:::
Scan/
Select Resource, Container &
Route Step



#### Permission


To access the screen:

Lot Receiving Operation Entry
- Allows the user to access Receiving Operation Entry

To perform receiving operation:

Add Lot Receiving Operation - Allows the user to create a receiving record for a lot



#### Screen Activity


Receiving Station enables user to perform the following activity:

- Scan a container to receive the contents of containers.

- Only 1 active lot at the resource and route step at a time. All the containers of the active lot has to be scanned before it is allowed to receive another lot.

- Receive the container contents back to the original Lot(s)/carrier(s)

- Material Conversion -
convert the lot’s material to a new material based on the value of the lot attribute and the base material configured.



#### Pre Condition


The following data needs to be pre-configured (if used) before user is able to start the Receiving operation

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)
defined

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
, all supporting Route steps and Resources configured for the Route Steps
- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)
, The Route must be configured with a Route Step where its Route Step Type has its Station Type configured as "Receiving" and configure “Receive Complete Unit as InProcess” flag as per needed.

- [Carrier Template](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Receiving-Station-(Batch-Manufacturing-2.0).md)
, Create a [Planned Order](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Receiving-Station-(Batch-Manufacturing-2.0).md)and assign to Route, [Lot Release](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Receiving-Station-(Batch-Manufacturing-2.0).md)must have occurred for the Planned Order.
- Lot must have been packed into container(s) at a planned order packout station and must be en-queued at Receiving station if the Receiving operation is to Start

- [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Receiving-Station-(Batch-Manufacturing-2.0).md)
User must identify the Resource they are using before performing the Operation activities
- [Container Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)
defined

- [Next Number](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Receiving-Station-(Batch-Manufacturing-2.0).md)
, defined to generate Container Number

- [Document Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Receiving-Station-(Batch-Manufacturing-2.0).md)
, if Container Label is required to print
- [Document Assignment](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Receiving-Station-(Batch-Manufacturing-2.0).md)
, if Container Label is required to print


#### Screen Dependency


Receiving Station

- None specifically, once the operation is started or completed, details are recorded in Lot view, planned order view, carrier view and container view accordingly

- Validations on the en-queued route step, number of containers belonging to the lot, packed status and destination carrier



#### Process


Once the user has selected the station through the 
[Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Receiving-Station-(Batch-Manufacturing-2.0).md),the application will open the configured operation activity screen, in this case the receiving station. The Receiving station screen allows the user to scan a container packed with multiple carriers/lots and unpack them to the original carriers/Lots (as they were packed). If a lot is packed into multiple containers, the Lot operation status will be "Started" when the first container is scanned. Once there is a carrier from the lot started in the particular resource and route step, system does not allow other carriers that belong to other lot to start here.
Example:
*Container 1* 

Carrier 1 (Internal Batch Number = 1)
Carrier 2 (Internal Batch Number = 1)*Container 2* 

Carrier 3 (Internal Batch Number = 1)
Carrier 4 (Internal Batch Number = 2)*Container 3* 

Carrier 5 (Internal Batch Number = 2)
Carrier 6 (Internal Batch Number = 2)The user only can perform receiving following below sequence:

- Container 1 --" Container 2 --" Container 3 OR

- Container 3 --" Container 2 --" Container 1
The user cannot receive Container 2 first as the container contains 2 different Lots (different Internal Batch Number) and a resource and route step is only allowed to start one Lot at a time. When scanning the last container that belongs to the Lot, the operation status will be "Pass".

![image2021-3-16_16-48-31.png](/.attachments/89587820.png)


![image2021-3-16_16-49-27.png](/.attachments/89587821.png)


![image2021-3-16_16-50-16.png](/.attachments/89587822.png)


![image2021-3-16_16-50-33.png](/.attachments/89587823.png)



Users can scan the SN of any Sub-Material to receive Top-Material.(Lookup)
![image2022-7-12_9-46-36.png](/.attachments/122748994.png)


![image2022-7-12_9-47-1.png](/.attachments/122748995.png)



User can 
configure the “Receive Complete Unit as InProcess” flag in Route Step Type Maintenance.

- If a completed unit need to return back to production with In Progress status, then should configure “Receive Complete Unit as InProcess” flag = ON.


- If a completed unit need to return back to production without changing the status, then should configure "Receive Complete Unit as InProcess” flag = OFF.

User will not be able to start lot if the Planned Order is on hold. 
Lot that has "Started" in the station will be allowed to complete that operation if the planned order is put on hold.



#### ***Receiving "Shipped" status Container***  


Below is the container with the status "Shipped" as per screenshot:
![image2022-7-12_9-47-1.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/b693fd0f-d49d-468f-85b6-c129f2f83358?fileName=image.png)


Once the user scanned the container with status "Shipped" at Lot Receiving station then the system prompt toaster message "The container '
xxxxxxx' was shipped and can't be used in Receiving". After that, it should clear the "Scan Container" field at Lot Receiving station so that it can allow the user to scan the next container number.



#### ***Material Conversion***  

The system is able to convert the lot’s material to a new material based on the value of the lot attribute and the base material configured so that the lot is associated to the material used during SAP shipping validation. 
Pre-condition:
a. The material (SAP finished goods) that will be converted to must have these 2 material custom data configured:

i. Color

ii. Base Material

b. The original lot has an attribute named “Color”.When scanning the first container of a lot, if the lot has an assembly but there’s no assembly for the target material which it will be converted to, system will prompt message and the receiving operation will not be started.

![image2021-3-17_16-22-21.png](/.attachments/89587849.png)



When the last container of a lot is scanned and the receiving operation is complete for the lot, system will convert the lot’s material and assembly to the target material and assembly which:
a. the target material's custom data “Color” value is the same as the lot’s attribute “Color” value AND

b. the target material's custom data “Base Material” value is the same as the lot’s current materialThe material conversion event will be recorded in the Lot View - Audit Log tab.

![image2021-3-17_16-23-58.png](/.attachments/89587850.png)


Material conversion will only work for container rules of same material and below and lot is packed into the same container type. Else system to prompt warning message and the receiving operation will not be started.
![image2021-3-16_10-51-52.png](/.attachments/89587800.png)


![image2021-3-18_9-5-0.png](/.attachments/89587858.png)





#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Scan Container</p></td><td class="confluenceTd"><p>Allows the user to scan a container.</p></td></tr><tr><td colspan="1" class="confluenceTd">Container Count</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><span style="color: rgb(23,43,77);">The number of Containers scanned successfully at current session.<span> </span></span><span style="color: rgb(23,43,77);">Restart a new session or Reset button (Alt + Q) will reset the counter. </span>(Read Only)</span></td></tr><tr><td colspan="1" class="confluenceTd">Carrier Count</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><span style="color: rgb(23,43,77);">The number of Carriers unpacked successfully at current session.<span> </span></span><span style="color: rgb(23,43,77);">Restart a new session or Reset button (Alt + Q) will reset the counter. </span>(Read Only)</span></td></tr></tbody></table>



#### Attachments

[image2019-6-10_11-34-6.png](/.attachments/89587769.png)
[image2019-6-10_11-32-16.png](/.attachments/89587770.png)
[image2019-6-10_11-29-49.png](/.attachments/89587771.png)
[image2019-6-10_11-28-5.png](/.attachments/89587772.png)
[image2019-6-10_11-25-32.png](/.attachments/89587773.png)
[image2019-6-10_11-24-12.png](/.attachments/89587774.png)
[image2019-6-10_11-22-8.png](/.attachments/89587775.png)
[image2019-6-10_11-19-55.png](/.attachments/89587776.png)
[image2019-6-10_11-17-47.png](/.attachments/89587777.png)
[image2019-6-10_11-17-5.png](/.attachments/89587778.png)
[image2019-6-10_11-14-36.png](/.attachments/89587779.png)
[image2019-6-10_10-58-31.png](/.attachments/89587780.png)
[image2019-6-10_10-57-42.png](/.attachments/89587781.png)
[image2017-10-20 10:38:37.png](/.attachments/89587782.png)
[image2017-10-20 10:44:34.png](/.attachments/89587783.png)
[image2017-10-20 10:51:13.png](/.attachments/89587784.png)
[image2017-10-20 10:58:48.png](/.attachments/89587785.png)
[image2017-11-30 14:32:36.png](/.attachments/89587786.png)
[image2017-11-30 14:35:10.png](/.attachments/89587787.png)
[image2017-11-30 14:38:15.png](/.attachments/89587788.png)
[image2017-11-30 14:41:48.png](/.attachments/89587789.png)
[image2017-11-30 14:45:55.png](/.attachments/89587790.png)
[image2017-11-30 14:58:0.png](/.attachments/89587791.png)
[image2017-11-30 15:2:18.png](/.attachments/89587792.png)
[image2017-11-30 15:11:34.png](/.attachments/89587793.png)
[image2017-11-30 16:30:11.png](/.attachments/89587794.png)
[image2017-11-30 16:32:30.png](/.attachments/89587795.png)
[image2017-11-30 16:33:29.png](/.attachments/89587796.png)
[image2017-11-30 16:40:44.png](/.attachments/89587797.png)
[image2017-11-30 16:52:38.png](/.attachments/89587798.png)
[image2021-3-16_10-51-52.png](/.attachments/89587800.png)
[image2021-3-16_16-48-31.png](/.attachments/89587820.png)
[image2021-3-16_16-49-27.png](/.attachments/89587821.png)
[image2021-3-16_16-50-16.png](/.attachments/89587822.png)
[image2021-3-16_16-50-33.png](/.attachments/89587823.png)
[image2021-3-17_16-22-21.png](/.attachments/89587849.png)
[image2021-3-17_16-23-58.png](/.attachments/89587850.png)
[image2021-3-18_9-5-0.png](/.attachments/89587858.png)
[image2022-7-12_9-46-36.png](/.attachments/122748994.png)
[image2022-7-12_9-47-1.png](/.attachments/122748995.png)

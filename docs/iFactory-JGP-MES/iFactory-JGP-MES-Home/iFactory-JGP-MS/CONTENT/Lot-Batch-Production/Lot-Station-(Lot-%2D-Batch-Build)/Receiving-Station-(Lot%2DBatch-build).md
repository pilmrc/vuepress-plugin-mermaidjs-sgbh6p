# Introduction

The receiving station is designed to work for both Batch managed carrier containers and non-batch managed carrier containers.
For containers with Batch managed carriers, the system will allow the the user to unpack the lot that was split to multiple containers either to it's original carrier (default) or to a new unassigned carrier. Also by default, the user must scan the full qty of containers associated to the batch before it can be received (
Received = container contents unpacked, merged to a carrier and en-queued as per the configured routing rules). However, there is an option for "Partial processing", which on selection, allows the user to scan only a portion of the containers, e.g. scan only 1 of 3, and process that independently if there is only time to process 1 container. In this case the user will be required to scan a new unassigned carrier to decant the contents, since the original carrier is still tied to the balance of the batch - When the user scans the remaining containers for the second partial processing, either the original carrier or a new unassigned carrier, can be used for the unpack.For containers with Non-Batch managed carriers, the user can receive a single container with multiple lots/carriers back to their original carriers (default), There is also an option to 
receivethe multiple lots/carriers to 1 big unassigned carrier.
User able to 
configure on “Receive Complete Unit as InProcess” flag in Route Step Type Maintenance.

- If a completed unit need to return back to production with In Process status , then should configure “Receive Complete Unit as InProcess” flag = ON.


- If a completed unit need to return back to production without changing the status , then should configure " Receive Complete Unit as InProcess” flag = OFF.



### How to get there?




::: mermaid
graph LR
A("MANUAL STATION LOGIN")-->0("SCAN/SELECT RESOURCE (ROUTE STEP CONFIGURED AS RECEIVING)")

:::


#### Screen Activity


Receiving Station enables user to perform the following activity:

- Select the Resource/Resource Name, Route/Route Step that the User is performing their activities

- Scan multiple containers belonging to the same batch for Batch managed carriers

- Scan a batch managed carrier to receive the contents of containers

- Partially process batch managed carrier containers i.e. allow receive/unpack operation without requiring all of the containers in the sequence

- Scan a single non-batch managed carrier container, containing multiple lots/carriers.

- Receive the container contents back to the original Lot(s)/carrier(s) or to new unassigned carrier


#### Pre Condition


The following data needs to be pre-configured (if used) before user is able to start the Receiving operation

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)
defined

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
,  all supporting Route steps and Resources configured for the Route Steps
- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)
, The Route must be configured with a Route Step where its Route Step Type has its Station Type configured as "Receiving" and configure “Receive Complete Unit as InProcess” flag as per needed.

- [Carrier Template](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Receiving-Station-(Lot%2DBatch-build).md)
, [Create "Batch Managed" Carrier](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Receiving-Station-(Lot%2DBatch-build).md), Create a [Planned Order](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Receiving-Station-(Lot%2DBatch-build).md)and assign to Route, [Lot Release](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Receiving-Station-(Lot%2DBatch-build).md)must have occurred for the Planned Order 
- Lot is assigned to a Batch managed Carrier, and the Carrier must have been packed into multiple containers at a planned order packout station and must be en-queued at Receiving station if the Receiving operation is to Start

- [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Receiving-Station-(Lot%2DBatch-build).md)
User must identify the Resource they are using before performing the Operation activities
- [Container Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)
defined

- [Next Number](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Receiving-Station-(Lot%2DBatch-build).md)
, defined to generate Container Number

- [Document Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Receiving-Station-(Lot%2DBatch-build).md)
, if Container Label is required to print
- [Document Assignment](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Receiving-Station-(Lot%2DBatch-build).md)
, if Container Label is required to print


#### Screen Dependency


Receiving Station

- None specifically, once the operation is started, completed, aborted details are recorded in Lot view, planned order view, carrier view and container view accordingly

- Validations on the en-queued route step, Qty of containers belonging to batch, packed status and destination carrier


#### Process for Receiving batch Managed Carrier Containers


Once the user has selected the station through the 
[Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Receiving-Station-(Lot%2DBatch-build).md)the application will open the configured operation activity screen, in this case the receiving station. The Receiving station screen allows the user to scan multiple containers belonging to the same batch.![image2019-6-10_10-58-31.png](/.attachments/51871748.png)


Once a valid batch managed container has been scanned, it will populate the container section of the page with the container and related Qty details - Note the "Unpack to original Carrier(s)" checkbox is set by default and "Partial Processing" is not checked by default.
![image2019-6-10_11-14-36.png](/.attachments/51871750.png)


Once a valid container is scanned, the "Unpack Button" is active, but if not all of the containers required to complete the batch Receiving operation are scanned and "Partial processing" is not selected, this will generate an error - in the example below we have 4 containers as part of the previously packed batch carrier, but only scanned 1 container in the receiving station. Since "Partial Processing" is not selected, this is an error condition.
![image2019-6-10_11-17-47.png](/.attachments/51871753.png)


If the user selects the "Partial Processing" option at this stage, the system will still not allow the user to unpack, since there is only 1 of 4 containers scanned and the "unpack to original carrier" option is selected
![image2019-6-10_11-19-55.png](/.attachments/51871755.png)


At this stage the user can scan the remaining containers or if "Partial Processing" is really the desired outcome, unselect the "Unpack to original Carrier(s)" option, which will prompt the apearance of a carrier scan field - Note the "Unpack Containers" button becomes inactive until a valid carrier is scanned
![image2019-6-10_11-22-8.png](/.attachments/51871757.png)


Once all the containers from a batch are 
scanned, or "Partial Processing" is selected and a valid destination carrier is scanned, the user is able to perform the receiving/unpack operation, the contents will be unpacked from the containers and merged to the carrier(s) and the lot(s) will be enqueued as per the configured routing rules.![image2019-6-10_11-24-12.png](/.attachments/51871759.png)


If partial processing was selected, the original Carrier/Lot Qty will be decremented by the container qty split to the new carrier, in this example the initial Carrier/Lot Qty of 100 was decremented by 25 and now is only associated with 3 containers instead of 4. A new Carrier/Lot is created with the balance and, since it has been unpacked will show no containers (see screenshot to the right) - Also note the difference in queue route step and product state.
![image2019-6-10_11-24-12.png](/.attachments/29918015.png)


![image2019-6-10_11-24-12.png](/.attachments/29918014.png)


If the user later scans the remaining containers for the previously split batch, then "partial processing" must be selected and the default "Unpack to original carrier(s)" option is valid - If the user selects the "Unpack" button it will successfully unpack the remaining container contents back to the original carrier.
![image2019-6-10_11-28-5.png](/.attachments/51871765.png)




#### Process for Receiving NON-batch Managed Carrier Containers


Once the user has selected the station through the 
[Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Receiving-Station-(Lot%2DBatch-build).md)the application will open the configured operation activity screen, in this case the receiving station. The Receiving station screen also allows the user to scan a non-batch managed carrier container packed with multiple carriers/lots and either unpack them to the original carriers/Lots (as they were packed) OR, by deselecting the default "Unapck to original carrier(s)" option, to scan a new unassigned carrier and conolidate the total container qty to 1 new carrier/lot.When the user scans a non-batch managed carrier container, the "Partial processing" option is not available, but the "Unpack to original carrier(s)" option is still selected by default
![image2019-6-10_11-29-49.png](/.attachments/51871767.png)


Deselecting the "Unpack to original carrier(s)" option, will render the "Unpack containers" button until a valid new unassigned carrier is scanned
![image2019-6-10_11-32-16.png](/.attachments/51871769.png)


Once a valid new unassigned carrier is scanned the "Unpack Containers" button is re-activated and the user can choose to unpack to the scanned single carrier instead of the multpiple original carriers - Note before clicking the "Unpack Containers" button, the user can re-check the "Unpack to original carrier(s)" option, which clears the new Scan carrier field and hides it again, so the user can unpack to the original carriers if required.
![image2019-6-10_11-34-6.png](/.attachments/51871771.png)


Once the user clicks the "Unpack Containers" button, the container will be unpacked to the carrier(s), they will be enqueued to the default pass step configured at the receiving route step and the screen is cleared ready for the next container scan.
![image2019-6-10_11-25-32.png](/.attachments/51871762.png)




#### Process for Receiving 


"Shipped" status Container
Below is the container with the status "Shipped" as per screenshot:
![image2019-6-10_11-25-32.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/b693fd0f-d49d-468f-85b6-c129f2f83358?fileName=image.png)



Once the user scanned the container with status "Shipped" at Lot Receiving station then the system prompt toaster message "The container '
xxxxxxx' was shipped and can't be used in Receiving". After that, it should clear the "Scan Container" field at Lot Receiving station so that it can allow the user to scan the next container number.
![image2019-6-10_11-25-32.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/e4db8f1b-14ea-4e43-8745-a9be46740d5b?fileName=image.png)




#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Scan Container</p></td><td class="confluenceTd"><p>Allows the user to scan multiple containers</p></td></tr><tr><td class="confluenceTd"><p>Scan Carrier</p></td><td class="confluenceTd"><p>Allows the user to scan a destination batch managed carrier</p></td></tr><tr><td class="confluenceTd"><p>Partial Processing</p></td><td class="confluenceTd"><p>Allow the user to perform the receive operation on a selection of containers, rather than the expected default condition of being required to scan all of the containers belonging to the same batch</p></td></tr><tr><td colspan="1" class="confluenceTd">Unpack to original carrier(s)</td><td colspan="1" class="confluenceTd">Allows the user to unpack to the original carrier(s) and is selected by default - de-selecting this causes the "Unpack" button to be inactive until the user scans a valid carrier in the Scan carrier field displayed when this check box is de-selected.</td></tr><tr><td colspan="1" class="confluenceTd"><p>"Unpack Containers" button</p></td><td colspan="1" class="confluenceTd"><p>Allows the user to perform the Receive operation (unpack the container contents, <span>merge to a new batch managed carrier and en-queue as per the configured routing rules).</span></p></td></tr><tr><td class="confluenceTd"><p><br /></p></td><td class="confluenceTd"><p><strong>Contents Section</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Container Number (Status)</p></td><td class="confluenceTd"><p>Shows the Container number and the "Closed" status</p></td></tr><tr><td class="confluenceTd"><p>Quantity</p></td><td class="confluenceTd"><p>Shows the qty of the lot packed to that container and provides a link to the contents tab of the container view</p></td></tr></tbody></table>




#### Attachments

[image2017-11-30 16:52:38.png](/.attachments/29918008.png)
[image2017-11-30 16:40:44.png](/.attachments/29918009.png)
[image2017-11-30 16:33:29.png](/.attachments/29918010.png)
[image2017-11-30 16:32:30.png](/.attachments/29918011.png)
[image2017-11-30 16:30:11.png](/.attachments/29918012.png)
[image2017-11-30 15:11:34.png](/.attachments/29918013.png)
[image2017-11-30 15:2:18.png](/.attachments/29918014.png)
[image2017-11-30 14:58:0.png](/.attachments/29918015.png)
[image2017-11-30 14:45:55.png](/.attachments/29918016.png)
[image2017-11-30 14:41:48.png](/.attachments/29918017.png)
[image2017-11-30 14:38:15.png](/.attachments/29918018.png)
[image2017-11-30 14:35:10.png](/.attachments/29918019.png)
[image2017-11-30 14:32:36.png](/.attachments/29918020.png)
[image2017-10-20 10:58:48.png](/.attachments/29918021.png)
[image2017-10-20 10:51:13.png](/.attachments/29918022.png)
[image2017-10-20 10:44:34.png](/.attachments/29918023.png)
[image2017-10-20 10:38:37.png](/.attachments/29918024.png)
[image2019-6-10_10-57-42.png](/.attachments/51871747.png)
[image2019-6-10_10-58-31.png](/.attachments/51871748.png)
[image2019-6-10_11-14-36.png](/.attachments/51871750.png)
[image2019-6-10_11-17-5.png](/.attachments/51871752.png)
[image2019-6-10_11-17-47.png](/.attachments/51871753.png)
[image2019-6-10_11-19-55.png](/.attachments/51871755.png)
[image2019-6-10_11-22-8.png](/.attachments/51871757.png)
[image2019-6-10_11-24-12.png](/.attachments/51871759.png)
[image2019-6-10_11-25-32.png](/.attachments/51871762.png)
[image2019-6-10_11-28-5.png](/.attachments/51871765.png)
[image2019-6-10_11-29-49.png](/.attachments/51871767.png)
[image2019-6-10_11-32-16.png](/.attachments/51871769.png)
[image2019-6-10_11-34-6.png](/.attachments/51871771.png)

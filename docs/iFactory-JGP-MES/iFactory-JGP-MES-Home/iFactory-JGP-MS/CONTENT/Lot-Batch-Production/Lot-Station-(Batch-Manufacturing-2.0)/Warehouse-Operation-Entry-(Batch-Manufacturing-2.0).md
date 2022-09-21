# Introduction

The warehouse is used to store the box type container that might later be used to ship or receive back to production for processing at the next process. The Warehouse station is used to perform a simple start and complete activity for the Lot/Carrier by container at a Route Step. All the Lot/Carrier in the BOX will validate its pre-start validation before performing the BOX movement (does not support overpack).


### How to get there?




::: mermaid
graph LR
A("MANUAL STATION LOGIN")-->0("Scan RESOURCE, Container, ROUTE STEP (WAREHOUSE OPERATION ENTRY type)")

:::


#### Permission


To access the screen:

Lot Warehouse Operation Entry - Allows the user to access Warehouse Operation Entry
To process container:

Add Lot Warehouse Operation - Allows the user to create a warehouse operation record for a lot



#### Screen Activity


Warehouse station enables the user to perform the following activity:

- Start and/or complete activities for all the Lot/Carrier in the Box



#### Pre Condition


The following data needs to be pre-configured (if used) before the user is able to start the Warehouse Operation Entry

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)
defined
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
, all supporting Route Steps and Resources configured
- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)
- The Route must be configured with a Route Step where its Route Step Type has its Station Type configured as "Warehouse Operation Entry".
- Create a
[Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Planned-Order-Data-Importer.md)and assign to Route,Lot Release (at 
[MOE](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Warehouse-Operation-Entry-(Batch-Manufacturing-2.0).md)or 
[MIE](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Warehouse-Operation-Entry-(Batch-Manufacturing-2.0).md)) must have occurred for the Planned Order/Super Lot, Lot is assigned to Carrier(s), and the Lot is enqueued at the Route Step if the operation is to Start

- [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Warehouse-Operation-Entry-(Batch-Manufacturing-2.0).md)
- User must identify the Resource they are using before performing the Operation activities


#### Screen Dependency


Warehouse Operation Station

- None specifically. Once the operation is started, completed or aborted, details are recorded in Lot View, Planned Order View, Carrier View and Container View accordingly.



#### Process 


![image2019-12-19_10-57-42.png](/.attachments/86310993.png)


When the first container is scanned for the lot, the operation will be "Started". Operation will be "Pass" when the last container of the lot has been scanned. If the container has multiple lots packed in it, both lots will have "Started" operation. If the Route Step is a Completion Step, system will validate if the Super Lot has been fully released and all the lots assigned to it are completed. If yes, then the Super Lot status will be changed to "Complete".
Lot cannot be started if the Planned Order is on hold. Lots that have "Started" in a station will be allowed to complete that operation if the Planned Order is put on hold.



#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Scan Container</p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>To allow the operator to scan Box serial number. </p><p>When all the carriers of the lot has completed warehouse operation, the lot shall enqueue at the next route step as per configured (if any). History event will be captured in Container View and Lot View.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Reset Counter</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span>To reset Container Count value and Carrier Count value to 0.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Container Count</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Default as 0 when the screen is initially loaded. Increase 1 for every container transacted successfully.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Carrier Count</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Default as 0 when the screen is initially loaded. Increase the value based on the number of Carriers in the box which transacted successfully.</span></td></tr></tbody></table>




#### Process "Shipped" status Container


Below is the container with the status "Shipped" as per screenshot:
![image2019-12-19_11-7-9.png](/.attachments/86310992.png)


Once the user scanned the shipped container at Lot Warehouse station then the system prompt toaster message "The container 
‘xxxxxxxx’ was shipped and cannot be used in Warehouse". After that, the system clears the "Scan Container" field at Lot Warehouse station so that it allows the user to scan the next container number.![image2019-12-19_11-9-2.png](/.attachments/86310991.png)





#### Attachments

[image2019-12-19_11-9-2.png](/.attachments/86310991.png)
[image2019-12-19_11-7-9.png](/.attachments/86310992.png)
[image2019-12-19_10-57-42.png](/.attachments/86310993.png)

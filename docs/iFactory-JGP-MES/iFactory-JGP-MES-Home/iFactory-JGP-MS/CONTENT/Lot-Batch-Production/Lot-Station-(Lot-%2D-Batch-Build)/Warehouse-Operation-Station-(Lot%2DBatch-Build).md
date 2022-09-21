# Introduction

The warehouse is used to store the box type container that might later be used to ship or receiving back to production for processing for the next process. The Warehouse station is used to perform a simple start and complete activity for the Lot/Carrier by a container at a Route Step. All the Lot/Carrier in the BOX will validate its pre-start validation before performing the BOX movement. (not support overpack)


### How to get there?



::: mermaid
graph LR
A("MANUAL STATION LOGIN")-->0("SCAN/SELECT RESOURCE (ROUTE STEP CONFIGURED AS WAREHOUSE OPERATION ENTRY)")

:::


#### Permission


1) Can Access Lot/Batch Build - Lot - View Lot Details

2) Can Access Lot/Batch Build - Packout Unserlized Product - Pack Lot
3) Can Access Lot/Batch Build - Planned Order Lot - View Planned Order Details
4) Can Access Lot/Batch Build - Stations - Manual Station Login
5) Can Access NG - Can Use Warehouse Operation Entry

#### Screen Activity


Warehouse station enables the user to perform the following activity:

- Start and complete activities for all the Lot/Carrier in the Box


#### Pre Condition


The following data needs to be pre-configured (if used) before the user is able to start the Warehouse Operation Entry

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)
defined
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
,  all supporting Route steps and Resources configured for the Route Steps
- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)
, The Route must be configured with a Route Step where its Route Step Type has its Station Type configured as "Warehouse Operation Entry".
- [Carrier Template](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Warehouse-Operation-Station-(Lot%2DBatch-Build).md)
, Create a [Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Planned-Order-Data-Importer.md)and assign to Route,[Lot Release](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Warehouse-Operation-Station-(Lot%2DBatch-Build).md)must have occurred for the Planned Order 
- [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Warehouse-Operation-Station-(Lot%2DBatch-Build).md)
User must identify the Resource they are using before performing the Operation activities

#### Screen Dependency


Warehouse Operation Station

- None specifically, once the operation is started, completed, aborted details are recorded in Lot view, planned order view, carrier view, and container view accordingly


#### Process 


![image2019-12-19_10-57-42.png](/.attachments/62423149.png)


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Scan Container</p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>To allow the operator to scan Box serial number. </p><p>Upon completion successful, all carrier/Lot packed in the box shall in-queue at the next route step as per configured (if any on route). History event will be captured in a container and all carrier/Lot as well.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Reset Counter</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span>To reset Container Count value and Carrier Count value to 0</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Container Count</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Default as 0 when initial load the screen. Increase 1 for every container scan to transacted successfully.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Carrier Count</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Default as 0 when initial load the screen. Increase the value base on the number of Carriers in the box which transacted successfully.</span></td></tr></tbody></table>


Process "Shipped" status ContainerBelow is the container with the status "Shipped" as per screenshot:

![image2019-12-19_11-7-9.png](/.attachments/62423150.png)



Once the user scanned the shipped container at Lot Warehouse station then the system prompt toaster message "The container 
‘xxxxxxxx’ was shipped and cannot be used in Warehouse. After that, the system clears the "Scan Container" field at Lot Warehouse station so that it allows the user to scan the next container number.![image2019-12-19_11-9-2.png](/.attachments/62423151.png)










#### Attachments

[image2019-12-19_10-57-42.png](/.attachments/62423149.png)
[image2019-12-19_11-7-9.png](/.attachments/62423150.png)
[image2019-12-19_11-9-2.png](/.attachments/62423151.png)

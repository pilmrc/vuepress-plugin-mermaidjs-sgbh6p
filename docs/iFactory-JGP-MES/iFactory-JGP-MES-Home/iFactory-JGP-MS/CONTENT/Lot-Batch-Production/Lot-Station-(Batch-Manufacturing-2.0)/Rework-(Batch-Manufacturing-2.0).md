# Introduction

The Rework permits end users to find the root cause of the non conformance of an ITEM and perform the necessary repair/replace action to close the defect.


### How to get there?



::: mermaid
graph LR
A("MANUAL STATION LOGIN")-->0("REWORK")

:::


#### Permission


To access the screen:

Rework
- Allows the user to access Rework

To perform Rework operation:

Add Lot Rework - Allows the user to create a rework record for a lot

#### Screen Activity


Rework station enables user to perform the following activity:

- Select the Resource, Route, Route Step that the User is performing their activities

- Abort the activity

- Complete the activity

- Perform rework on open defect.


#### Pre Condition


The following data needs to be pre-configured before user is able to start a Rework

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)
defined
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
,  all supporting Route steps and Resources configured for the Route Steps 
- [Create Carrier](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Rework-(Batch-Manufacturing-2.0).md)
, Create a [Planned Order](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Rework-(Batch-Manufacturing-2.0).md)and assign to Route,  [Lot Release](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Rework-(Batch-Manufacturing-2.0).md)must have occurred for the Planned Order, Lot is assigned to a Carrier, and the Carrier present to start a the Route Step if the operation is to Start
- [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Rework-(Batch-Manufacturing-2.0).md)
User must identify the Resource they are using before performing the Operation activities  

#### Screen Dependency


Manual Inspection Entry 

- None specifically, once the Lot is Started the system will record the occurrence of the activity and can be seen via the
[Lot View](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Rework-(Batch-Manufacturing-2.0).md)History Tab. 
- Will be a validation of the Routing Rules if the lot is not allowed to start will show an message the system.


#### Process


When the user has selected the station through the 
[Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Rework-(Batch-Manufacturing-2.0).md)the application will open the configured operation activity screen, in this example Rework. The Rework screen allows the user to perform rework on open defect for the items, Abort, or Complete the operation activities at the Route Step. The user is prompted to scan a Carrier or an Internal Batch Number to start the operation activities.
![image2021-3-25_14-44-16.png](/.attachments/89588047.png)


There will be “Scan Internal Batch Number” and “Scan Carrier” fields. Once user scan all carriers of a lot the Super Lot Number is looked up, and the Super Lot is Started automatically, the screen is presented to the user the open defects and the possibility to close them. 
![image2021-3-25_14-58-55.png](/.attachments/89588049.png)


The user needs to select a Defect and click on Close Defect to fill in the details. User will need to enter the rework quantity and rework category to close the defect. When user Add Rework with Rework Category of ‘Remove Only’, the ‘Rework Quantity’ field should be disabled and the value is equal to the lot quantity. When user Add Rework with Rework Category of ‘Replace’ to close a defect with CRD, user will need to enter the replacement GRN, the ‘Rework Quantity’ field should be disabled and the value is equal to the lot quantity. ‘Replace’ or ‘Remove Only’ is only applicable to sub level material. 1 CRD will only have 1 rework category. 
There will be a validation for the replacement GRN: 

- GRN exists.

- GRN belongs to the material.

- GRN is not prohibited.

- GRN quantity is enough.

- GRN is not blocked.
![image2021-3-25_14-59-41.png](/.attachments/89588050.png)


User can click on 'Complete' without closing all the defects for a partial rework. For partial rework, user needs to enter the 'Split Quantity' (the remaining defect quantity that are yet to rework) and the defect carrier number. User is only allowed to scan an unassigned carrier with enough capacity for the “Split Quantity”. User is required to scan a new Internal Batch Number that follows the format of the Validation Mask if “Generate IBN On Split” is Off. Internal Batch Number for split lot will be generated by the system by adding a suffix of “-XXX” (sequence from -001 to -999) to the original IBN if “Generate IBN On Split” is On.
Validation for the ‘Split Quantity’ entered:

- Split quantity cannot be more than total open defect quantity; (Split quantity "= total open defect quantity)

- Total failed quantity minus Split quantity cannot be more than the total closed defect quantity; (total fail quantity - split quantity) "= (total defect quantity - total open defect quantity)

- Total failed quantity minus Split quantity cannot be less than the remaining closed defect item quantity; (total fail quantity - split quantity) "= (max value from closed defect item quantity)

- Split quantity cannot be less than the max value from Open Defects item quantity

![image2021-3-25_15-21-3.png](/.attachments/89588051.png)


If the User decides to Abort the operation, any Defect closed will NOT be recorded in the database. It will be recorded when operation is completed.
The user has the possibility to see the details of the rework in the Defects tab in Lot View
![image2021-3-25_15-24-20.png](/.attachments/89588052.png)



![image2021-3-25_15-24-31.png](/.attachments/89588053.png)


Fields
<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 16.8077%;" /><col style="width: 83.2487%;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td colspan="1" class="confluenceTd">Scan Internal Batch Number</td><td colspan="1" class="confluenceTd">This field allow user to scan valid Internal Batch Number that would like to perform Rework</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Super Lot Number</p></td><td style="text-align: left;" class="confluenceTd"><p>The Number of the Super Lot currently assigned to the Carrier that has just started. (Read only)</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Lot Quantity</p></td><td style="text-align: left;" class="confluenceTd"><p>The Number of items for the Super Lot currently assigned to the Carrier that has just started. (Read only)</p></td></tr><tr><td colspan="1" class="confluenceTd">Fail Quantity</td><td colspan="1" class="confluenceTd">The Number of fail items for the Super Lot currently assigned to the Carrier that has just started. (Read only)</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Scan Carrier</p></td><td style="text-align: left;" class="confluenceTd"><p>This field allow user to scan all carriers of a lot to start the operation</p></td></tr><tr><td colspan="1" class="confluenceTd">Loaded Carrier</td><td colspan="1" class="confluenceTd">Shows the list of carrier loaded for the superlot that has just started</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Open Defects</td><td style="text-align: left;" colspan="1" class="confluenceTd">Shows the list of Defects open for the operation</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Close Defects Button</p></td><td style="text-align: left;" colspan="1" class="confluenceTd">The button allow to the user to close a Defect, first needs to be selected the defect to close</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Closed Defect list</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span>Shows the list of Defects open for the operation</span></p></td></tr></tbody></table>

<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 16.9205%;" /><col style="width: 83.0795%;" /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="Rework(BatchManufacturing2.0)-AddRework"><strong>Add Rework</strong></h5></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Rework Material</p></td><td style="text-align: left;" class="confluenceTd"><p><span>The defective material</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Rework Quantity</td><td style="text-align: left;" colspan="1" class="confluenceTd">The number of units being reworked for the selected defect</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Rework Category</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span>The standard rework categories configured are:</span></p><ul><li>False Call</li><li>Remove Only</li><li>Replace</li><li>Rework</li></ul><p>If rework for Top Level Material, rework categories are:</p><ul><li>False Call</li><li>Rework</li></ul><p>If rework for Sub Level Material, rework categories are:</p><ul><li>Remove Only</li><li>Replace</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Rework Detail</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>User to provide additional details of the rework action</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Rework Comment</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>User to provide additional comment of the rework action (Max 200 characters)</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Cancel</td><td style="text-align: left;" colspan="1" class="confluenceTd">Cancel the rework action</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Submit</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Saves the rework activity</span></td></tr></tbody></table>



#### Attachments

[image2021-3-25_14-44-16.png](/.attachments/89588047.png)
[image2021-3-25_14-58-55.png](/.attachments/89588049.png)
[image2021-3-25_14-59-41.png](/.attachments/89588050.png)
[image2021-3-25_15-21-3.png](/.attachments/89588051.png)
[image2021-3-25_15-24-20.png](/.attachments/89588052.png)
[image2021-3-25_15-24-31.png](/.attachments/89588053.png)

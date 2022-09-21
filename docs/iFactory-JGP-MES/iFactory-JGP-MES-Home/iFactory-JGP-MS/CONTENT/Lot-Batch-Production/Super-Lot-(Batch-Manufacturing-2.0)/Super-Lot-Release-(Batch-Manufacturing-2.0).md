# Introduction


The Super Lot Release screen is intended to permit the user to sub-divide a Work Order (Planned / Production order) into smaller manageable group of lots in the factory. A Super Lot is to group lots that are produced under the same conditions (e.g. same shift/lot code/etc.) to provide better control of the lots. Upon successful release, the system provides a message indicating the Super Lot has been released and display the Super Lot number.  Subsequently, every lot that is released will be associated to a Super Lot.


### How to get there?



::: mermaid
graph LR
A("CARRIER/LOT")-->0("SUPER LOT RELEASE")

:::


#### Permission


To access the screen and able to release Super Lot:
1) Super Lot Release Modify - Allows the user to release new super lots



#### Screen Activity


Super Lot Release enables user to perform the following activity:

- The primary activity is to release a Super Lot, comprised of X number of items, for a Work Order (Planned / Production order).

- The screen limits the release quantity to not be greater than the Remaining Quantity of the Work Order (Planned / Production order).



#### Pre Condition


The following data needs to be pre-configured (if used) before user is permitted to perform a Super Lot Release:

- [Work Order (Planned / Production order)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Super-Lot-(Batch-Manufacturing-2.0)/Super-Lot-Release-(Batch-Manufacturing-2.0).md)
must be created and assigned to a [R](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Super-Lot-(Batch-Manufacturing-2.0)/Super-Lot-Release-(Batch-Manufacturing-2.0).md)[oute](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md), with status of "Ready".
- The Work Order (Planned / Production order) material must have
[Assembly](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Assembly-Configuration.md)created.


#### Screen Dependency



- [Super Lot View](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Super-Lot-(Batch-Manufacturing-2.0)/Super-Lot-View-(Batch-Manufacturing-2.0).md)
: Super Lots may not be viewed until they have been released.
- Super Lot Hold: Super Lots cannot be On Hold until they have been released.



#### Process


![image2020-10-7_18-26-12.png](/.attachments/79790687.png)


The user is required to search for a Work Order (Planned / Production order). The Work Order search results will only return:

- Orders with materials that have Assembly.

- Orders with the status of "Ready" and "In Progress".

- Orders that still have remaining quantity to be released.

- Orders that are not on hold.

- "Auto Release Super Lot" toggle is Off.

If the lot batch material has the 
"Auto Release Super Lot" toggle at 
[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)- Release & Assemble tab turned On, Orders that are associated to this material will not be returned in the search results. System will automatically release the Super Lot during lot release at MOE/MIE station.User will input the quantity to release and select a Printer if 
[document assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Assignment-(4.0).md)is configured for the material with print trigger "On Super Lot Release" and [SuperLot document type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Maintenance-(4.0).md).On release, 
Super Lot number with the format "[Work Order (Planned / Production order)]-[5 digit sequence number]" will be generated and label is printed if document assignment is configured. The Super Lot will be released to the assigned Route/Version of the Work Order (Planned / Production order). The Work Order's Quantity Released and Quantity Remaining fields will be updated accordingly after every successful Super Lot release. The Assembly will be associated to the Super Lot when it is released. User will be able to view the Assembly at [Super Lot View](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Super-Lot-(Batch-Manufacturing-2.0)/Super-Lot-View-(Batch-Manufacturing-2.0).md)- General Tab.When the first Super Lot is released for the Work Order (Planned / Production order), the Work Order status will change from "Ready" to "In Progress". The Super Lot released using this screen will be used when releasing lots at MOE or MIE station.



#### Fields


<table class="wrapped confluenceTable"><colgroup><col style="width: 113.0px;" /><col style="width: 1326.0px;" /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">Work Order</span><span style="color: rgb(255,0,0);">*</span></p></td><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">Intended for the user to enter all or part of the Work Order (Planned / Production order) Number. If a complete search of Work Order is entered and a match is found the details of the order will be populated on the form. If a partial match is found, a Search Result dialog will be presented to help select the specific order the user desires. A wild card search (blank search) is not allowed. Only Work Order (Planned / Production order) with material that have Assembly, with the status of Ready and In Progress, not on hold as well as with remaining quantity to be released will be available. (Required)</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Material</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The Material to produce for the Work Order. (Read Only)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Scheduled Start Date</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The Scheduled Start Date the Work Order is to begin in production. (Read Only)</span></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);">Assigned Route</span></p></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);">The Route/Version the Work Order is assigned to be processed. (Read Only)</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Quantity</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The total quantity of the Work Order (Planned / Production order). (Read Only)</span></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">Quantity Released</span></p></td><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">The number of items released to fulfil the Work Order (Planned / Production order). (Read Only)</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Quantity Remaining</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The number of items remaining to be released to fulfil the Work Order (Planned / Production order). Remaining Quantity = Work Order Quantity - Released Quantity. (Read Only)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Super Lot Quantity <span style="color: rgb(255,0,0);">*</span></span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The number of items to be released for the Super Lot. The quantity cannot be more than the remaining Work Order quantity. (Required)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Printer <span style="color: rgb(255,0,0);">*</span></span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">If 'On Super Lot Release' is configured in document assignment then “Printer” field is displayed and Super Lot label will be printed when submit. (Required)</span></td></tr></tbody></table>

If ‘On Super Lot Release’ is configured in document assignment then “Printer” field is displayed and Super Lot label will be printed when submit. (Required)


#### Attachments

[image2019-12-18_8-55-55.png](/.attachments/79790657.png)
[image2019-12-18_8-55-17.png](/.attachments/79790658.png)
[image2019-12-18_8-52-11.png](/.attachments/79790659.png)
[image2019-12-18_8-50-58.png](/.attachments/79790660.png)
[image2019-4-24_14-42-20.png](/.attachments/79790661.png)
[image2019-4-24_14-39-51.png](/.attachments/79790662.png)
[image2019-4-24_14-36-13.png](/.attachments/79790663.png)
[image2019-4-24_9-17-52.png](/.attachments/79790664.png)
[image2019-4-24_9-10-17.png](/.attachments/79790665.png)
[image2019-1-18_15-9-3.png](/.attachments/79790666.png)
[image2019-1-18_15-8-31.png](/.attachments/79790667.png)
[image2019-1-18_14-59-50.png](/.attachments/79790668.png)
[image2019-1-18_14-57-21.png](/.attachments/79790669.png)
[image2019-1-18_14-56-32.png](/.attachments/79790670.png)
[image2018-12-11_16-30-57.png](/.attachments/79790671.png)
[image2018-12-11_16-29-46.png](/.attachments/79790672.png)
[image2018-12-11_16-15-5.png](/.attachments/79790673.png)
[image2018-12-11_16-11-42.png](/.attachments/79790674.png)
[image2018-12-11_16-6-37.png](/.attachments/79790675.png)
[image2018-10-15_10-51-59.png](/.attachments/79790676.png)
[image2018-10-15_10-43-39.png](/.attachments/79790677.png)
[image2018-10-15_10-37-21.png](/.attachments/79790678.png)
[Manual Lot Release.png](/.attachments/79790679.png)
[image2020-10-7_18-26-12.png](/.attachments/79790687.png)

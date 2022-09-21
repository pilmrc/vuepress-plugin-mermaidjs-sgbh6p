# Introduction

Work Order is created to fulfill the repetitive order demand. Work order is driven based on customer demand forecast. Based on the forecast, Jabil will continue to manufacture materials and stock them. This is where sometimes it is referred to as the Build to Stock (BTS) model. For example, planner forecasted that there is a spike in customer demand at every quarter end. Planner will drop the work order for the manufacturing floor to build more motherboards. The motherboard will be stocked in a warehouse or production floor's supermarket. As soon as customer drops an order for the motherboard, we are able to fulfill and ship the motherboards in the shortest time. These motherboards can also be stocked in the production floor's supermarket where they will be used to fulfill the Build To Order (BTO) or Build To Configure (CTO) model. 
Work Orders may also be used to produce Lot/Batch items and assign them to a Route. The process is as described above for the BTO/CTO model with the exception that individual serialized WIP are not the items being released for production. For the Lot / Batch Build model a work order is created and assigned to a Route that has a route process type defined as 
Lot / Batch Build and has a material associated to the Route. Unlike the BTO/CTO process Releasing and Scrapping the WIP is not enabled from the Work Order screen.Production order from SAP is split by scheduler to multiple Work orders then only sync to ifactory. 

How to get there?



::: mermaid
graph LR
A("PRODUCTION")-->0("ORDER")
0-->1("WORK ORDER")

:::


### Screen Activity


Work Order Maintenance enables user to perform the following activity:
BTO/ CTO materials:

- Create, view, update and delete work orders. System will not allow user to update or delete the work order if Serial Number has been released/birth under this order

- Redirect to
[WIP Release](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)screen to release WIP for the selected work order
- Redirect to Mass Scrap WIP screen for the selected work order

- View work order status and all the WIPs associated to this order


Lot / Batch Build non-serialized materials:

- Create, view, update and delete work orders


- System will only allow user to delete a newly create Work Order

- System will only allow user to update the Status and Assigned Route when the Work Order status is "New" or "Ready"

- System will not allow user to update when there is a Lot released against the Work Order.

- View work order status and all the Super Lots and Lots associated to this order


- Status Change between Ready, In Progress, Cancelled and Completed



#### Precondition




- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)
and[BOM](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Work-Order-(Batch-Manufacturing-2.0).md)need to be configured/imported from SAP ECC before user create a work order
- Route Process Type and Material Associations for the
[Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)and Material to be produced for Lot / Batch Build processing


#### Screen Dependency


The following screen(s) has direct dependency with Work Order

- *[WIP Release](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)*

- [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)

- [BOM Maintenance](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Work-Order-(Batch-Manufacturing-2.0).md)

- [Manual Inspection Entry](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Manual-Inspection-Entry-(Batch-Manufacturing-2.0).md)
(If it is initial step)
- [Manual Operation Entry](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Manual-Operation-Entry-(Batch-Manufacturing-2.0).md)
(If it is initial step)


#### Screen Examples


Below are two
example screens, the default version is shown as blank. Once the data is populated for a regular WIP material the Mass Scrap WIP, View Order Status, WIP Release buttons will be enabled and usable. If however the Material to be produced is a Lot/Batch material that has been associated to a Route the user is able to create the Work Order and Assign the Order to a Route to be processed. The Mass Scrap WIP and WIP Release buttons will not be enabled for non-serialize material Lot / Batch build processing as it does not apply. 





#### Fields



<table class="relative-table wrapped confluenceTable" style="width: 77.5645%;"><colgroup><col style="width: 10.4023%;" /><col style="width: 89.5977%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(51,51,51);">Work Order</span></p></td><td style="text-align: left;" class="confluenceTd"><p>The unique name given to the work order</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(51,51,51);">Material Name</span></p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(51,51,51);">Work </span>Order's top level material</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(51,51,51);">Material Description</span></p></td><td style="text-align: left;" class="confluenceTd"><p>Auto populates according to the material selected</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Order Quantity</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">Quantity to build in the work order</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Schedule Start Date</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">The date where production starts for the work order</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Schedule End Date</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>The date where production ends for the work order</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Bom</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">The BOM for the selected material</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Status</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>User can select one of the status below for the work order:</p><ul><li>New</li><li>Ready</li><li>In Progress</li><li>Cancelled (Cancelling the order will cause the WIPs to be placed on hold and they are not allowed to proceed further in the route)</li><li>Shipped</li><li>On Hold</li></ul><p><br />For Lot/Batch Material, work order status only can change between the following status:</p><ul><li>New --> Ready</li><li>Ready --> Cancelled, Completed</li><li>In Progress --> Cancelled, Completed</li><li>Cancelled --> In Progress, Ready</li><li>Completed --> In Progress, Ready</li></ul><p><span style="color: rgb(23,43,77);">System will change the Status to Completed in hourly backend job when all quantity has been released and final Super Lot (all the lots assigned to it) is completed. </span>A Completed Work Order will change to In Progress if one of the Lot Status changed from Completed to In Progress during Lot Move</p><p>System will not allow user change the Status from "Cancelled" to "Ready" if there was any lot released and system not allow user change the Status from "Cancelled" to "In Progress" if there was no lot released.</p><p>"In Progress", "Completed" or "Shipped" status cannot be used by newly created work order.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Created Datetime</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">The date time where the work order was created</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Created By</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>The user ID who created the work order</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Assign To Route</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>This field is only visible after a basic form is correctly populated and saved. This is only applicable to Lot / Batch Build based processing where user is able to assign Lot to a route where Material Type = LotBatch. The only Routes that should be available here are those that have the specified material associated to a Lot / Batch Build process type Route.</p><p>"New" is the only state that allows the assignment route to be empty</p></td></tr></tbody></table>




- For more information, refer to

[View Order Status dashboard](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/Planned-Order-View.md)and[WIP Release](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly.md)user guide
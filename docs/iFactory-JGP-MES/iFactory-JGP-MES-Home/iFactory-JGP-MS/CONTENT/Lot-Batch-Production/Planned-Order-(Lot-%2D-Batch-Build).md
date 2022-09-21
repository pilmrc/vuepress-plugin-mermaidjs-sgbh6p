# Introduction


Planned Order is created to fulfill the repetitive order demand. Planned order is driven based on customer demand forecast. Based on the forecast, Jabil will continue to manufacture materials and stock them. This is where sometimes it is referred to as the Build to Stock (BTS) model. For example, planner forecasted that there is a spike in customer demand at every quarter end. Planner will drop the planned order for the manufacturing floor to build more motherboards. The motherboard will be stocked in a warehouse or production floor's supermarket. As soon as customer drops an order for the motherboard, we are able to fulfill and ship the motherboards in the shortest time. These motherboards can also be stocked in the production floor's supermarket where they will be used to fulfill the Build To Order (BTO) or Build To Configure (CTO) model. 
Planned Orders may also be used to produce Lot/Batch items and assign them to a Route. The process is as described above for the BTO/CTO model with the exception that individual serialized WIP are not the items being released for production. For the Lot / Batch Build model a planned order is created and assigned to a Route that has a route process type defined as 
Lot / Batch Build and has a material associated to the Route. Unlike the BTO/CTO process Releasing and Scrapping the WIP is not enabled from the Planned Order screen.
How to get there?



::: mermaid
graph LR
A("PRODUCTION")-->0("ORDER")
0-->1("PLANNED ORDER")

:::


### Screen Activity


Planned Order Maintenance enables user to perform the following activity:
BTO/ CTO materials:

- Create, view, update and delete planned orders. System will not allow user to update or delete the planned order if Serial Number has been released/birth under this order

- Redirect to
[WIP Release](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release.md)screen to release WIP for the selected planned order
- Redirect to Mass Scrap WIP screen for the selected planned order

- View planned order status and all the WIPs associated to this order


Lot / Batch Build non-serialized materials:

- Create, view, update and delete planned orders


- System will only allow user to delete a newly create Planned Order

- System will only allow user to update the Status and Assigned Route when the Planned Order status is "New" or "Ready"

- System will not allow user to update when there is a Lot released against the Planned Order.

- View planned order status and all the Lots associated to this order


- Status Change between Ready, In Progress, Cancelled and Completed



#### Precondition




- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)
and [BOM](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)need to be configured/imported from SAP ECC before user create a planned order
- Route Process Type and Material Associations for the
[Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)and Material to be produced for Lot / Batch Build processing


#### Screen Dependency


The following screen(s) has direct dependency with Planned Order

- *[WIP Release](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release.md)*

- [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [BOM Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- [Lot Release](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot/Lot-Release-1.0-(Lot-%2D-Batch-Build).md)



#### Screen Examples


Below are two 
example screens, the default version is shown as blank. Once the data is populated for a regular WIP material the Mass Scrap WIP, View Order Status, WIP Release buttons will be enabled and usable. If however the Material to be produced is a Lot/Batch material that has been associated to a Route the user is able to create the Planned Order and Assign the Order to a Route to be processed. The Mass Scrap WIP and WIP Release buttons will not be enabled for non-serialize material Lot / Batch build processing as it does not apply. 






#### Fields



<table class="wrapped relative-table confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 7.73875%;" /><col style="width: 92.2613%;" /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">Planned Order</span></p></td><td class="confluenceTd"><p>The unique name given to the planned order</p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">Material Name</span></p></td><td class="confluenceTd"><p>Planned Order's top level material</p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">Material Description</span></p></td><td class="confluenceTd"><p>Auto populates according to the material selected</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Order Quantity</span></td><td colspan="1" class="confluenceTd">Quantity to build in the planned order</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Schedule Start Date</span></td><td colspan="1" class="confluenceTd">The date where production starts for the planned order</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Schedule End Date</span></td><td colspan="1" class="confluenceTd"><span>The date where production ends for the planned order</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Bom</span></td><td colspan="1" class="confluenceTd">The BOM for the selected material</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Status</span></td><td colspan="1" class="confluenceTd"><p>User can select one of the status below for the planned order:</p><ul><li>New</li><li>Ready</li><li>In Progress</li><li>Cancelled (Cancelling the order will cause the WIPs to be placed on hold and they are not allowed to proceed further in the route)</li><li>Shipped</li><li>On Hold</li></ul><p><br />For Lot/Batch Material, planned order status only can change between the following status:</p><ul><li>New --> Ready</li><li>Ready --> Cancelled, Completed</li><li>In Progress --> Cancelled, Completed</li><li>Cancelled --> In Progress, Ready</li><li>Completed --> In Progress, Ready</li></ul><p><span style="color: rgb(23,43,77);">System will change the Status to Completed in hourly backend job when all quantity has been released and final Super Lot (all the lots assigned to it) is completed. </span>A Completed Planned Order will change to In Progress if one of the Lot Status changed from Completed to In Progress during Lot Move</p><p>System will not allow user change the Status from "Cancelled" to "Ready" if there was any lot released and system not allow user change the Status from "Cancelled" to "In Progress" if there was no lot released.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Created Datetime</span></td><td colspan="1" class="confluenceTd">The date time where the planned order was created</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Created By</span></td><td colspan="1" class="confluenceTd"><span>The user ID who created the planned order</span></td></tr><tr><td colspan="1" class="confluenceTd">Assign To Route</td><td colspan="1" class="confluenceTd">This field is only visible after a basic form is correctly populated and saved. This is only applicable to Lot / Batch Build based processing where user is able to assign Lot to a route where Material Type = LotBatch. The only Routes that should be available here are those that have the specified material associated to a Lot / Batch Build process type Route.</td></tr></tbody></table>




- For more information, refer to

[View Order Status dashboard](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/Planned-Order-View.md)and [WIP Release](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release.md)user guide



#### Attachments

[Planned Order Lot-Batch.png](/.attachments/29917877.png)
[Planned Order BTO-CTO.png](/.attachments/29917878.png)

# Introduction


Planned Order is created to fulfill the repetitive order demand. Planned order is driven based on customer demand forecast. Based on the forecast, Jabil will continue to manufacture materials and stock them. This is where sometimes it is referred to as the Build to Stock (BTS) model. For example, planner forecasted that there is a spike in customer demand at every quarter end. Planner will drop the planned order for the manufacturing floor to build more motherboards. The motherboard will be stocked in a warehouse or production floor's supermarket. As soon as customer drops an order for the motherboard, we are able to fulfill and ship the motherboards in the shortest time. These motherboards can also be stocked in the production floor's supermarket where they will be used to fulfill the Build To Order (BTO) or Build To Configure (CTO) model. 

How to get there?



::: mermaid
graph LR
A("PRODUCTION")-->0("ORDER")
0-->1("PLANNED ORDER")

:::


### Screen Activity


Planned Order Maintenance enables user to perform the following activity:

- Create, view, update and delete planned orders. System will not allow user to update or delete the planned order if Serial Number has been released/birth under this order

- Redirect to
[Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)screen to release WIP for the selected planned order
- View planned order status and all the WIPs associated to this order




#### Precondition



[Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)
and [BOM](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)need to be configured/imported from SAP ECC before user create a planned order


#### Screen Dependency


The following screen(s) has direct dependency with Planner Order

- *[Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)*

- [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)

- [BOM Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)

**Permission** 
Can Maintenance Planned Order


#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">Planned Order</span></p></td><td class="confluenceTd"><p>The unique name given to the planned order</p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">Material Name</span></p></td><td class="confluenceTd"><p>Planned Order's top level material</p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(51,51,51);">Material Description</span></p></td><td class="confluenceTd"><p>Auto populates according to the material selected</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Order Quantity</span></td><td colspan="1" class="confluenceTd">Quantity to build in the planned order</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Schedule Start Date</span></td><td colspan="1" class="confluenceTd">The date where production starts for the planned order</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Schedule End Date</span></td><td colspan="1" class="confluenceTd"><span>The date where production ends for the planned order</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Bom</span></td><td colspan="1" class="confluenceTd">The BOM for the selected material</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Status</span></td><td colspan="1" class="confluenceTd"><p>User can select one of the status below for the planned order:</p><ul><li>New</li><li>Ready</li><li>In Progress</li><li>Cancelled (Cancelling the order will cause the WIPs to be placed on hold and they are not allowed to proceed further in the route)</li><li>Shipped</li><li>On Hold</li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Created Datetime</span></td><td colspan="1" class="confluenceTd">The date time where the planned order was created</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Created By</span></td><td colspan="1" class="confluenceTd"><span>The user ID who created the planned order</span></td></tr><tr><td colspan="1" class="confluenceTd">Assign To Route</td><td colspan="1" class="confluenceTd">This is only applicable to Lot based processing where user is able to assign Lot to a route</td></tr><tr><td colspan="1" class="confluenceTd">Order Maintenance Button </td><td colspan="1" class="confluenceTd"><p>This button only enabled if the " <span style="color: rgb(0,0,0);">Can Maintenance Planned Order" permission is granted.</span></p><p><span style="color: rgb(0,0,0);">This button only enables user to change the Order Quantity and Scheduled End Date.</span></p><p>(Note: 1. The latest order Quantity must greater than previous order quantity and this validation is only applicable for In Progress Planned Order.</p><p>           2.System will validate if the scheduled End date is not backward or today date.)</p></td></tr></tbody></table>



- For more information, refer to

[View Order Status dashboard](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)and [Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)user guide
<table style="" class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Audit Log tab</strong></td></tr><tr><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="text-align: left;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Event Type</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The description on the action done against the Planned Order. Event Type includes the following:</p><p><span style="color: rgb(0,0,0);">Event: Order Quantity </span></p><p><span style="color: rgb(0,0,0);">Event :Schedule End Date</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Original Value </td><td style="text-align: left;" colspan="1" class="confluenceTd">The original value before the event triggered</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">New Value</td><td style="text-align: left;" colspan="1" class="confluenceTd">The new value after the event triggered</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Status</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The status of the event triggered. Display "Modified"</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Last Modified</td><td style="text-align: left;" colspan="1" class="confluenceTd">The date time where the event logged</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Last Modified By</td><td style="text-align: left;" colspan="1" class="confluenceTd">The User that perform the event.</td></tr></tbody></table>


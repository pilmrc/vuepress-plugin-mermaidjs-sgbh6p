# Introduction

Customer Order WIP Release Management allows user to manage each deliveries and its Shop Floor Order release.


### How to get there?



::: mermaid
graph LR
A("PRODUCTION")-->0("ORDER")
0-->1("CUSTOMER ORDER")
1-->2("DELIVERIES (TAB)")
2-->3("RELEASE ORDER (LINK)")

:::

Screen Activity
Customer Order WIP Release Management enables user to perform the following activity:

- View the line items in the deliveries


- Release top level material to be built in a Route. To trigger this action, user is required to perform the following steps:



- Select a material. Only the top level material with a check box can be selected

- Select the Route to release the material for production. The material will be released at the initial step of the route

- Click the
**Release Shop Floor Orders** button
- WIP Serial Number and Shop Floor Order IDs will be created during this time. Each WIP Serial Number will have a Shop Floor Order ID.



- WIP Serial Number is generated based on its Material's WIP Release Type configured in

[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- Shop Floor Order Order is auto generated by the system with the format:
**SFO-[Delivery Number]-[SerialNumber]** 
- The released WIPs will be queued at the initial step of the selected route


- Cancel Delivery Order


- To cancel a delivery order, click the
**Cancel Delivery** button
- User is prompted to enter a
[Hold Reason Code](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Hold/Hold-Reason-Code.md)(Hold Type = Order) and Hold Comment
- This action will place the Shop Floor Orders and WIPs in the affected delivery on hold



#### Pre Condition



- [Materials](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)
, [BOM](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md), [Customer Order ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order.md)and Deliveries are successfully imported from SAP ECC
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)
must exist to release shop floor orders


#### Screen Dependency


The following screen(s) has direct dependency with Route Step 

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [BOM](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

- [Shop Floor Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Shop-Floor-Order.md)

- [Hold Reason Code](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Hold/Hold-Reason-Code.md)

- [Hold](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Hold.md)



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h4 id="CustomerOrderWIPReleaseManagement-Header">Header</h4></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Customer Order*</td><td class="confluenceTd">Customer Order is the Sales Order from SAP ECC</td></tr><tr><td colspan="1" class="confluenceTd">PO Number*</td><td colspan="1" class="confluenceTd">PO number is the Purchase Order Number from SAP ECC.<br />A purchase order is a formal request from a Customer to Jabil to provide a certain quantity of goods or services by a certain point of time.</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Status*</td><td colspan="1" class="confluenceTd"><p>These delivery status is computed by the system based on the line item delivery status. Once a shop floor order is released, the delivery status will be changed to "In Progress". <br />A Delivery Order can be in one of the following status.</p><ul><li>New</li><li>In Progress</li><li>Cancelled</li><li>Completed</li><li>Shipped</li><li>On Hold</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Delivery Number*</td><td colspan="1" class="confluenceTd">The unique Delivery Number for the Customer Order</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Date*</td><td colspan="1" class="confluenceTd">Delivery Date for the Customer Order</td></tr><tr><td colspan="1" class="confluenceTd">Show Details check box</td><td colspan="1" class="confluenceTd"><span>If checked, displays all the line items for the delivery</span><br /><span>If unchecked, only show releasable line items</span></td></tr><tr><td colspan="1" class="confluenceTd">Release Shop Floor Orders button</td><td colspan="1" class="confluenceTd">Trigger the release of Shop Floor Orders and WIPs of the selected line item to the first step of the selected route</td></tr><tr><td colspan="1" class="confluenceTd">Cancel Delivery button</td><td colspan="1" class="confluenceTd">Cancels the delivery upon confirmation from the user</td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h4 id="CustomerOrderWIPReleaseManagement-LineItemsSection">Line Items Section</h4></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Item Number check box</td><td colspan="1" class="confluenceTd">Only appears if the item is a releaseable top level material</td></tr><tr><td colspan="1" class="confluenceTd">Item Number*</td><td colspan="1" class="confluenceTd">The line item number for the materials that will build the parent material</td></tr><tr><td colspan="1" class="confluenceTd">Material*</td><td colspan="1" class="confluenceTd">The material name for the corresponding line item</td></tr><tr><td colspan="1" class="confluenceTd">Item Category*</td><td colspan="1" class="confluenceTd">The indicator that defines the characteristics of the line item</td></tr><tr><td colspan="1" class="confluenceTd">Parent Item Number*</td><td colspan="1" class="confluenceTd">The line item number for the parent material</td></tr><tr><td colspan="1" class="confluenceTd">Line Details</td><td colspan="1" class="confluenceTd">Material Description</td></tr><tr><td colspan="1" class="confluenceTd">Quantity*</td><td colspan="1" class="confluenceTd">The quantity required by the line item</td></tr><tr><td colspan="1" class="confluenceTd">UOM*</td><td colspan="1" class="confluenceTd">Unit of Measure used to quantify the material</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Number*</td><td colspan="1" class="confluenceTd">The unique Delivery Number for the Customer Order</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Date*</td><td colspan="1" class="confluenceTd">Delivery Date for the Customer Order</td></tr><tr><td colspan="1" class="confluenceTd">Release To Route</td><td colspan="1" class="confluenceTd">List of Route(s) available for the material release. Only routes associated to the material in <a href="Route-29919991.html">Route Maintenance</a> will be available for user selection</td></tr></tbody></table>





- #### \* Indicates the data is imported from SAP ECC

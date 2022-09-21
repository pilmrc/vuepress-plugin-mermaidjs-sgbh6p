# Introduction

Shop Floor Orders (SFO) are created during WIP Release for Delivery Orders and Production Orders. For Delivery and Production Orders, each WIP released will be associated to a unique Shop Floor Order Number. Once the SFO is created, the SFO Number will be permanently associated to the Delivery Order/Production Order. In the event where the WIP needs to be replaced due to damage or un-repairable condition, the currently assigned WIP needs to be disassociated from the SFO and replaced with a new WIP ID. While changing the WIP ID for the SFO, system can still keep track of the order release quantity since the SFO remains associated to the order.

How to get there?



::: mermaid
graph LR
A("PRODUCTION")-->0("ORDER")
0-->1("SHOP FLOOR ORDER")

:::


### Screen Activity


Shop Floor Order Maintenance enables user to perform the following activity:

- View Shop Floor Orders

- Replace currently assigned WIP to a new WIP ID for the Shop Floor Order


- The replacement WIP must have the same BOM ID of the original WIP


- To preserve data integrity, once a WIP has been packed, SFO's WIP is prevented from being changed





#### Precondition



Shop Floor Orders need to exist before user can use this screen




#### Screen Dependency


The following screen(s) has direct dependency with Shop Floor Order

- [Customer Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order.md)

- [Customer Order WIP Release Management](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order/Customer-Order-WIP-Release-Management.md)

- [Production Order / Work Order Management](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Production-Order-%2D-Work-Order-Management.md)

- [WIP Release - Customer Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order/WIP-Release-%2D-Customer-Order.md)

- [WIP Maintenance (3.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(3.0).md)




#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p><span>Shop Floor Order Number</span></p></td><td class="confluenceTd"><p>The unique name given to the shop floor order</p></td></tr><tr><td colspan="1" class="confluenceTd">BOM</td><td colspan="1" class="confluenceTd">Displays the SFO's BOM</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><span>Displays the SFO</span>'s Material</td></tr><tr><td colspan="1" class="confluenceTd">Create Date</td><td colspan="1" class="confluenceTd">Date Time where the SFO is created</td></tr><tr><td colspan="1" class="confluenceTd">Currently Assigned WIP</td><td colspan="1" class="confluenceTd">Displays the currently assigned WIP Serial Number. To reassign a new WIP, clear the currently assigned WIP and select the desired new WIP Serial Number.<br />Note: The replacement WIP must have the same BOM ID of the original WIP. <span style="color: rgb(51,51,0);font-size: 10.0pt;line-height: 13.0pt;">To preserve data integrity, once a WIP has been packed, SFO's WIP is prevented from being changed</span></td></tr><tr><td colspan="1" class="confluenceTd">Comments</td><td colspan="1" class="confluenceTd">Allows user to enter comments when reassigning the WIP ID</td></tr><tr><td colspan="1" class="confluenceTd">Order Type</td><td colspan="1" class="confluenceTd">Displays if the SFO is associated to a Customer Order or Production Order</td></tr><tr><td colspan="1" class="confluenceTd">Production Order Number</td><td colspan="1" class="confluenceTd">If the order type is a production order, then the production order number appears with a hyperlink to the <a href="29918807.html">Production Order / Work Order Management</a> screen</td></tr><tr><td colspan="1" class="confluenceTd">Customer Order Number</td><td colspan="1" class="confluenceTd"><span>If the order type is a customer order, then the customer order number appears with a hyperlink to the <a href="Customer-Order-29918754.html">Customer Order</a> screen</span></td></tr><tr><td colspan="1" class="confluenceTd">Customer Order Line Item Number</td><td colspan="1" class="confluenceTd">Displays the customer order line item number that calls for this material</td></tr></tbody></table>



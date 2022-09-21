# Introduction

There are two ways for user to release Customer/Delivery Order WIP and its Shop Floor Order to the production floor: 


- The first option is to use from Customer Order's Delivery tab. After clicking on the

**Release Order** link, system will bring user to the [Customer Order WIP Release Management](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order/Customer-Order-WIP-Release-Management.md). See [Customer Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order.md);
- The second option is from the WIP Release - Customer Order screen. In this screen, user has the additional ability to filter by Customer Order, Delivery Order, Delivery Date From and Delivery Date To. Once the order is displayed, user clicks on the

**Release Order** link. This will bring the user to the mentioned 
[Customer Order WIP Release Management](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order/Customer-Order-WIP-Release-Management.md). 

How to get there?

::: mermaid
graph LR
A("PRODUCTION")-->0("WIP")
0-->1("WIP RELEASE - CUSTOMER ORDER")

:::

Screen ActivityWIP Release - Customer Order Maintenance enables user to perform the following activity:

- Search orders to release by Customer Order, Delivery Order, Delivery Date From and Delivery Date To fields

- Go to the
[Customer Order WIP Release Management](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order/Customer-Order-WIP-Release-Management.md)screen by clicking on the **Release Order** link of the desired order


### Pre Condition



- Customer Order and Deliveries are successfully imported from SAP ECC



#### Screen Dependency


The following screen(s) has direct dependency with WIP Release - Customer Order Maintenance

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [BOM](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h4 id="WIPReleaseCustomerOrder-SearchCriteria">Search Criteria</h4></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Customer Order</td><td colspan="1" class="confluenceTd">Select the customer order</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Number</td><td colspan="1" class="confluenceTd">Select the delivery number. If customer order is selected, the delivery will be filtered by the customer order</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Date From</td><td colspan="1" class="confluenceTd">Allows user to set a date range to search for the order. The delivery date is the delivery date for the customer order</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Date To</td><td colspan="1" class="confluenceTd"><span>Allows user to set a date range to search for the order. The delivery date is the delivery date for the customer order</span></td></tr><tr><td colspan="2" class="confluenceTd"><h4 style="text-align: center;" id="WIPReleaseCustomerOrder-SearchResult">Search Result</h4></td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td colspan="1" class="confluenceTd">Customer Order*</td><td colspan="1" class="confluenceTd">The Sales Order</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Number*</td><td colspan="1" class="confluenceTd">The unique Delivery Number for the Customer Order</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Date*</td><td colspan="1" class="confluenceTd">Delivery Date for the Customer Order</td></tr><tr><td colspan="1" class="confluenceTd">Status*</td><td colspan="1" class="confluenceTd"><p>These delivery status is computed by the system based on the line item delivery status. Once a shop floor order is released, the delivery status will be changed to "In Progress". <br />A Delivery Order can be in one of the following status.</p><ul><li>New</li><li>In Progress</li><li>Cancelled</li><li>Completed</li><li>Shipped</li><li>On Hold</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Order Management (Release Order)</td><td colspan="1" class="confluenceTd">Brings user to <a href="Customer-Order-WIP-Release-Management-29918796.html">Customer Order WIP Release Management</a></td></tr></tbody></table>



- \* Indicates the data is imported from SAP ECC


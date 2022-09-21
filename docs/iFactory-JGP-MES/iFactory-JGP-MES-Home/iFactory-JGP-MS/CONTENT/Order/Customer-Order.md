# Introduction

A "Customer Order" is the Sales Order from SAP ECC. A "Sales Order" is a contract between Jabil and a Customer for supply of specified goods and/services over a specified time frame and in an agreed upon quantity or unit. A Customer Order consists of Parent Line Items which are the materials required to be shipped to the Customer. Parent Line Items are normally exploded to reveal the materials required to build the Parent Line Item. 


Since a Customer Order may contain a large amount of materials to build, Deliveries are created to divide the build quantity. Each Deliveries are tracked with a unique delivery number. Customer Order is completed (fulfilled) once all its Deliveries has a status of "Shipped". Customer Order and Deliveries are imported from SAP ECC.If the Customer Order/Delivery Order has been imported into Phoenix and later there is a field change in SAP, these changes will need to be manually updated in Phoenix. 
![image2013-2-19 15:31:4.png](/.attachments/29918755.png)



The diagram below shows the Order transfer path from SAP to Phoenix. When Idoc is generated in SAP ECC, Idoc will be transferred to GIS (Gentran Integration Suite). GIS will convert Idoc to XML format and send to MSMQ. After MSMQ received the Order message, the data will be further processed before they are sent to Phoenix.



How to get there?



::: mermaid
graph LR
A("PRODUCTION")-->0("ORDER")
0-->1("CUSTOMER ORDER")

:::
Screen ActivityCustomer Order Maintenance enables user to perform the following activity:

- View Customer Order and Deliveries imported from SAP ECC

- Modify the status of the Customer Order

- Modify Bill To and Ship To Contact/Address

- Release Shop Floor Orders

- Cancel a Delivery



### Pre Condition



- Customer Order and Deliveries are successfully imported from SAP ECC

- Route must exist to release shop floor orders



#### Screen Dependency


The following screen(s) has direct dependency with Customer Order

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [BOM](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h4 id="CustomerOrder-GeneralTab">General Tab</h4></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Customer Order*</td><td class="confluenceTd">Customer Order is the Sales Order from SAP ECC</td></tr><tr><td colspan="1" class="confluenceTd">PO Number*</td><td colspan="1" class="confluenceTd">PO number is the Purchase Order Number from SAP ECC.<br />A purchase order is a formal request from a Customer to Jabil to provide a certain quantity of goods or services by a certain point of time. </td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd"><p>Customer that placed the Order with Jabil.<br />System shall display the Customer associated to the Partner Number (Bill To Contact)</p></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd"><p>When a Customer Order is first received from SAP ECC, the status is defaulted to "New". A Customer Order can be in one of the following statuses:</p><ul><li>New</li><li>Ready</li><li>In Progress</li><li>Cancelled</li><li>Completed</li><li>Shipped</li><li>On Hold</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Hold Reason Code</td><td colspan="1" class="confluenceTd">When the Customer Order status is "On Hold" or "Cancelled", user is required to enter the Hold Reason Code and Hold Comment</td></tr><tr><td colspan="1" class="confluenceTd">Hold Comment</td><td colspan="1" class="confluenceTd"><span>When the Customer Order status is "On Hold" or "Cancelled", user is required to enter the Hold Reason Code and Hold Comment</span></td></tr><tr><td colspan="1" class="confluenceTd">Release Hold</td><td colspan="1" class="confluenceTd">The Release Hold check box is enabled when the Customer Order status is "On Hold"</td></tr><tr><td colspan="1" class="confluenceTd">Release Hold Comment</td><td colspan="1" class="confluenceTd">When the Release Hold check box is checked, user is required to enter the release hold comment</td></tr><tr><td colspan="1" class="confluenceTd">Creation Date Time*</td><td colspan="1" class="confluenceTd">Date time where the customer order is created in SAP ECC</td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h4 id="CustomerOrder-LineItemsTab">Line Items Tab</h4></td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td class="confluenceTd">Show Attribute check box</td><td class="confluenceTd">If checked, the assigned material attribute will be displayed under the corresponding line item<br />If unchecked, the assigned material attribute will be hidden</td></tr><tr><td colspan="1" class="confluenceTd">Show Details check box</td><td colspan="1" class="confluenceTd"><span>If checked, the line items for the parent line item will be displayed</span><br /><span>If unchecked, only the parent line item is displayed</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Parent Item Number*</span></td><td colspan="1" class="confluenceTd">The line item number for the parent material</td></tr><tr><td colspan="1" class="confluenceTd">Item Number*</td><td colspan="1" class="confluenceTd"><span>The line item number for the materials that will build the parent material</span></td></tr><tr><td colspan="1" class="confluenceTd">Material Name*</td><td colspan="1" class="confluenceTd">The material name for the corresponding line item</td></tr><tr><td colspan="1" class="confluenceTd">Quantity*</td><td colspan="1" class="confluenceTd">The quantity required by the line item</td></tr><tr><td colspan="1" class="confluenceTd">Item Details*</td><td colspan="1" class="confluenceTd">The material description <span>for the corresponding line item</span></td></tr><tr><td colspan="1" class="confluenceTd">Item Category*</td><td colspan="1" class="confluenceTd">The indicator that defines the characteristics of the line item</td></tr><tr><td colspan="1" class="confluenceTd">UOM*</td><td colspan="1" class="confluenceTd">Unit of Measure used to quantify the material</td></tr><tr><td colspan="1" class="confluenceTd">ATP Date*</td><td colspan="1" class="confluenceTd">Available to Promise Date is the date which the material must be available so that the planner can plan for the Delivery Date</td></tr><tr><td colspan="1" class="confluenceTd">Total Attributes Assigned</td><td colspan="1" class="confluenceTd">The total count of attributes assigned to the lineitem</td></tr><tr><td colspan="1" class="confluenceTd">Attribute Management</td><td colspan="1" class="confluenceTd">Click the icon under Attribute Management to open the <em>Customer Order Line Item Attribute Management</em> window. <br />Add attributes to the line item by specifying the attribute name, attribute type and attribute value</td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h4 id="CustomerOrder-AddressTab">Address Tab</h4></td></tr><tr><td class="highlight confluenceTd" colspan="1"><span>Field</span></td><td class="highlight confluenceTd" colspan="1"><span>Description</span></td></tr><tr><td colspan="1" class="confluenceTd">Bill To/Ship To Partner Number*</td><td colspan="1" class="confluenceTd">This Number represents the Bill-To-Party/Ship-To-Party in SAP. System allows user to edit on this field.</td></tr><tr><td colspan="1" class="confluenceTd">Bill To<span>/Ship To</span> Contact Name*</td><td colspan="1" class="confluenceTd">Bill-To-Party<span>/</span><span>Ship-To-Party</span> Customer Name<span>. System allows user to edit on this field.</span></td></tr><tr><td colspan="1" class="confluenceTd">Bill To<span>/Ship To</span> Contact Line 1 - Line 3*</td><td colspan="1" class="confluenceTd"><span>Additional information on <span>Bill-To-Party<span>/</span><span>Ship-To-Party</span> </span>Contact Name. System allows user to edit on this field.</span></td></tr><tr><td colspan="1" class="confluenceTd">Bill To<span>/Ship To</span> Country*</td><td colspan="1" class="confluenceTd"><span>Bill-To-Party<span>/</span><span>Ship-To-Party</span> Country Key. System allows user to edit on this field.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Bill To<span>/Ship To</span> </span>Street 1 - Street 4*</td><td colspan="1" class="confluenceTd"><span>Street 1 to Street 4 stored in Bill-To-Party<span>/</span><span>Ship-To-Party</span> Streets Information. System allows user to edit on this field.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Bill To<span>/Ship To</span> </span>Postcode*</td><td colspan="1" class="confluenceTd"><span>Bill-To-Party<span>/</span><span>Ship-To-Party</span> Address Post Code. System allows user to edit on this field.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Bill To<span>/Ship To</span> </span>District*</td><td colspan="1" class="confluenceTd"><span>Bill-To-Party<span>/</span><span>Ship-To-Party</span> District Area. System allows user to edit on this field.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Bill To<span>/Ship To</span> </span>City*</td><td colspan="1" class="confluenceTd"><span>Bill-To-Party<span>/</span><span>Ship-To-Party</span> City. System allows user to edit on this field.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Bill To<span>/Ship To</span> </span>Region*</td><td colspan="1" class="confluenceTd"><span>Bill-To-Party<span>/</span><span>Ship-To-Party</span> Region. System allows user to edit on this field.</span></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h4 id="CustomerOrder-DeliveriesTab">Deliveries Tab</h4></td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Number*</td><td colspan="1" class="confluenceTd">The unique Delivery Number for the Customer Order</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Date*</td><td colspan="1" class="confluenceTd">Delivery Date for the Customer Order</td></tr><tr><td colspan="1" class="confluenceTd">Status*</td><td colspan="1" class="confluenceTd"><p>These delivery status is computed by the system based on the line item delivery status. Once a shop floor order is released, the delivery status will be changed to "In Progress". <br /><span>A Delivery Order can be in one of the following status. </span></p><ul><li>New</li><li>In Progress</li><li>Cancelled</li><li>Completed</li><li>Shipped</li><li>On Hold</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Audit Status*</td><td colspan="1" class="confluenceTd"><a href="Delivery-Audit-29919515.html">Delivery Audit</a> may be required by the customer to ensure all of the packed items matches the items called for by the order. <br />A Delivery Order can have one of the following audit status:<br /><br /><ul><li>No Audit Required</li><li>Not Ready for Audit</li><li>Pending Audit</li><li>Audit In Progress</li><li>Audit Passed</li><li>Audit Failed</li></ul> </td></tr><tr><td colspan="1" class="confluenceTd">Order Management (Release Order)</td><td colspan="1" class="confluenceTd">Brings user to <span><a href="Customer-Order-WIP-Release-Management-29918796.html">Customer Order WIP Release Management</a></span></td></tr></tbody></table>











- \* Indicates the data is imported from SAP ECC




#### Attachments

[image2013-2-19 15:31:4.png](/.attachments/29918755.png)

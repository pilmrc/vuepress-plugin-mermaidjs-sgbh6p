# Introduction

Order Conversion is performed to move WIP from one order to another order. This screen basically converts the WIP to inherit properties from the New Order. When the WIP is successfully converted in the system, user will scan the converted WIPs into the assemble station (normally an ad-hoc assemble station) to physically remove or add materials to complete the WIP transformation.


Order Conversion is normally performed when an order is cancelled and the WIPs built needs to be transferred to fulfill another order. Order conversion can also be used to convert WIP built from a planned order stocked in the supermarket to a production order. Prior to conversion, user is able to preview the conversion result listing delta materials found between the two orders. In version 3.0 and above, conversions are based on the WIP snapshot. 


### How to get there?



::: mermaid
graph LR
A("CONFIGURE")-->0("ORDER CONVERSION")

:::


#### Screen Activity


Order Conversion enables user to perform the following activity:

- Convert Planned Order to Production Order and vice versa

- Convert Non Order WIP to Planned Order and vice versa

- Convert Non Order WIP to Production Order and vice versa



#### Pre Condition


In order to perform a successful Order Conversion, the following rules must be met:

Note: **Original Order** signifies the order to transfer out WIPs while**New Order** signifies the order that will receive the WIPs.
- If the Original Order is a Planned Order, the Planned Order must be in one of the following status "In Progress", "Completed" and "Cancelled"

- If the Original Order is a Production Order, the Production Order must be in one of the following status "In Progress", "Completed" and "Cancelled"

- If the New Order is a Production Order,
the Production Order must be in one of the following status "Ready" and "In Progress"
- The Original Production Order must contain top level material of Phoenix Material Type = WIP for conversion

- The Original Production Order's WIP must have the following WIP status for conversion: "In Process" and "Completed"

- The Original Production Order's WIP with the following characteristics are not available for conversion:


- WIP with Temporary Serial Number

- WIP that is On Hold

- WIP that is Scrapped

- WIP that is Packed

- WIP that was assembled to another top level WIP

User are given a conversion preview before the actual conversion. Upon successful conversion, the following activities will take place:

- WIPs will inherit the New Order Number, New BOM/Version, New Material and New SFO

- WIPs will get a snapshot based on the new BOM and Order (BTC)

- If the New Order is of Production Order type, its SFO will be associated to the Original Order's Serial Number


- WIP status will be changed to "In Progress"


- WIPs are enqueued at the selected destination route and route step

- A unique Order Conversion ID is generated for the conversion

- The conversion will be recorded in the WIP Audit Log

- Planned Order Backflush Reversal message will be generated if the converted WIP was from a Planned Order and it has a "Completed" status

- Production Order with status "Ready" will be updated to "In Progress"



#### Screen Dependency


The following screen(s) has direct dependency with Order Conversion

- Assemble Station

- Planned Order Maintenance

- Production Order Management



#### Perform A Conversion




- In the Original Order section, select an Order Type


- Then, search the Order Number


- Select the Serial Number(s) to convert. Selected Serial Number will be highlighted in blue


- In the New Order section,

select an Order Type

- Then, search the Order Number.


Note: You may notice that Shop Floor Order Numbers (SFO) are listed even when the Production Order is in "Ready" status where no SFO has been created yet. The SFO at this point is just a preview and will only be created in the system after the order conversion is performed. This simplify the conversion process where user does not need to perform WIP release to get SFO and then disassociate the WIP from the SFO. 

- Enter Conversion Notes


- Click "Generate Conversion Preview" button. The Conversion Summary is displayed


- Select Route Steps to enqueue WIP after the conversion


- Review the delta materials to add or remove


- Note down the Order Conversion number if you need to view the Order Conversion report later


- Once the conversion summary is verified, click "Confirm" button to execute the conversion


- A success message is displayed on successful conversion

![image2015-9-15 15:45:24.png](/.attachments/29918805.png)




#### Fields


<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>Original Order section</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Order Type</p></td><td class="confluenceTd"><p>List the order types available for conversion</p><ul><li>Planned Order<br />Planned Order must be in one of the following status "In Progress", "Completed" and "Cancelled" <br /> </li><li>Production Order<br />Production Order must be in the following status "In Progress", "Completed" and "Cancelled" <br /> </li><li>Non Order<br /><span>WIP must NOT have the following characteristics Temporary Serial Number, </span><span>On Hold, </span><span>Scrapped,</span><span> Packed, <span>WIP that was assembled to another top level WIP. WIP shall be in status "In Process" or "Completed"</span></span>  </li></ul></td></tr><tr><td class="confluenceTd"><p>Search Order</p></td><td class="confluenceTd"><p>Search order or WIP based on the Order Type selected</p></td></tr><tr><td class="confluenceTd"><p>Planned Order/Production Order/Serial Number</p></td><td class="confluenceTd"><p>List the Order Number or Serial Number selected</p></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The top level material name of the Order/WIP</td></tr><tr><td colspan="1" class="confluenceTd">BOM</td><td colspan="1" class="confluenceTd">The BOM of the Order/WIP</td></tr><tr><td colspan="1" class="confluenceTd">Order Quantity</td><td colspan="1" class="confluenceTd">The Order Quantity. Order Quantity for non order WIP conversion is always 1 as non order WIP conversion is executed on a single WIP basis</td></tr><tr><td colspan="1" class="confluenceTd">Available Quantity</td><td colspan="1" class="confluenceTd">Total WIPs available for conversion</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">Status of the Order/WIP</td></tr><tr><td colspan="1" class="confluenceTd">Available WIP from Original Order - Serial Number</td><td colspan="1" class="confluenceTd">List of Serial Number(s) available for conversion.</td></tr><tr><td class="confluenceTd"><p>Available WIP from Original Order - Shop Floor Order</p></td><td class="confluenceTd"><p>List the corresponding SFO for each WIP</p></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>New Order Section</strong></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td colspan="2" class="confluenceTd">The New Order Section has the same fields in the Original Order section except that the information displayed are related to New Orders</td></tr><tr><td colspan="1" class="confluenceTd">Order Type</td><td colspan="1" class="confluenceTd"><p>List the order types available for conversion</p><ul><li><span style="color: rgb(0,0,0);">Planned Order</span><br /><span style="color: rgb(0,0,0);">Planned Order must be in one of the following status "Ready" and "In Progress"</span><br /> </li><li>Production Order<br />Production Order must be in the following status "Ready" & "In Progress"</li></ul></td></tr><tr><td class="confluenceTd">Available Shop Floor Orders</td><td class="confluenceTd">Displays shop floor orders that does not have any WIP. These SFOs will consume the WIP Serial Number from the Original Order section<br />For Planned Order </td></tr><tr><td class="confluenceTd">Available Quantity</td><td class="confluenceTd">Available quantity to receive WIP from the conversion</td></tr></tbody></table>










<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Conversion Summary</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Conversion Summary For CONV...</td><td colspan="1" class="confluenceTd">The unique ID for the conversion. Use this ID to retrieve the <a href="Order-Conversion-Report-29919928.html">Order Conversion Report</a><br />ID format: CONV[YYYYMMDDHHMMSS] </td></tr><tr><td colspan="1" class="confluenceTd">Route Step to Enqueue WIP At</td><td colspan="1" class="confluenceTd">User to select the Route/Route Step to enqueue the WIP after conversion</td></tr><tr><td colspan="1" class="confluenceTd">Expand All button</td><td colspan="1" class="confluenceTd">Display the materials and quantity to add/remove grouped by Serial Number</td></tr><tr><td colspan="1" class="confluenceTd">Collapse All button</td><td colspan="1" class="confluenceTd"><span>Hide the materials and quantity to add/remove</span></td></tr><tr><td colspan="1" class="confluenceTd">Confirm button</td><td colspan="1" class="confluenceTd">Execute the conversion</td></tr><tr><td colspan="1" class="confluenceTd">Cancel button</td><td colspan="1" class="confluenceTd">Cancel the conversion and return to the order conversion page</td></tr></tbody></table>




#### Attachments

[image2015-9-17 16:30:4.png](/.attachments/29918803.png)
[image2015-9-15 15:55:23.png](/.attachments/29918804.png)
[image2015-9-15 15:45:24.png](/.attachments/29918805.png)

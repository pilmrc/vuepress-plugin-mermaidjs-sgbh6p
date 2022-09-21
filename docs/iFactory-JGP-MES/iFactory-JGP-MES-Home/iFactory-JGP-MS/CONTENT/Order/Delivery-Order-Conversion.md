# Introduction

Order Conversion is performed to move WIP from one order to another order. This screen basically converts the WIP to inherit properties from the New Order. When the WIP is successfully converted in the system, user will scan the converted WIPs into the 
**WIP Transformation Client** to physically remove or add materials to complete the WIP transformation.

Order Conversion is performed when an order is cancelled and the WIPs built needs to be transferred to fulfill another order. If a deviation exists in a Planned Order, Order Conversion can also be used to convert the WIP to another planned order with a different BOM/version. Occassionally, a WIP needs to be teared down in order to convert into another material as required by the new order. Upon successful conversion, an Order Conversion Report is generated listing delta materials found between the two orders. Users can refer to this result and perform assembly of missing materials and disassembly of excess materials using the WIP Transformation Client.

Phoenix provides the ability to convert WIPs from Planned Order/Delivery Order to another Planned Order/Delivery Order.![image2013-7-3 19:4:10.png](/.attachments/29918799.png)



Types of Order Conversions available in Phoenix:

- Convert WIP to another order with the

*same material* and *same BOM/Version* 
- Convert WIP to another order with the

*same material* but 
*different BOM/Version* 
- Convert WIP to another order with the

*different material* and 
*different BOM/Version* 
In order to perform a successful Order Conversion, the following rules must be met:
Note: **Original Order** signifies the order to transfer out WIPs while**New Order** signifies the order that will receive the WIPs.
- If the Original Order is a Delivery Order, the Delivery Order must be cancelled prior to conversion

- The Original Order must contain WIPs with Serial Number. Only WIPs with permanent Serial Number can be converted.

- New Order must be released prior to conversion

- New Order must contain either Temporary Serial Number or Shop Floor Order (SFO) to receive WIP from Original Order. Temporary Serial Number or SFO are created upon order release.

Upon successful conversion, the following activities will take place:

- WIPs will inherit the New Order's Delivery Number/Planned Order, BOM, Material, SFO & Line Item Number (if new order is a Delivery Order)

- If the New Order is of Planned Order type, its Temporary Serial Number will be replaced with the Original Order's Serial Number

- If the New Order is of Delivery Order type, its SFO will be associated to the Original Order's Serial Number

- An Order Conversion Report will be generated

- WIP status will be changed to "In Progress"

- WIPs released from order hold if "Release Order Hold After Conversion" option is selected. This activity is also captured in the WIP Hold activity log

- WIPs are enqueued at the selected destination route and route step

- A unique Order Conversion ID is generated for the conversion

- The Order Conversion Report is generated and it will include the Order Conversion ID and delta materials between both orders

- The conversion will be recorded in the WIP Audit Log




### How to get there?



::: mermaid
graph LR
A("PRODUCTION")-->0("ORDER CONVERSION")

:::

Screen Activity
Order Conversion enables user to perform the following activity:

- Convert WIP from one order to another order

- Automatically release order hold from successfully converted WIPs (if the "Release Order Hold After Conversion" option is selected)

- Calculate delta materials between the original and new order

- Generates Order Conversion Report upon successful conversion that will include the Conversion ID and delta materials

- Prints the Order Conversion Report that may be required to be attached to the WIP

- Links user to the WIP Hold Maintenance screen for user to release WIP hold. The Release Hold button is available in the Order Conversion Report screen



#### Screen Dependency


The following screen(s) has direct dependency with Order Conversion

- WIP Transformation Client

- Planned Order

- Customer Order

- Shop Floor Order



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="DeliveryOrderConversion-OriginalOrderSection"><strong>Original Order Section</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Order Type</p></td><td class="confluenceTd"><p>Provides the ability to select Delivery Order or Planned Order to perform conversion</p></td></tr><tr><td class="confluenceTd"><p>Delivery Order/Planned Order</p></td><td class="confluenceTd"><p>Displays Delivery Orders/Planned Order for user selection. This field changes based on the Order Type Selection. <br />If Delivery Order type is selected, system will only display delivery orders with status "Cancelled" for user selection<br />If Planned Order type is selected, system will only display planned orders with status "Ready/In Progress/Cancelled/Completed" for user selection</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Displays all the materials in the order where its Phoenix Material Type is a WIP</p></td></tr><tr><td colspan="1" class="confluenceTd">BOM</td><td colspan="1" class="confluenceTd">Auto populated based on the material selected. If it is a Delivery Order, system will display the BOM generated during the delivery order release of the material.</td></tr><tr><td colspan="1" class="confluenceTd">Line Item</td><td colspan="1" class="confluenceTd">Order Line Item number of the material. It is auto populated based on the material selected. This is only available if Delivery Order is selected.</td></tr><tr><td colspan="1" class="confluenceTd">Order Quantity</td><td colspan="1" class="confluenceTd"><span><span>The quantity ordered for the material. </span>Auto populated based on the material selected. </span></td></tr><tr><td colspan="1" class="confluenceTd">Order Status</td><td colspan="1" class="confluenceTd"><p>The current order status of the Original Order. <span>Auto populated based on the order selected. </span> </p></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="DeliveryOrderConversion-NewOrderSection">New Order Section</h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd"><span>Order Type</span></td><td colspan="1" class="confluenceTd"><span>Provides the ability to select Delivery Order or Planned Order to receive WIPs from the Original Order</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Delivery Order/Planned Order</span></td><td colspan="1" class="confluenceTd"><span>Displays Delivery Orders/Planned Order for user selection. This field changes based on the Order Type Selection. </span><br /><span>The Delivery Order/Planned Order displayed are either in "Ready" or "In Progress" status as the pre-requisite for a conversion the new order must be released prior to conversion. This is to obtain the SFO or Temporary Serial Number to consume the WIPs from the Original Order.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Material</span></td><td colspan="1" class="confluenceTd"><span>Displays all the materials in the order where its Phoenix Material Type is a WIP</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>BOM</span></td><td colspan="1" class="confluenceTd"><span>Auto populated based on the material selected. If it is a Delivery Order, system will display the BOM generated during the delivery order release of the material.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Line Item</span></td><td colspan="1" class="confluenceTd"><span>Order Line Item number of the material. It is auto populated based on the material selected. This is only available if Delivery Order is selected. </span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Order Quantity</span></td><td colspan="1" class="confluenceTd"><span>The quantity ordered for the material. </span><span>Auto populated based on the material selected. </span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Order Status</span></td><td colspan="1" class="confluenceTd"><span>The current order status of the Original Order. </span><span>Auto populated based on the order selected. </span><span> </span></td></tr><tr><td colspan="1" class="confluenceTd">Clear Selection Button</td><td colspan="1" class="confluenceTd">Clears the selection in the Original Order and New Order section</td></tr><tr><td colspan="1" class="confluenceTd">List Serial Number & SFO Button</td><td colspan="1" class="confluenceTd">Lists available WIPs to convert in Original Order Section & lists available Temporary Serial Number/SFO to consume WIPs from the Original Order</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="DeliveryOrderConversion-AvailableSerialNumberfromOriginalOrderSection">Available Serial Number from Original Order Section</h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Selection check box</td><td colspan="1" class="confluenceTd">Provides the ability for user to select all or specific WIPs to perform conversion.</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">Displays the WIP's Serial Number available for conversion. Temporary Serial Number will not be able to perform conversion.</td></tr><tr><td colspan="1" class="confluenceTd">SFO</td><td colspan="1" class="confluenceTd"><span>Displays the WIP's Shop Floor Order (SFO) corresponding to the Serial Number. This is only available if the WIP belongs to a Delivery Order.</span></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="DeliveryOrderConversion-AvailableTemporarySerialNumber/ShopFloorOrderfromNewOrderSection">Available Temporary Serial Number/Shop Floor Order from New Order Section</h5></td></tr><tr><td class="highlight confluenceTd"><strong>Field</strong></td><td class="highlight confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd"><span>Serial Number</span></td><td class="confluenceTd">Displays the temporary Serial Number available to consume WIP from the Original Order. Only temporary Serial Number is available to consume WIP and inherit the Serial Number from the Original Order</td></tr><tr><td class="confluenceTd">SFO</td><td class="confluenceTd"><p>Displays the <span>Shop Floor Order (</span>SFO) corresponding to the temporary Serial Number.</p><ul><li><span>If New Order selected is Delivery Order (CTO type), display SFO with its temporary Serial Number</span></li><li><span>If New Order selected is Delivery Order (BTO type with WIP released during Delivery Order Release), display SFO with its temporary Serial Number</span></li><li><span>If New Order selected is Delivery Order (BTO without WIP released during Delivery Order Release), display SFO without the temporary Serial Number as no WIP has been released yet</span></li><li><span>If New Order selected is Planned Order, display temporary Serial Number without SFO as Planned order does not have SFO</span></li></ul></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="DeliveryOrderConversion-ConversionDetailsSection"><strong>Conversion Details Section</strong></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Destination to queue WIP after conversion<br />Route & Route Step </td><td colspan="1" class="confluenceTd">Provides user the ability to queue successfully converted WIPs at the selected Route and Route Step</td></tr><tr><td colspan="1" class="confluenceTd">Release order hold after conversion</td><td colspan="1" class="confluenceTd">When a Delivery Order is cancelled, all WIPs will be placed under an order hold. User will need to manually release the hold for each WIPs before they can be processed again in the route. This option provides the ability for user to release all WIPs from the order hold once they are successfully converted.</td></tr><tr><td colspan="1" class="confluenceTd">Release hold comment</td><td colspan="1" class="confluenceTd">Enter release hold comment here</td></tr><tr><td colspan="1" class="confluenceTd">Conversion notes</td><td colspan="1" class="confluenceTd">Provides user the ability to enter notes such as conversion instruction or steps. The conversion notes will be included in the Conversion Order Report. When the Conversion Order Report is printed, operator can refer to the conversion notes for instructions to transform the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Start Conversion Button</td><td colspan="1" class="confluenceTd">Initiate the conversion process</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="DeliveryOrderConversion-OrderConversionReport">Order Conversion Report</h5></td></tr><tr><td class="highlight confluenceTd"><strong>Field</strong></td><td class="highlight confluenceTd"><strong>Description</strong></td></tr><tr><td class="confluenceTd">Conversion ID</td><td class="confluenceTd">The unique identifier for the particular conversion activity. The Order Conversion Report is only generated if the conversion is successful.</td></tr><tr><td colspan="1" class="confluenceTd">Date/Time</td><td colspan="1" class="confluenceTd">The date/time when the conversion is performed</td></tr><tr><td colspan="1" class="confluenceTd">User</td><td colspan="1" class="confluenceTd">The user name that performed the conversion</td></tr><tr><td colspan="1" class="confluenceTd">Quantity Converted</td><td colspan="1" class="confluenceTd">The total WIPs that are successfully converted</td></tr><tr><td colspan="1" class="confluenceTd">Conversion Notes</td><td colspan="1" class="confluenceTd">The conversion notes entered by the user in Conversion Details section</td></tr><tr><td colspan="1" class="confluenceTd">Original Order</td><td colspan="1" class="confluenceTd">The data displayed here are exactly the same with the selection made by the user in the Original Order section</td></tr><tr><td colspan="1" class="confluenceTd">New Order</td><td colspan="1" class="confluenceTd"><span>The data displayed here are exactly the same with the selection made by the user in the New Order section</span></td></tr><tr><td colspan="1" class="confluenceTd">Delta Material By Assemble Point</td><td colspan="1" class="confluenceTd">Displays the list of materials to be removed and added for the converted WIPs</td></tr><tr><td colspan="1" class="confluenceTd">Back Button</td><td colspan="1" class="confluenceTd">Brings the user back to the Order Conversion screen</td></tr><tr><td colspan="1" class="confluenceTd">Print Button</td><td colspan="1" class="confluenceTd">Prints the Order Conversion Report</td></tr><tr><td colspan="1" class="confluenceTd">Release Hold Button</td><td colspan="1" class="confluenceTd">Brings user to the WIP Hold screen so user can perform hold release. This button is only visible if the <span><strong>Release order hold after conversion</strong> check box is not checked</span></td></tr></tbody></table>







#### Attachments

[image2013-7-3 19:4:10.png](/.attachments/29918799.png)

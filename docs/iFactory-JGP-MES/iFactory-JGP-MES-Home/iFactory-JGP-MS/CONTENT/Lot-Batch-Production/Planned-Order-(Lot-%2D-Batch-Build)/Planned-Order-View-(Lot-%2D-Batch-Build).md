# Introduction


The Planned Orders are currently being processed in the legacy system using the SQL database for all WIP details, and only the configuration of detail for Planned Order that are process on Lot / Batch Build Routes
. Once the Planned Order is saved some of the general details are displayed in the legacy Planned Order Viewer, and all the details are displayed in the new Planned Order Viewer for all Planned Orders process at Lot / Batch Build routes. The Planned Order View dashboard only allows user to see some of the general details for the selected planned order. As such, several fields will be blank, this implementation was selected as to not risk impacting existing production by changing the select criteria at this point in time as the long term plan is to replace the legacy screens. The complete details of a Planned Order processed for the Lot / Batch Build process requires a different path to view the data as will be shown.


### How to get there?  Planned Orders Legacy View, no Lot details




The legacy view is accessed and displayed by one of these two methods.


::: mermaid
graph LR
A("DASHBOARD")-->0("PLANNED ORDER VIEW")
0-->1("PRODUCTION")
1-->2("PLANNED ORDER ")
2-->3("VIEW ORDER STATUS ")

:::
![](/.attachments/29917982.png)




#### **Permission** 


Can Access Lot/Batch Build " Container Lot " View Container Details


#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="PlannedOrderView(Lot/BatchBuild)-DashboardHeader">Dashboard Header</h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Planned Order</td><td colspan="1" class="confluenceTd">Select the planned order to view its details</td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Material</span></p></td><td class="confluenceTd"><p>The material for the planned order. <br />Click on the material to open the Material View screen containing all the data configured for the material in <a href="29917976.html">Material Maintenance</a> screen</p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Bill of Material</span></p></td><td class="confluenceTd"><p><span>The BOM for the planned order. <br /><span>Click on the BOM to open the BOM View screen containing all the data configured for the BOM in <a href="29917976.html">BOM Maintenance</a></span><span> screen</span> </span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Status</span></p></td><td class="confluenceTd"><p><span>The planned order status as saved in the Legacy application. The current Status <u>will not be updated</u> as it is processed in the Lot / Batch Build process.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Schedule Start Date</span></td><td colspan="1" class="confluenceTd"><span>The scheduled start date for the planned order</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Schedule End Date</span></td><td colspan="1" class="confluenceTd"><span>The scheduled end date for the planned order</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Actual Start Date</span></td><td colspan="1" class="confluenceTd"><span>The actual date where the planned order started in production</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Actual End Date</span></td><td colspan="1" class="confluenceTd"><span>The field will not be populated, it will remain blank for Orders that are processed on Lot / Batch Build Routes. Refer to the new screen. </span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Created Date</span></td><td colspan="1" class="confluenceTd"><p>The date where the planned order is created</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Order Qty</span></td><td colspan="1" class="confluenceTd"><span>The quantity to produce for this planned order</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Released Qty</span></td><td colspan="1" class="confluenceTd"><span>The field will not be populated, it will remain blank for Orders that are processed on Lot / Batch Build Routes. Refer to the new screen.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Remaining Qty</span></td><td colspan="1" class="confluenceTd"><span>The field will not be populated, it will remain blank for Orders that are processed on Lot / Batch Build Routes. Refer to the new screen.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">In Process Qty</span></td><td colspan="1" class="confluenceTd"><span>The field will not be populated, it will remain blank for Orders that are processed on Lot / Batch Build Routes. Refer to the new screen.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Completed Qty</span></td><td colspan="1" class="confluenceTd"><span>The field will not be populated, it will remain blank for Orders that are processed on Lot / Batch Build Routes. Refer to the new screen.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Scrapped Qty</span></td><td colspan="1" class="confluenceTd"><span>The field will not be populated, it will remain blank for Orders that are processed on Lot / Batch Build Routes. Refer to the new screen.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Packed Qty</span></td><td colspan="1" class="confluenceTd"><span>The field will not be populated, it will remain blank for Orders that are processed on Lot / Batch Build Routes. Refer to the new screen.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Created By</span></td><td colspan="1" class="confluenceTd">The user ID who created this planned order</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="PlannedOrderView(Lot/BatchBuild)-WIPAssigned">WIP Assigned</h5></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd"><span>The field will not be populated, it will remain blank for Orders that are processed on Lot / Batch Build Routes. Refer to the new screen.</span></td></tr><tr><td colspan="1" class="confluenceTd">Batch</td><td colspan="1" class="confluenceTd"><span>The field will not be populated, it will remain blank for Orders that are processed on Lot / Batch Build Routes. Refer to the new screen.</span></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd"><span>The field will not be populated, it will remain blank for Orders that are processed on Lot / Batch Build Routes. Refer to the new screen.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd"><span>The field will not be populated, it will remain blank for Orders that are processed on Lot / Batch Build Routes. Refer to the new screen.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);"><a href="http://usplnd0wiki01:8090/" title="Click here to sort" rel="nofollow"><span style="color: rgb(51,51,51);">Last Completed Route Step</span></a></span></td><td colspan="1" class="confluenceTd"><span>The field will not be populated, it will remain blank for Orders that are processed on Lot / Batch Build Routes. Refer to the new screen.</span></td></tr></tbody></table>







#### How to get there?    Planned Order with Lot Details


The new view is accessed and displayed by this method.



::: mermaid
graph LR
A("PLANNED ORDER")-->0("PLANNED ORDER VIEW")

:::


### **Lot General Tab** 


![](/.attachments/39649440.png)





#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="PlannedOrderView(Lot/BatchBuild)-GeneralTab">General Tab</h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Select by order number</td><td colspan="1" class="confluenceTd"><span>Select the planned order to view its details</span></td></tr><tr><td colspan="1" class="confluenceTd">Order Number</td><td colspan="1" class="confluenceTd">The planned order to view its details</td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Material</span></p></td><td class="confluenceTd"><p>The material for the planned order. <br />Click on the material to open the Material View screen containing all the data configured for the material in <a href="29917976.html">Material Maintenance</a> screen</p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Bill of Material</span></p></td><td class="confluenceTd"><p>The BOM for the planned order. <br />Click on the BOM to open the BOM View screen containing all the data configured for the BOM in <a href="29917976.html">BOM Maintenance</a> screen </p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Status</span></p></td><td class="confluenceTd"><p><span>The planned order status </span><br /><span>Status change to In Progress when first Lot Released </span><br /><span><span>Status change to Completed when all Planned Order Quantity completed or Planned Order Status changed to Completed from JemsWeb </span><br /></span></p></td></tr><tr><td colspan="1" class="confluenceTd">On Hold</td><td colspan="1" class="confluenceTd"><span>This will indicate Yes or No depending on if the Planned Order is on Hold or not</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Schedule Start Date</span></td><td colspan="1" class="confluenceTd">The scheduled start date for the planned order</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Schedule End Date</span></td><td colspan="1" class="confluenceTd">The scheduled end date for the planned order</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Actual Start Date</span></td><td colspan="1" class="confluenceTd">The actual date when the planned order started in production</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Actual End Date</span></td><td colspan="1" class="confluenceTd"><span>The actual date when the planned order ended in production</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Created Date</span></td><td colspan="1" class="confluenceTd"><p>The date where the planned order is created</p></td></tr><tr><td colspan="1" class="confluenceTd">Created By</td><td colspan="1" class="confluenceTd"><span>The user ID who created this planned order</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Order Quantity</span></td><td colspan="1" class="confluenceTd">The quantity of Items to produce for this planned order</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Order Quantity Released</span></td><td colspan="1" class="confluenceTd"><span>The quantity of Items released for this planned order (Note: Items are released by Lot and a Lot typically will have more than one item)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Quantity Remaining</span></td><td colspan="1" class="confluenceTd"><span>The remaining Item quantity that is yet to release for this planned order <span>(Note: Items are released by Lot and a Lot typically will have more than one item)</span></span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Quantity In Process</span></td><td colspan="1" class="confluenceTd"><span>The Item quantity that is in process in production floor. Formula = Total Lot Qty started at any Route Step - Quantity Scrapped</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Quantity Completed</span></td><td colspan="1" class="confluenceTd"><span>The Item quantity that has a "Completed" status </span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Quantity Scrapped</span></td><td colspan="1" class="confluenceTd"><span>The Item quantity that has a "Scrapped" status for the current planned order</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);">Quantity Scrapped(Merged)</span><br /></span></td><td colspan="1" class="confluenceTd"><span>The Item quantity that has a "Scrapped" status that merged from other planned order</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Quantity Packed</span></td><td colspan="1" class="confluenceTd"><span>The Item quantity that has a "Packed" status. The Quantity Packed will be reduced if the Lot being consumed.</span></td></tr><tr><td colspan="1" class="confluenceTd">Quantity Consumed</td><td colspan="1" class="confluenceTd">The Item quantity that has a "Consumed" status</td></tr><tr><td colspan="1" class="confluenceTd">Assigned to Route</td><td colspan="1" class="confluenceTd">This is the Route that the Planned Order is Assigned and being built on</td></tr></tbody></table>










### **Lot Assignment Tab** 

![](/.attachments/39649292.png)



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr style="text-align: left;"><td style="text-align: left;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="PlannedOrderView(Lot/BatchBuild)-LotsAssignments">Lots Assignments</h5></td></tr><tr style="text-align: left;"><td class="highlight-grey confluenceTd" style="text-align: left;" colspan="1" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" style="text-align: left;" colspan="1" data-highlight-colour="grey">Description</td></tr><tr style="text-align: left;"><td style="text-align: left;" colspan="1" class="confluenceTd">Lot</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Lot Serial Number that is assigned to the Planned Order. Hyperlink to the Lot View</td></tr><tr style="text-align: left;"><td colspan="1" class="confluenceTd">Lot Qty</td><td colspan="1" class="confluenceTd">The Lot Quantity for the Lot Serial Number</td></tr><tr style="text-align: left;"><td style="text-align: left;" colspan="1" class="confluenceTd">Carrier</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Carrier Serial Number that was assigned to the Planned Order. Hyperlink to the Carrier View (Note: Carriers are reusable and may no longer be assigned to this Lot )</td></tr><tr style="text-align: left;"><td style="text-align: left;" colspan="1" class="confluenceTd">Status</td><td style="text-align: left;" colspan="1" class="confluenceTd">The status of the Lot.</td></tr><tr style="text-align: left;"><td style="text-align: left;" colspan="1" class="confluenceTd">Route</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Route that the Lot is assigned</td></tr><tr style="text-align: left;"><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Last Operation Status</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">The Status of the Operation for the last Operation executed. (COMPLETE, ABORT, STARTED)</td></tr><tr style="text-align: left;"><td colspan="1" class="confluenceTd">Last Scanned Step</td><td colspan="1" class="confluenceTd">The last Route Step that the Lot was scanned at</td></tr><tr style="text-align: left;"><td colspan="1" class="confluenceTd">In Queue Step</td><td colspan="1" class="confluenceTd">The Route Step(s) that the Lot is enqueued. Lots are sometimes able to be processed at one or more Route Steps to support different equipment or other reasons</td></tr><tr style="text-align: left;"><td colspan="1" class="confluenceTd">Last Operation Date</td><td colspan="1" class="confluenceTd">The Date Time that the Operation executed</td></tr></tbody></table>





### **Hold Details Tab** 


![](/.attachments/29917979.png)





<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="PlannedOrderView(Lot/BatchBuild)-HoldDetails">Hold Details</h5></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Hold Date</td><td colspan="1" class="confluenceTd">The Date time that the Planned Order was placed on Hold</td></tr><tr><td colspan="1" class="confluenceTd">Hold By</td><td colspan="1" class="confluenceTd">The Domain\UserId of the person that placed the Planned Order on Hold</td></tr><tr><td colspan="1" class="confluenceTd">Hold Reason</td><td colspan="1" class="confluenceTd">The reason provided by the person placing the Planned Order on hold.</td></tr><tr><td colspan="1" class="confluenceTd">Release Date</td><td colspan="1" class="confluenceTd">The <span>Date time that the Planned Order was Release from Hold once the Hold is released. Blank when on Hold</span></td></tr><tr><td colspan="1" class="confluenceTd">Release By</td><td colspan="1" class="confluenceTd"><span>The Domain\UserId of the person that releases the Planned Order from Hold <span>once the Hold is released. Blank when on Hold</span></span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Release Reason</span></td><td colspan="1" class="confluenceTd"><span>The reason provided by the person releasing the Planned Order from hold. </span></td></tr></tbody></table>



#### Attachments

[image2017-7-26 13:22:35.png](/.attachments/29917977.png)
[image2017-4-11 10:19:55.png](/.attachments/29917978.png)
[Planned Order View-Hold Details Tab.png](/.attachments/29917979.png)
[Planned Order View - General.png](/.attachments/29917980.png)
[Planned Order View - Lot Assign.png](/.attachments/29917981.png)
[Planned Order View - WIP.png](/.attachments/29917982.png)
[image2018-12-10_13-25-53.png](/.attachments/39649290.png)
[image2018-12-10_13-26-13.png](/.attachments/39649291.png)
[image2018-12-10_13-32-13.png](/.attachments/39649292.png)
[image2018-12-18_15-56-59.png](/.attachments/39649440.png)

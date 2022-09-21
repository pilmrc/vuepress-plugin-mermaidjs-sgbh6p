# Introduction

Once the 
Work Orders for Lot / Batch Build routesare saved, the details are displayed in the Work Order View. Users are also able to view the list of super lots assigned to the Work Order as well as the order's hold details.



### How to get there? 




::: mermaid
graph LR
A("orders ")-->0("Work order VIEW-LOT")

:::


#### Permission


To access the screen and able to view work order details:
1) View Work Oder Details - Allows the user to view details about Work Orders (associated lots, release dates, etc.)



#### Screen Activity


Work Order View enables the user to perform the following activity:

- Review the details of Work Order.

- The ability to link to Super Lot View for the super lot released under the Work Order.



#### Pre Condition


The process needs to be done before user is able to view the work order

- Work Order must be created



#### Process


User can search work order by entering partial or exact match of work order number. Partial match will prompt search results window.



#### ***General Tab***  

![image2021-5-28_9-13-36.png](/.attachments/92734014.png)


**Fields:** 

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="WorkOrderView(BatchManufacturing2.0)-General">General</h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Order Number</td><td colspan="1" class="confluenceTd">The work order number.</td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Material</span></p></td><td class="confluenceTd"><p>The material for the work order.</p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Bill of Material</span></p></td><td class="confluenceTd"><p>The BOM for the work order. </p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Status</span></p></td><td class="confluenceTd"><p><span>The work order status.</span><br /><span>Status change to "In Progress" when the first Super Lot is released. </span><span><span>Status change to "Completed" when all Order Quantity has been released and all the super lot associated are in "Complete" status.</span><br /></span></p></td></tr><tr><td colspan="1" class="confluenceTd">On Hold</td><td colspan="1" class="confluenceTd"><span>This will indicate Yes or No depending on if the Work Order is on Hold or not.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Scheduled Start Date</span></td><td colspan="1" class="confluenceTd">The scheduled start date for the work order.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Scheduled End Date</span></td><td colspan="1" class="confluenceTd">The scheduled end date for the work order.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Actual Start Date</span></td><td colspan="1" class="confluenceTd">The actual date when the work order started in production.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Actual End Date</span></td><td colspan="1" class="confluenceTd"><span>The actual date when the work order ended in production.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Created Date</span></td><td colspan="1" class="confluenceTd"><p>The date when the work order was created.</p></td></tr><tr><td colspan="1" class="confluenceTd">Created By</td><td colspan="1" class="confluenceTd"><span>The user ID who created this work order.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Order Quantity</span></td><td colspan="1" class="confluenceTd">The quantity of Items to produce for this work order. Value always refers to the current Order Quantity shown in Work Order Maintenance screen.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Order Quantity Released</span></td><td colspan="1" class="confluenceTd"><span>The total Super Lot quantity released for this work order.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Order Quantity Remaining</span></td><td colspan="1" class="confluenceTd"><span>The remaining quantity that is yet to release for this work order.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Lot Quantity In Process</span></td><td colspan="1" class="confluenceTd"><p>The total lot quantity that have "In Progress" status excluding scrapped and packed lots.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Lot Quantity Completed</span></td><td colspan="1" class="confluenceTd"><span><span>The </span></span>total lot quantity that have "Complete" status excluding scrapped and packed lots.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Lot Quantity Scrapped</span></td><td colspan="1" class="confluenceTd"><span><span>The </span></span>total lot quantity that has <span>been scrapped for the current work order.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Lot Quantity Packed</span></td><td colspan="1" class="confluenceTd"><span><span>The </span></span>total lot quantity that has been packed into container. <span>The Lot Quantity Packed will be reduced if the Lot has been consumed.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Lot </span>Quantity Consumed</td><td colspan="1" class="confluenceTd">The total lot quantity that has a "Consumed" status.</td></tr><tr><td colspan="1" class="confluenceTd">Assigned to Route</td><td colspan="1" class="confluenceTd">This is the Route that the Work Order is assigned to and being built on.</td></tr></tbody></table>






#### ***Super Lot Assignments Tab***  

![image2021-5-28_9-15-7.png](/.attachments/92734015.png)


Fields:
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr style="text-align: left;"><td style="text-align: left;" colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="WorkOrderView(BatchManufacturing2.0)-SuperLotAssignments">Super Lot Assignments</h5></td></tr><tr style="text-align: left;"><td class="highlight-grey confluenceTd" style="text-align: left;" colspan="1" data-highlight-colour="grey"><strong>Field</strong></td><td class="highlight-grey confluenceTd" style="text-align: left;" colspan="1" data-highlight-colour="grey"><strong>Description</strong></td></tr><tr style="text-align: left;"><td style="text-align: left;" colspan="1" class="confluenceTd">Super Lot</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Super Lot serial number that is assigned to the Work Order. Hyperlink to the Super Lot View.</td></tr><tr style="text-align: left;"><td colspan="1" class="confluenceTd">Super Lot Quantity</td><td colspan="1" class="confluenceTd">The Super Lot quantity for the Super Lot serial Number.</td></tr><tr style="text-align: left;"><td style="text-align: left;" colspan="1" class="confluenceTd">Super Lot Status</td><td style="text-align: left;" colspan="1" class="confluenceTd">The status of the Super Lot.</td></tr></tbody></table>




#### ***Hold Details Tab***  

![image2021-5-28_9-17-54.png](/.attachments/92734017.png)


**Fields:** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="WorkOrderView(BatchManufacturing2.0)-HoldDetails">Hold Details</h5></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Field</strong></td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Hold Date</td><td colspan="1" class="confluenceTd">The date time that the Work Order was placed on Hold.</td></tr><tr><td colspan="1" class="confluenceTd">Hold By</td><td colspan="1" class="confluenceTd">The Domain\UserId of the person that placed the Work Order on Hold.</td></tr><tr><td colspan="1" class="confluenceTd">Hold Reason</td><td colspan="1" class="confluenceTd">The reason provided by the person placing the Work Order on hold.</td></tr><tr><td colspan="1" class="confluenceTd">Release Date</td><td colspan="1" class="confluenceTd">The d<span>ate time that the Work Order was released from Hold. Blank when on Hold.</span></td></tr><tr><td colspan="1" class="confluenceTd">Release By</td><td colspan="1" class="confluenceTd"><span>The Domain\UserId of the person that released the Work Order from Hold<span>. Blank when on Hold.</span></span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Release Reason</span></td><td colspan="1" class="confluenceTd"><span>The reason provided by the person releasing the Work Order from hold. Blank when on Hold. </span></td></tr></tbody></table>



#### Attachments

[image2018-12-18_15-56-59.png](/.attachments/88113660.png)
[image2018-12-10_13-32-13.png](/.attachments/88113661.png)
[image2018-12-10_13-26-13.png](/.attachments/88113662.png)
[image2018-12-10_13-25-53.png](/.attachments/88113663.png)
[Planned Order View - WIP.png](/.attachments/88113664.png)
[Planned Order View - Lot Assign.png](/.attachments/88113665.png)
[Planned Order View - General.png](/.attachments/88113666.png)
[Planned Order View-Hold Details Tab.png](/.attachments/88113667.png)
[image2017-4-11 10:19:55.png](/.attachments/88113668.png)
[image2017-7-26 13:22:35.png](/.attachments/88113669.png)
[image2021-3-11_10-16-23.png](/.attachments/88113670.png)
[image2021-3-11_10-52-42.png](/.attachments/88113671.png)
[image2021-3-11_10-57-5.png](/.attachments/88113672.png)
[image2021-3-11_11-1-58.png](/.attachments/88113673.png)
[image2021-5-28_9-10-26.png](/.attachments/92734013.png)
[image2021-5-28_9-13-36.png](/.attachments/92734014.png)
[image2021-5-28_9-15-7.png](/.attachments/92734015.png)
[image2021-5-28_9-16-49.png](/.attachments/92734016.png)
[image2021-5-28_9-17-54.png](/.attachments/92734017.png)

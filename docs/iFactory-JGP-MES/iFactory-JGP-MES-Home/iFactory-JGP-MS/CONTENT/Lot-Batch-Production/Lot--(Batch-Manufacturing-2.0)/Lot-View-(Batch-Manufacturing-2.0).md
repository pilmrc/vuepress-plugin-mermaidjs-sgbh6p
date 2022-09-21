# Introduction

The Lot View is the place to review details about each Lot. There are multiple tabbed sheets that describe different aspects of the Lot, specifically General, History, Genealogy, Data Collections, Defects, Lot Attributes, Audit Log, Lot Holds. At this writing only the General and History tabs are implemented. As a Lot has a Globally Unique Identifier (GUID) that is very long, and the Lots are generally transported by a Carrier, the Lot view has the ability to search for a Lot by any of a Lot Number, a Carrier Serial Number or an Internal Batch Number. Once the search is completed the details of the lot are display in the applicable tabbed sheets.     



### How to get there?




::: mermaid
graph LR
A("LOT VIEW")
:::


#### Permission


1)Can Access Lot/Batch Build- Lot -View Lot Details -Allows the user to view detailed lot information (operation history, attributes, etc.)


#### Screen Activity


Lot View enables user to perform the following activity:

- Review the details of the Lot, what it is, where is has been, the data collected on it, any defects and rework that may have occurred, the attribute on it, any modify in Lot Maintenance, and it is on Hold.

- The ability to 'drill down' into more specific details via hyperlinks for some fields



#### Pre Condition


The following data needs to be pre-configured before user able to view the Lot View

- Lot must be Released (created) to be found or have General details

- Lot must have been started at a Manual Station to have any History

- Lot must have been assembly at a Manual Station and assembly or disassembly to have any Genealogy

- Lot must have been started at a Manual Station and had some applicable activities performed to see Data Collections and Defects ( Not yet implemented)

- Lot must have been started at a Manual Station and had one or more Lot Attributes assigned to see the Lot Assignments.

- Lot must have been modify at a Lot Maintenance to have any Audit Log

- Lot must have been on hold at Lot Hold to see the Lot Holds



#### Screen Dependency


Lot View

- Pre Conditions must be met to view any data in this screen

- No action is executed from this screen as it is a Viewer only

- Hyperlinks on this page require linked screen to be developed and accessible



#### Fields


General Tab Example

This example shown was searched by Lot Number, the system then displays the Lot and related Lot General details. A Lot may be searched directly but may not be the typical method, see the example later in this document.
![image2021-3-24_16-41-18.png](/.attachments/89587998.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>General Tab</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Super Lot Number</p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">The Name of the Super Lot the Lot was released against. Hyperlink to Super Lot View.</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Lot Quantity</p></td><td style="text-align: left;" class="confluenceTd"><p>The quantity of items of this Lot.</p></td></tr><tr><td colspan="1" class="confluenceTd">Pass Quantity</td><td colspan="1" class="confluenceTd">The successfully completed quantity of this Lot.</td></tr><tr><td colspan="1" class="confluenceTd">Fail Quantity</td><td colspan="1" class="confluenceTd">The unsuccessfully completed quantity of this Lot.</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Status</p></td><td style="text-align: left;" class="confluenceTd"><p>The Status of the Lot. Status to currently include InProgress, Cancelled, Completed, OnHold.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Is Scrapped</td><td style="text-align: left;" colspan="1" class="confluenceTd">The indicator of whether the Lot is scrapped or not (Yes / No).</td></tr><tr><td colspan="1" class="confluenceTd">Is On Hold</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This will indicate Yes or No depending on if the Lot is on Hold or not.</span></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Created Date</p></td><td style="text-align: left;" class="confluenceTd"><p>The Date Time that the Lot was created/released for the Super Lot.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Created By</p></td><td style="text-align: left;" class="confluenceTd"><p>The user that created/released the Lot.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Last Scanned Route</p></td><td style="text-align: left;" class="confluenceTd"><p>The name of the Route the Lot was last processed at.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Last Scanned Route Step</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>The name of the Route Step the Lot was last processed at.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">In Queue Route Step</td><td style="text-align: left;" colspan="1" class="confluenceTd">The name(s) of the Route Steps the Lot is Enqueued at. Typically one step, but can be multiple steps.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Planned Order</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Name of the Planned Order the Lot was released against. Hyperlink to Planned Order View.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Material</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Material Name of the items being produced by this Lot. Hyperlink to Material View.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Material Description</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>The Material Description of the items being produced by this Lot.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Product Family</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>The Material Product Family Name of the items being produced by this Lot if there is one assigned.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Customer</p></td><td style="text-align: left;" colspan="1" class="confluenceTd">The Customer this Lot of items is being produced for.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Division</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Division of a Customer this Lot of items is being produced for.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Bill of Materials</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>The Bill of Material Name of the items being produced by this Lot. Hyperlink to BOM View.</span></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Assembly Number / Assembly Revision /Assembly Version for the Serial Number. Display blank if the Serial Number is not associate to an Assembly. </span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Container</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Container Number of the Lot being packed into, can be multiple Containers.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Carrier Serial Number</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Serial Number of the Carrier the Lot is currently assigned. Hyperlink to Carrier Number.</span></td></tr></tbody></table>



#### History Tab Example


This example is an example of the format of what a Lot history will look like once we have been able to move a lot that has been released and an Operation is performed at a Route Step 
![image2021-3-24_16-42-39.png](/.attachments/89587999.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>History Tab</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span>Operations</span></p></td><td style="text-align: left;" class="confluenceTd"><p>A Hyperlink to the detailed history of the Lot that occurred at a Route Step at a specific time</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span>Route Step</span></p></td><td style="text-align: left;" class="confluenceTd"><p>The name of the Route Step that the Lot was processed at</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span>Arrival Time</span></p></td><td style="text-align: left;" class="confluenceTd"><p>When the Lot Arrived at the specific Route Step</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Start Time</p></td><td style="text-align: left;" class="confluenceTd"><p><span>When the Lot Operation activities Started at the specific Route Step</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>End Time</p></td><td style="text-align: left;" class="confluenceTd"><p><span>When the Lot Operation activities Ended at the specific Route Step</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Resource</p></td><td style="text-align: left;" class="confluenceTd"><p>The Name of the Resource that was used to perform the Operation for the Route Step</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Operator</p></td><td style="text-align: left;" class="confluenceTd"><p>The Operator / User that performed the activities</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Operation Status</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Result of the activities that occurred at the Route Step. Currently PASS, FAIL, ABORT, STARTED. In the Future PRESENT may be added</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Pass Qty</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Number of items that were identified to have successfully completed the operation activities at the Route Step on this occurrence</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Fail Qty</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>The Number of items that were identified to have unsuccessfully completed the operation activities at the Route Step on this </span>occurrence</td></tr></tbody></table>






#### Genealogy Tab Example


This is an example of the format of what a Lot genealogy will look like once we have been able to move a lot that has been released and a link is performed at a Route Step.
![image2022-2-8_8-38-40.png](/.attachments/106464876.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>Genealogy Tab</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd">Material Type</td><td style="text-align: left;" class="confluenceTd">The Material Type (Unserialized Material only) of the assembled item to the Lot</td></tr><tr><td style="text-align: left;" class="confluenceTd">Identifier</td><td style="text-align: left;" class="confluenceTd">The Serial Number (<span style="color: rgb(0,0,0);">GRN or Non-Unique Identifier)</span><span> </span>of the assembled Item</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Setup Sheet</td><td style="text-align: left;" colspan="1" class="confluenceTd">Setup Sheet ID, number, version and bin information</td></tr><tr><td style="text-align: left;" class="confluenceTd">CRD</td><td style="text-align: left;" class="confluenceTd">The CRD of the assembled item. In case of non-EA UOM material, CRD value is not applicable.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Material</td><td style="text-align: left;" class="confluenceTd">The material of the assembled Item</td></tr><tr><td style="text-align: left;" class="confluenceTd">Operator</td><td style="text-align: left;" class="confluenceTd">The user ID who assembled the material</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Assembled Date</td><td style="text-align: left;" colspan="1" class="confluenceTd">The date time where the material is assembled</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Assembled At</td><td style="text-align: left;" colspan="1" class="confluenceTd">The route step where the material is assembled</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Quantity</td><td style="text-align: left;" colspan="1" class="confluenceTd">The quantity of the assembled item. If the Material is of type non-EA UOM then it supports decimal value of the quantity along with unit (UOM Symbol)</td></tr></tbody></table>




#### Data Collection Tab Example


This is an example of the format of what a Lot Data collection tab will look like once and the event has occurred. 
![image2021-3-24_17-2-48.png](/.attachments/89588003.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>Data Collections Tab</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd">Name</td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">The Data Label configured in the data collections</span></td></tr><tr><td style="text-align: left;" class="confluenceTd">Source</td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">The source where data being collected.</span><br style="text-align: left;" /><span style="color: rgb(23,43,77);">"User" = Data collected by user entry.</span><br style="text-align: left;" /><span style="color: rgb(23,43,77);">"AutomatedProcess" = Data collected by system generate</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Status</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The status of data collections.</span><br style="text-align: left;" /><span style="color: rgb(23,43,77);">"PASS" = Data collected successfully with the valid mask</span><br style="text-align: left;" /><span style="color: rgb(23,43,77);">"FAIL" = Data collected failed validation </span></td></tr><tr><td style="text-align: left;" class="confluenceTd">Data Type</td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">The Data Type where the data collected.</span><br style="text-align: left;" /><span style="color: rgb(23,43,77);">"Text" = Data collected as string value<br /></span><span style="color: rgb(23,43,77);">"Numeric" = Data collected as Integer, Decimal</span></td></tr><tr><td style="text-align: left;" class="confluenceTd">Unit of Measure</td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">The Unit of Measure configured in the data collections when data collected</span></td></tr><tr><td style="text-align: left;" class="confluenceTd">value</td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">The value collected from the data collection</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Lower Limit</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The lower limit configured in the data collections</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Upper Limit</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The upper limit configured in the data collections</span></td></tr></tbody></table>









#### Defect Tab Example


This is an example of the format of what a Lot Defect will look like once the Lot is fail in route step.
![image2021-3-24_17-25-39.png](/.attachments/89588010.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><p><strong>Defects Tab</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh">Field</th><th style="text-align: left;" class="confluenceTh">Description</th></tr><tr><td style="text-align: left;" class="confluenceTd">Name</td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">The Defect Name recorded.</span></td></tr><tr><td style="text-align: left;" class="confluenceTd">Material</td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">The Material of the defective material. </span></td></tr><tr><td colspan="1" class="confluenceTd">Material Description</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Material Description of the defective material.</span></td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd">The Material is associate to which CRD .</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Route where the defect recorded.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Route step where the defect recorded.</span></td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Quantity of the defect material.</span></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The current status for the<span> </span></span><span style="color: rgb(23,43,77);">Defect.</span></td></tr><tr><td colspan="1" class="confluenceTd">User</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The User ID recorded the defect.</span></td></tr><tr><td colspan="1" class="confluenceTd">Date</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The date time when the defect is recorded.</span></td></tr></tbody></table>



#### Lot Attribute Tab Example


This is an example of the format of what a Lot Attributes will look like once assigned a value at an Operation that is configured for a Route Step and system assigned value when it released.
![image2021-3-24_16-53-36.png](/.attachments/89588001.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><p><strong>Lot Attribute Tab</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh">Field</th><th style="text-align: left;" class="confluenceTh">Description</th></tr><tr><td style="text-align: left;" class="confluenceTd">Name</td><td style="text-align: left;" class="confluenceTd">The Attribute Name that has been assigned. If the Attribute configured (Attribute Assignment), but not yet assigned (Manual Workstation runtime assignment), it will not be displayed.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Value</td><td style="text-align: left;" class="confluenceTd">The value assigned at runtime at the Manual Workstation</td></tr><tr><td colspan="1" class="confluenceTd">System Assigned</td><td colspan="1" class="confluenceTd">The value display <span style="color: rgb(23,43,77);">Yes or No depending on if the attribute is assigned by system or not.</span></td></tr></tbody></table>



#### Audit Log Tab Example


This is an example of the format of what a Lot Audit tab will look like once and the event has occurred. 
![image2021-3-24_17-10-5.png](/.attachments/89588006.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><p><strong>Lot Audit Tab</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh">Field</th><th style="text-align: left;" class="confluenceTh">Description</th></tr><tr><td style="text-align: left;" class="confluenceTd">Event</td><td style="text-align: left;" class="confluenceTd">The event that has occurred. ie. Transfer<span style="color: rgb(204,153,255);">,<span style="color: rgb(0,51,102);"><span> </span>Split, Merge, Association, Attribute</span></span></td></tr><tr><td style="text-align: left;" class="confluenceTd">Original Value</td><td style="text-align: left;" class="confluenceTd">The original value assigned before the event occurred</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span>New Value</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>The new value assigned after the event occurred</span></td></tr><tr><td colspan="1" class="confluenceTd">Action</td><td colspan="1" class="confluenceTd">The files show it is add, deleted</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Modified</td><td style="text-align: left;" colspan="1" class="confluenceTd">When the event occurred</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Modified By</td><td style="text-align: left;" colspan="1" class="confluenceTd">The User that initiated the event</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Comment entered by the user when they modify.</span></td></tr></tbody></table>



#### Lot Holds Tab Example


This is an example of the format of what a Lot Holds tab will look like once the Lot is Hold.
![image2021-3-24_17-20-3.png](/.attachments/89588009.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><p><strong>Lot Holds Tab</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh">Field</th><th style="text-align: left;" class="confluenceTh">Description</th></tr><tr><td style="text-align: left;" class="confluenceTd">Hold Type</td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">The Hold type of the Hold placed against the Lot.</span></td></tr><tr><td style="text-align: left;" class="confluenceTd">Hold Date</td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">The date time where the Lot was placed on hold.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Hold By</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">T<span style="color: rgb(23,43,77);">he User ID that released the Lot was placed on hold.</span></td></tr><tr><td colspan="1" class="confluenceTd">Hold Reason</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Reason entered by the user when the Lot was placed on hold.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Release Date</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The data time where the Lot was released from Hold.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Release By</td><td style="text-align: left;" colspan="1" class="confluenceTd">T<span style="color: rgb(23,43,77);">he User ID that released the Lot from Hold.</span></td></tr><tr><td colspan="1" class="confluenceTd">Release Reason</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Reason entered by the user that released the Lot from Hold.</span></td></tr></tbody></table>



#### Search by 


The Lot and the related details may be found by to methods. 
As a Lot has a Globally Unique Identifier (GUID) that is very long, and the Lots are generally transported by a Carrier, the Lot view has the ability to search for a Lot by any of a Lot Number, a Carrier Serial Number or Internal Batch Number. Once the search is completed the details of the lot are displayed in the applicable tabbed sheets.
Search by Carrier - Default
![image2021-3-24_17-36-5.png](/.attachments/89588012.png)



Search by Lot
![image2021-3-24_17-40-39.png](/.attachments/89588014.png)



Search by Internal Batch Number
![image2021-3-24_17-41-14.png](/.attachments/89588015.png)






#### Attachments

[image2021-3-24_16-36-39.png](/.attachments/89587996.png)
[image2021-3-24_16-40-2.png](/.attachments/89587997.png)
[image2021-3-24_16-41-18.png](/.attachments/89587998.png)
[image2021-3-24_16-42-39.png](/.attachments/89587999.png)
[image2021-3-24_16-47-49.png](/.attachments/89588000.png)
[image2021-3-24_16-53-36.png](/.attachments/89588001.png)
[image2021-3-24_17-2-48.png](/.attachments/89588003.png)
[image2021-3-24_17-10-5.png](/.attachments/89588006.png)
[image2021-3-24_17-20-3.png](/.attachments/89588009.png)
[image2021-3-24_17-25-39.png](/.attachments/89588010.png)
[image2021-3-24_17-35-12.png](/.attachments/89588011.png)
[image2021-3-24_17-36-5.png](/.attachments/89588012.png)
[image2021-3-24_17-40-39.png](/.attachments/89588014.png)
[image2021-3-24_17-41-14.png](/.attachments/89588015.png)
[image2022-2-8_8-38-40.png](/.attachments/106464876.png)

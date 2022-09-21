# Introduction


The Lot View is the place to review details about each Lot. There are multiple tabbed sheets that describe different aspects of the Lot, specifically General, History, Data Collections, Defects. At this writing only the General and History tabs are implemented. As a Lot has a Globally Unique Identifier (GUID) that is very long, and the Lots are generally transported by a Carrier, the Lot view has the ability to search for a Lot by either a Lot Number or a Carrier Serial Number. Once the search is completed the details of the lot are display in the applicable tabbed sheets.     


### How to get there?




::: mermaid
graph LR
A("LOT")-->0("LOT VIEW")

:::


#### Permission


1)Can Access Lot/Batch Build- Lot -View Lot Details -Allows the user to view detailed lot information (operation history, attributes, etc.)


#### Screen Activity


Lot View enables user to perform the following activity:

- Review the details of the Lot, what it is, where is has been, the data collected on it, and any defects and rework that may have occurred.

- The ability to 'drill down' into more specific details via hyperlinks for some fields



#### Pre Condition


The following data needs to be pre-configured before user able to view the Lot View

- Lot must be Released (created) to be found or have General details

- Lot must have been started at a Manual Station to have any History

- Lot must have been started at a Manual Station and had some applicable activities performed to see Data Collections and Defects ( Not yet implemented)

- Lot must have been started at a Manual Station and had one or more Lot Attributes assigned to see the Lot Assignments.



#### Screen Dependency


Lot View

- Pre Conditions must be met to view any data in this screen

- No action is executed from this screen as it is a Viewer only

- Hyperlinks on this page require linked screen to be developed and accessible



#### Fields


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><p style="text-align: center;"><strong style="background-color: transparent;font-size: 10.0pt;">General Tab</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Lot Number</p></td><td class="confluenceTd"><p>The Serial Number of the Lot</p></td></tr><tr><td class="confluenceTd"><p>Carrier Serial Number</p></td><td class="confluenceTd"><p>The Serial Number of the Carrier the Lot is currently assigned. Hyperlink to Carrier Number</p></td></tr><tr><td class="confluenceTd"><p>Lot Quantity</p></td><td class="confluenceTd"><p>The quantity of items of this Lot</p></td></tr><tr><td class="confluenceTd"><p>Status</p></td><td class="confluenceTd"><p>The Status of the Lot. Status to currently include New, Ready, InProgress. In the future to include Cancelled, Completed, Shipped, OnHold</p></td></tr><tr><td colspan="1" class="confluenceTd">Is Scrapped</td><td colspan="1" class="confluenceTd">The indicator of whether the Lot is scrapped or not (Yes / No)</td></tr><tr><td class="confluenceTd"><p>Created Date</p></td><td class="confluenceTd"><p>The Date Time that the Lot was created/released for the Planned Order</p></td></tr><tr><td class="confluenceTd"><p>Created By</p></td><td class="confluenceTd"><p>The user that created/released the Lot</p></td></tr><tr><td class="confluenceTd"><p>Last Scanned Route</p></td><td class="confluenceTd"><p>The name of the Route the Lot was last processed at. At this point the assigned route at the time of release</p></td></tr><tr><td colspan="1" class="confluenceTd">Last Scanned Route Step</td><td colspan="1" class="confluenceTd"><span>The name of the Route Step the Lot was last processed at.</span></td></tr><tr><td colspan="1" class="confluenceTd">In Queue Route Step</td><td colspan="1" class="confluenceTd">The name(s) of the Route Steps the Lot is Enqueued at. Typically one step, but can be multiple steps</td></tr><tr><td colspan="1" class="confluenceTd">Batch Number</td><td colspan="1" class="confluenceTd">The Batch Id assigned to the lot (If configured)</td></tr><tr><td colspan="1" class="confluenceTd">Planned Order</td><td colspan="1" class="confluenceTd">The Name of the Planned Order the Lot was released against. Hyperlink to Planned Order View</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The Material Name of the items being produced by this Lot. Hyperlink to Material View</td></tr><tr><td colspan="1" class="confluenceTd">Material Description</td><td colspan="1" class="confluenceTd"><span>The Material Description of the items being produced by this Lot</span></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd"><span>The Material Product Family Name of the items being produced by this Lot if there is one assigned</span></td></tr><tr><td colspan="1" class="confluenceTd"><p>Customer</p></td><td colspan="1" class="confluenceTd">The Customer this Lot of items is being produced for</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">The Division of a Customer this Lot of items is being produced for</td></tr><tr><td colspan="1" class="confluenceTd">Bill of Materials</td><td colspan="1" class="confluenceTd"><span>The Bill of Material Name of the items being produced by this Lot. Hyperlink to BOM View</span></td></tr><tr><td colspan="1" class="confluenceTd">Container</td><td colspan="1" class="confluenceTd">The Container Number of the Lot being packed into.</td></tr><tr><td colspan="1" class="confluenceTd">Previous Planned Orders</td><td colspan="1" class="confluenceTd">The Previous Planned Orders of the completed Lots that have been consumed in the current release.</td></tr></tbody></table>


General Tab Example

This example shown was searched by Carrier Serial Number, the system then displays the Lot and related Lot General details. A Lot may be searched directly but may not be the typical method, see the example later in this document.![](/.attachments/39649321.png)



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><p style="text-align: center;"><strong style="background-color: transparent;font-size: 10.0pt;">History Tab</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p><span>Operations</span></p></td><td class="confluenceTd"><p>A Hyperlink to the detailed history of the Lot that occurred at a Route Step at a specific time</p></td></tr><tr><td class="confluenceTd"><p><span>Route Step</span></p></td><td class="confluenceTd"><p>The name of the Route Step that the Lot was processed at</p></td></tr><tr><td class="confluenceTd"><p><span>Arrival Time</span></p></td><td class="confluenceTd"><p>When the Lot Arrived at the specific Route Step</p></td></tr><tr><td class="confluenceTd"><p>Start Time</p></td><td class="confluenceTd"><p><span>When the Lot Operation activities Started at the specific Route Step</span></p></td></tr><tr><td class="confluenceTd"><p>End Time</p></td><td class="confluenceTd"><p><span>When the Lot Operation activities Ended at the specific Route Step</span></p></td></tr><tr><td class="confluenceTd"><p>Resource</p></td><td class="confluenceTd"><p>The Name of the Resource that was used to perform the Operation for the Route Step</p></td></tr><tr><td class="confluenceTd"><p>Operator</p></td><td class="confluenceTd"><p>The Operator / User that performed the activities</p></td></tr><tr><td colspan="1" class="confluenceTd">Operation Status</td><td colspan="1" class="confluenceTd">The Result of the activities that occurred at the Route Step. Currently PASS, FAIL, ABORT, STARTED. In the Future PRESENT may be added</td></tr><tr><td colspan="1" class="confluenceTd">Pass Qty</td><td colspan="1" class="confluenceTd">The Number of items that were identified to have successfully completed the operation activities at the Route Step on this occurrence</td></tr><tr><td colspan="1" class="confluenceTd">Fail Qty</td><td colspan="1" class="confluenceTd"><span>The Number of items that were identified to have unsuccessfully completed the operation activities at the Route Step on this </span>occurrence</td></tr></tbody></table>


History Tab Example
This example is an example of the format of what a Lot history will look like once we have been able to move a lot that has been released and an Operation is performed at a Route Step 
![](/.attachments/39649713.png)




<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>Genealogy Tab</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd">Phoenix Material Type</td><td class="confluenceTd">The Phoenix Material Type (Unserialized Material only) of the assembled item to the Lot</td></tr><tr><td class="confluenceTd">Identifier</td><td class="confluenceTd">The Serial Number (<span style="color: rgb(0,0,0);">GRN or Non-Unique Identifier)</span> of the assembled Item</td></tr><tr><td colspan="1" class="confluenceTd">Setup Sheet</td><td colspan="1" class="confluenceTd">Setup Sheet ID, number, version and bin information</td></tr><tr><td class="confluenceTd">CRD</td><td class="confluenceTd">The CRD of the assembled item</td></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd">The material of the assembled Item</td></tr><tr><td class="confluenceTd">Operator</td><td class="confluenceTd">The user ID who assembled the material</td></tr><tr><td colspan="1" class="confluenceTd">Assembled Date</td><td colspan="1" class="confluenceTd">The date time where the material is assembled</td></tr><tr><td colspan="1" class="confluenceTd">Assembled At</td><td colspan="1" class="confluenceTd">The route step where the material is assembled</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">The quantity of the assembled item</td></tr></tbody></table>


Genealogy Tab Example
This is an example of the format of what a Lot genealogy will look like once we have been able to move a lot that has been released and a link is performed at a Route Step.
![](/.attachments/39649714.png)





<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><p><strong>Lot Attribute Tab</strong></p></td></tr><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Name</td><td class="confluenceTd">The Attribute Name that has been assigned. If the Attribute configured (Attribute Assignment), but not yet assigned (Manual Workstation runtime assignment), it will not be displayed.</td></tr><tr><td class="confluenceTd">Value</td><td class="confluenceTd">The value assigned at runtime at the Manual Workstation</td></tr></tbody></table>



#### Lot Attribute Tab Example



This is an example of the format of what a Lot Attributes will look like once assigned a value at an Operation that is configured for a Route Step 

![](/.attachments/39649716.png)



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><p><strong>Lot Audit Tab</strong></p></td></tr><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Event</td><td class="confluenceTd">The event that has occurred. )ie. Transfer<span style="color: rgb(204,153,255);">,<span style="color: rgb(0,51,102);"> Split, Merge, Association</span></span></td></tr><tr><td class="confluenceTd">Original Value</td><td class="confluenceTd">The original value assigned before the event occurred</td></tr><tr><td colspan="1" class="confluenceTd"><span>New Value</span></td><td colspan="1" class="confluenceTd"><span>The new value assigned after the event occurred</span></td></tr><tr><td colspan="1" class="confluenceTd">Modified</td><td colspan="1" class="confluenceTd">When the event occurred</td></tr><tr><td colspan="1" class="confluenceTd">Modified By</td><td colspan="1" class="confluenceTd">The User that initiated the event</td></tr></tbody></table>

Lot Audit Tab Example
This is an example of the format of what a Lot Audit tab will look like once and the event has occurred. 


![](/.attachments/39649717.png)




<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Lot Data Collections tab</strong></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">The Route Name where the data collected</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The Route Step where the data collected</td></tr><tr><td colspan="1" class="confluenceTd">Start Time</td><td colspan="1" class="confluenceTd">The date time where the data collected</td></tr><tr><td colspan="1" class="confluenceTd"><p>Name</p></td><td colspan="1" class="confluenceTd">The Data Label configured in the data collections</td></tr><tr><td colspan="1" class="confluenceTd">Source</td><td colspan="1" class="confluenceTd"><p>The source where data being collected. <br />"User" = Data collected by user entry.<br />"AutomatedProcess" = Data collected by system generate</p></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">The status of data collections.<br />"PASS" = Data collected successfully with the valid mask<br />"FAIL" = Data collected failed validation </td></tr><tr><td colspan="1" class="confluenceTd">Data Type</td><td colspan="1" class="confluenceTd"><p>The Data Type where the data collected.<br /><span>"Text" = Data collected as string value<br /></span><span>"Numeric" = Data collected as Integer, Decimal</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Unit of Measure</td><td colspan="1" class="confluenceTd">The Unit of Measure configured in the data collections when data collected</td></tr><tr><td colspan="1" class="confluenceTd">Value</td><td colspan="1" class="confluenceTd">The value collected from the data collection</td></tr><tr><td colspan="1" class="confluenceTd">Lower Limit</td><td colspan="1" class="confluenceTd">The lower limit configured in the data collections</td></tr><tr><td colspan="1" class="confluenceTd">Upper Limit</td><td colspan="1" class="confluenceTd">The upper limit configured in the data collections</td></tr></tbody></table>









#### Lot Data Collection Tab Example



This is an example of the format of what a Lot Data collection tab will look like once and the event has occurred. 
![](/.attachments/39649719.png)



Search by The Lot and the related details may be found by to methods. 
As a Lot has a Globally Unique Identifier (GUID) that is very long, and the Lots are generally transported by a Carrier, the Lot view has the ability to search for a Lot by either a Lot Number or a Carrier Serial Number. Once the search is completed the details of the lot are displayed in the applicable tabbed sheets.
Search by Lot - Default
![](/.attachments/29917855.png)



Search by Carrier
![](/.attachments/29917853.png)





#### Attachments

[image2017-9-26 15:7:11.png](/.attachments/29917846.png)
[image2017-7-20 13:45:30.png](/.attachments/29917847.png)
[image2017-7-13 15:14:43.png](/.attachments/29917848.png)
[image2016-12-16 21:26:19.png](/.attachments/29917849.png)
[Lot View - Audit Log.png](/.attachments/29917850.png)
[image2016-9-29 15:41:34.png](/.attachments/29917851.png)
[image2016-9-29 15:37:13.png](/.attachments/29917852.png)
[Lot View Carrier.png](/.attachments/29917853.png)
[Lot View Carrier General Results.png](/.attachments/29917854.png)
[Lot View Default.png](/.attachments/29917855.png)
[Lot View History.png](/.attachments/29917856.png)
[image2018-11-22_11-25-42.png](/.attachments/38273286.png)
[image2018-12-11_16-52-10.png](/.attachments/39649321.png)
[image2019-1-11_10-51-30.png](/.attachments/39649713.png)
[image2019-1-11_10-52-21.png](/.attachments/39649714.png)
[image2019-1-11_11-0-13.png](/.attachments/39649716.png)
[image2019-1-11_11-3-40.png](/.attachments/39649717.png)
[image2019-1-11_11-15-8.png](/.attachments/39649719.png)

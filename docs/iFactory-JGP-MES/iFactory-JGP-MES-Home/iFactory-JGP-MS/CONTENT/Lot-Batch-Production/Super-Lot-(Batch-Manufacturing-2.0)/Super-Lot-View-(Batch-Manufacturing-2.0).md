# Introduction

The Super Lot View is the place to review details about each Super Lot. There are multiple tabbed sheets that describe different aspects of the Super Lot, specifically General, Lot Assignment, Super Lot Attribute and Hold Details. At this writing only the General, Lot Assignment and Hold Details tabs are implemented. The Super Lots are generally transported by a Carrier, the Super Lot View has the ability to search by Super Lot Number. Once the search is completed the details of the super lot are display in the applicable tabbed sheets. 


### How to get there?



::: mermaid
graph LR
A("SUPER LOT VIEW")
:::


#### Permission


Can Access Lot/Batch Build - Super Lot View - Super Lot View View 



#### Screen Activity


Super Lot View enables user to perform the following activity:

- Review the details of the Super Lot, what it is, where is has been, the data collected on it, and any defects and rework that may have occurred.


- The ability to 'drill down' into more specific details via hyperlinks for some fields.



#### Pre Condition


The following data needs to be pre-configured before user able to view the Super Lot View

- Super Lot must be Released (created) to be found or have General details

- Super Lot must have been started at a Manual Station to have any History

- Super Lot must have been started at a Manual Station and had some applicable activities performed to see Data Collections and Defects ( Not yet implemented)

- Super Lot must have been started at a Manual Station and had one or more Lot Attributes assigned to see the Lot Assignments.

- Super Lot must have been hold at Super Lot Hold to see the Hold Details


#### Screen Dependency


Super Lot View

- Pre Conditions must be met to view any data in this screen

- No action is executed from this screen as it is a Viewer only

- Hyperlinks on this page require linked screen to be developed and accessible


#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>General Tab</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Super Lot Number</p></td><td style="text-align: left;" class="confluenceTd"><p>The Serial Number of the Super Lot</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Super Lot Quantity</p></td><td style="text-align: left;" class="confluenceTd"><p>The quantity of items of this Super Lot</p></td></tr><tr><td colspan="1" class="confluenceTd">Released Quantity</td><td colspan="1" class="confluenceTd">The quantity of released items of this Super Lot</td></tr><tr><td colspan="1" class="confluenceTd">Remaining Quantity</td><td colspan="1" class="confluenceTd">The remaining quantity of items of this Super Lot<br />"Remaining Quantity" = "Super Lot Quantity" - "Released Quantity"</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Status</p></td><td style="text-align: left;" class="confluenceTd"><p>The Status of the Super Lot. Status to currently include New, Ready, In Progress. In the future to include Cancelled, Completed, Shipped, OnHold</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Is Scrapped</td><td style="text-align: left;" colspan="1" class="confluenceTd">The indicator of whether the Super Lot is scrapped or not (Yes / No)</td></tr><tr><td colspan="1" class="confluenceTd">Is On Hold</td><td colspan="1" class="confluenceTd">The indicator of whether the Super Lot is on hold or not (Yes / No)</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Created Date</p></td><td style="text-align: left;" class="confluenceTd"><p>The Date Time that the Super Lot was created/released for the Planned Order</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Created By</p></td><td style="text-align: left;" class="confluenceTd"><p>The user that created/released the Super Lot</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Planned Order</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Name of the Planned Order the Super Lot was released against. Hyperlink to Planned Order View</td></tr><tr><td colspan="1" class="confluenceTd">Work Order</td><td colspan="1" class="confluenceTd">The Work Order Number the Super Lot was released against. Hyperlink to Work Order View</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Material</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Material Name of the items being produced by this Super Lot. Hyperlink to Material View</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Material Description</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>The Material Description of the items being produced by this Super Lot</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Product Family</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>The Material Product Family Name of the items being produced by this Super Lot if there is one assigned</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Customer</p></td><td style="text-align: left;" colspan="1" class="confluenceTd">The Customer this Super Lot of items is being produced for</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Division</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Division of a Customer this Super Lot of items is being produced for</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Bill of Materials</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>The Bill of Material Name of the items being produced by this Super Lot. Hyperlink to BOM View</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Container</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Container Number of the Super Lot being packed into.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Previous Planned Orders</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Previous Planned Orders of the completed Super Lots that have been consumed in the current release.</td></tr></tbody></table>



General Tab Example
This example shown was searched by Super Lot Number, the system then displays the Super Lot and related Super Lot General details. A Super Lot may be searched directly but may not be the typical method, see the example later in this document.
![image2020-10-30_16-31-17.png](/.attachments/81200094.png)


<table class="relative-table wrapped confluenceTable" style="width: 99.4928%;"><colgroup><col style="width: 15.1361%;" /><col style="width: 84.8639%;" /></colgroup><tbody><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><p style="text-align: center;"><strong>Lot Assignment Tab</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd">Internal Batch Number</td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Internal Batch Number will be automatically created during lot release</span></td></tr><tr><td style="text-align: left;" class="confluenceTd">Lot Quantity</td><td style="text-align: left;" class="confluenceTd">The quantity of items of this Internal Batch Number</td></tr><tr><td style="text-align: left;" class="confluenceTd">Status</td><td style="text-align: left;" class="confluenceTd">The Status of the Internal Batch Number. Status to currently include New, Ready, In Progress.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Last Scanned Step</td><td style="text-align: left;" class="confluenceTd">The last Route Step that the Super Lot was scanned at</td></tr><tr><td style="text-align: left;" class="confluenceTd">Last Operation</td><td style="text-align: left;" class="confluenceTd">The Status of the Operation for the last Operation executed. (PASS, FAIL)</td></tr><tr><td style="text-align: left;" class="confluenceTd">Last Operation Date</td><td style="text-align: left;" class="confluenceTd">The Date Time that the Operation executed</td></tr><tr><td style="text-align: left;" class="confluenceTd">In Queue Step</td><td style="text-align: left;" class="confluenceTd">The Route Step(s) that the Super Lot is enqueued. Super Lots are sometimes able to be processed at one or more Route Steps to support different equipment or other reasons</td></tr></tbody></table>


Lot Assignment Tab ExampleThis example is an example of the format of what a Lot Assignment will look like once we have been able to move a lot that has been released and an Operation is performed at a Route Step
![image2020-10-30_16-51-19.png](/.attachments/81200097.png)


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 14.608%;" /><col style="width: 85.392%;" /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Hold Details Tab</strong></td></tr><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Hold Date</td><td class="confluenceTd">Date and Time when the Superlot is on hold</td></tr><tr><td class="confluenceTd">Hold By</td><td class="confluenceTd">Person who perform the Superlot hold</td></tr><tr><td class="confluenceTd">Hold Reason</td><td class="confluenceTd">Reason for putting the Superlot on hold</td></tr><tr><td class="confluenceTd">Release Date</td><td class="confluenceTd">Date and Time when the Superlot is released from hold</td></tr><tr><td class="confluenceTd">Release By</td><td class="confluenceTd">Person who perform the Superlot release</td></tr><tr><td colspan="1" class="confluenceTd">Release Reason</td><td colspan="1" class="confluenceTd">Reason for releasing Superlot from hold</td></tr></tbody></table>

Hold Details Tab Example
This example is an example of the format of what a Hold Details will look like once we have put the Superlot on hold and release the Superlot from hold
![image2021-1-22_13-5-44.png](/.attachments/86311170.png)


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 14.1568%;" /><col style="width: 85.8432%;" /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Audit Log Tab</strong></td></tr><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Event</td><td class="confluenceTd">Event that has occured</td></tr><tr><td class="confluenceTd">Original Value</td><td class="confluenceTd">The original value assigned before the event occurred</td></tr><tr><td class="confluenceTd">New Value</td><td class="confluenceTd">The new value assigned after the event occurred</td></tr><tr><td class="confluenceTd">Action</td><td class="confluenceTd">Action of the event occured</td></tr><tr><td class="confluenceTd">Modified</td><td class="confluenceTd">When the event occurred</td></tr><tr><td class="confluenceTd">Modified By</td><td class="confluenceTd">User that initiated the event</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">Comment enter when the event occured</td></tr></tbody></table>

Audit Log Tab Example
This is an example of the format of what a Lot Audit tab will look like once and the event has occurred. 

![image2021-1-22_13-13-29.png](/.attachments/86311172.png)




#### Attachments

[image2020-10-30_16-31-17.png](/.attachments/81200094.png)
[image2020-10-30_16-51-19.png](/.attachments/81200097.png)
[image2021-1-22_13-5-44.png](/.attachments/86311170.png)
[image2021-1-22_13-13-29.png](/.attachments/86311172.png)

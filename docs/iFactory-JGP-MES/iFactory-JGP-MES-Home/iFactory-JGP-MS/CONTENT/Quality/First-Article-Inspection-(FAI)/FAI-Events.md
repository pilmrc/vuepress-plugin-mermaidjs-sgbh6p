# Introduction


The FAI Event screen allows users to view in progress, on hold, completed, and cancelled FAI Events.  The screen also allows the user to release FAI events that have failed (on hold) so that they can continue to be processed if necessary.The FAI Events screen defaults to displaying events that have a event status of 'On Hold' and have failed in the last 24 hours (as determined by end date).  The date window can be adjusted but is limited to a 24 hour period at a maximum based on the selected 'From' date.  Additionally, the Event Status can be changed to view other events.


### How to get there?


From the iFactory side bar menu choose the 'Quality' group and then the 'FAI Events' menu item.


#### Screen Activity


The FAI Events screen allows the user to perform the following activity:

- View FAI Events by event status.

- Cancel an in progress FAI event.

- Release FAI Events that have failed and been placed on hold.


#### Pre Condition


To view data, User must have a configured FAI Configuration and triggered FAI Events.


#### Screen Dependency


Not applicable.


#### Input Fields


<table class="confluenceTable"><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p><strong>Event Status</strong></p></td><td class="confluenceTd"><p><strong>On Hold - </strong>Date will be assessed on end date.</p></td></tr><tr><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><strong>In Progress</strong> - Date will be assessed on start date.</td></tr><tr><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><strong>Completed</strong> - Date will be assessed on end date.</td></tr><tr><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><strong>Cancelled</strong> - Date will be assessed on end date.</td></tr><tr><td class="confluenceTd"><p><strong>From</strong></p></td><td class="confluenceTd"><p>Used to define the date to search from when searching for FAI events.</p></td></tr><tr><td class="confluenceTd"><p><strong>To</strong></p></td><td class="confluenceTd"><p><span>Used to define the date to search to when searching for FAI events.</span></p></td></tr></tbody></table>




**Note:** 
Please note that if the From Date and To Date are the same date then no results will be displayed.  The dates used to search should be two separate values.![](/.attachments/29919576.png)




#### Results Fields


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p><strong>Event ID</strong></p></td><td class="confluenceTd"><p>The system assigned number assigned to identify the FAI event.</p></td></tr><tr><td class="confluenceTd"><p><strong>FAI Configuration</strong></p></td><td class="confluenceTd"><p>User defined unique name for the FAI configuration.</p></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Customer</strong></td><td colspan="1" class="confluenceTd">Identifies the Customer the FAI Event is assigned to.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Division</strong></td><td colspan="1" class="confluenceTd"><span>Identifies the Division the FAI Event is assigned to.</span></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Material/Rev/Ver</strong></td><td colspan="1" class="confluenceTd"><span>Identifies the material the FAI Event is assigned to. The material field will be empty for FAI events that are associated to an Assembly/revision/version.</span></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Assembly/Rev/Ver</strong></td><td colspan="1" class="confluenceTd"><span>Identifies the assembly, revision, and version the FAI Event is assigned to. The Assembly/Rev/Ver field will be empty for FAI events that are associated to a material.</span></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Route/Version</strong></td><td colspan="1" class="confluenceTd"><span>Identifies the route and version the FAI Event is assigned to. </span></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Route Step</strong></td><td colspan="1" class="confluenceTd"><span>Identifies the route step the FAI Event is assigned to.</span></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Start Date</strong></td><td colspan="1" class="confluenceTd"><span>Identifies the date the FAI event was started (triggered). </span></td></tr><tr><td colspan="1" class="confluenceTd"><strong>End Date</strong></td><td colspan="1" class="confluenceTd"><span>Identifies the date the FAI event ended.</span></td></tr></tbody></table>

**Note: The returned data in the results grid can be filtered by using the columns in the grid.  The filters are cumulative so the user can filter data on multiple columns.** 
![image2020-4-14_10-46-44.png](/.attachments/69632065.png)


Clicking on an individual Event ID in the results will make the Event Details visible in the lower portion of the screen.  The Event Details pane shows the same information that is viewable in the results columns with the added fields 'Hold Released By', 'Release Date', and 'Release Comment'.  These fields will not have information populated for events that have not been released.


#### Event Details Fields


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p><strong>Event ID</strong></p></td><td class="confluenceTd"><p>The system assigned number assigned to identify the FAI event.</p></td></tr><tr><td colspan="1" class="confluenceTd"><p><strong>Event Status</strong></p></td><td colspan="1" class="confluenceTd">Indicates the status of the FAI event.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Start Date</strong></td><td colspan="1" class="confluenceTd"><span>Identifies the date the FAI event was started (triggered).</span></td></tr><tr><td colspan="1" class="confluenceTd"><strong>End Date</strong></td><td colspan="1" class="confluenceTd"><span>Identifies the date the FAI event was completed or cancelled.</span></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Quantity</strong></td><td colspan="1" class="confluenceTd">Indicates the sample quantity for the FAI event.</td></tr><tr><td class="confluenceTd"><p><strong>Configuration</strong></p></td><td class="confluenceTd"><p>User defined unique name for the FAI configuration.</p></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Customer</strong></td><td colspan="1" class="confluenceTd">Identifies the Customer the FAI Event is assigned to.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Division</strong></td><td colspan="1" class="confluenceTd">Identifies the Division the FAI Event is assigned to.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Material Name</strong></td><td colspan="1" class="confluenceTd">Identifies the material the FAI Event is assigned to. The material field will be empty for FAI events that are associated to an Assembly/revision/version.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Assembly/Rev/Ver</strong></td><td colspan="1" class="confluenceTd">Identifies the assembly, revision, and version the FAI Event is assigned to. The Assembly/Rev/Ver field will be empty for FAI events that are associated to a material.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Route/Version</strong></td><td colspan="1" class="confluenceTd">Identifies the route version the FAI Event is assigned to.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Route Step</strong></td><td colspan="1" class="confluenceTd">Identifies the route step the FAI Event is assigned to.</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Hold Released By</strong></td><td colspan="1" class="confluenceTd">Indicates the user that released the block on a failed FAI event (if applicable).</td></tr><tr><td colspan="1" class="confluenceTd"><strong>Release Date</strong></td><td colspan="1" class="confluenceTd"><span>Indicates the date that a FAI Event was released after failing (if applicable).</span></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Release Comment</strong></td><td colspan="1" class="confluenceTd">Displays the comment entered by the u<span>ser that released the block on a failed FAI event (if applicable).</span></td></tr></tbody></table>





#### Attachments

[image2018-4-30 11:45:12.png](/.attachments/29919575.png)
[image2018-4-30 11:44:43.png](/.attachments/29919576.png)
[image2018-4-30 11:36:37.png](/.attachments/29919577.png)
[image2018-4-30 11:30:11.png](/.attachments/29919578.png)
[image2020-4-14_10-46-44.png](/.attachments/69632065.png)

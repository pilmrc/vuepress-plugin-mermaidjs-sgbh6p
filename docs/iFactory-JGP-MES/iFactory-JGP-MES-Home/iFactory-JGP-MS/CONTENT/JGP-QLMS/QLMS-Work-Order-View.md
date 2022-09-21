# Introduction

Work Order View is QLMS landing page where user can easily keep track the work order status when login to QLMS system.
This view allows user to create, view, edit and update work order information through Inspection Registration screen.
It also allows user to filter in order to view the related work order. Work Orders that display in Work Order view are based on user login ( user who created (Submitter)  , user who updated and report requester ), user in the selected submission unit and customer partition.


### How to get there?



::: mermaid
graph LR
A("QLMS LAB OPERATIONS")-->0("WORK ORDER VIEW")

:::


#### Permission (QLMS)



- Work Order View

- Can Access Work Order View


- Can Modify Work Order View



#### Screen Dependency



- [Inspection Registration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Inspection-Registration.md)



#### Selection Criteria


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 18.6125%;" /><col style="width: 81.3875%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Search by Filtering </td><td class="confluenceTd">User is able to search the Workorder by filtering:<br />All, Recently Created, Recently Modified</td></tr></tbody></table>




#### Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 18.5561%;" /><col style="width: 81.4439%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd">Filtering</td><td colspan="1" class="confluenceTd"><p>The Workorder View can be filtered by </p><ul><li>All : To view all the work orders</li><li>Recently Created: To view recently created work orders in last 10 days.</li><li>Recently Modified ( Default) : To view recently modified work orders in last 10 days.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Add</td><td colspan="1" class="confluenceTd">Allow user to add new work order. User will be redirected to Inspection Registration page</td></tr><tr><td class="confluenceTd">Actions</td><td class="confluenceTd">Edit action is allowed user to view and edit the Work Order at anytime. </td></tr><tr><td class="confluenceTd">Work Order ID</td><td class="confluenceTd">All the created Work Order ID will be displayed in this field . For those registered without work order ID will be displayed as blank in this field.</td></tr><tr><td class="confluenceTd">Measurement Building</td><td class="confluenceTd">The building that measuring activities will be carrying out.</td></tr><tr><td class="confluenceTd">Production Equipment</td><td class="confluenceTd">The production equipment that produced the unit(s).</td></tr><tr><td colspan="1" class="confluenceTd">Project</td><td colspan="1" class="confluenceTd">The project of the produced unit(s) that required measuring.</td></tr><tr><td colspan="1" class="confluenceTd"><p>Product Family</p></td><td colspan="1" class="confluenceTd">The product family of the produced unit(s) that required measuring.</td></tr><tr><td colspan="1" class="confluenceTd">Material </td><td colspan="1" class="confluenceTd">The material of the produced unit(s) that required measuring.</td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd">The route of the produced unit(s). <span style="color: rgb(23,43,77);">This column showed the </span><span style="color: rgb(23,43,77);">registered route and route version and it will display NA if there is no route registered for the workorder. The route version display to let user to view which route version has been selected.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The route step of the produced unit(s). <span style="color: rgb(23,43,77);">This column showed the registered route step </span><span style="color: rgb(23,43,77);">and display NA if there is no route step registered for the workorder.</span></td></tr><tr><td colspan="1" class="confluenceTd">Shift</td><td colspan="1" class="confluenceTd">The production shift that produced the unit(s) for measuring.</td></tr><tr><td colspan="1" class="confluenceTd">Process Type</td><td colspan="1" class="confluenceTd">The process type that produced the unit(s) for measuring.</td></tr><tr><td colspan="1" class="confluenceTd">Submitter</td><td colspan="1" class="confluenceTd"><p>The person who submitted the work-order.</p></td></tr><tr><td colspan="1" class="confluenceTd">Report Requester</td><td colspan="1" class="confluenceTd">The person who requested for the report of the Work Order.</td></tr><tr><td colspan="1" class="confluenceTd">Submission Date </td><td colspan="1" class="confluenceTd">The date when the work order is submitted</td></tr><tr><td colspan="1" class="confluenceTd">Rejection Date </td><td colspan="1" class="confluenceTd">The date when the work order is rejected by Lab personnel.</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">The status of the work order.</td></tr></tbody></table>



#### Attachments

[image2019-8-30_15-46-3.png](/.attachments/56950805.png)

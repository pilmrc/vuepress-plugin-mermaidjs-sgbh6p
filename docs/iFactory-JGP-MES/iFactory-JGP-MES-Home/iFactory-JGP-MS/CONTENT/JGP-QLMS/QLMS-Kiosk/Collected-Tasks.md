# Introduction

Collected Tasks screen provides the ability to the user to 
complete/ pause /resume allocated by equipment tasks, allocated by personnel tasks and unallocated tasks through Kiosks.


### How to get there


Both NT Login user and non-NT login user can access this screen through Kiosk.

::: mermaid
graph LR
A("QLMS LAB OPERATIONS")
:::
![image2019-9-23_14-22-33.png](/.attachments/57639635.png)



::: mermaid
graph LR
A("KIOSK")
:::
![wiki arrow.png](/.attachments/57639636.png)



::: mermaid
graph LR
A("COLLECTED TASKS")
:::


#### Screen Activity


Collected Tasks screen enables user to perform the following activity:

- Complete the task from the collected task Allocated by Equipment/Allocated by Personnel/Unallocated Tasks


- Pause the task with partial / complete quantity for tasks allocated by Allocated by Equipment/Allocated by Personnel/Unallocated Tasks


- Resume the paused task with remaining quantity


- If there is deleted in iFactory / Dimension Maintenance, system will handle deleted in iFactory / Dimension Maintenance configuration:


- All the configured data (Project, Product Family, Material, Route/Version, Route Step, Job Type, Measuring Equipment Type)



will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.


#### Pre-Conditions



- At-least one

Work Order against user login, is available with 
status "
Task in Progress" or" Paused"

#### Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 16.8641%;" /><col style="width: 83.1923%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Work Order ID</td><td class="confluenceTd">System will list all the workorder ID based on the login's employee ID with the status "Task in Progress" or " Paused"</td></tr><tr><td colspan="1" class="confluenceTd">Task Name</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The name of the task</span></td></tr><tr><td class="confluenceTd">Status</td><td class="confluenceTd"><p>The status of the task.</p></td></tr><tr><td class="confluenceTd">Project</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">The project that associated with the work order ID.</span></td></tr><tr><td class="confluenceTd">Product Family</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">The product family of unit that need for measuring.</span></td></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">The material of unit that need for measuring.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The route that produced products(s) need to be measuring. The filed showed route and route version value which registered in inspection registration and display NA if there is no route registered for workorder.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The route step that produced products(s) need to be measuring. The filed showed route step value which registered in inspection registration and display NA if there is no route step registered for workorder.</span></td></tr><tr><td class="confluenceTd">Job Type</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">The measurement type that work order associated to.</span></td></tr><tr><td class="confluenceTd">Measuring Equipment Type</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">The measurement equipment type that user used for measuring,</span></td></tr><tr><td colspan="1" class="confluenceTd">Measuring Equipment Model</td><td colspan="1" class="confluenceTd">The measurement equipment model that user used for measuring.</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">The quantity that have been collected by user.</td></tr><tr><td colspan="1" class="confluenceTd">Urgency Status</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Indicate how urgent is the work order.</span></td></tr><tr><td colspan="1" class="confluenceTd">Process ID</td><td colspan="1" class="confluenceTd">Indicate the process ID of the task.</td></tr><tr><td colspan="1" class="confluenceTd">Start Date Time</td><td colspan="1" class="confluenceTd">Start Date Time will be captured when the user collect the task in collect task screen to indicate when user started the task.</td></tr></tbody></table>



#### Confirmation Pop-up field


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 16.0745%;" /><col style="width: 83.9255%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">WorkOrder ID</td><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Prompt a screen for user to scan the work order ID ( Mandatory) </span></p><p>Complete button - Allow user to complete the task.</p><p>Pause button - Allow user to pause the in progress task and provide how many quantity have been completed before pausing.</p><p>Resume button - Allow user to resume the paused task with remaining quantity.</p></td></tr></tbody></table>



#### Attachments

[image2019-9-23_14-22-33.png](/.attachments/57639635.png)
[wiki arrow.png](/.attachments/57639636.png)

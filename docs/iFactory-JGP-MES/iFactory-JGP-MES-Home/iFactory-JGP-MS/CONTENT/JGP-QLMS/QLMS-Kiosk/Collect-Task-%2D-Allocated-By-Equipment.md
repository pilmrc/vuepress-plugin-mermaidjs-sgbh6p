# Introduction

Collect Task enables user to collect tasks which is allocated by Equipment. 


### How to get there?


Both NT Login user and non-NT login user can access this screen through Kiosk only.

::: mermaid
graph LR
A("QLMS Lab Operations")-->0("KIOSK")
0-->1("COLLECT TASK")
1-->2("Allocated by equipment")

:::


#### **Screen Activity** 


'Collect Task - Allocated by Equipment' screen enables user to perform the following activity:

- User has to select Measuring Equipment type and relative Equipment model to search the available tasks for collection

- If there is deleted in iFactory / Dimension Maintenance, system will handle deleted in iFactory / Dimension Maintenance configuration:


- All the configured data (Project, Product Family, Material, Route/Version, Route Step, Job Type, Measuring Equipment Type)



will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.

- If the Measuring Equipment Model is soft deleted after user had done the task allocation to the resource

- system will shows the soft deleted resource if there is a task assigned.

- system will not show the soft deleted resource if there is no task assigned.

- Confirm Work Order ID once user tries to collect the task allocated by Equipment

- User can collect the tasks having status "
Allocated
" 
- Once collected,

- System automatically
records the start datetime, quantity and measuring user in back-end

- Task is being marked with status as " Task In Progress" whereas Work Order status is being set to " Measuring in Progress "




#### **Pre-condition** 



- Work order's tasks are allocated by equipment will be available for collection in Allocated by Equipment.


#### **Filter by parameters** 


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Fields</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Measuring Equipment Type</td><td class="confluenceTd">To select which equipment type to be search</td></tr><tr><td class="confluenceTd">Measuring Equipment Model</td><td class="confluenceTd">Measuring equipment model will be displayed based on the selected measuring equipment type</td></tr></tbody></table>



#### **Grid Columns (Read-only Values)** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Work Order ID</p></td><td style="text-align: left;" class="confluenceTd"><p>All the Work Order IDs which allocated by equipment are listed here.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Task Name</span></td><td style="text-align: left;" class="confluenceTd"><p>Populates as per allocated task against Work Order ID of selected Equipment Model</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Status</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The task status.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Project</span></p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The project that associated with the work order ID.</span></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Product Family</span></td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">The product family of unit that need for measuring.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Material</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The material of unit that need for measuring.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The route that produced products(s) need to be measuring. The filed showed route and route version value which registered in inspection registration and display NA if there is no route registered for workorder.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The route step that produced products(s) need to be measuring. The filed showed route step value which registered in inspection registration and display NA if there is no route step registered for workorder.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Allocated Qty</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">The quantity that has been allocated to the task.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Job type</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The measurement type that work order associated to.</span></td></tr></tbody></table>



#### **Task Collection confirmation Pop-up Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Work Order ID</p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Prompt a screen for user to scan the work order ID ( Mandatory) </span></p></td></tr></tbody></table>


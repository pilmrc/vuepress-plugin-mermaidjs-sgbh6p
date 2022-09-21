# Introduction

Collect Task enables user to collect tasks which have assigned to him/her from allocated by personnel. Assigned tasks will be listed based on their employee ID.


### How to get there?


Both NT Login user and non-NT login user can access this screen through Kiosk only.

::: mermaid
graph LR
A("QLMS Lab Operations")-->0("KIOSK")
0-->1("COLLECT TASK")
1-->2("ALLOCATED BY Personnel")

:::


#### **Screen Activity** 


'Collect Task - Allocated by Personnel' screen enables user to perform the following activity:

- System automatically fetches the employee ID of the logged in user and provides the list of allocated tasks to that personnel

- Confirm Work Order ID once user tries to collect the task allocated by Personnel

- User can collect the tasks having status "
Allocated
" 
- Once collected,

- System automatically
records the start datetime, quantity and measuring user in back-end

- Task is being marked with status as " Task In Progress" whereas Work Order status is being set to " Measuring in Progress "


- System allows to collect the tasks maintaining flow if it was allocated Personnel in flow. If user selects work order with Process ID, then system validates if the work order is executed in sequence. If it is not in sequence , then prompts a message " You can't select this task due to this work order XXX with Process ID XX has not completed."


- If there is deleted in iFactory / Dimension Maintenance, system will handle deleted in iFactory / Dimension Maintenance configuration:


- All the configured data (Project, Product Family, Material, Route/Version, Route Step, Job Type, Measuring Equipment Type)



will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.


#### **Pre-condition** 



- Work order's tasks are allocated by personnel will be available for collection in Allocated by personnel.



#### **Grid Columns (Read-only Values)** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Work Order ID</p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">All the Work Order IDs which allocated to the login user will be listed here.</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Task Name</span></td><td style="text-align: left;" class="confluenceTd"><p>The name of the task</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Status</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">The task status.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Project</span></p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The project that associated with the work order ID.</span></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Product Family</span></td><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">The product family of unit that need for measuring.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Material</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The material of unit that need for measuring.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The route that produced products(s) need to be measuring. The filed showed route and route version value which registered in inspection registration and display NA if there is no route registered for workorder.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The route step that produced products(s) need to be measuring. The filed showed route step value which registered in inspection registration and display NA if there is no route step registered for workorder.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Allocated Qty</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The quantity that has been allocated to the task.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Job type</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The measurement type that work order associated to.</span></td></tr><tr><td colspan="1" class="confluenceTd">Measuring Equipment Type</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The measurement equipment type that user needs to measure the unit.</span></td></tr><tr><td colspan="1" class="confluenceTd">Urgency Status</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Indicate how urgent is the work order.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Process ID</td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li>Populates as 0 for the task allocation by Personnel '1 to 1' OR '1 to many by Average'</li><li>Populates the flow (non-zero ID) for the task allocation by Personnel '1 to Many by Flow'</li></ul></td></tr></tbody></table>


- #### **Task Collection confirmation Pop-up Fields**


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Work Order ID</p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Prompt a screen for user to scan the work order ID ( Mandatory) </span></p></td></tr></tbody></table>


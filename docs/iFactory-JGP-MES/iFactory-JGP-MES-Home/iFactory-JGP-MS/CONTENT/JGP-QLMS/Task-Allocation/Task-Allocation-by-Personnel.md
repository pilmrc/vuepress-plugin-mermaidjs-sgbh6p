# Introduction



### Screen Activity



- Allow user to allocate the tasks for the selected work order.

- Allow user to select task allocations type = Personnel


- If there is deleted in iFactory / Dimension Maintenance, system will handle deleted in iFactory / Dimension Maintenance configuration:


- All the configured data (Project, Product Family, Material, Route/Version, Route Step, Job Type, Measuring Equipment Type) will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.



#### Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 18.2177%;" /><col style="width: 81.7823%;" /></colgroup><tbody><tr><th class="confluenceTh">Field </th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Allocated By</td><td class="confluenceTd">Allow user to allocate tasks by Personnel</td></tr><tr><td class="confluenceTd">Allocation Method</td><td class="confluenceTd"><p>User is allowed to select the allocation methods below</p><ul><li>1 to 1 </li><li>1 to Many by Average</li><li>1 to Many by Flow</li></ul></td></tr><tr><td class="confluenceTd">Measuring shift</td><td class="confluenceTd"><p>User is allowed to select the measuring shift</p><p><span style="color: rgb(23,43,77);">Pre-condition : user needs to create the time shift at Shift Maintenance.</span></p></td></tr></tbody></table>


- #### Allocation Method = 1 to 1

User can only assign one measuring user for this task. Once assigned, then disable the " +" button.
<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 18.2177%;" /><col style="width: 81.7823%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Measuring User</td><td class="confluenceTd"><p>For NTID user, user can search their name and select from the list.</p><p>For Non NTID user, user is required to key in their name manually.</p></td></tr><tr><td class="confluenceTd">Measuring User Employee ID</td><td class="confluenceTd"><p>For NTID user,  Measuring User Employee ID will automatically display when the user name is selected.</p><p>For Non NTID user, user is required to key in their employee ID manually.</p></td></tr><tr><td class="confluenceTd">Quantity</td><td class="confluenceTd"><p>Assign the quantity of units to be measuring by assigned user.</p><p><span style="color: rgb(23,43,77);">System will validate if the assigned quantity has exceeded the submitted quantity.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Actions</td><td colspan="1" class="confluenceTd">Allow user to edit, update and delete the item.</td></tr></tbody></table>



#### Allocation Method = 1 to Many by Average


User can allocate one task to multiple measuring users.
<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 17.6537%;" /><col style="width: 82.3463%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Measuring User</td><td class="confluenceTd"><p>For NTID user, user can search their name and select from the list.</p><p>For Non NTID user, user is required to key in their name manually.</p></td></tr><tr><td class="confluenceTd">Measuring User Employee ID</td><td class="confluenceTd"><p>For NTID user,  Measuring User Employee ID will automatically display when the user name is selected.</p><p>For Non NTID user, user is required to key in their employee ID manually.</p></td></tr><tr><td class="confluenceTd">Quantity</td><td class="confluenceTd"><p>Assign the quantity of units to be measuring by assigned user.</p><p><span style="color: rgb(23,43,77);">System will validate if the assigned quantity has exceeded the submitted quantity.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Actions</td><td colspan="1" class="confluenceTd">Allow user to edit, update and delete the item.</td></tr></tbody></table>



#### Allocation Method = 1 to Many by Flow


User can allocate one task to multiple measuring user by flow.
<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 17.7101%;" /><col style="width: 82.2899%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Quantity</td><td class="confluenceTd"><p>User is allowed to configure only once for the quantity of unit to be measuring by assigned user.</p><p>System will validate if the total quantity has exceeded the submitted quantity before saving.</p></td></tr><tr><td class="confluenceTd">Measuring User</td><td class="confluenceTd"><p>For NTID user, user can search their name and select from the list.</p><p>For Non NTID user, user is required to key in their name manually.</p></td></tr><tr><td class="confluenceTd">Measuring User Employee ID</td><td class="confluenceTd"><p>For NTID user,  Measuring User Employee ID will automatically display when the user name is selected.</p><p>For Non NTID user, user is required to key in their employee ID manually.</p></td></tr><tr><td class="confluenceTd">Process Flow</td><td class="confluenceTd"><p>Allow to choose the process flow for each measuring user</p><p>Process Flow is to identify the sequence of task. </p><p>For an example , if the task with process flow 1 hasn't completed then task with process flow 2 can't be started.</p></td></tr><tr><td class="confluenceTd">Actions</td><td class="confluenceTd">Allow user to edit, update and delete the item.</td></tr></tbody></table>

Add task allocation to work order
![image2019-10-29_8-40-2.png](/.attachments/59441349.png)


Choose Allocated by Personnel
![image2019-12-3_9-39-5.png](/.attachments/61079838.png)



Choose Allocation Method
![image2019-12-3_9-39-29.png](/.attachments/61079839.png)


Choose the Measuring Shift
![image2019-12-3_9-39-52.png](/.attachments/61079840.png)


Click on "Add" to add Measuring User to the task allocation
![image2019-12-3_9-42-43.png](/.attachments/61079841.png)


Click "Save" to save the configuration
![image2019-12-3_9-43-3.png](/.attachments/61079842.png)





#### Attachments

[image2019-10-29_8-40-2.png](/.attachments/59441349.png)
[image2019-10-29_8-40-54.png](/.attachments/59441350.png)
[image2019-10-29_8-41-40.png](/.attachments/59441351.png)
[image2019-10-29_8-42-28.png](/.attachments/59441352.png)
[image2019-10-29_8-43-21.png](/.attachments/59441353.png)
[image2019-10-29_8-44-25.png](/.attachments/59441354.png)
[image2019-12-3_9-39-5.png](/.attachments/61079838.png)
[image2019-12-3_9-39-29.png](/.attachments/61079839.png)
[image2019-12-3_9-39-52.png](/.attachments/61079840.png)
[image2019-12-3_9-42-43.png](/.attachments/61079841.png)
[image2019-12-3_9-43-3.png](/.attachments/61079842.png)

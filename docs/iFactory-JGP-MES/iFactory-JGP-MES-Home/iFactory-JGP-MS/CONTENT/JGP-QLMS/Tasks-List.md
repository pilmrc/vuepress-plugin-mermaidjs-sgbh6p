# Introduction

This screen allows authorized user to re-assign an in-progress / paused/ allocated task to another operators so that the task can be continued without delay. It mostly happens when there is a shift change where collected task is not completed yet and hence another person available in next shift can be re-assigned for pending task.


### How to get there?



::: mermaid
graph LR
A("QLMS lab operations")-->0("tasks list")

:::


#### Permissions



- QLMS Tasks List


- Can Modify Tasks List


- Can Access Tasks List



#### Screen Activity


Tasks List screen enables user to perform the following activities:

- Allow user to see all available work order with status 'Paused', 'Allocated' and 'In Progress'

- User can filter the Work orders based on below criteria

- Work Order ID, Task Status (Paused, Allocated and In Progress), Employee Name, Employee ID

- Reassign a user for a paused / allocated task


- Reassign a user for 'In progress' task after providing Paused Datetime



#### **Screen Specification** 


The page loads with Work-order ID having status 'Paused'
User can clear the filter criteria to reset to all
User can search any kiosk user (NT and non-NT user both) and re-assign the task
System validates the paused datetime has to be between collected datetime and current datetime
The task will be set as 'Allocated' once reassigned
When the task is re-assigned, same task to be available in 'Collect task' against re-assigned personnel
![image2019-11-20_7-19-4.png](/.attachments/61079628.png)




#### **Fields** 



**Filter criteria** 
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Work Order ID</span></p></td><td style="text-align: left;" class="confluenceTd"><p>Allow user to scan/ insert WO ID to get viewed only tasks against it</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Task Status</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>By default, it is set as 'Paused'. But user has the option to set 'In Progress' and 'Allocated'</p></td></tr><tr><td colspan="1" class="confluenceTd">Employee Name</td><td colspan="1" class="confluenceTd">User can filter by employee name(both NTID and Non- NTID user that registered with QLMS ). On doing this, all the available allocated/in progress/Paused task against selected user to be available</td></tr><tr><td colspan="1" class="confluenceTd">Employee ID</td><td colspan="1" class="confluenceTd">This is a read-only field. It's auto-populated when employee name is selected.</td></tr></tbody></table>


**Available field detail in Task Lists grid** 
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Actions</td><td colspan="1" class="confluenceTd"><p>User can reassign the user for selected task row here.</p><p>For 'In progress' task, user has to key in paused datetime including reassigned user. The paused datetime will be using for personnel efficiency calculation.</p><p>For Allocated / Paused task, user has to enter only re-assigned user</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Work Order ID</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">This field shows all the Work order IDs matched with filtered criteria provided by user</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Task Name</td><td style="text-align: left;" colspan="1" class="confluenceTd">Retrieves tasks (only with status Allocated, In Progress and Paused) against available Work-order</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Task Status</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Retrieves the value as per relative task row.</p><p>Once reassigned, the task will be available with 'Allocated' status</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Collected Datetime</td><td style="text-align: left;" colspan="1" class="confluenceTd">Retrieves the value as per relative task collection time (if available). If not available, shows it as BLANK</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Remaining Quantity</td><td style="text-align: left;" colspan="1" class="confluenceTd">The remaining quantity of the relative task  that needed for measurement/inspection.</td></tr><tr><td colspan="1" class="confluenceTd">Measuring User</td><td colspan="1" class="confluenceTd">The assigned / reassigned person for measurement/inspection.</td></tr><tr><td colspan="1" class="confluenceTd">Measuring user Employee ID</td><td colspan="1" class="confluenceTd">The assigned/reassigned person's employee ID </td></tr></tbody></table>



#### Attachments

[image2019-8-30_15-46-3.png](/.attachments/61079627.png)
[image2019-11-20_7-19-4.png](/.attachments/61079628.png)

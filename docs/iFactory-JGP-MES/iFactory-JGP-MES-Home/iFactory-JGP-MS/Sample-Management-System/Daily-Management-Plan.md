# Introduction

Daily Management Plan screen is used to configure the frequency , notification , task owner and escalation for the particular project , product group ,task type and sample type. This plan will be using for defining task's next due date , notification to be triggered , assign task owner and trigger escalation. User need to execute their tasks based on this plan. 


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT CONFIGURATION")-->0("Daily ManAGEMENT PLAN")

:::


#### **Permission ( Ifactory.SMS)** 



- Daily Management Plan


- Can modify Daily Management Plan.


- Can bulk upload Daily management Plan


- Can copy Daily Management Plan


- Can bulk upload Daily Managment Plan

**Screen Activity** 
This screen enables user to perform the following activity:

- Create, view, update , copy and delete records

- Configure routine checkup and routine review frequency

- Configure notification rules

- Configure task owner

- Configure escalation rules



#### **Precondition** 


Project Phase and Sample Type needs to be configured before can configure Daily Management Plan.



#### **Screen Dependency** 


The following screen(s) has dependency with this configuration.

- Routine Checkup List

- My Task - Pending , Completed ,Overdue


#### **Screen Specification** 


System validates unique
configuration combination of project , product group , task type and sample type. If duplicates, throws error and new data does not get created.

- If user created project  + product group = ALL + sample type =ALL + task type = other tasks ,

- User is allowed to create project + product group =ALL +Sample Type =ALL + task type = Routine Checkup. OR project + specific product group + specific sample type  + task type = Routine Checkup.

- User is NOT allowed to create project + specific product group + specific sample type  + task type = EOL/Expired/Routine/Phase change/Q&E Review.

- If user created project  + product group = ALL + sample type =ALL + task type = Routine Checkup ,

- User is allowed to create project + product group =ALL +Sample Type =ALL + task type = other tasks OR project + specific product group + specific sample type  + task type = EOL/Expired/Routine/Phase change/Q&E Review

- User is NOT allowed to create
project + specific product group + specific sample type  + task type =Routine Checkup.
- This screen is showing all the data based on assigned data partition , but regardless of logged-on with which customer/division.


#### **Fields** 



<table class="relative-table wrapped confluenceTable" style="width: 87.0049%;"><colgroup><col style="width: 14.8691%;" /><col style="width: 85.1439%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Project</td><td style="text-align: left;" class="confluenceTd"><p>Project that required for Daily Management Plan.</p><ul style="text-align: left;"><li><span>The project selection will be displayed based on logged-on data partition.</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd">Product Group</td><td style="text-align: left;" class="confluenceTd"><p>Product group that required for Daily Management Plan.</p><ul><li>The available product group is depending on the selected project.</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Task Type</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Task Type that required for Daily Management Plan.</p><ul style="text-align: left;"><li><span>Values: Routine Checkup, EOL Review, Routine Review, Expired Review, Phase Change </span><span>Review, Q & E Review, other tasks.</span></li><li><span>If user selected Other Tasks, then it will be including ONLY EOL Review, Routine Review, Expired Review, Phase Change Review and Q & E Review tasks.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Sample Type</td><td style="text-align: left;" colspan="1" class="confluenceTd">Sample Type that required for Daily Management Plan.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Active</td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>Default to Active</span></li><li><span>If it is turn ON, then</span></li><ul><li><span>System will trigger notification/ escalation rules</span></li><li><span>Assign task to task owner</span></li><li><span>User needs to perform routine checkup.</span></li></ul><li><span>If it is turn OFF, then</span></li><ul><li><span>System will stop all the notification/escalation triggering</span></li><li><span>No task assignment to task owner</span></li><li><span>Not required to perform routine checkup.</span></li></ul><li><span><span style="color: rgb(0,0,0);">User is allowed to turn ON or OFF the Active anytime and it will reflect to the records at run time </span><span style="color: rgb(0,0,0);">immediately</span><span style="color: rgb(0,0,0);">.</span></span></li></ul></td></tr><tr><th colspan="2" class="confluenceTh">Frequency Section</th></tr><tr><td colspan="1" class="confluenceTd">Routine Checkup Frequency </td><td colspan="1" class="confluenceTd"><ul><li>This Routine Checkup frequency will determine how frequent the sample quantity need to be check.</li><li>Notification to department owner will be triggered based on the routine checkup frequency and latest receipted date.</li><li>The maximum value can be accepted is 365 days.</li><li>This field is required if Task Type = Routine Checkup </li><li>e.g Routine checkup frequency = 3 , means every 3 days need to perform routine checkup .</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Routine Review Frequency</td><td colspan="1" class="confluenceTd"><ul><li>This Routine Review frequency will determine how frequent the sample condition need to be check.</li><li>Notification to task owner will be triggered based on the routine review frequency and sample application form submission date.</li><li>The maximum value can be accepted is 365 days.</li><li>This field is required if Task Type = Routine Review</li><li>e.g Routine checkup frequency = 30 , means every 30 days need to perform routine review.</li></ul></td></tr><tr><th colspan="2" class="confluenceTh"><strong>Notification Section</strong></th></tr><tr><td colspan="1" class="confluenceTd">Notification before Due Date</td><td colspan="1" class="confluenceTd"><ul><li>This will determine how many days before due date that the notification need to be triggered.</li><li>This field can accept 0 and 0 means on due date itself.</li><li><span>Notification before due date cannot be greater than routine checkup frequency</span></li><li>e.g notification before due date= 3 , means 3 days before need to notify user about the task.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Notification Recurrence Pattern</td><td colspan="1" class="confluenceTd"><ul><li>This will determine if the notification need to be sent again after the first notification and how frequent need to send.</li><li>e.g Notification Recurrence Pattern = 2 , means every 2 days need to send user a notification after the first notification.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Task Owner</td><td colspan="1" class="confluenceTd"><ul><li>Task owner that required for managing the tasks</li><li><span style="color: rgb(0,0,0);">This task owner configuration only applicable for EOL review, Expired review, Routine review, Phase change review and Q&E Review task type.</span></li><li><span style="color: rgb(0,0,0);">Maximum user can be configured is 10.</span></li></ul></td></tr><tr><th colspan="2" class="confluenceTh">Escalation Section</th></tr><tr><td colspan="1" class="confluenceTd">Escalation Level</td><td colspan="1" class="confluenceTd"><ul><li>System will trigger the escalation based on the defined escalation level.</li><li>The first click on ADD button , system will auto show level 1 and subsequence click on ADD button, system will auto increase the number.</li><li>Maximum level can be configured is 10.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Escalate to</td><td colspan="1" class="confluenceTd"><ul><li>Escalation email notification will trigger to the user that configure in Escalate to.</li><li>This escalate to only applicable for <span style="color: rgb(0,0,0);">EOL review, Expired review, Routine review, Phase change review and Q&E Review task type..</span></li><li><span style="color: rgb(0,0,0);">Maximum user can be configured is 10.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Escalation before due date</td><td colspan="1" class="confluenceTd"><ul><li>This will determine how many days before due date that the notification need to be triggered if the user didn't perform the task after gotten the notification.</li><li>This field can accept 1 and onwards.</li><li><span>Escalation before due date is configurable only for Level 1. </span></li><li><span>Escalation before due date is not applicable sub-sequent levels.</span></li><li><span>Escalation before due date cannot be greater than or equal to Notification before due date.</span></li><li><span>Escalation before due date cannot be greater than routine checkup frequency</span></li><li>e.g. Escalation before due date= 3 , means 3 days before need to escalate user about the task if user hasn't performed the task.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Escalation if task overdue</td><td colspan="1" class="confluenceTd"><ul><li>This will determine how many days after due date that the notification need to be triggered if the user didn't perform the task by due date.</li><li>This field can accept 1 and onwards.</li><li>e.g. Escalation if task overdue= 1 , means once the task is overdue then escalation email will be triggered.</li><li>Subsequent level can't be smaller than the previous level</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Overdue Escalation Recurrence Pattern</td><td colspan="1" class="confluenceTd"><ul><li>This will determine if the escalation email need to be sent again after the first escalation and how frequent need to send.</li><li>e.g Overdue Escalation Recurrence Pattern = 2 , means every 2 days need to send escalation email after the first escalation.</li></ul></td></tr></tbody></table>


- #### **Daily Management Run Time**


- If the task type is routine checkup and activated , then system will

- Calculate the routine checkup date based on the configured routine checkup frequency and the latest receipted date.

- Notification

- Triger notification to the assigned department owner in sample ID based on department configuration.

- Trigger the notification how many days before the routine checkup date if it is configured.

- Trigger the recurrence notification if it is configured . This recurrence notification will be triggered if notified user for the first but no execution since then.

- The recurrence notification will stop if user has completed the task OR the escalation is kicked in OR the task is overdue.

- If routine checkup frequency is less than or equal to 3 days then no notification will be triggered but system need to auto change the task status to " pending routine checkup".

- Escalation

- Trigger escalation to the department leader that assigned to the department and copy department owner if user didn't execute the task after the first notification.

- Trigger the escalation how many days before the routine checkup date if it is configured . This escalation will be triggered if user didn't execute the task after the first notification.

- Trigger the escalation how many days after overdue the routine checkup date if it is configured. This escalation will be triggered if the task is overdue.

- Trigger the recurrence overdue escalation if it is configured . This recurrence overdue escalation will be triggered if the task is overdue and no execution since the first overdue escalation.

- The recurrence overdue escalation will stop if user has completed the task.

- If the routine checkup frequency is changed:

- Existing 'Pending Routine checkup' need to be removed in Sample task status

- Existing 'Routine Checkup Overdue' task need to be moved to historical data with comments "Overdue and not required to execute"

- Next 'Pending Routine Checkup' due date will be calculated based on 'routine checkup frequency change date'

- Update the Next Due Date for 'Completed Routine Checkup' in Task Status base on
'routine checkup frequency change date' 
- If the task type = EOL/Expired/Routine/Phase Change/Q&E / Other tasks and activated , then system will

- Assign task owner based on the daily management plan.

- Calculate the routine review date based on the configured review frequency from sample application form submission date for Task Type = Routine Review or Other Tasks.

- If the routine review frequency is changed:

- Existing 'Pending Routine Review' need to be removed in Sample task status

- Existing 'Routine Review Overdue' task need to be moved to historical data with comments "Overdue and not required to execute"

- Next 'Pending Routine Review' due date will be calculated based on 'routine checkup frequency change date'

- Update the Next Due Date for 'Completed Routine Review' in Task Status base on
'routine review frequency change date' 
- Notification

- Triger notification to the assigned Task owner in sample ID based on daily management plan.

- Trigger the notification how many days before the due date if it is configured.

- Trigger the recurrence notification if it is configured . This recurrence notification will be triggered if notified user for the first but no execution since then.

- The recurrence notification will stop if user has completed the task OR the escalation is kicked in OR the task is overdue.

- If review frequency is less than or equal to 3 days then no notification will be  triggered but system need to auto change the task status to " Pending routine review".

- Escalation

- Trigger escalation to the escalation level 1 and copy the task owner if user didn't execute the task after the first notification.

- Trigger the escalation how many days before the due date if it is configured . This escalation will be triggered if user didn't execute the task after the first notification.

- Trigger the escalation how many days after overdue the due date if it is configured. This escalation will be triggered if the task is overdue.

- Trigger the recurrence overdue escalation if it is configured . This recurrence overdue escalation will be triggered if the task is overdue and no execution since the first overdue escalation.

- The recurrence overdue escalation will stop if user has completed the task.

- Trigger the escalation to sub-sequence level then need to copy the previous escalation level user and task owner. The sub-sequence escalation level will be kicked in if user didn't execute the task after the previous escalation.

- The previous escalation will be stopped immediately if the subsequence escalation is kicked in.

- Escalation will stop if user has completed the task.

- Special handling for Phase change and Q&E review.

- Phase Change Review - If the phase change effective date  = current date , then trigger the escalation level 1 directly.

- Q &E Review - If Q&E target completion date = current date , then trigger the escalation level 1 directly.

- The due date for each of the task :

<table class="wrapped confluenceTable"><colgroup><col style="width: 157.0pt;" /><col style="width: 734.0pt;" /></colgroup><tbody><tr><th class="confluenceTh">Task Type </th><th class="confluenceTh">Due Date</th></tr><tr><td class="confluenceTd">Routine Checkup </td><td class="confluenceTd">Routine Checkup Date  = calculate based on the latest receipted date and the configured routine checkup frequency</td></tr><tr><td class="confluenceTd">EOL Review</td><td class="confluenceTd">EOL date = the provided EOL date in sample ID.</td></tr><tr><td class="confluenceTd">Expired Review</td><td class="confluenceTd">Expired review date = the provided validity date in sample ID</td></tr><tr><td class="confluenceTd">Routine Review</td><td class="confluenceTd">Routine Review date = Calculate based on the configured review frequency and the sample application form submission date.</td></tr><tr><td class="confluenceTd">Phase Change Review</td><td class="confluenceTd">Phase Change effective date in sample ID  = the phase change effective date that associated to the project + product group + phase in project phase maintenance</td></tr><tr><td class="confluenceTd">Q&E Review </td><td class="confluenceTd">Q&E target completion date provided to the sample ID.</td></tr></tbody></table>


- System will group the sample numbers that have the same configuration in one email then trigger to task owner  or escalate to.

- For routine checkup , it is based on department configuration.

- For EOL/Expired/Routine/Phase Change/Q&E / Other tasks, it is based on Daily Management Plan

- Scenarios
![image.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/8005801d-6e73-40ea-9fe0-ec404d976d46?fileName=image.png)


![image.png](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/8ae8d960-bc5d-4c2d-99bc-83c6f8c44602?fileName=image.png)



- Task status will be changed based on the configured daily management plan and its due date.

<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 7.8657%;" /><col style="width: 26.4512%;" /><col style="width: 50.9675%;" /><col style="width: 14.73%;" /></colgroup><tbody><tr><th style="text-align: left;" class="confluenceTh">Task Type</th><th style="text-align: left;" class="confluenceTh">Due Date<span> </span></th><th style="text-align: left;" class="confluenceTh">Condition</th><th style="text-align: left;" class="confluenceTh">Task Status<span> </span></th></tr><tr><td style="text-align: left;" rowspan="3" class="confluenceTd">Routine Checkup</td><td style="text-align: left;" rowspan="3" class="confluenceTd"><span>Routine Checkup Date  = calculate based on the latest receipted date and the configured routine checkup frequency</span></td><td style="text-align: left;" class="confluenceTd">1. If the first notification is triggered to department owner based on the configured notification <span>( project + product group + sample type + task type)</span><span> </span>and routine checkup frequency.<br />2. For routine checkup frequency less or equal 3 , there is no notification trigger but task status will be changed based on the configured project + product group + sample type + task Type</td><td style="text-align: left;" class="confluenceTd">Pending Routine Checkup</td></tr><tr><td style="text-align: left;" class="confluenceTd">Department owner has completed the routine checkup review by provided the sample status and last executed date updated .</td><td style="text-align: left;" class="confluenceTd">Completed routine checkup</td></tr><tr><td style="text-align: left;" class="confluenceTd">If the sample number didn't reviewed by pre-calculated routine checkup date.</td><td style="text-align: left;" class="confluenceTd">Routine Checkup Overdue</td></tr><tr><td style="text-align: left;" rowspan="3" class="confluenceTd">Routine Review</td><td style="text-align: left;" rowspan="3" class="confluenceTd">Routine Review date = Calculate based on the configured review frequency and sample application form submission.</td><td style="text-align: left;" class="confluenceTd">1.If the first notification is triggered to task owner based on the configured notification ( project + product group + sample type + task type) and review frequency.<br /><span>2. For review frequency less or equal 3 , there is no notification trigger but task status will be changed based on the configured project + product group + sample type + task Type</span></td><td style="text-align: left;" class="confluenceTd">Pending Routine Review</td></tr><tr><td style="text-align: left;" class="confluenceTd">Task owner has completed the task and last executed date is generated.</td><td style="text-align: left;" class="confluenceTd">Completed routine Review</td></tr><tr><td style="text-align: left;" class="confluenceTd">If the sample number didn't reviewed by routine review due date.</td><td style="text-align: left;" class="confluenceTd">Routine Review Overdue</td></tr><tr><td style="text-align: left;" rowspan="3" class="confluenceTd">EOL Review</td><td style="text-align: left;" rowspan="3" class="confluenceTd"><span>EOL date = the provided EOL date in sample number.</span></td><td style="text-align: left;" class="confluenceTd">If the first notification is triggered to task owner based on the configured notification ( project + product group + sample type + task type).</td><td style="text-align: left;" class="confluenceTd">Pending EOL Review</td></tr><tr><td style="text-align: left;" class="confluenceTd">Task owner has completed the task and last executed date is generated.</td><td style="text-align: left;" class="confluenceTd">Completed EOL Review</td></tr><tr><td style="text-align: left;" class="confluenceTd">if the sample number didn't reviewed by EOL due date.</td><td style="text-align: left;" class="confluenceTd">EOL Review Overdue</td></tr><tr><td style="text-align: left;" rowspan="3" class="confluenceTd">Expired Review</td><td style="text-align: left;" rowspan="3" class="confluenceTd"><span>Expired review date = the provided validity date in sample number</span></td><td style="text-align: left;" class="confluenceTd"><span>If the first notification is triggered to task owner based on the configured notification ( project + product group + sample type + task type) .</span></td><td style="text-align: left;" class="confluenceTd">Pending Expired Review</td></tr><tr><td style="text-align: left;" class="confluenceTd">Task owner has completed the task and last executed date is generated.</td><td style="text-align: left;" class="confluenceTd">Completed Expired Review</td></tr><tr><td style="text-align: left;" class="confluenceTd">if the sample number didn't reviewed by Expired Review due date.</td><td style="text-align: left;" class="confluenceTd">Expired Review Overdue</td></tr><tr><td style="text-align: left;" rowspan="3" class="confluenceTd">Phase Change Review</td><td style="text-align: left;" rowspan="3" class="confluenceTd"><span>Phase Change effective date in sample number  = the phase change effective date that associated to the project + product group + phase in project phase maintenance</span></td><td style="text-align: left;" class="confluenceTd">If the first notification is triggered to task owner based on the configured notification ( project + product group + sample type + task type).</td><td style="text-align: left;" class="confluenceTd">Pending Phase Change Review</td></tr><tr><td style="text-align: left;" class="confluenceTd">Task owner has completed the task and last executed date is generated.</td><td style="text-align: left;" class="confluenceTd">Completed Phase Change Review</td></tr><tr><td style="text-align: left;" class="confluenceTd">If the sample number didn't reviewed by Phase change effective due date.</td><td style="text-align: left;" class="confluenceTd">Phase Change Review Overdue</td></tr><tr><td style="text-align: left;" rowspan="3" class="confluenceTd">Q&E Review</td><td style="text-align: left;" rowspan="3" class="confluenceTd"><span>Q&E target completion date provided to the sample number.</span></td><td style="text-align: left;" class="confluenceTd">If the first notification is triggered to task owner based on the configured notification ( project + product group + sample type + task type).</td><td style="text-align: left;" class="confluenceTd">Pending Q&E Review</td></tr><tr><td style="text-align: left;" class="confluenceTd">Task owner has completed the task and last executed date is generated.</td><td style="text-align: left;" class="confluenceTd">Completed Q&E Review</td></tr><tr><td style="text-align: left;" class="confluenceTd">If the sample number didn't reviewed by target completion due date.</td><td style="text-align: left;" class="confluenceTd">Q&E Review Overdue</td></tr></tbody></table>





#### Upload via Template 


Bulk upload is allowed user to bulk upload Daily Managment Plan by using excel. This function is controlled by permission and if no permission granted for this function then this function will not be appeared on screen. If the permission granted then user will see the Bulk upload function when first load the Daily Managment Plan screen. The information in the bulk upload file will be validating.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span style="color: rgb(23,43,77);">Allow user to select file with .xlsx format</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td class="confluenceTd"><ul><li>Project( Mandatory - String)</li><li>Product group ( Mandatory - String)</li><li>Sample Type ( Mandatory - String)</li><li>Task Type ( Mandatory - String)</li><li>Active ( Mandatory - Y OR N)</li><li>Routine Checkup Frequency ( Mandatory if Task type = Routine Checkup, Other Task types are not required)</li><li>Review Frequency (Mandatory if Task Type = Routine Review or Other Task , Not required for Routine Checkup , EOL , Expired , phase change and Q&E review task type)</li><li>Notification before due date ( Optional - Day)</li><li>Notification Recurrence Pattern ( Optional -Day)</li><li>Task Owner ( Mandatory if Task Type = EOL review, Expired review, Routine Review , Phase Change Review , Q&E Review and Other Tasks,-EMAIL ; <span>System should be able to display username , employee ID and email after uploaded ; NOT required for routine checkup)</span></li><li><span>Escalation level (Optional- Integer)</span></li><li><span>Escalate to ( Optional - EMAIL ; NOT required for routine checkup) (Note : system should be able to display username , employee ID and email after uploaded)<br /></span></li><li>Escalation before due date ( Optional - Day)</li><li>Escalation if task overdue ( Optional - Day)</li><li>Overdue Escalation Recurrence Pattern ( Optional - Day)</li><li>Action ( ADD or Update )</li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Upload</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span style="color: rgb(0,0,0);">This bulk upload only support uploading and updating</span></li><li>ADD action - To insert the new configuration </li><li>Update action - To update the existing configuration.</li><li>System will validate each line item when processing bulk upload based on the implemented validation at UI.</li><li>System will validate the upload data against data partition.</li><li>System will check if all mandatory fields' values for each line item are provided.</li><li>System will check if the provided project and product group is matched with the configuration in project phase maintenance.</li><li>System will check if the provided task type is the pre-defined task.</li><li>System will check if the provided sample type available in the system.</li><li><span>For multiple task owner , user need to split it by  semicolon (;) and only can upload  maximum10 users.</span></li><li><span>For multiple escalate to , user need to split it by semicolon (;) and only can upload maximum 10 users .</span></li><li><span>For updating existing configuration, don't allow user update Project、Product Family、Sample Type and Task Type</span></li><li><span><span>System will check the configuration combination (project +product group + task type + sample Type) that implemented at UI.</span></span></li><li>System <span style="color: rgb(0,0,0);">will</span> create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</li><ul><li>The file will replicate the same line of source file, plus an additional column with the processing result.</li><li>For each line item, the system need to write if correctly loaded or in case of issue, writing the error.</li></ul><li>If there is any error in the file, system will upload the pass data and return error.</li><li>When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.</li><li>At the end of process, the PASS data will processed in the system</li><li>User is allowed to upload up to 1000 rows only per file. If the data is more 1000 rows then user needs to split 2 files before upload.</li></ul></td></tr></tbody></table>



- System will check if all mandatory fields’ values for each line item are provided.


- System will check if the provided project and product group is matched with the configuration in project phase maintenance.

- System will check if the provided task type is the pre-defined task.

- System will check if the provided sample type available in the system.

- For multiple task owner , user need to split it by  semicolon (;) and only can upload  maximum10 users.

- For multiple escalate to , user need to split it by semicolon (;) and only can upload maximum 10 users .

- For updating existing configuration, don't allow user update Project、Product Family、Sample Type and Task Type

- System will check the configuration combination (project +product group + task type + sample Type) that implemented at UI.

- System
will
create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)
- The file will replicate the same line of source file, plus an additional column with the processing result.

- For each line item, the system need to write if correctly loaded or in case of issue, writing the error.

- If there is any error in the file, system will upload the pass data and return error.

- When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- At the end of process, the PASS data will processed in the system

- User is allowed to upload up to 1000 rows only per file. If the data is more 1000 rows then user needs to split 2 files before upload.

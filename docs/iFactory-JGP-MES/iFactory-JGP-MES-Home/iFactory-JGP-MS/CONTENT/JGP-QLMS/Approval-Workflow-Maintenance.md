# Introduction

Approval Workflow is a page where users can configure approval workflow so that they can submit reports for approval before publishing measurement results to public.


### How to get there?



::: mermaid
graph LR
A("QLMS")-->0("WORKFLOW MAINTENANCE")

:::


#### Screen Activity


Approval Workflow Maintenance enables user to perform the following activities:

- Create, view and update Approval Workflow records


- Associate Approval Workflow to Job Type, Role and Step ID



#### Permission ( QLMS)



- Approval Workflow Maintenance


- Can Access Approval Workflow Maintenance


- Can Modify Approval Workflow Maintenance



#### Precondition


[Job Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Job-Types.md)
need to be configured before user configures Approval Workflow.

#### Screen Dependency


The following screen(s) has dependency with Approval Workflow.

- [Job Types](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Job-Types.md)


- [Measurement Result Submission](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission.md)

- [My Approval List](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/My-Approval-List.md)


#### Screen Specification (Level 1)


User can edit Workflow maintenance record only if the Job Type is not configured in Workflow Maintenance. If the Job Type is already configured, user is unable to edit and system will prompt error message.
If there is any Job Type soft deletion in Dimension Maintenance, the entire Level 1 will be soft deleted and will not be showing on the screen. Only if the soft deleted job type is restored, then the entire Level 1 will be showing on the screen.


#### Screen Specification (Level 2)


User able to Add/Edit/Delete the Role Name, Role Description and Step. User is also able to add or delete the user to in the Approver List tab for the Role.
If there is any user has been deactivated in the iFactory security, the user will be removed from the Approver List tab. If the user is activated again in iFactory Security, the user will not be restored in the Approver List tab. 


#### Approval Workflow Fields


<table class="wrapped relative-table confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 18.6125%;" /><col style="width: 81.3875%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Action</td><td class="confluenceTd">Allow user to edit and update at anytime. The updates should reflect at new record's run time immediately.</td></tr><tr><td class="confluenceTd">Job Type</td><td class="confluenceTd">Allow user to select the created Job Type from the drop down list. <br />A Job Type cannot be duplicated but user can configure multiple level of approval .</td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd">Allow user to describe the approval workflow.</td></tr><tr><td class="confluenceTd">Configuration</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Allow user to add workflow level by clicking <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/55413000.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/55413000.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="55413000" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-8-29-9-46-55.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="55412835" data-linked-resource-container-version="27" /></span> button.</p></div></td></tr></tbody></table>

Allow user to edit and update at anytime. The updates should reflect at new record’s run time immediately.Job TypeAllow user to select the created Job Type from the drop down list. 
A Job Type cannot be duplicated but user can configure multiple level of approval .DescriptionAllow user to describe the approval workflow.ConfigurationAllow user to add workflow level by clicking 
![image2019-8-29_9-46-55.png](/.attachments/55413000.png)


button.


#### Workflow Level Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 18.7817%;" /><col style="width: 81.2747%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Actions</td><td class="confluenceTd">Allow user to edit and update at anytime. The updates should reflect at new record's run time immediately.</td></tr><tr><td class="confluenceTd">Role Name</td><td class="confluenceTd">Allow user to insert the Role Name for each level of approval.</td></tr><tr><td class="confluenceTd">Role Description</td><td class="confluenceTd">To describe the Role added by user. Is an optional field</td></tr><tr><td colspan="1" class="confluenceTd">Step</td><td colspan="1" class="confluenceTd"><p>Allow user to insert only 1- 3.</p><p><span style="letter-spacing: 0.0px;">This step is to define the level of approval.</span></p><p><span style="letter-spacing: 0.0px;">Step 1 : Level 1 approval</span></p><p><span style="letter-spacing: 0.0px;">Step 2 : Level 2 approval</span></p><p><span style="letter-spacing: 0.0px;">Step 3 : Level 3 approval</span></p></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Approver List Tab</strong></td></tr><tr><td class="confluenceTd">Search Name</td><td class="confluenceTd"><p>Allow user to search by NTID or user name. The search will display user name, NTID and email.</p><p>Once the name have been configured in either one of the step, system is not going to allow the user name again against different level. So for example, If user A has been selected for level 1 approver then system shouldn't allow user to select User A as approver for level 2 /3 approval.</p><p>Note: Only the user list to be available against which partitioned Customer is assigned to user through iFactory Security</p></td></tr><tr><td colspan="1" class="confluenceTd">Actions</td><td colspan="1" class="confluenceTd">Allow user to delete the approver from the list</td></tr><tr><td colspan="1" class="confluenceTd">Name</td><td colspan="1" class="confluenceTd"><p>Added approver's Name will display in this field.</p></td></tr><tr><td colspan="1" class="confluenceTd">Employee ID</td><td colspan="1" class="confluenceTd">Added approver's Employee ID will display in this field</td></tr><tr><td colspan="1" class="confluenceTd">Email</td><td colspan="1" class="confluenceTd">Added approver's Email address will display in this field</td></tr></tbody></table>

Allow user to edit and update at anytime. The updates should reflect at new record’s run time immediately.Role NameAllow user to insert the Role Name for each level of approval.Role DescriptionTo describe the Role added by user. Is an optional fieldStepAllow user to insert only 1- 3.
This step is to define the level of approval.
Step 1 : Level 1 approval
Step 2 : Level 2 approval
Step 3 : Level 3 approval
**Approver List Tab** Search NameAllow user to search by NTID or user name. The search will display user name, NTID and email.
Once the name have been configured in either one of the step, system is not going to allow the user name again against different level. So for example, If user A has been selected for level 1 approver then system shouldn't allow user to select User A as approver for level 2 /3 approval.
Note: Only the user list to be available against which partitioned Customer is assigned to user through iFactory Security
ActionsAllow user to delete the approver from the listNameAdded approver's Name will display in this field.
Employee IDAdded approver's Employee ID will display in this fieldEmailAdded approver's Email address will display in this field

#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/55412838.png)
[image2019-8-29_9-46-55.png](/.attachments/55413000.png)

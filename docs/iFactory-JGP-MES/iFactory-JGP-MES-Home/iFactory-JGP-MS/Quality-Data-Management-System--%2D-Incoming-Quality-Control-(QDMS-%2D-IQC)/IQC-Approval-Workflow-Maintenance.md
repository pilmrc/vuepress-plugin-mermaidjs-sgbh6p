# Introduction

Approval Workflow is a page where users can configure approval workflow so that they can submit inspection for approval.


### **How to get there?** 



::: mermaid
graph LR
A("QDMS IQC")-->0("APPROVAL WORKFLOW MAINTENANCE")
0-->1("APPROVAL WORKFLOW MAINTENANCE")

:::


#### **Screen Activity** 


Approval Workflow Maintenance enables user to perform the following activities:

- Create, view and update Approval Workflow records


- Associate Approval Workflow to User, Step ID, Name, Employee ID, Email.



#### **Permission ( iFactory.IQC)** 



- Can view IQC Approval Workflow Maintenance


- Can modify IQC Approval Workflow Maintenance



#### **Precondition** 


User needs to be configured in security before this configuration.


#### **Screen Dependency** 


The following screen(s) has dependency with Approval Workflow.

- IQC Inspection

- Form Return

- Inspection Result Confirmation


#### **Screen Specification** 



- System validates unique
configuration by approval workflow name. If duplicates, throws error and new data does not get created.

- When the records deleted, the

item will be
deleted and not showing on the screen.

- User able to Add/Edit/Delete the Approval Name, Approval Description and it is also able to add or delete the user to in the Approver List tab for the step.



#### **Fields** 


<table class="relative-table wrapped confluenceTable" style="width: 1373.0px;"><colgroup><col style="width: 255.359px;" /><col style="width: 1116.64px;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Action</td><td style="text-align: left;" class="confluenceTd">Allow user to edit and update at anytime. The updates should reflect at new record's run time immediately.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Approval Workflow Name</td><td style="text-align: left;" class="confluenceTd">Allow user to insert the Approval Name. <br />The Approval Workflow Name cannot be duplicated but user can configure multiple level of approval .</td></tr><tr><td style="text-align: left;" class="confluenceTd">Description</td><td style="text-align: left;" class="confluenceTd">Allow user to describe the approval workflow.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Configuration(s)</td><td style="text-align: left;" colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Allow user to view workflow level by clicking <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110919725.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110919725.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="110919725" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-3-14-14-32-31.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="110919721" data-linked-resource-container-version="3" /></span></span> button.</p></div></td></tr></tbody></table>

Allow user to edit and update at anytime. The updates should reflect at new record’s run time immediately.
Approval Workflow NameAllow user to insert the Approval Name. 
The Approval Workflow Name cannot be duplicated but user can configure multiple level of approval .DescriptionAllow user to describe the approval workflow.Configuration(s)Allow user to view workflow level by clicking 
![image2022-3-14_14-32-31.png](/.attachments/110919725.png)


button.


#### **Approval Workflow Fields** 


<table class="relative-table wrapped confluenceTable" style="width: 1373.0px;"><colgroup><col style="width: 255.359px;" /><col style="width: 1116.64px;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Approval Workflow Name</td><td style="text-align: left;" class="confluenceTd">Allow user to insert the Approval Name. <br />The Approval Workflow Name cannot be duplicated but user can configure multiple level of approval .</td></tr><tr><td style="text-align: left;" class="confluenceTd">Description</td><td style="text-align: left;" class="confluenceTd">Allow user to describe the approval workflow.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Actions</td><td style="text-align: left;" colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Allow user to edit and delete step at anytime. The updates should reflect at new record's run time immediately.</p></div></td></tr><tr><td colspan="1" class="confluenceTd">Step</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Allow user to indicate the configuration is belong to which step</span><span style="color: rgb(23,43,77);">.</span></td></tr><tr><td colspan="1" class="confluenceTd">Approver</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Allow user to view approver in the step by clicking <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110919725.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/110919725.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="110919725" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-3-14-14-32-31.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="110919721" data-linked-resource-container-version="3" /></span></span> button.</p></div></td></tr></tbody></table>


Allow user to edit and delete step at anytime. The updates should reflect at new record’s run time immediately.
StepAllow user to indicate the configuration is belong to which step
.
ApproverAllow user to view approver in the step by clicking 
![image2022-3-14_14-32-31.png](/.attachments/110919725.png)


button.


#### **Approval Step Fields** 


<table class="relative-table wrapped confluenceTable" style="width: 1373.0px;"><thead><tr><th style="text-align: left;" class="confluenceTh">Field</th><th style="text-align: left;" class="confluenceTh">Description</th></tr></thead><colgroup><col style="width: 257.672px;" /><col style="width: 1114.33px;" /></colgroup><tbody><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Step</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Auto display 1- 3.</p><p><span>This step is to define the level of approval.</span></p><p><span>Step 1 : Level 1 approval</span></p><p><span>Step 2 : Level 2 approval</span></p><p><span>Step 3 : Level 3 approval</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Search User</td><td style="text-align: left;" class="confluenceTd"><p>Allow user to search by user name. The search will display user name, NTID and email.</p><p>Once the name have been configured in either one of the step, system is not going to allow the user name again against different level. So for example, If user A has been selected for level 1 approver then system shouldn't allow user to select User A as approver for level 2 /3 approval.</p><p>Note: List all available users expect no email account (service account) through iFactory Security.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Actions</td><td style="text-align: left;" colspan="1" class="confluenceTd">Allow user to delete the approver from the list</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Name</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Added approver's Name will display in this field.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Employee Number</td><td style="text-align: left;" colspan="1" class="confluenceTd">Added approver's Employee ID will display in this field</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Email</td><td style="text-align: left;" colspan="1" class="confluenceTd">Added approver's Email address will display in this field</td></tr></tbody></table>



#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/110919723.png)
[image2019-8-29_9-46-55.png](/.attachments/110919724.png)
[image2022-3-14_14-32-31.png](/.attachments/110919725.png)

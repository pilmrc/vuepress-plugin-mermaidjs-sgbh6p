# Introduction

Approval Workflow is a page where users can configure approval workflow so that they can submit cause & action for approval


### **How to get there?** 



::: mermaid
graph LR
A("SMS")-->0("APPROVAL WORKFLOW MAINTENANCE")

:::


#### **Permission ( Ifactory.SMS)** 



- Approval Workflow Maintenance


- Can modify Approval Workflow



#### **Screen Activity** 


Approval Workflow Maintenance enables user to perform the following activities:

- Create, view and update Approval Workflow records


- Associate Approval Workflow to User,  Step ID、Name 、Employee ID、Email and Manager



#### **Precondition** 


User needs to be configured in security before this configuration.


#### **Screen Dependency** 


The following screen(s) has dependency with this configuration.

- [User Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Users-Maintenance.md)

- My Approval List

- My Submit Cause & Action


#### **Screen Specification** 



- System validates unique
configuration by approval workflow name. If duplicates, throws error and new data does not get created.

- When the records deleted, the

item will be

soft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.


#### **Fields** 


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><strong style="text-align: left;">Field</strong></th><th class="confluenceTh"><strong style="text-align: left;">Description</strong></th></tr><tr><td class="confluenceTd">Approval Workflow Name</td><td class="confluenceTd">Name given to the Approval Workflow Name</td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd">Additional description can be entered in this field.</td></tr><tr><td class="confluenceTd">Configuration(s)</td><td class="confluenceTd"><p><span style="color: rgb(23,43,77);">This belongs to the configured approver</span></p><ul><li>The list of available users based on having the Ifactory permission</li><li>Once clicked on the username, then it will auto add into the list.</li><li>The list will display username, employee ID and email.</li><li>The maximum approver to be added is 3.</li><li>User can't be duplicated in the same Approval Workflow Name.</li></ul></td></tr></tbody></table>


- **User can’t be duplicated in the same Approval Workflow Name.**



#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/104923750.png)

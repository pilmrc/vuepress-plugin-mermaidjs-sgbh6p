# Introduction

My Submitted Cause & Action screen is
allowed user to view all the submitted cause & action from Sample Lost List.


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT MY TASK")-->0("MY SUBMITTED CAUSE & ACTION")

:::


#### **Permission ( Ifactory.SMS)** 



- My Submitted Cause & Action

- Can modify Cause & Action
**Screen Activity** 
This screen enables user to perform the following activity:

- Edit the rejected Cause & Action

- Submit the Cause & Action


#### **Precondition** 


User needs to  submit cause & action in Sample Lost List  screen

**Screen Dependency** 
The following screen(s) has dependency with this screen.

- Sample Lost List

- My Approval List


#### **Screen Specification** 


Submitter should able to view all the submitted Cause & Action in My Submitted Cause & Action and to view the sample information by clicking the sample number. User also able to view the approval history of the submitted cause & action. U
ser is allowed to edit the rejected cause and action then allow to submit again. Once submitted , then system should 
- Trigger email to the approver in Step 1.

- Captured the submitter and submitted datetime.

- Disable the edit button

- Enable user to View cause and action button for the particular sample number

- Update the approval status as Pending for approval.



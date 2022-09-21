# Introduction

My Approval List screen is 
the ability to review and approve/reject the submitted Cause and Action when user submitted sample form sample lost list screen


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT")-->0("My Approval List")

:::


#### **Permission ( Ifactory.SMS)** 



- My Approval List

- Can Approve/Reject Sample
**Screen Activity** 
This screen enables user to perform the following activity:

- Approve/Reject Sample


#### **Precondition** 


User needs to  submit samples in Sample Lost List  screen



#### **Screen Dependency** 


The following screen(s) has dependency with this configuration.

- Sample Lost List


#### **Screen Specification** 


In this screen , user is only able to view the sample with user submitted from Sample Lost List screen . User can approve/reject and view sample in this screen.
User is able to review all the submitted cause and action with approval status =Pending for approval that assigned in My Approval List.
When user to reject the cause and action with comment.

- Comment field is mandatory if user is rejected the cause and action.

- Once rejected, it always returns to the submitter.

- System should trigger email notification to submitter
When user to approve the summary.

- Based on approval workflow configuration, if there is next level approval then

- Approval status will remain as “Pending Approval”.

- System will trigger an email notification to next level approver and copy the submitter.

- Based on approval workflow configuration, if there is no next level approval then

- Change the approval status to “Approved”

- System will trigger email notification to the submitter.

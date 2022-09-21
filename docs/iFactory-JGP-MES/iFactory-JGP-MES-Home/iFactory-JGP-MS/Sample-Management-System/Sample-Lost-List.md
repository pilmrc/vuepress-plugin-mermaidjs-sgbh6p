# Introduction

Sample Lost List screen is used to view all the samples with status =Lost .This to ease user to manage those Lost samples in one screen.


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT")-->0("SAMPLE LOST LIST")

:::


#### **Permission ( Ifactory.SMS)** 



- Sample Lost List

- Can submit cause and action
**Screen Activity** 
This screen enables user to perform the following activity:

- Submit Cause and Action


#### **Precondition** 


Sample needs to complete routine checkup review with sample status = LOST



#### **Screen Dependency** 


The following screen(s) has dependency with this configuration.

- Sample List View

- pending Task

- Routine Checkup List


#### **Screen Specification** 


In this screen , user is only able to view the sample with status = LOST . User can submit and view cause and action in this screen.
User is able to view all the sample based on the assigned projects regardless of logged-on customer/division in Sample Lost List.
Once submitted , then system will

- Trigger email to the approver in Step 1.

- Captured the submitter and submitted datetime.

- Disable the cause and action button for the particular sample number.

- Enable the View cause and action button for the particular sample number so that user can view the submitted cause and action.

- Update the approval status as Pending for approval.

- User should be able to view the submitted cause and action for particular sample number in My Submitted Cause & Action and Sample Lost List.

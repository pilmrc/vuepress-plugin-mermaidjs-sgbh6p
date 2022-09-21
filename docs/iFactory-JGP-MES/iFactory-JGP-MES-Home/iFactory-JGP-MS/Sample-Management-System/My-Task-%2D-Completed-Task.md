# Introduction

This Completed Task screen is used to list all the sample with Completed task status . The following task status will be listed in this screen , allow user to have a glance on which task has been executed easily.

- Completed EOL Review

- Completed Expired Review

- Completed Routine Review

- Completed Phase Change Review

- Completed Q &E Review


### How to get there?




::: mermaid
graph LR
A("MY TASK")-->0("COMPLETED TASK")

:::


#### **Permission ( Ifactory.SMS)** 



- Completed Task


- Can modify Completed Task


- Can Review Completed Task

**Screen Activity** 
This screen enables user to perform the following activity:

- Filter and select the records

- Review the records

- Localization

**Screen Dependency** 
The following screen(s) has dependency with this screen

- Sample List View

- Sample Seal List

- Sample Scrap List

- My Task - Pending


#### **Screen Specification** 



- User is allowed to view all the assigned tasks when landing on this screens regardless of customer/division even user has logged-on with the specific customer/division.

- Once user clicked on the sample number from different data partition , user still able to edit / update the sample.

- Sample in the list view is segregated by task status and user can filter the sample by task status.

- Sample Number is clickable to view all the sample information in Sample List View

- All the sample number that assigned to the logged-on user with task status below with sample status = "IN-USE" will be listed in here


- Completed EOL Review

- Completed Expired Review

- Completed Routine Review

- Completed Phase Change Review

- Completed Q&E Review


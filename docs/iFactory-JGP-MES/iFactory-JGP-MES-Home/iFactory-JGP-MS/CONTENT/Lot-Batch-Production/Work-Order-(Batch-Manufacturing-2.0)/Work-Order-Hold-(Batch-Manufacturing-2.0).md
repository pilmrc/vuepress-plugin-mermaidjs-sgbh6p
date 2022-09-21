# Introduction

Work Orders may be placed on hold for WIP based or Lot based Work Orders. This page will specifically describe the details relating to the Lot based Work Orders. Like WIP based, Lot based Work Orders may be placed ON or OFF hold. Unlike WIP based where it can be put on hold using the Work Order Maintenance screen, the Lot based Work Order hold is managed in a separate screen that allows the user to toggle between the ON and OFF condition and provides for a place to include reasons for placing the order ON / OFF Hold. The Hold status and details will be displayed in the Work Order View-Lot screen.



### How to get there?




::: mermaid
graph LR
A("QUALITY")-->0("WORK ORDER HOLD")

:::


#### Permission


To access the Work Order Hold screen:

- Work Order Hold - Permissions related to Work Order Holds. Have menu, Work Order on hold and release related to each permission.
To put a Work Order on hold:

- Add Work Order Hold - Allows the user to put a Work Order on hold
To release a Work Order from hold:

- Release Work Order Hold - Allows the user to release an existing hold on a Work Order



#### Screen Activity


Work Order Hold enables user to perform the following activity:

- Search for Work Order to place on hold

- Change the Lot based Work Order 'On Hold' status from
Yes to No, or from Noto Yes. The system evaluates the current Hold state and only presents the applicable option to the user to toggle to the opposite state from the current state.
- Provides a required user entry to indicate why the order is being placed ON or take OFF Hold



#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Work Order Hold

- A Lot based Work Order must exist to change the Hold status

- The Order must currently be OFF Hold to be placed ON Hold

- The Order must currently be ON Hold to be taken OFF Hold



#### Screen Dependency


The following screens have a direct dependency on the Work Order being ON / OFF Hold. The basic rule is if an Order is placed on Hold, no processing of any of the items for the WorkOrder may be performed until the Hold is removed. Lots that have "Started" in a station will be allowed to complete that operation if the Work Order is put on hold.

- [Super Lot Release (Batch Manufacturing 2.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Super-Lot-(Batch-Manufacturing-2.0)/Super-Lot-Release-(Batch-Manufacturing-2.0).md)

- [Manual Operation Entry (Batch Manufacturing 2.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Manual-Operation-Entry-(Batch-Manufacturing-2.0).md)

- [Manual Inspection Entry (Batch Manufacturing 2.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Batch-Manufacturing-2.0)/Manual-Inspection-Entry-(Batch-Manufacturing-2.0).md)

- Rework

- Packout

- Receiving

- Warehouse



#### Process


Below are two example screens, one of the Work Order that is OFF Hold about to be placed on Hold, and the other one of a Work Order that is ON Hold about to be taken OFF Hold. The system evaluated the current Hold status and presents the user the applicable screen to change the Hold state. Only a single Hold may be placed on an Order at a time.

![image2021-5-28_9-28-43.png](/.attachments/92734019.png)


![image2021-5-28_9-30-23.png](/.attachments/92734020.png)



The "On Hold" field in Work Order View is updated accordingly when hold or release is performed and the details are populated in the Hold Details tab.
When the Work Order is on hold, it is not possible to release a new super lot. It will not be returned in the Super Lot Release Work Order search results. The associated super lot will not be on hold but it is not possible to release a new lot for that super lot. Associated lots will also not be on hold but it is not possible to start the lots at any station. Lots that have "Started" in a station will be allowed to complete that operation.
If user does not have "Add Work Order Hold" permission, text area and submit button is not visible for Work Orders that are currently not on hold. 
If user does not have "Release Work Order Hold" permission, text area and submit button is not visible for Work Orders that are currently on hold.



#### Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 10.904%;" /><col style="width: 89.0682%;" /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Search work order number</p></td><td class="confluenceTd"><p>This user entry field is to find a matching Work Order. The entry can be a partial entry or an exact match. Blank search is not allowed. Once the value is entered, the system performs a search to find a match, if a unique exact match is not found then a list of partial matches is returned for the users to select from.</p></td></tr><tr><td class="confluenceTd"><p>Enter reason</p></td><td class="confluenceTd"><p>This field is for the user to enter the reason for placing the order on hold or taking it off hold. (Required)</p></td></tr></tbody></table>



#### Attachments

[Screen Shot 2016-09-15 at 9.01.26 AM.png](/.attachments/82903421.png)
[Screen Shot 2016-09-15 at 9.03.09 AM.png](/.attachments/82903422.png)
[image2020-11-19_15-7-44.png](/.attachments/82903423.png)
[image2020-11-19_15-9-49.png](/.attachments/82903424.png)
[image2020-11-19_15-10-46.png](/.attachments/82903425.png)
[image2021-5-28_9-28-43.png](/.attachments/92734019.png)
[image2021-5-28_9-30-23.png](/.attachments/92734020.png)

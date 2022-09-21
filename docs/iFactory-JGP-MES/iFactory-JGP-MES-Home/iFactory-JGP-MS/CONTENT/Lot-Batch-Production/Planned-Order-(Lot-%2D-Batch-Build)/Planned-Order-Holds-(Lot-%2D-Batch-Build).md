# Introduction


Planned Orders may be placed on hold for WIP based or Lot based Planned Orders. This page will specifically describe the details relating to the Lot based Planned Orders. Like WIP Based, Lot based Planned orders may be placed ON or OFF hold. Unlike WIP based, the Lot based hold is managed in a separate screen that allows the user to toggle between the ON and OFF condition, and provides for a place to include reasons for placing the order ON / OFF Hold. It is important to understand that the Production Order data for Lot based Planned Orders is stored partially in a SQL database like the WIP processing, and partially stored in a separate MongoDB for Lots. The result is that in the WIP based screen for Planned orders will only indicate basic Planned order details like Material, BOM, Required Qty, Creation Date, and Who created the Order. For all other details like the Hold status, release Qty, remaining Qty, etc you must use the Lot based Planned Order View.


### How to get there?



::: mermaid
graph LR
A("PLANNED ORDER")-->0("PLANNED ORDER HOLD")

:::


#### Screen Activity


Planned Order Hold enables user to perform the following activity:

- Search for Planned order to place on change the Hold State

- Change the Planned Order Hold Status of a Lot Based Planned Order from
OFF Hold to ON Hold, or from ON Hold to OFF Hold. The System evaluates the current Hold state and only presents the applicable option to the user to toggle to the opposite state from the current state.
- Provides a required user entry to indicate why the order is being placed ON or take OFF Hold



#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Planned Order Hold

- A Lot Based Planned Order must exist to change the Hold Status

- The Order must currently be OFF Hold to be placed ON Hold

- The Order must currently be ON Hold to be taken OFF Hold


#### Screen Dependency


The following screens have a direct dependency on the Planned Order being ON / OFF Hold. The basic rule is if a Order is placed on Hold no processing of any of the items for the Planned Order may have any activity performed until the Hold is removed.

- [Lot Release 1.0 (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot/Lot-Release-1.0-(Lot-%2D-Batch-Build).md)

- [Manual Operation Entry - MOE (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Operation-Entry-%2D-MOE-(Lot-%2D-Batch-Build).md)

- Manual Inspection Entry

- [
Rework, Packout, Screen Name ..... Needs updated with new screens to be developed]


#### Screen Examples


Below are two example screens, one of the Planned Order that is OFF Hold about to be placed on Hold, and the other one of a Planned Order that is ON Hold about to be taken OFF Hold. The system evaluated the current Hold status and presents the user the applicable screen to change the Hold state. Only a single Hold may be placed on an Order at a time.
![Screen Shot 2016-09-15 at 9.01.26 AM.png](/.attachments/29917881.png)



![Screen Shot 2016-09-15 at 9.03.09 AM.png](/.attachments/29917880.png)





#### Fields


<table class="confluenceTable"><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Search<span style="color: rgb(255,255,255);">-</span>by<span style="color: rgb(255,255,255);">-</span>order<span style="color: rgb(255,255,255);">-</span>number</p></td><td class="confluenceTd"><p>This user entry field is find a matching Planned Order. The entry may be blank, have a partial entry, or an exact match. Once the value is entered the system performs a search to find a match, if an unique exact match is not found a list of partial matches is returned for the users to select from a list of partial matches. If no partial or exact match is found, nothing is returned. If no entry is made and the search is performed and all orders are returned (possibly limited to first X Orders)</p></td></tr><tr><td class="confluenceTd"><p>Enter Reason</p></td><td class="confluenceTd"><p>This field is required for the user to enter the reason for placing the order on hold or taking it off hold.</p></td></tr></tbody></table>

_
by_
order_
numberThis user entry field is find a matching Planned Order. The entry may be blank, have a partial entry, or an exact match. Once the value is entered the system performs a search to find a match, if an unique exact match is not found a list of partial matches is returned for the users to select from a list of partial matches. If no partial or exact match is found, nothing is returned. If no entry is made and the search is performed and all orders are returned (possibly limited to first X Orders)
Enter Reason
This field is required for the user to enter the reason for placing the order on hold or taking it off hold.


#### Attachments

[Screen Shot 2016-09-15 at 9.03.09 AM.png](/.attachments/29917880.png)
[Screen Shot 2016-09-15 at 9.01.26 AM.png](/.attachments/29917881.png)

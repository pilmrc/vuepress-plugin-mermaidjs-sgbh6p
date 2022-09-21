# Introduction

In Work Order Management (Production Order) screen, all Work Orders that are imported from SAP to be processed in IFactory MS are displayed. Users then manage those work orders here to put them into production.

How to get there?


::: mermaid
graph LR
A("PRODUCTION")-->0("ORDER")
0-->1("SAP WORK ORDER")

:::


### Screen Activity


Work Order Management (Production Order) Maintenance enables user to perform the following activity:

- View Work Order Management (Production Order)


- Assign Routes

- Hold/ Un-Hold

- Suspend/ Un-Suspend

- Cancel

- Change Quantity



- Change Priority


- Audit Log


- WIP Mass Scrap



#### Pre Condition



- [Work Orders (Production Order) s are successfully imported from SAP](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Production-Order-%2D-Work-Order-Management/SAP-Work-Order-%2D-Production-Order-Import.md)


#### Screen Dependency


NA


#### View Work Orders (SAP Work Orders (Production Orders))


Below are the fields and a brief description of each of those field that will be displayed for each Work Order Management (Production Order) within the Work Order Management screen.
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Order Number*</td><td class="confluenceTd">The SAP Work order (Production Order) number</td></tr><tr><td class="confluenceTd">Priority*</td><td class="confluenceTd">The priority to produce the material in the production floor. Priority shown is from 0-9. 0 being the lowest priority and 9 the highest priority. If required, priority can be manually updated in Phoenix</td></tr><tr><td class="confluenceTd">Material Name*</td><td class="confluenceTd">The Top Level Material of the SAP Work Order (Production Order)</td></tr><tr><td class="confluenceTd">Quantity</td><td class="confluenceTd">Actual quantity of units required to be built for the SAP Work Order (Production Order) in System. Can be different from SAP Quantity if performed close short.</td></tr><tr><td class="confluenceTd">Status</td><td class="confluenceTd"><p>When a SAP Work Order (Production Order) is first received from SAP ECC, the status is defaulted to "New". A SAP Work Order (Production Order) can be in one of the following statuses:</p><ul><li>New (Newly imported from SAP)</li><li>Ready (Assigned to route but no WIP has been released yet)</li><li>In Progress (WIP has been released for the SAP Work Order (Production Order))</li><li>Completed (All WIPs in the order are completed)</li><li>Shipped (All WIPs in the order are shipped. Version <span style="color: rgb(34,34,34);">3.0.15337.1 and above, shipped orders will be excluded from SAP Work Order /Production Order Management</span>)</li><li>Cancelled (Order cancelled)</li><li>Suspend (Orders are suspended from releasing new WIP. WIP that is in progress can still continue to be processed) </li><li>On Hold (All WIPs in the order will automatically be placed on hold when an order is on hold preventing any shop floor activity for the order)<br /><br /></li></ul></td></tr><tr><td class="confluenceTd">Route Name</td><td class="confluenceTd">The route that the SAP Work Order (Production Order) has been assigned to build the units. Route type can be: Repetitive/Board Build, Configurable/Box Build or Lot/Batch.</td></tr><tr><td class="confluenceTd">Scheduled Start Date*</td><td class="confluenceTd">Indicates the date and time when the SAP Work Order (Production Order) is scheduled to start</td></tr><tr><td class="confluenceTd">Scheduled End Date*</td><td class="confluenceTd">Indicates the date and time when the SAP Work Order (Production Order) is scheduled to complete</td></tr><tr><td colspan="1" class="confluenceTd">Sales Order Number*</td><td colspan="1" class="confluenceTd">The Sales Order of the SAP Work Order (Production Order) number</td></tr><tr><td colspan="1" class="confluenceTd">Product Family Name</td><td colspan="1" class="confluenceTd">Product Family of the material</td></tr><tr><td colspan="1" class="confluenceTd">Customer Name</td><td colspan="1" class="confluenceTd">Customer of the SAP Work Order (Production Order)</td></tr></tbody></table>




- \* Indicates the data is imported from SAP ECC

When the SAP Work Order (Production Order) Management screen is loaded initially or refreshed, below filters will be applied by default to display the most relevant SAP Work Orders  (Production Orders) for the users to manage:

- Status is "New" or "Ready"


- Start Date dating back to two weeks from today's date


- End Date dating up to one week from today's date will be loaded.

User can modify the filter to display other SAP Work Orders (Production Orders) that lies outside of the default filter.
There are 6 available filter fields in order for user to manage what they want to view:

- Sales Order Number - Allows user to filter the SAP Work Orders (Production Orders) by their Sales Order Number. Allows filter by partial value with wild card at the back. E.g. Value SO1 returns Sales Order SO1234, but does not return Sales Order AASO1

- Order Number - Allows user to filter the SAP Work Orders (Production Orders) by their Production Order Number. Allows filter by partial value with with wild card at the back.

- Route Name - Allows user to filter the SAP Work Orders (Production Orders) by their assigned route.

- Scheduled Date From - Allows user to filter SAP Work Orders (Production Orders) by the dates that they are scheduled to start. End date filter value cannot exceed more than 3 months from the Start Date filter value.

- Scheduled Date To- Allows user to filter SAP Work Orders (Production Orders) by the dates that they are scheduled to end.
End date filter value cannot exceed more than 3 months from the Start Date filter value.
- Order Status - Allows user to filter SAP Work Orders (Production Orders) by any combination of below statuses: New, Ready, In Progress, Cancelled, Completed, On Hold, Suspended. More than 1 status can be selected.
SAP Work Orders (Production Orders) with "Shipped" status will never be displayed in the Production Order Management screen. 



#### Audit Log


Users can view what action had been performed against a particular Production Order previously through the Show History function. Action that can be viewed here includes:

- Status Change

- Priority Change

- Quantity Change
For each of the action, users will be able to see who performed it, when it is performed, and any comments that are left for the action.
Below steps describe how to show the audit log of a Production Order:

- Select a Production Order.

- Select "Audit Log" button. All SAP Work Orders (Production Orders) contain the option to select the "Audit Log" button.

![image2019-3-21_14-15-15.png](/.attachments/45973715.png)



- Auditing of the Production Order will be displayed


![image2019-3-21_14-17-31.png](/.attachments/45973716.png)




Assign Routes
A Production Order must be assigned to a Route for it to be built on the shop floor. Once a Route is assigned, the Production Order becomes "Ready" and users can proceed to release the units for the Production Order and start working on them. User can also assign a "Ready" Production Order to a different route as long as the Production Order does not have any WIP released and remains in the "Ready" status.
Steps below describe how to assign a Production Order to a 
**Configurable/Box build type** Route:
- Select the Production Order


- Press "Assign Route". Only "New" and "Ready" SAP Work Orders (Production Orders) will enable the button.


![image2019-4-11_9-18-15.png](/.attachments/45974680.png)



- Select the Route to release the Production Order to. Only active Routes associated to the Production Order top level material will be available for selection.


- Enter comments.


- Click "Release to Route" button.


![image2019-4-11_11-38-46.png](/.attachments/45974681.png)



Steps below describe how to assign a Production Order to a 
**Repetitive and Lot/Batch type R** oute:
- Select the SAP Work Order


- Press "Assign Route". Only "New" and "Ready" SAP Work Orders (Production Orders) will enable the button.


![image2022-5-18_9-16-2.png](/.attachments/116359391.png)



- Select the Route to release the Production Order to. Only active Routes associated to the Production Order top level material will be available for selection.

![image2022-5-18_9-16-53.png](/.attachments/116359392.png)



- Enter comments (Optional)


- Click "Release to Route" button.

![image2022-5-18_9-17-43.png](/.attachments/116359393.png)



![image2022-5-18_9-18-44.png](/.attachments/116359394.png)





#### Hold/ Release Hold


The "Hold" function can be used to stop building any units for a Production Order. When a Hold is 
executed 
against a Production Order, all of the below restriction will take effect:
- New WIPs cannot be released for the Production Order.


- Existing WIPs of the Production Order cannot be started at any route step on the assigned route, if they are not already started when the Hold is

executed
.
- Existing WIPs already started in a Route Step when the Hold is executed can complete that route step.


Steps below describe how to hold a Production Order:

- Select a Production Order


- Select "Hold/Un-Hold" button. Only "New", "Ready", "In Progress" and "Completed" SAP Work Orders (Production Orders) can be held


![image2019-3-21_14-33-38.png](/.attachments/45973717.png)



- Enter comments and click "Ok" button.


![image2019-3-21_14-35-3.png](/.attachments/45973719.png)


Once the Hold is no longer required, user can release the Hold using the "Release Hold" function. 
Steps below describe how to release a Production Order from a hold:

- Select a held Production Order


- Click on "Hold/Un-Hold" button.


![image2019-3-21_14-37-40.png](/.attachments/45973724.png)



- Enter comment and click "Ok" button.


![image2019-3-21_14-38-14.png](/.attachments/45973725.png)





#### Suspend/ Un-Suspend


The "Suspend" function can be used to stop releasing new WIPs for a Production Order, but at the same time allows existing WIPs for the same Production Order to continue to their completion. 
Steps below describe how to suspend a Production Order:

- Select on a Production Order


- Select "Suspend/Un-Suspend" button. Only "Ready" and "In Progress" SAP Work Orders (Production Orders) can be suspended.


![image2019-3-21_14-41-35.png](/.attachments/45973727.png)



- Enter commend and click "Ok" button.


![image2019-3-21_14-42-46.png](/.attachments/45973728.png)



Once the suspension is no longer required, user can release the suspension using the "Un-Suspend" function. Steps below describe how to release a Production Order from suspension

- Select on a suspended Production Order.

- Select "Suspend/Un-Suspend" button

![image2019-3-21_14-43-55.png](/.attachments/45973729.png)



- Enter comment and click "Ok" button


![image2019-3-21_14-44-26.png](/.attachments/45973730.png)





#### Cancel


In the shop floor, a Production Order is typically cancelled per SAP request. The 2 most common reasons for cancelling a Production Order are customer request or e
rror in the Production Order which requires a new release from SAP. Due to lack of integration for Production Order Cancellation between SAP and IFactory MS, a cancellation requires collaboration between SAP and shop floor, where both parties manually cancel the Production Order in their system respectively. In IFactory MS, the cancellation is done using the "Cancel" function. 
**Production Order cancellation should be proceeded with caution because the cancellation is irreversible within the system.** Steps below describe how to cancel a Production Order in IFactory MS.

- Select on a Production Order

- Select "Cancel" button. All SAP Work Orders (Production Orders) except those that are already "Cancelled" can be cancelled.

![image2019-3-21_14-45-40.png](/.attachments/45973731.png)



- Enter comment and click "Ok" button.


![image2019-3-21_14-46-19.png](/.attachments/45973732.png)





#### Change Quantity


The quantity of a Production Order sometimes need to be reduced from its original SAP quantity in certain scenarios: For example:

- Issue such as raw material shortage or quality issue leads to partial order quantity fulfillment after approval from Customer.


- A configuration change leads to SAP sending a new replacement order, but everything that is already built in the original order is deemed acceptable to be shipped.


- Customer request due to unknown or uninformed reasons on their side.

When such scenarios happen, both SAP and Shop Floor System need to change the quantity. However, there are no integration between them for such a change. Therefore it is imperative that SAP and ShopFloor team communicate with each other to perform such changes in sync in their respective system.
Steps below describe how to change a Production Order quantity in the system:

- Select on a Production Order


- Select "Change Quantity" button.

All "Ready", "In Progress", "OnHold" and "Suspended" Production Order can have their quantity changed![image2019-3-21_14-49-48.png](/.attachments/45973733.png)



- The Change Quantity popup screen will be displayed.


![image2019-3-21_14-50-24.png](/.attachments/45973734.png)



- All orders selected to have their quantity changed are listed in the "Selected Order" list.


- Enter the quantity value to be changed to. If the quantity had been changed before the current change action, user can increase the quantity from the previous change, as long as it remains less than or equal to the SAP quantity.

- Enter a comment to record why the quantity is changed.

- Click "Okay" to execute the change. Below verification applies when change a quantity


- The quantity must be less than the SAP quantity.

- The Production Order has not exceeded 24 hours from its scheduled end date.

- If the associated WIPs to the selected Production Order exceed the new quantity value, there are 3 options to manage those WIPs.


- Re-assign the WIP to another Production Order.

- Remove the WIP from the selected Production Order. This will make the WIP an orphaned WIP and user might easily lost track of it. This option shall be proceed with caution

- Scrap WIP. WIP will be disassembled and marked as scrapped so it is no longer process-able.

- To Re-assign a WIP


- Select the WIP to be re-assigned. The WIP will be moved to the "WIP To Be Changed" list
with change = "Re-assign"
- Select the target Production Order to assign the WIP to in the Destination Order list.
All SAP Work Orders (Production Orders) that fulfill the below conditions will be listed in the Destination Order List.

- The Production Order has the same top level material as the selected Production Order

- The Production Order has available space to associate new WIPs

- The Production Order status in "Ready", "In Progress" or "Suspended"


- Click on the Save WIP Changes button on the bottom right corner of the screen.

- Undo Re-assign will remove WIP from the "WIP To Be Changed" list.

- To remove the WIP


- Select the WIP to be removed. The
WIP will be moved to the "WIP To Be Changed" list with change = "Remove"
- Click on the Save WIP Changes button on the bottom right corner of the screen.

- Undo Remove will remove the WIP
from the "WIP To Be Changed" list.
- To Scrap the WIP


- Select the WIP to be scrapped. The WIP will be moved to the "WIP To Be Changed" list with change = "Scrap"

- Click on the Save WIP Changes button on the bottom right corner of the screen.

- Undo Scrap
will remove the WIP from the "WIP To Be Changed" list.
- The Hold WIP function can be used to put a WIP on hold after the quantity change. To Hold a WIP


- Select the WIP to be held. The WIP will be moved to the "WIP To Be Changed" list with change = "Hold"

- Click on the Save WIP Changes button on the bottom right corner of the screen.

- Undo Hold will remove the WIP from the "WIP To Be Changed" list.



#### Mass Scrap WIP


"Mass Scrap WIP" function can be used to scrap all the existing WIPs in a Production Order in a single action so that users do not have to scrap them one by one. Steps below describe how to scrap multiple WIPs in a Production Order in one go:

- Select on a Production Order

- Select "WIP Mass Scrap" button. All "In Progress", "Completed", "OnHold", "Suspended", "Cancelled" Production Order can have their WIPs mass scrapped.

![image2019-3-21_14-58-40.png](/.attachments/45973735.png)



- Enter mass scrap comment


- In the table where all the existing WIPs are listed, click on the checkbox to select the WIPs to scrap. Alternately click on the checkbox in the header to select all WIPs available.

- Click "Mass Srap".

![image2019-3-21_15-35-12.png](/.attachments/45973738.png)


A Mass Scrapped WIP undergoes the same changes as a standard scrapped WIP:

- All assembled items to the WIP are dis-assembled.

- The WIP is disassociated from any associated order.

- The WIP is marked as "Scrapped".





#### Attachments

[image2017-3-17 10:42:22.png](/.attachments/29918808.png)
[image2017-3-17 10:40:28.png](/.attachments/29918809.png)
[image2017-2-22 15:46:54.png](/.attachments/29918810.png)
[image2017-2-22 15:45:49.png](/.attachments/29918811.png)
[image2017-2-22 15:25:16.png](/.attachments/29918812.png)
[image2017-2-22 15:24:51.png](/.attachments/29918813.png)
[image2017-2-22 15:12:12.png](/.attachments/29918814.png)
[image2017-2-22 15:11:35.png](/.attachments/29918815.png)
[image2017-2-22 15:8:48.png](/.attachments/29918816.png)
[image2017-2-22 15:8:12.png](/.attachments/29918817.png)
[image2017-2-22 14:58:29.png](/.attachments/29918818.png)
[image2017-2-22 14:57:46.png](/.attachments/29918819.png)
[image2017-2-22 14:54:5.png](/.attachments/29918820.png)
[image2017-2-22 14:53:25.png](/.attachments/29918821.png)
[image2017-2-22 14:35:8.png](/.attachments/29918822.png)
[image2017-2-22 14:34:5.png](/.attachments/29918823.png)
[image2017-2-22 14:15:21.png](/.attachments/29918824.png)
[image2017-2-22 14:10:17.png](/.attachments/29918825.png)
[image2013-2-19 15:21:21.png](/.attachments/29918826.png)
[image2013-2-19 15:19:0.png](/.attachments/29918827.png)
[image2019-3-21_14-15-15.png](/.attachments/45973715.png)
[image2019-3-21_14-17-31.png](/.attachments/45973716.png)
[image2019-3-21_14-33-38.png](/.attachments/45973717.png)
[image2019-3-21_14-35-3.png](/.attachments/45973719.png)
[image2019-3-21_14-37-40.png](/.attachments/45973724.png)
[image2019-3-21_14-38-14.png](/.attachments/45973725.png)
[image2019-3-21_14-41-35.png](/.attachments/45973727.png)
[image2019-3-21_14-42-46.png](/.attachments/45973728.png)
[image2019-3-21_14-43-55.png](/.attachments/45973729.png)
[image2019-3-21_14-44-26.png](/.attachments/45973730.png)
[image2019-3-21_14-45-40.png](/.attachments/45973731.png)
[image2019-3-21_14-46-19.png](/.attachments/45973732.png)
[image2019-3-21_14-49-48.png](/.attachments/45973733.png)
[image2019-3-21_14-50-24.png](/.attachments/45973734.png)
[image2019-3-21_14-58-40.png](/.attachments/45973735.png)
[image2019-3-21_15-35-12.png](/.attachments/45973738.png)
[image2019-4-11_9-18-15.png](/.attachments/45974680.png)
[image2019-4-11_11-38-46.png](/.attachments/45974681.png)
[image2022-5-18_9-16-2.png](/.attachments/116359391.png)
[image2022-5-18_9-16-53.png](/.attachments/116359392.png)
[image2022-5-18_9-17-43.png](/.attachments/116359393.png)
[image2022-5-18_9-18-44.png](/.attachments/116359394.png)

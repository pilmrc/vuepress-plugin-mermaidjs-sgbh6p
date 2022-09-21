# Introduction

**This WIP can not start at any route step at this resource** 
***CAUSE:***  

WIP is not enqueued to start at this resource. 

The WIP is either still in progress in another route step or waiting to be started at a different route step. This could also be caused by incomplete routing configuration where the WIP is not configure to route to the next step on completion. 
***SOLUTION:***  

- Go to WIP View dashboard (screen shot below). Scan the WIP Serial Number to see

**In Queue For** . Start the WIP at that step. 
- If the WIP is not enqueued at any step, see its

**Last Scanned At** Location in WIP View dashboard. Complete the WIP at the route step. 
- If the WIP is not enqueued at any step and the WIP has completed at the Last Scanned location, contact your Supervisor/Line Lead to manually enqueue the WIP to the correct route step

![image2015-9-4 14:40:57.png](/.attachments/29920252.png)




**Missing BOM WIPItem:[Parent Material]\...\[Problem Material]** 
***CAUSE:***  

Missing BOM in shop floor system
***SOLUTION:***  

Contact planner to send the missing BOM to shop floor
**Click-Start function can not be completed. All WIP in queue has previously started and not completed. Scan/Enter WIP Serial Number/Temporary Serial Number to start** 

***CAUSE:***  

All WIPs for the order has been started but not completed in the resource. This occurs when operator starts and aborts the WIP. 

***SOLUTION:***  
Close the WIP start page. ![image2015-9-4 14:29:11.png](/.attachments/29920254.png)


Scan the WIP Serial Number to start the WIP. 
![image2015-9-4 14:31:40.png](/.attachments/29920253.png)


Note: If there is not WIP Serial Number label to scan, go to 
[Planned Order View](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/Planned-Order-View.md)or [Production Order Managemen](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Production-Order-%2D-Work-Order-Management.md)t to retrieve the Serial Number

**The Material is not configurable and needs to have a wip release type of next number or temporary serial numbers** 
***CAUSE 1:***  

The material is not configured as a WIP and does not have a release type configured. 

***SOLUTION 1***  
: 
Verify the material is a WIP. Go to Material Maintenance and configure the material Phoenix Material Type = WIP and Release Type = Assigned Serial Number/Generate Serial Number***CAUSE 2:***  

The material is actually a non-WIP (unserialized or serialized material) that was incorrectly started at a non packout step. 

***SOLUTION 2:***  

Have the operator to login to a packout step to pack the unserialized / serialized material. Also, verify the material to route assignment and determine if the material should be assigned to a Pick & Pack route
**The type of the Material associated with the Production Order is not WIP** 


***CAUSE 1:***  

The material is not configured as a WIP and does not have a release type configured. 
***SOLUTION 1:***  
Verify the material is a WIP. Go to Material Maintenance and configure the material Phoenix Material Type = WIP and Release Type = Assigned Serial Number/Generate Serial Number


***CAUSE 2:***  

The material is actually a non-WIP (unserialized or serialized material) that was incorrectly started at a non packout step. 
***SOLUTION 2***  : 
Have the operator to login to a packout step to pack the unserialized / serialized material. Also, verify the material to route assignment and determine if the material should be assigned to a Pick & Pack route 



#### Attachments

[image2015-9-4 14:40:57.png](/.attachments/29920252.png)
[image2015-9-4 14:31:40.png](/.attachments/29920253.png)
[image2015-9-4 14:29:11.png](/.attachments/29920254.png)
[image2015-9-4 14:27:43.png](/.attachments/29920255.png)

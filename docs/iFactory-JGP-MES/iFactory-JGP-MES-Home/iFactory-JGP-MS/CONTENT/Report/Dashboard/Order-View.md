# Introduction

Display the progress of Planned Orders,  Production Order and/or Customer Order with WIPs grouped by Reporting Name within a specified date range. 


### How to get there?



::: mermaid
graph LR
A("DASHBOARD")-->0("ORDER VIEW")

:::


#### Screen Activity


Order View dashboard enables user to perform the following activity:

- View the progress of the orders based on the dashboard selection criteria

- Save the dashboard selection criteria by eDashboard name and enable easy dashboard retrieval  by its eDashboard name

- Numbers highligted in YELLOW represents an Abort action in one or multiple WIP within the reporting name. RED represents a Failure recorded
in one or multiple WIP within the reporting name.
- Export dashboard to excel file



#### Dashboard Selection Criteria


![image2015-11-4 11:16:6.png](/.attachments/29919850.png)




#### Planned Order View


![image2015-11-4 11:23:29.png](/.attachments/29919845.png)





#### Production Order View


![image2015-11-4 11:20:19.png](/.attachments/29919847.png)





#### Customer Order View


![image2015-11-4 11:21:42.png](/.attachments/29919846.png)





#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="OrderView-SelectionCriteriatab"><strong>Selection Criteria tab</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>eDashboard Name</p></td><td class="confluenceTd"><p>The unique Order View dashboard name given by the user. If the eDashboard Name is saved with the selection criteria, user can easily retrieve the same selection criteria based on the eDashboard Name</p></td></tr><tr><td class="confluenceTd"><p>Auto Refresh Minutes</p></td><td class="confluenceTd"><p>The dashboard will automatically refreshes its data based on the refresh interval set here</p></td></tr><tr><td class="confluenceTd"><p>Customer limited drill down view</p></td><td class="confluenceTd"><p>Limit the information available for the customer (TBD)</p></td></tr><tr><td colspan="1" class="confluenceTd">Date filters</td><td colspan="1" class="confluenceTd"><p><strong>By Time Period</strong><br />Last Business Week<br /><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">Last Month<br />Current Business Week<br />Today<br />Next Business Week </span></p><p><strong>By Date Range</strong><br />User can choose to display the dashboard data up to 3 months between the Date From and Date To range </p></td></tr><tr><td colspan="1" class="confluenceTd">Order Status</td><td colspan="1" class="confluenceTd">Allows user to select the order status to be included in the dashboard</td></tr><tr><td colspan="1" class="confluenceTd">Routes</td><td colspan="1" class="confluenceTd"><span>Allows user to select the route to be included in the dashboard</span></td></tr><tr><td colspan="1" class="confluenceTd">Reporting Names</td><td colspan="1" class="confluenceTd"><span>Allows user to select the reporting name to be included in the dashboard</span></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="OrderView-OrderViewReportTabPlannedOrders,ProductionOrdersandCustomerOrdersareseparatedtotheirrespectivesections">Order View Report Tab <br />Planned Orders, Production Orders and Customer Orders are separated to their respective sections </h5></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Order Date</td><td colspan="1" class="confluenceTd"><p>Planned Order scheduled start date<br /><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">Production Order creation date<br /></span><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">Customer Order's creation date</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Order</td><td colspan="1" class="confluenceTd"><p>Order number<br /><span>A hyperlink in the order number will bring up the respective order view screens</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Order Status</td><td colspan="1" class="confluenceTd"><p>Order status</p></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The top level material of the order</td></tr><tr><td colspan="1" class="confluenceTd">Item</td><td colspan="1" class="confluenceTd">Line Item number for Customer Order. <span>For Customer Order only.</span></td></tr><tr><td colspan="1" class="confluenceTd">Item Cat</td><td colspan="1" class="confluenceTd">Item Category for the line item. For Customer Order only.</td></tr><tr><td colspan="1" class="confluenceTd">Order Quantity</td><td colspan="1" class="confluenceTd">Order Quantity</td></tr><tr><td colspan="1" class="confluenceTd">Released</td><td colspan="1" class="confluenceTd">Total WIP released for the order</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Started</span></td><td colspan="1" class="confluenceTd">Total WIP started at a route step for the order</td></tr><tr><td colspan="1" class="confluenceTd">Complete</td><td colspan="1" class="confluenceTd">Total WIP completed for the order</td></tr><tr><td colspan="1" class="confluenceTd">Reporting Names[ .. ]</td><td colspan="1" class="confluenceTd">Total of WIPs grouped by reporting name based on the selection criteria. <br />Click on the number to view individual WIPs for the reporting name</td></tr></tbody></table>














#### Attachments

[image2015-11-4 11:23:29.png](/.attachments/29919845.png)
[image2015-11-4 11:21:42.png](/.attachments/29919846.png)
[image2015-11-4 11:20:19.png](/.attachments/29919847.png)
[image2015-11-4 11:18:51.png](/.attachments/29919848.png)
[image2015-11-4 11:18:9.png](/.attachments/29919849.png)
[image2015-11-4 11:16:6.png](/.attachments/29919850.png)
[image2015-11-4 11:13:25.png](/.attachments/29919851.png)
[image2015-10-8 16:45:58.png](/.attachments/29919852.png)

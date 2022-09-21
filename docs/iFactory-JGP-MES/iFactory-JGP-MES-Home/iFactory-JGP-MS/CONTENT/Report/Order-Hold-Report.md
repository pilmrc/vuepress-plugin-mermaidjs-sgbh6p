# Introduction

The Order Hold Report allows user to view all the WIP hold details for the selected customer order or delivery number. If a customer order is placed on hold in 
[Customer Order Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order.md), its deliveries will also be placed on hold. The hold status will waterfall down to all the WIPs in the deliveries. Similarly, releasing the customer order from hold will automatically release its deliveries and WIPs from hold.


### How to get there?




::: mermaid
graph LR
A("REPORT")-->0("ORDER HOLD REPORT")

:::


#### Selection Criteria



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customers</td><td colspan="1" class="confluenceTd">Specify the Customer. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Customer Orders</td><td colspan="1" class="confluenceTd"><span>Specify the Customer Orders. <span>Multiple selection is available. <br />If customer is selected, system will only display customer orders associated to the customer for user selection</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Customer Order Status</td><td colspan="1" class="confluenceTd"><p>Filter the customer order by its status:</p><ul><li>New</li><li>Ready</li><li>In Progress</li><li>Cancelled</li><li>Completed</li><li>Shipped</li><li>On Hold</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Delivery Numbers</td><td colspan="1" class="confluenceTd"><span>Specify the Delivery Numbers. Multiple selection is available<br /><span>If customer order is selected, system will only display deliveries associated to the customer order for user selection</span> </span></td></tr><tr><td colspan="1" class="confluenceTd">Delivery Status</td><td colspan="1" class="confluenceTd"><p>Filter the delivery by its status:</p><ul><li>New</li><li>Ready</li><li>In Progress</li><li>Cancelled</li><li>Completed</li><li>Shipped</li><li>On Hold</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Search Button</td><td colspan="1" class="confluenceTd">Generates the order hold report</td></tr><tr><td colspan="1" class="confluenceTd">Reset Button</td><td colspan="1" class="confluenceTd">Clear the report and all the selection criteria</td></tr></tbody></table>




- #### Report Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h4 id="OrderHoldReport-OrderHoldReport">Order Hold Report</h4></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer Order Number</td><td colspan="1" class="confluenceTd">Displays the selected customer order and provide a hyperlink to the <a href="Customer-Order-29918754.html">Customer Order Maintenance</a> screen</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Number</td><td colspan="1" class="confluenceTd">Displays the delivery number(s) under this customer order number</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">Displays the status of the customer order</td></tr><tr><td colspan="1" class="confluenceTd">Creation Date</td><td colspan="1" class="confluenceTd">Displays the date time where the customer order is created</td></tr><tr><td colspan="1" class="confluenceTd">Hold Quantity</td><td colspan="1" class="confluenceTd">Displays the number of WIP with Hold Type = Order. The hyperlink will bring user to the <strong>Order Hold View</strong> sub-report (see Order Hold View section below)</td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h4 id="OrderHoldReport-OrderHoldView">Order Hold View</h4></td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">Displays the WIP Serial Number that has record of past or current order holds</td></tr><tr><td colspan="1" class="confluenceTd">Hold Reason Code</td><td colspan="1" class="confluenceTd">Displays the customer order hold reason code</td></tr><tr><td colspan="1" class="confluenceTd">Hold Comment</td><td colspan="1" class="confluenceTd"><span>Displays the <span>customer order </span>hold comment</span></td></tr><tr><td colspan="1" class="confluenceTd">Hold Date Time</td><td colspan="1" class="confluenceTd"><span>Displays the <span>customer order </span>hold date time</span></td></tr><tr><td colspan="1" class="confluenceTd">Hold By</td><td colspan="1" class="confluenceTd"><span>Displays the user that placed the <span>customer order </span>on hold</span></td></tr><tr><td colspan="1" class="confluenceTd">Release Comment</td><td colspan="1" class="confluenceTd"><span>Displays the <span>customer order </span>release comment</span></td></tr><tr><td colspan="1" class="confluenceTd">Release Date Time</td><td colspan="1" class="confluenceTd">Displays the <span>customer order </span>release date time</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">Displays the route where the WIP is placed on hold</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Displays the route step where the WIP is placed on hold</td></tr></tbody></table>


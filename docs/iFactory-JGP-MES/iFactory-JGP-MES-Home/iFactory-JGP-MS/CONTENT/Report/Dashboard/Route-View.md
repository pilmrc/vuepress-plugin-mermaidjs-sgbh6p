# Introduction


Route View dashboard provides the ability to view the Route layout and all transactions that happened at each Route Step. For example, user is able to view total In Queue WIPs, total In Progress WIPs and total Completed WIPs at the selected Route Step. User is also able to view the overall yield, cycle time and total pass / fail / abort WIPs of the Route Step.


### How to get there? 




::: mermaid
graph LR
A("DASHBOARD")-->0("ROUTE VIEW")

:::

Selection Criteria
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">Specify the Route</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Specify the Route Step</td></tr><tr><td colspan="1" class="confluenceTd">Start Date Time</td><td colspan="1" class="confluenceTd">User can view data in a specific date range. The dashboard will only display the transactions that has a WIP Process Start Date equal or longer than the date defined here</td></tr><tr><td class="confluenceTd"><p>End Date Time</p></td><td class="confluenceTd"><p>User can view data in a specific date range. The dashboard will only display Serial Number that has a WIP Process End Date equal or lesser than the date defined here</p></td></tr><tr><td colspan="1" class="confluenceTd">Refresh Rate</td><td colspan="1" class="confluenceTd">Specify the Refresh Rate of the report. The dashboard is capable of refreshing the data manually or automatically base on the Refresh Rate defined here</td></tr><tr><td colspan="1" class="confluenceTd">Generate / Refresh Button</td><td colspan="1" class="confluenceTd">System shall generate or refresh the report when user trigger this button</td></tr><tr><td colspan="1" class="confluenceTd">Dashboard View</td><td colspan="1" class="confluenceTd">Specify the report shall be displayed in Dashboard View or normal report view. If Dashboard view is selected, user shall only be able to view recent data up to 24 hours. If Dashboard view is unchecked, user is able to select the date and time range for the data to be displayed</td></tr></tbody></table>




#### Report Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="RouteView-RouteLayout">Route Layout</h5></td></tr><tr><th class="confluenceTh"><span style="color: rgb(0,51,102);">Items</span></th><th class="confluenceTh"><span style="color: rgb(0,51,102);">Description</span></th></tr><tr><td class="confluenceTd">Route Step</td><td class="confluenceTd">Layout of the route with all the route steps and process flow will be displayed. Each route step is clickable to generate a summary report.</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="RouteView-SummaryReport">Summary Report</h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The route step selected by user from the Route Layout. It is also a link to load the <a href="Route-Step-View-29919854.html">Route Step View dashboard</a>.</td></tr><tr><td colspan="1" class="confluenceTd">In Queue</td><td colspan="1" class="confluenceTd">The total WIP count that are in queue at the route step. It is also a link to load the WIP Items Report to display all WIPs involved.</td></tr><tr><td colspan="1" class="confluenceTd">In Progress</td><td colspan="1" class="confluenceTd">The total WIP count that are in progress at the route step. <span>It is also a link to load the WIP Items Report to display all WIPs involved.</span></td></tr><tr><td colspan="1" class="confluenceTd">Total Completed</td><td colspan="1" class="confluenceTd">The total process count that has been completed at the route step. <span>It is also a link to load the WIP Items Report to display all WIPs involved.</span></td></tr><tr><td colspan="1" class="confluenceTd">Units Completed</td><td colspan="1" class="confluenceTd">The total WIP count that has been completed at the route step. <span>It is also a link to load the WIP Items Report to display all WIPs involved.</span></td></tr><tr><td colspan="1" class="confluenceTd">Total Pass</td><td colspan="1" class="confluenceTd">The total Pass process count at the route step. <span>It is also a link to load the WIP Items Report to display all WIPs involved.</span></td></tr><tr><td colspan="1" class="confluenceTd">Units Pass</td><td colspan="1" class="confluenceTd">The total Pass WIP count at the route step. <span>It is also a link to load the WIP Items Report to display all WIPs involved.</span></td></tr><tr><td colspan="1" class="confluenceTd">Total Fail</td><td colspan="1" class="confluenceTd">The total Fail process count at the route step. <span>It is also a link to load the WIP Items Report to display all WIPs involved.</span></td></tr><tr><td colspan="1" class="confluenceTd">Units Fail</td><td colspan="1" class="confluenceTd">The total Fail WIP count at the route step. <span>It is also a link to load the WIP Items Report to display all WIPs involved.</span></td></tr><tr><td colspan="1" class="confluenceTd">Total Abort</td><td colspan="1" class="confluenceTd">The total Abort process count at the route step. <span>It is also a link to load the WIP Items Report to display all WIPs involved.</span></td></tr><tr><td colspan="1" class="confluenceTd">Units Abort</td><td colspan="1" class="confluenceTd">The total Abort WIP count at the route step. <span>It is also a link to load the WIP Items Report to display all WIPs involved.</span></td></tr><tr><td colspan="1" class="confluenceTd">Average Cycle Time</td><td colspan="1" class="confluenceTd">The average cycle time for all WIPs at the route step</td></tr><tr><td colspan="1" class="confluenceTd">First Pass Yield</td><td colspan="1" class="confluenceTd">First Pass Yield percentage of the route step</td></tr><tr><td colspan="1" class="confluenceTd">Overall Yield</td><td colspan="1" class="confluenceTd">Overall Yield percentage of the route step</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="RouteView-WIPItemsReport">WIP Items Report</h5></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The WIP serial number. It is also a link to load the <a href="WIP-View-29919857.html">WIP View dashboard</a>.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The material of the WIPs</td></tr><tr><td colspan="1" class="confluenceTd">In Queue Date Time</td><td colspan="1" class="confluenceTd"><span>The date and time of the WIPs in queue at the route step</span></td></tr><tr><td colspan="1" class="confluenceTd">Start Date Time</td><td colspan="1" class="confluenceTd">The date and time of the WIPs begin process</td></tr><tr><td colspan="1" class="confluenceTd">End Date Time</td><td colspan="1" class="confluenceTd">The date and time of the WIPs end process</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd">The resource that has been used to process the WIP at the route step</td></tr></tbody></table>



#### **Synchronization** 


The Route data will be synchronized to the MDO system
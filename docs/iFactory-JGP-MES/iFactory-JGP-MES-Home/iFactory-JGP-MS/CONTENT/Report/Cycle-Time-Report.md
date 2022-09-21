# Introduction


Cycle Time Report provides the ability to view the duration spent by a WIP to complete a sequence of Route Steps. For example, the user may want to know how long it takes to produce a completed WIP from Birth until Packout. 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th style="text-align: center;" colspan="2" class="confluenceTh"><h4 id="CycleTimeReport-FORMULA">FORMULA</h4></th></tr><tr><td colspan="1" class="confluenceTd"><strong style="text-align: center;"><span style="color: rgb(0,0,255);">Queue Time</span></strong></td><td colspan="1" class="confluenceTd"><strong style="text-align: center;"><strong>StartDateTime - InQueueDateTime, result in seconds</strong></strong></td></tr><tr><td colspan="1" class="confluenceTd"><strong style="text-align: center;"><span style="color: rgb(0,0,255);">Process Time</span></strong></td><td colspan="1" class="confluenceTd"><strong style="text-align: center;"><strong>EndDateTime - StartDateTime, result in seconds</strong></strong></td></tr><tr><td class="confluenceTd"><strong style="text-align: center;"><span style="color: rgb(0,0,255);">Cycle Time</span></strong></td><td class="confluenceTd"><p><strong style="text-align: center;"><span>[Process Time<strong style="text-align: center;">] + [<strong style="text-align: center;">Queue Time], result <strong>in seconds</strong></strong><br /></strong></span></strong></p></td></tr><tr><td class="confluenceTd"><strong><span style="color: rgb(0,0,255);">Cumulative Cycle Time</span></strong></td><td class="confluenceTd"><strong>[Queue Time] + [Process Time] + [Previous Route Step Cumulative Cycle Time], result <strong style="text-align: center;">in seconds</strong></strong></td></tr></tbody></table>





### How to get there? 





::: mermaid
graph LR
A("REPORT")-->0("CYCLE TIME")

:::

- Newest iFactory UI release:

SSRS: 
[Home](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Cycle-Time-Report.md)

iFactory-PRD - XXX
SFS-iFactory-Standard-Reports
CycleTime



#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Date From</td><td colspan="1" class="confluenceTd">User can view data in a specific date range. The report will only display Serial Number that has a WIP Process Start Date equal or longer than the date defined here.</td></tr><tr><td class="confluenceTd"><p>Date To</p></td><td class="confluenceTd"><p><span>User can view data in a specific date range. The report will only display Serial Number that has a <span>WIP Process </span>End Date equal or lesser than the date defined here.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">Specify the Route</td></tr><tr><td colspan="1" class="confluenceTd">From Route Step</td><td colspan="1" class="confluenceTd"><span>Define the start route step to include in the cycle time calculation</span></td></tr><tr><td colspan="1" class="confluenceTd">To Route Step</td><td colspan="1" class="confluenceTd"><span>Define the last route step to include in the cycle time calculation</span></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Specify the Customer</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd"><span>Specify the Division</span></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd"><span>Specify the Product Family</span></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><span>Specify the Material</span></td></tr><tr><td colspan="1" class="confluenceTd">Order Type</td><td colspan="1" class="confluenceTd"><span>Specify the Order Type</span></td></tr><tr><td colspan="1" class="confluenceTd">Order</td><td colspan="1" class="confluenceTd"><span>Specify the Order</span></td></tr><tr><td colspan="1" class="confluenceTd">Batch</td><td colspan="1" class="confluenceTd"><span>Specify the Batch</span></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd"><span>Specify the Serial Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Batch Serial Number upload</td><td colspan="1" class="confluenceTd"><p>Upload a text file containing a batch of Serial Numbers. Phoenix will calculate and display the cycle time for each Serial Number. <br />Data in the file must follow the following format with each Serial Number separated by a new line.<br /><br />Serial Number1,Customer,Material<br />Serial Number2,C<span>ustomer,Material</span></p><p>See Sample File: <a href="attachments/29919839/29919840.txt" data-linked-resource-id="29919840" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Cycle Time Format.txt" data-nice-type="Text File" data-linked-resource-content-type="text/plain" data-linked-resource-container-id="29919839" data-linked-resource-container-version="5">Cycle Time Format.txt</a><br /> </p></td></tr></tbody></table>









#### Report Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><span style="color: rgb(0,51,102);">Field</span></th><th class="confluenceTh"><span style="color: rgb(0,51,102);">Description</span></th></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd">-</td></tr><tr><td class="confluenceTd">Serial Number</td><td class="confluenceTd">-</td></tr><tr><td colspan="1" class="confluenceTd">From Route/Route Step</td><td colspan="1" class="confluenceTd">The start route step as selected in the selection criteria</td></tr><tr><td colspan="1" class="confluenceTd">Start Time</td><td colspan="1" class="confluenceTd">The date and time when the WIP is started in the route step</td></tr><tr><td colspan="1" class="confluenceTd"><span>To Route/Route Step</span></td><td colspan="1" class="confluenceTd"><span>The end route step as selected in the selection criteria</span></td></tr><tr><td colspan="1" class="confluenceTd">End Time</td><td colspan="1" class="confluenceTd"><span>The date and time when the WIP is completed in the route step</span></td></tr><tr><td colspan="1" class="confluenceTd">Cycle Time</td><td colspan="1" class="confluenceTd">The calculated cycle time displayed in hh:mm:ss (hour:minute:second) </td></tr></tbody></table>




#### Detailed Report Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Route Step Sequence</td><td class="confluenceTd">The sequence associated to the route step</td></tr><tr><td class="confluenceTd">Route Step</td><td class="confluenceTd">-</td></tr><tr><td class="confluenceTd">Start Date Time</td><td class="confluenceTd"><span>The date and time when the WIP is started in the route step</span></td></tr><tr><td colspan="1" class="confluenceTd">End Date Time</td><td colspan="1" class="confluenceTd"><span>The date and time when the WIP is completed in the route step</span></td></tr><tr><td colspan="1" class="confluenceTd">Queue Time</td><td colspan="1" class="confluenceTd">The queue duration of the WIP in the route step displayed in seconds<br /><br />Queue Time = StartDateTime - InQueueDateTime<br /> </td></tr><tr><td colspan="1" class="confluenceTd">Process Time</td><td colspan="1" class="confluenceTd"><p><span>The process duration of the WIP in the route step displayed in seconds</span></p><p><span><span>Process Time = EndDateTime - StartDateTime</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Cumulative Cycle Time</td><td colspan="1" class="confluenceTd"><p><span>The calculated cumulative cycle time displayed in seconds</span><span> </span></p><p><span><span>Cumulative Cycle Time = <span>Queue Time + <span>Process Time + Previous Route Step Cumulative Cycle Time</span></span></span></span></p></td></tr></tbody></table>







#### Attachments

[Cycle Time Format.txt](/.attachments/29919840.txt)

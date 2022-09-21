# Introduction

The WIP Aging report shows the WIP’s In Queue Age, Arrived Age, WIP Age and Birth Age.  If multiple materials and route steps are selected, the report groups the WIPs by material and then by route steps. Thus, calculating the total ages of WIPs grouped by material and sub-grouped by route step. The WIP Aging report also provides the capability to convert the aging report into Age Group chart, Route Step Aging chart and Serial Number Aging chart. The report excludes WIPs that are packed, WIPs that are scrapped, WIPs that are assembled into another top level item and WIPs that exceed the X-days set in "Exclude Serial Number age over x-days" search criteria.
Notes: if the WIP has been packed into a container and the container status = 'Shipped', report will exclude the data from result table.

**How to get there?** 

::: mermaid
graph LR
A("IFACTORY-STANDARD-REPORT")-->0("WIPAGE REPORT")

:::
![image2021-2-24_15-41-8.png](/.attachments/88113294.png)





### Search Criteria



![image2022-5-18_16-46-34.png](/.attachments/116359398.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Start Date</td><td colspan="1" class="confluenceTd">WIP start date in the station</td></tr><tr><td colspan="1" class="confluenceTd">End Date</td><td colspan="1" class="confluenceTd">WIP end date in the station</td></tr><tr><td class="confluenceTd"><p>Customer</p></td><td class="confluenceTd"><p>A customer is a category used to filter data in the phoenix system and is the highest level.</p></td></tr><tr><td class="confluenceTd"><p>Division</p></td><td class="confluenceTd"><p>A division is a sub-category a customer and used for filtering.</p></td></tr><tr><td class="confluenceTd"><p>Product Family</p></td><td class="confluenceTd"><p>Family is a sub-category to a division; containing material identifications that belong to a group being used for filtering.</p></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Materials are assemblies, components and parts which is the matter from which a thing is or can be made. Materials can be built, or use a particular material to build a composite material.</td></tr><tr><td colspan="1" class="confluenceTd">Manufacturing Area</td><td colspan="1" class="confluenceTd">The area where the material is being processed</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">A method to structure the assembly process in the phoenix system and enforces rules.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The step on the route.</td></tr><tr><td colspan="1" class="confluenceTd"><span>Resource</span></td><td colspan="1" class="confluenceTd"><span>Any equipment being used in a production environment.</span></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The Serial Number of the WIP</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Partial Search by SN</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Can partial search by SN</span></td></tr><tr><td colspan="1" class="confluenceTd">WIP Status</td><td colspan="1" class="confluenceTd">System can filter 'InProcess' or 'Completed' WIP.</td></tr><tr><td colspan="1" class="confluenceTd">WIP Type</td><td colspan="1" class="confluenceTd"><p>System can filter 'RMA' or 'Production' WIP.</p><p>If RMA, system will return IsRMA = Yes WIP.</p><p>If Production, system will return IsRMA = No WPI.</p></td></tr></tbody></table>




#### Report Fields



![image2022-5-18_16-49-23.png](/.attachments/116359399.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>The selected material to display the aging report</p></td></tr><tr><td class="confluenceTd"><p>Batch</p></td><td class="confluenceTd"><p>The WIP's batch number</p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>The WIP's current route where it is aging</p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>The WIP's current route step where it is aging</span></td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd"><span>The WIP's current resource where it is aging</span></td></tr><tr><td colspan="1" class="confluenceTd">WIP Type</td><td colspan="1" class="confluenceTd">RMA or Production.</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">InProcess or Completed.</td></tr><tr><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd"><span>The WIP's current MA where it is aging</span></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">The WIP's current status</td></tr><tr><td colspan="1" class="confluenceTd">In Queue Date/Time</td><td colspan="1" class="confluenceTd">The WIP's In Queue Date/Time. This shall be use to calculate the In Queue Age column for this Serial Number</td></tr><tr><td colspan="1" class="confluenceTd"><span>Arrival Date/Time</span></td><td colspan="1" class="confluenceTd"><span>The WIP's Arrival Date/Time. </span>This shall be use to calculate the Arrived Age column for this Serial Number<br />Arrival Date/Time is only applicable for stations that has the arrival button to capture the arrival time (ie: Inspection & Rework) </td></tr><tr><td colspan="1" class="confluenceTd"><span>Start Date/Time</span></td><td colspan="1" class="confluenceTd"><span>The WIP's Start Date/Time. This shall be use to calculate the WIP Aging column for this Serial Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">Displays the Serial Number that matches the selection criteria</td></tr><tr><td colspan="1" class="confluenceTd">In Queue Age</td><td colspan="1" class="confluenceTd">Displays the Serial Number's In-Queue Age in hour, minutes and second. The time display shall be using the format of <a href="http://hhmmss" class="external-link" rel="nofollow">hh:mm:ss</a><br />In Queue Age formula = [Report Date/Time] - [Serial Number In Queue Date/Time in the Route Step]</td></tr><tr><td colspan="1" class="confluenceTd">Arrived Age</td><td colspan="1" class="confluenceTd"><p>Displays the Serial Number's Arrived Age in hour, minutes and second. The time display shall be using the format of <a href="http://hhmmss" class="external-link" rel="nofollow">hh:mm:ss</a><br />Arrived Age formula = [Report Date/Time] - [Serial Number Arrival Date/Time in the Route Step]=</p></td></tr><tr><td colspan="1" class="confluenceTd">WIP Age</td><td colspan="1" class="confluenceTd"><p>Displays the Serial Number's WIP Aging time in hour, minutes and second. The time display shall be using the format of <a href="http://hhmmss" class="external-link" rel="nofollow">hh:mm:ss</a><br />WIP Aging formula = [Report Date/Time] - [Serial Number Start Date/Time in the Route Step]</p></td></tr><tr><td colspan="1" class="confluenceTd">Birth Age</td><td colspan="1" class="confluenceTd"><p>Displays the Serial Number's elapsed time since it was birthed in hour, minutes and second. The time display shall be using the format of <a href="http://hhmmss" class="external-link" rel="nofollow">hh:mm:ss</a><br />Birth Age formula = [Report Date/Time] - [WIPItems.CreationDate]</p></td></tr><tr><td colspan="1" class="confluenceTd">First Process Age</td><td colspan="1" class="confluenceTd"><p>Displays the Serial Number's age from the moment it's started at the initial route step. When WIP is released, it will be released to route step marked as "initial route step" of the route. The time display shall be using the format of <a href="http://hhmmss" class="external-link" rel="nofollow">hh:mm:ss</a> (hour, minutes, seconds)<br />First Process Age formula = [Report Date/Time] - [Date/Time when Serial Number Starts at the initial route step]</p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step Total</td><td colspan="1" class="confluenceTd"><span>The material's total </span><span>count of Serial Number, Total In Queue Age, Total Arrived Age, Total WIP Age, Total Birth Age and Total </span><span>First Process Age grouped by route step displayed </span><span>in the light blue colored row</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step Average</td><td colspan="1" class="confluenceTd"><span>The material's Average</span><span> In Queue Age, Average Arrived Age, Average WIP Age, Average Birth Age and Average </span><span>First Process Age grouped by route step displayed </span><span>in the <span>light blue </span>colored row</span></td></tr><tr><td colspan="1" class="confluenceTd">Material Total</td><td colspan="1" class="confluenceTd"><span>The material's total </span><span>count of Serial Number, Total In Queue Age, Total Arrived Age, Total WIP Age, Total Birth Age and Total </span><span>First Process Age displayed </span><span>in the gold colored row</span></td></tr><tr><td colspan="1" class="confluenceTd">Material Average</td><td colspan="1" class="confluenceTd"><span>The material's Average</span><span> In Queue Age, <span>Average</span> Arrived Age, <span>Average</span> WIP Age, <span>Average</span> Birth Age and <span>Average</span> </span><span>First Process Age displayed </span><span>in the gold colored row</span></td></tr></tbody></table>







The material’s total count of Serial Number, Total In Queue Age, Total Arrived Age, Total WIP Age, Total Birth Age and Total First Process Age grouped by route step displayed in the light blue colored rowRoute Step AverageThe material’s AverageIn Queue Age, Average Arrived Age, Average WIP Age, Average Birth Age and Average First Process Age grouped by route step displayed in the light blue colored rowMaterial TotalThe material’s total count of Serial Number, Total In Queue Age, Total Arrived Age, Total WIP Age, Total Birth Age and Total First Process Age displayed in the gold colored rowMaterial AverageThe material’s AverageIn Queue Age, AverageArrived Age, AverageWIP Age, AverageBirth Age and AverageFirst Process Age displayed in the gold colored row


#### Attachments

[image2013-4-28 9:10:43.png](/.attachments/88113273.png)
[image2013-4-28 10:31:31.png](/.attachments/88113274.png)
[image2013-4-28 10:51:25.png](/.attachments/88113275.png)
[image2013-4-29 8:56:8.png](/.attachments/88113276.png)
[image2013-4-29 9:22:32.png](/.attachments/88113277.png)
[image2013-4-29 9:45:29.png](/.attachments/88113278.png)
[image2013-4-29 9:54:47.png](/.attachments/88113279.png)
[image2013-4-29 10:17:39.png](/.attachments/88113280.png)
[image2013-4-29 10:31:34.png](/.attachments/88113281.png)
[image2013-4-29 10:45:15.png](/.attachments/88113282.png)
[image2013-4-29 10:47:12.png](/.attachments/88113283.png)
[image2013-5-14 13:19:34.png](/.attachments/88113284.png)
[image2013-5-14 13:21:4.png](/.attachments/88113285.png)
[image2013-5-14 13:22:59.png](/.attachments/88113286.png)
[image2013-5-14 13:24:38.png](/.attachments/88113287.png)
[image2013-5-14 13:26:2.png](/.attachments/88113288.png)
[image2013-5-14 13:27:26.png](/.attachments/88113289.png)
[image2013-5-14 13:29:0.png](/.attachments/88113290.png)
[image2013-5-14 13:30:13.png](/.attachments/88113291.png)
[image2013-5-14 13:31:53.png](/.attachments/88113292.png)
[image2013-5-14 13:32:33.png](/.attachments/88113293.png)
[image2021-2-24_15-41-8.png](/.attachments/88113294.png)
[image2021-2-24_15-42-47.png](/.attachments/88113295.png)
[image2021-2-24_15-45-12.png](/.attachments/88113296.png)
[image2022-5-18_16-46-34.png](/.attachments/116359398.png)
[image2022-5-18_16-49-23.png](/.attachments/116359399.png)

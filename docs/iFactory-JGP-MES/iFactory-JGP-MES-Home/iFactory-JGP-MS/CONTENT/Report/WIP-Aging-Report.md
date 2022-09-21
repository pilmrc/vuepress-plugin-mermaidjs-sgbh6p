# Introduction

The WIP Aging report shows the WIP’s In Queue Age, Arrived Age, WIP Age and Birth Age.  If multiple materials and route steps are selected, the report groups the WIPs by material and then by route steps. Thus, calculating the total ages of WIPs grouped by material and sub-grouped by route step. The WIP Aging report also provides the capability to convert the aging report into Age Group chart, Route Step Aging chart and Serial Number Aging chart. The report excludes WIPs that are packed, WIPs that are scrapped, WIPs that are assembled into another top level item and WIPs that exceed the X-days set in "Exclude Serial Number age over x-days" search criteria.

**How to get there?** 

::: mermaid
graph LR
A("REPORT")-->0("WIP AGING REPORT")

:::
![image2013-5-14 13:21:4.png](/.attachments/29919961.png)



The phoenix system permits end users to filter this report by 
**customers** . The system allows team member to display several customer information at once which is created by the customer maintenance screen. All selected customer will be displayed separated by commas.  This report filters **division** and **product family** data. This report can filter by **materials** and **planned orders** . Multiple**shop floor orders** (SFO) and **batches** can be filtered and displayed using this feature. Fields with the red asterisk (\*) are mandatory. ![image2013-5-14 13:22:59.png](/.attachments/29919960.png)



The phoenix system provides end users with an option to filter WIP aging reports by multiple 
**manufacturing areas, routes, route steps, resources, serial number and** **status** . This includes providing an option to **exclude serial number aging** for X days. This is useful to filter the amount of records returned in the report as the Serial Number continues to age daily if it is not completed in the route step.  
![image2013-5-14 13:24:38.png](/.attachments/29919959.png)



The 
**generate button** creates a report based on selection criteria and displays a WIP aging report.![image2013-5-14 13:26:2.png](/.attachments/29919958.png)



The aging report 
**displays serial numbers regarding materials, batches, routes, route steps**  and**resources** .![image2013-5-14 13:27:26.png](/.attachments/29919957.png)



The 
**WIP aging report displays** serial number**status** including **serial numbers** regarding **in-queue date**  and**time** in **route steps** . This information is used to calculate the **in-queue aging column** for serial numbers. Each serial number has a single status. This report displays a serial numbers arrival date and time regarding a **route step** . This information is used to **calculate** the **arrived aging column** for a serial number. A serial numbers **start date** and**time** is displayed regarding a **route step** . This information is used to **calculate** the **WIP aging column** regarding a serial number. The **serial number column** **displays** this information according to selection criteria. ![image2013-5-14 13:29:0.png](/.attachments/29919956.png)



The phoenix system displays serial numbers 
**in-queue age, arrival age in hours, minutes and seconds** . This time display uses the hh:mm:ss format. The system shows serial numbers regarding **WIP aging times and birth aging** in hours, minutes and seconds. The system displays serial numbers regarding age at its **first route step** **(fist process age)** .**When WIP is released, it will be issued to a route step marked as the**  **“initial route step”.** 
![image2013-5-14 13:30:13.png](/.attachments/29919955.png)



The 
**print button** allows end user to print WIP aging reports which displays a printer preview screen during processing. 
![image2013-4-29 9:45:29.png](/.attachments/29919968.png)



The 
**export-to-excel** function permits end users to export aging report to Microsoft excel.![image2013-4-29 9:54:47.png](/.attachments/29919967.png)


The 
**generate chart button** displays a pop-up window permitting team members to generate an **aging group, route step aging** and **serial number aging charts** . ![image2013-5-14 13:32:33.png](/.attachments/29919953.png)





### Screen Activity


The WIP aging report package enables end users to perform the following activities:

- Permit end users to filter and generate reports by customer, product family, materials, planned orders, shop floor orders (SFO) and batches.

- Allow end users to filter and generate reports by manufacturing areas, routes, route steps, resources, serial numbers, status and excluding serial number aging.

- Permit end users to display reports by status, serial numbers, in-queue date and time, arrived aging, start date and time and in-queue age.

Pre Condition
The following data needs to be pre-configured (if used) before an end user configures the WIP aging report package: 

- Make sure the correct customer, product family, material, planned orders, shop floor orders (SFO) and batches are in the system.

- The phoenix system is capable of generating in-queue date and time, arrived aging, start date and time and in-queue reports.

- Make sure the correct manufacturing areas, routes, route steps, resources, serial numbers and status's are in the system.

- The phoenix system is able to print, generate and export reports to excel.



#### Screen Dependency


The following screen(s) have direct dependency with the WIP aging report package:

- [Product Family](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)

- [WIP Release - Customer Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order/WIP-Release-%2D-Customer-Order.md)

- [Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)

- [Bill Of Material - BOM (legacy)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [WIP Material View](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Dashboard/WIP-Material-View.md)

- [Shop Floor Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Shop-Floor-Order.md)

- [Batch](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Batch.md)



#### Search Criteria



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Customer</p></td><td class="confluenceTd"><p>A customer is a category used to filter data in the phoenix system and is the highest level.</p></td></tr><tr><td class="confluenceTd"><p>Division</p></td><td class="confluenceTd"><p>A division is a sub-category a customer and used for filtering.</p></td></tr><tr><td class="confluenceTd"><p>Product Family</p></td><td class="confluenceTd"><p>Family is a sub-category to a division; containing material identifications that belong to a group being used for filtering.</p></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Materials are assemblies, components and parts which is the matter from which a thing is or can be made. Materials can be built, or use a particular material to build a composite material.</td></tr><tr><td colspan="1" class="confluenceTd">Planned Order</td><td colspan="1" class="confluenceTd">The planned order for the material</td></tr><tr><td colspan="1" class="confluenceTd">Shop Floor Order</td><td colspan="1" class="confluenceTd"><span>The shop floor order for the material</span></td></tr><tr><td colspan="1" class="confluenceTd">Batch</td><td colspan="1" class="confluenceTd">When a WIP is released, it will be attached to a batch number</td></tr><tr><td colspan="1" class="confluenceTd">Manufacturing Area</td><td colspan="1" class="confluenceTd">The area where the material is being processed</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">A method to structure the assembly process in the phoenix system and enforces rules.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The step on the route.</td></tr><tr><td colspan="1" class="confluenceTd"><span>Resource</span></td><td colspan="1" class="confluenceTd"><span>Any equipment being used in a production environment.</span></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The Serial Number of the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number Status</td><td colspan="1" class="confluenceTd">The status of the Serial Number</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Exclude Serial Number WIP age over X days</span></td><td colspan="1" class="confluenceTd">Exclude Serial Number where its age exceeds the specified X number of days. <br />This is useful to filter the amount of records returned in the report as the Serial Number continues to age daily if it is not completed in the route step</td></tr></tbody></table>




#### Report Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>The selected material to display the aging report</p></td></tr><tr><td class="confluenceTd"><p>Batch</p></td><td class="confluenceTd"><p>The WIP's batch number</p></td></tr><tr><td class="confluenceTd"><p>Route</p></td><td class="confluenceTd"><p>The WIP's current route where it is aging</p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>The WIP's current route step where it is aging</span></td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd"><span>The WIP's current resource where it is aging</span></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">The WIP's current status</td></tr><tr><td colspan="1" class="confluenceTd">In Queue Date/Time</td><td colspan="1" class="confluenceTd">The WIP's In Queue Date/Time. This shall be use to calculate the In Queue Age column for this Serial Number</td></tr><tr><td colspan="1" class="confluenceTd"><span>Arrival Date/Time</span></td><td colspan="1" class="confluenceTd"><span>The WIP's Arrival Date/Time. </span>This shall be use to calculate the Arrived Age column for this Serial Number<br />Arrival Date/Time is only applicable for stations that has the arrival button to capture the arrival time (ie: Inspection & Rework) </td></tr><tr><td colspan="1" class="confluenceTd"><span>Start Date/Time</span></td><td colspan="1" class="confluenceTd"><span>The WIP's Start Date/Time. This shall be use to calculate the WIP Aging column for this Serial Number</span></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">Displays the Serial Number that matches the selection criteria</td></tr><tr><td colspan="1" class="confluenceTd">In Queue Age</td><td colspan="1" class="confluenceTd">Displays the Serial Number's In-Queue Age in hour, minutes and second. The time display shall be using the format of <a href="http://hhmmss" class="external-link" rel="nofollow">hh:mm:ss</a><br />In Queue Age formula = [Report Date/Time] - [Serial Number In Queue Date/Time in the Route Step]</td></tr><tr><td colspan="1" class="confluenceTd">Arrived Age</td><td colspan="1" class="confluenceTd"><p>Displays the Serial Number's Arrived Age in hour, minutes and second. The time display shall be using the format of <a href="http://hhmmss" class="external-link" rel="nofollow">hh:mm:ss</a><br />Arrived Age formula = [Report Date/Time] - [Serial Number Arrival Date/Time in the Route Step]=</p></td></tr><tr><td colspan="1" class="confluenceTd">WIP Age</td><td colspan="1" class="confluenceTd"><p>Displays the Serial Number's WIP Aging time in hour, minutes and second. The time display shall be using the format of <a href="http://hhmmss" class="external-link" rel="nofollow">hh:mm:ss</a><br />WIP Aging formula = [Report Date/Time] - [Serial Number Start Date/Time in the Route Step]</p></td></tr><tr><td colspan="1" class="confluenceTd">Birth Age</td><td colspan="1" class="confluenceTd"><p>Displays the Serial Number's elapsed time since it was birthed in hour, minutes and second. The time display shall be using the format of <a href="http://hhmmss" class="external-link" rel="nofollow">hh:mm:ss</a><br />Birth Age formula = [Report Date/Time] - [WIPItems.CreationDate]</p></td></tr><tr><td colspan="1" class="confluenceTd">First Process Age</td><td colspan="1" class="confluenceTd"><p>Displays the Serial Number's age from the moment it's started at the initial route step. When WIP is released, it will be released to route step marked as "initial route step" of the route. The time display shall be using the format of <a href="http://hhmmss" class="external-link" rel="nofollow">hh:mm:ss</a> (hour, minutes, seconds)<br />First Process Age formula = [Report Date/Time] - [Date/Time when Serial Number Starts at the initial route step]</p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step Total</td><td colspan="1" class="confluenceTd"><span>The material's total </span><span>count of Serial Number, Total In Queue Age, Total Arrived Age, Total WIP Age, Total Birth Age and Total </span><span>First Process Age grouped by route step displayed </span><span>in the light blue colored row</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step Average</td><td colspan="1" class="confluenceTd"><span>The material's Average</span><span> In Queue Age, Average Arrived Age, Average WIP Age, Average Birth Age and Average </span><span>First Process Age grouped by route step displayed </span><span>in the <span>light blue </span>colored row</span></td></tr><tr><td colspan="1" class="confluenceTd">Material Total</td><td colspan="1" class="confluenceTd"><span>The material's total </span><span>count of Serial Number, Total In Queue Age, Total Arrived Age, Total WIP Age, Total Birth Age and Total </span><span>First Process Age displayed </span><span>in the gold colored row</span></td></tr><tr><td colspan="1" class="confluenceTd">Material Average</td><td colspan="1" class="confluenceTd"><span>The material's Average</span><span> In Queue Age, <span>Average</span> Arrived Age, <span>Average</span> WIP Age, <span>Average</span> Birth Age and <span>Average</span> </span><span>First Process Age displayed </span><span>in the gold colored row</span></td></tr></tbody></table>







The material’s total count of Serial Number, Total In Queue Age, Total Arrived Age, Total WIP Age, Total Birth Age and Total First Process Age grouped by route step displayed in the light blue colored rowRoute Step AverageThe material’s AverageIn Queue Age, Average Arrived Age, Average WIP Age, Average Birth Age and Average First Process Age grouped by route step displayed in the light blue colored rowMaterial TotalThe material’s total count of Serial Number, Total In Queue Age, Total Arrived Age, Total WIP Age, Total Birth Age and Total First Process Age displayed in the gold colored rowMaterial AverageThe material’s AverageIn Queue Age, AverageArrived Age, AverageWIP Age, AverageBirth Age and AverageFirst Process Age displayed in the gold colored row


#### Attachments

[image2013-5-14 13:32:33.png](/.attachments/29919953.png)
[image2013-5-14 13:31:53.png](/.attachments/29919954.png)
[image2013-5-14 13:30:13.png](/.attachments/29919955.png)
[image2013-5-14 13:29:0.png](/.attachments/29919956.png)
[image2013-5-14 13:27:26.png](/.attachments/29919957.png)
[image2013-5-14 13:26:2.png](/.attachments/29919958.png)
[image2013-5-14 13:24:38.png](/.attachments/29919959.png)
[image2013-5-14 13:22:59.png](/.attachments/29919960.png)
[image2013-5-14 13:21:4.png](/.attachments/29919961.png)
[image2013-5-14 13:19:34.png](/.attachments/29919962.png)
[image2013-4-29 10:47:12.png](/.attachments/29919963.png)
[image2013-4-29 10:45:15.png](/.attachments/29919964.png)
[image2013-4-29 10:31:34.png](/.attachments/29919965.png)
[image2013-4-29 10:17:39.png](/.attachments/29919966.png)
[image2013-4-29 9:54:47.png](/.attachments/29919967.png)
[image2013-4-29 9:45:29.png](/.attachments/29919968.png)
[image2013-4-29 9:22:32.png](/.attachments/29919969.png)
[image2013-4-29 8:56:8.png](/.attachments/29919970.png)
[image2013-4-28 10:51:25.png](/.attachments/29919971.png)
[image2013-4-28 10:31:31.png](/.attachments/29919972.png)
[image2013-4-28 9:10:43.png](/.attachments/29919973.png)

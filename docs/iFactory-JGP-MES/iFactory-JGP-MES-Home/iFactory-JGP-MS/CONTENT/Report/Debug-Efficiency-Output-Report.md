# Introduction


The debug efficiency output report displays the total count of analyzed and unconfirmed analysis for each debug operator within the specified period.

The report provides the Worked (%) where it calculates the operator's analysis contribution against the total analysis work performed by all debug operators within the specified period.



### **How to get there?** 



::: mermaid
graph LR
A("REPORT")-->0("DEBUG EFFICIENCY OUTPUT REPORT")

:::
![image2013-5-22 11:36:50.png](/.attachments/29919889.png)





#### Selection Criteria


The phoenix system permits end users to filter report data by 
**start-date-time** and **end-date-time** regarding all activities. ![image2013-5-22 15:37:12.png](/.attachments/29919886.png)



Report data can be filtered by selected 
**customers** . The phoenix system displays all customer related information created in the customer maintenance screen and team members are permitted to choose multiple customers. Team members are permitted to select **multiple planned orders, divisions** , **product families** , **production** **orders** , **materials** , **customer orders** and filter by **operator** .
![image2013-5-22 15:38:18.png](/.attachments/29919885.png)


The phoenix system filters reports by 
**multiple factories** , **manufacturing areas** ,**routes**  and r**oute steps** . However, **route steps** will only display analysis or diagnostic operations.   ![image2013-5-22 15:39:22.png](/.attachments/29919884.png)



The generate button create reports based on criteria chosen by the end user. However, the clear selection button prompts a confirmation by asking 
**“are you sure you want to clear all current filtering criteria?”** 
- If the end user selects
**YES** ; the system will clear all chosen criteria.
- If the end user selects
**NO** ; the system will only display chosen criteria without removing any information. 

![image2013-5-23 9:54:13.png](/.attachments/29919883.png)





#### General Report Section


The 
**operator’s name** is displayed as the **debug technician** who has worked as a **debugging analyst** .  The system displays an **analysis quantity** completed by an operator.The system displays an 
**unconfirmed analysis** which has not been completed by an operator. A serial number not retested after the rework process is classified as **unconfirmed** .  The phoenix system displays a total analysis regarding serial numbers that has been debugged by an operator. The **total analyzed** **column** contains a summation of correct, incorrect and unconfirmed analysis. The **work percentage** column contains an output fraction provided by each operator. ![image2013-5-23 10:16:21.png](/.attachments/29919881.png)



General Expanded Report Section

Using the 
**general tab** , select the blue hyperlink in the circle below to access an **expanded report** regarding **serial numbers** , resource names, **analysis date times** , **retest date times** , **defect names** , **ref des** and **retest results** .![image2013-5-23 12:41:54.png](/.attachments/29919879.png)




#### Detailed Report Section


The detailed report section is similar to the general report section except that it breaks down the operator analysis output by route steps. 
The 
**unconfirmed analysis** field displays an examination that has been completed by an operator, but is not confirmed.  A serial number has not been retested after being reworked and classified unconfirmed.  The **total analyzed** column displays total serial numbers being debugged by an operator. The **total analyzed** column contains a **summation** of correct analysis, incorrect analysis and unconfirmed analysis. The **work percentage** column contains a fraction of output provided by each operator. 
![image2013-5-23 14:19:7.png](/.attachments/29919877.png)





#### Detailed Expanded Report Section 


Using the 
**detailed** **tab** , select the blue hyperlink in the circle below to access an **expanded report** regarding **serial numbers** , **resource names** , **analysis date times** , **retest date times** , **defect names** , **ref des** ,**retest results** , **operator names** and **route step names** .  ![image2013-5-23 13:30:18.png](/.attachments/29919878.png)





#### Screen Activity


The debug efficiency output report package enables end users to perform the following activities:

- Permit end users to filter and display reports by start and end dates and times regarding all activities.

- Allow team members to filter and display reports by divisions, product families, materials, operators, customers, planned and production orders.

- Permit end users to filter and display reports by factories, manufacturing areas, routes and route steps.

- Allow team members to display general and detailed debug efficiency output report

- Display operator names as debug technician and provide test results.

- Display unconfirmed analysis, serial numbers, retest dates, defect names, total analysis and work percentages.



#### Screen Dependency


The following screen(s) have direct dependency with the debug debug efficiency output report package:

- [Product Family](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Factory.md)

- [Manufacturing Area](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

- [Route Step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)

- [Customer Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order.md)

- [Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)

- [Production Order / Work Order Management](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Production-Order-%2D-Work-Order-Management.md)



#### Fields\Functions



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="DebugEfficiencyOutputReport-Fields\Functions.1"><strong>Fields\Functions</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Start Date Time</td><td colspan="1" class="confluenceTd">The start date time of the rework activity</td></tr><tr><td colspan="1" class="confluenceTd">End Date Time</td><td colspan="1" class="confluenceTd">The end date time of the rework activity</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">A business partner with whom a relationship exists, involving the issue of goods or services.</span></td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">The division of the customer</td></tr><tr><td class="confluenceTd"><p>Product Family</p></td><td class="confluenceTd"><p>A product family is in a group; established on information that equipment is being used in similar manufacturing processes. They are a group of products resulting from a universal mass-production platform. Jabil customers also manufacture goods using similar production processes; related physical distinctiveness including common clients, distribution channels and divisions.</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Materials are distinctive or procured components that are prepared or absorbed in a manufacturing facility. Jabil categories include assemblies (FERT), sub-assemblies (HALB), components (ZROB), storage devices (FERT), and mother board (HALB) or memory cards (ZROH).</p></td></tr><tr><td class="confluenceTd"><p>Customer Order</p></td><td class="confluenceTd"><p>A customer order is a sales order generated by SAP ECC which is a contractual agreement with Jabil customers regarding manufactured goods or services.</p></td></tr><tr><td colspan="1" class="confluenceTd">Planned Order</td><td colspan="1" class="confluenceTd">A planned order is created to fulfill repetitive orders and is driven by customer demand.</td></tr><tr><td colspan="1" class="confluenceTd">Production Order</td><td colspan="1" class="confluenceTd">A production order initiates the manufacturing process.</td></tr><tr><td colspan="1" class="confluenceTd">Operator</td><td colspan="1" class="confluenceTd">The operator user name that performed the analysis</td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd">A factory contains multiple manufacturing areas and processes. </td></tr><tr><td colspan="1" class="confluenceTd">Manufacturing Area</td><td colspan="1" class="confluenceTd">A manufacturing area is the shop floor which has a physical areas where production occurs and resources exists.</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">End users may want to move a serial number and return routes associated with selected materials.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Team members may want to move a serial number and only return route steps associated with a selected route.</td></tr></tbody></table>

<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>General Tab & Details Tab</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Operator Name</td><td colspan="1" class="confluenceTd">The operator that performs the analysis</td></tr><tr><td colspan="1" class="confluenceTd">Quantity Analyzed</td><td colspan="1" class="confluenceTd">Represent the WIP count of a complete cycle of Test, Analysis, Rework and Retest</td></tr><tr><td colspan="1" class="confluenceTd"><span>Unconfirmed Analysis</span></td><td colspan="1" class="confluenceTd"><span>Represent the count of an incomplete cycle where the WIP has been Tested, Analyzed, Reworked but yet to be Retested to confirm the analysis result</span></td></tr><tr><td colspan="1" class="confluenceTd">Total Count</td><td colspan="1" class="confluenceTd"><p>Display the Total count of serial number that has been debugged by each operator. Contains Correct Analysis, Incorrect Analysis and Unconfirmed Analysis</p></td></tr><tr><td colspan="1" class="confluenceTd">Worked (%)</td><td colspan="1" class="confluenceTd"><p>Display the percentage of Output done by each operator<br />Formula = [Total Analysis Done by Operator A] / [Total Analysis Done by All Operator] * 100 %</p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>Available in Details tab where the operator debug efficiency is broken down by route step</span></td></tr></tbody></table>


Formula = [Total Analysis Done by Operator A] / [Total Analysis Done by All Operator] \* 100 %Route StepAvailable in Details tab where the operator debug efficiency is broken down by route step



#### Attachments

[image2013-5-23 14:19:7.png](/.attachments/29919877.png)
[image2013-5-23 13:30:18.png](/.attachments/29919878.png)
[image2013-5-23 12:41:54.png](/.attachments/29919879.png)
[image2013-5-23 10:45:14.png](/.attachments/29919880.png)
[image2013-5-23 10:16:21.png](/.attachments/29919881.png)
[image2013-5-23 10:9:10.png](/.attachments/29919882.png)
[image2013-5-23 9:54:13.png](/.attachments/29919883.png)
[image2013-5-22 15:39:22.png](/.attachments/29919884.png)
[image2013-5-22 15:38:18.png](/.attachments/29919885.png)
[image2013-5-22 15:37:12.png](/.attachments/29919886.png)
[image2013-5-22 13:22:13.png](/.attachments/29919887.png)
[image2013-5-22 13:15:24.png](/.attachments/29919888.png)
[image2013-5-22 11:36:50.png](/.attachments/29919889.png)

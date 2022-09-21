# Introduction

The Debug Efficiency Accuracy Report as its name describes provides a view of the operator’s debug efficiency within the specified date range. 

**How to get there?** 

::: mermaid
graph LR
A("REPORT")-->0("DEBUG EFFICIENCY ACCURACY REPORT")

:::
![image2013-5-14 13:6:44.png](/.attachments/29919868.png)





### Selection Criteria


The phoenix system permits the end user to filter this report by 
**start, end, dates and times** on all activities. ![image2013-5-14 13:7:40.png](/.attachments/29919867.png)



The phoenix system 
**filters report** regarding multiple **customers** located in the customer maintenance screen. The system displays report information concerning **divisions, product families and materials** information.**Operator** , **planned and production order** reports can be created by using the **“debug efficiency – accuracy report”** screen.  ![image2013-5-14 13:8:43.png](/.attachments/29919866.png)



The phoenix system create reports based on selection criteria after pressing the 
**generate button** . The system also requests confirmation once the **clear button**  is pressed. The system displays**“are you sure you want to clear all current filtering criteria?”**  
- If the end user selects
**YES** ; the system will clear all selected criteria.
- If the end user selects
**NO** ; the system will only display selected criteria without removing any information. 
![image2013-5-14 13:12:18.png](/.attachments/29919865.png)





#### General Section


This section shows the debug operator's debug accuracy by displaying the count of Correct and Incorrect analysis. 
The system displays an
**unconfirmed analysis** which has not been completed by an operator.  A serial number not retested after the rework process is classified as 
**unconfirmed.**  The phoenix system displays a 
**total analysis** regarding serial numbers that has been debugged by an operator.  The total analysis column contains a summation of correct, incorrect and unconfirmed analysis.  The system also displays a percentage of correct and completed analysis by each operator as shown in the 
**accuracy percentage** column. 
![image2013-5-14 13:13:58.png](/.attachments/29919864.png)





#### Details Section 


The details section has similar report fields as the general tab except that it breaks down the operator's debug efficiency by route step.
![image2013-5-14 13:15:31.png](/.attachments/29919863.png)


The Correct and Incorrect analysis follows the truth table below. The IndictmentStatus if CONFIRMED means the analysis is CORRECT and will be counted into the operator's Correct Analysis count. 
<table class="confluenceTable"><colgroup><col /> <col /> <col /> <col /> <col /> <col /> </colgroup><tbody><tr><td class="highlight confluenceTd"><strong>Operation Status</strong></td><td class="highlight confluenceTd"><strong>IsProductRelated</strong></td><td class="highlight confluenceTd"><strong>Repeat Symptom</strong></td><td class="highlight confluenceTd"><strong>Rework performed</strong></td><td class="highlight confluenceTd"><strong>IndictmentStatus</strong></td><td class="highlight confluenceTd"><strong>IndictmentPassStatus</strong></td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td class="confluenceTd">PASS</td><td class="confluenceTd">N/A</td><td class="confluenceTd"><span>N/A</span></td><td class="confluenceTd">TRUE</td><td class="confluenceTd">CONFIRMED</td><td class="confluenceTd">CONFIRMED</td><td colspan="1" class="confluenceTd"><span>Retest passed, rework performed - both fields always CONFIRMED</span></td></tr><tr><td class="confluenceTd">PASS</td><td class="confluenceTd">FALSE</td><td class="confluenceTd"><span>N/A</span></td><td class="confluenceTd"><span>N/A</span></td><td class="confluenceTd">CONFIRMED</td><td class="confluenceTd">CONFIRMED</td><td colspan="1" class="confluenceTd"><span>Retest passed, indictment was not product related - both fields always CONFIRMED</span></td></tr><tr><td class="confluenceTd"><span>N/A</span></td><td class="confluenceTd">TRUE</td><td class="confluenceTd"><span>N/A</span></td><td class="confluenceTd">FALSE</td><td class="confluenceTd">INCORRECT</td><td class="confluenceTd">INCORRECT</td><td colspan="1" class="confluenceTd"><span>Indictment was product related, no rework - both fields always INCORRECT regardless of retest pass/fail status</span></td></tr><tr><td class="confluenceTd">FAIL</td><td class="confluenceTd"><span>N/A</span></td><td class="confluenceTd">TRUE</td><td class="confluenceTd"><span>N/A</span></td><td class="confluenceTd">INCORRECT</td><td class="confluenceTd">INCORRECT</td><td colspan="1" class="confluenceTd"><span>Retest failed, at least one repeated symptom - both fields always INCORRECT</span></td></tr><tr><td class="confluenceTd">FAIL</td><td class="confluenceTd"><span>N/A</span></td><td class="confluenceTd">FALSE</td><td class="confluenceTd">TRUE</td><td class="confluenceTd">CONFIRMED</td><td class="confluenceTd">INCORRECT</td><td colspan="1" class="confluenceTd"><span>Retest failed, no repeated symptoms, rework performed - status CONFIRMED pass status INCORRECT</span></td></tr><tr><td class="confluenceTd">FAIL</td><td class="confluenceTd">FALSE</td><td class="confluenceTd">FALSE</td><td class="confluenceTd"><span>N/A</span></td><td class="confluenceTd">CONFIRMED</td><td class="confluenceTd">INCORRECT</td><td colspan="1" class="confluenceTd"><span>Retest failed, no repeated symptoms, indictment was not product related - status CONFIRMED pass status INCORRECT</span></td></tr></tbody></table>




#### Screen Activity


The debug efficiency accuracy report package enables end users to perform the following activities:

- Permit end users to filter and display reports by start and end dates and times regarding all activities.

- Allow team members to filter and display reports by divisions, product families, materials, operators, customers, planned and production orders.

- Permit end users to filter and display reports by factories, manufacturing areas, routes and route steps.

- Display operator names as debug technician and provides testing confirmation.

- Displays quantity of correct and incorrect analysis, pass and fail results, unconfirmed analysis, total analysis and accuracy percentages.



#### Screen Dependency


The following screen(s) have direct dependency with the debug efficiency report package.

- [Product Family](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Factory](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Factory.md)

- [Manufacturing Area](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

- [Route Step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)

- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)

- [Customer Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Customer-Order.md)

- [Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Planned-Order.md)

- [Production Order / Work Order Management](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/Production-Order-%2D-Work-Order-Management.md)



#### Fields\Functions



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="DebugEfficiencyAccuracyReport-Fields\Functions.1"><strong>Fields\Functions</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Start Date Time</td><td colspan="1" class="confluenceTd">The start date time of the rework activity</td></tr><tr><td colspan="1" class="confluenceTd">End Date Time</td><td colspan="1" class="confluenceTd"><span>The end date time of the rework activity</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Customer</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">A business partner with whom a relationship exists, involving the issue of goods or services.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Division</span></td><td colspan="1" class="confluenceTd">The division of the customer</td></tr><tr><td class="confluenceTd"><p>Product Family</p></td><td class="confluenceTd"><p>A product family is in a group; established on information that equipment is being used in similar manufacturing processes. They are a group of products resulting from a universal mass-production platform. Jabil customers also manufacture goods using similar production processes; related physical distinctiveness including common clients, distribution channels and divisions.</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>Materials are distinctive or procured components that are prepared or absorbed in a manufacturing facility. Jabil categories include assemblies (FERT), sub-assemblies (HALB), components (ZROB), storage devices (FERT), and mother board (HALB) or memory cards (ZROH).</p></td></tr><tr><td class="confluenceTd"><p><span>Customer Order</span></p></td><td class="confluenceTd"><p><span>A customer order is a sales order generated by SAP ECC which is a contractual agreement with Jabil customers regarding manufactured goods or services.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Planned Order</span></td><td colspan="1" class="confluenceTd"><span>A planned order is created to fulfill repetitive orders and is driven by customer demand.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Production Order</span></td><td colspan="1" class="confluenceTd"><span>A production order initiates the manufacturing process.</span></td></tr><tr><td colspan="1" class="confluenceTd">Operator</td><td colspan="1" class="confluenceTd">The operator user name that performed the analysis</td></tr><tr><td colspan="1" class="confluenceTd"><span>Factory</span></td><td colspan="1" class="confluenceTd"><span>A factory contains multiple manufacturing areas and processes. </span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Manufacturing Area</span></td><td colspan="1" class="confluenceTd"><span>A manufacturing area is the shop floor which has a physical areas where production occurs and resources exists.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">End users may want to move a serial number and return routes associated with selected materials.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Team members may want to move a serial number and only return route steps associated with a selected route.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><a class="RadButton RadButton-Telerik rbToggleButton" style="text-decoration: none;" rel="nofollow"><span class="rbText" style="color: rgb(0,0,0);">Only Passing Retests Are Considered Correct Analysis</span></a></span></td><td colspan="1" class="confluenceTd"><ul><li><p>If Unchecked:<br /> - Same failure when Retest shall be classified under the Incorrect Analysis count<br /> - Failure Label change when Retest shall be classified under the Correct Analysis count<br /> </p></li><li><p>If checked:<br /> - Retests that have "Pass" value only is classified under Correct Analysis count<br /> - Failure Label change when Retest shall be classified under Incorrect Analysis count</p></li></ul></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>General Tab & Details Tab</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Operator Name</td><td colspan="1" class="confluenceTd">The operator that performs the analysis</td></tr><tr><td colspan="1" class="confluenceTd">Correct Analysis</td><td colspan="1" class="confluenceTd">The total count of correct analysis performed by the operator<br /><ul><li>If "Only Passing Retests Are Considered Correct Analysis" is unchecked, F<span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">ailure Label change when Retest shall be classified as Correct Analysis</span></li><li>If "Only Passing Retests Are Considered Correct Analysis" is checked. <span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">Retests that have "Pass" value only considered Correct Analysis</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Incorrect Analysis</td><td colspan="1" class="confluenceTd"><span><span>The total count of incorrect analysis performed by the operator</span></span><span> </span></td></tr><tr><td colspan="1" class="confluenceTd">Unconfirmed Analysis</td><td colspan="1" class="confluenceTd"><p>Display the quantity of analysis that has been done by operator but has not been confirmed.<br />Serial Number that has not been Retested after reworked shall be classified as unconfirmed.</p></td></tr><tr><td colspan="1" class="confluenceTd">Total Analysis</td><td colspan="1" class="confluenceTd"><p>Display the Total count of serial number that has been debugged by each operator.<br />Contains Correct Analysis, Incorrect Analysis and Unconfirmed Analysis</p></td></tr><tr><td colspan="1" class="confluenceTd">Accuracy (%)</td><td colspan="1" class="confluenceTd"><p>Display the percentage of Correct Analysis done by each operator<br />Accuracy (%) = Total Correct Analysis / Total Analysis * 100%</p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Available in Details tab where the operator debug efficiency is broken down by route step</td></tr></tbody></table>











- Accuracy (%) = Total Correct Analysis / Total Analysis \* 100%
Route StepAvailable in Details tab where the operator debug efficiency is broken down by route step

#### Attachments

[image2013-5-14 13:15:31.png](/.attachments/29919863.png)
[image2013-5-14 13:13:58.png](/.attachments/29919864.png)
[image2013-5-14 13:12:18.png](/.attachments/29919865.png)
[image2013-5-14 13:8:43.png](/.attachments/29919866.png)
[image2013-5-14 13:7:40.png](/.attachments/29919867.png)
[image2013-5-14 13:6:44.png](/.attachments/29919868.png)
[image2013-4-30 13:54:45.png](/.attachments/29919869.png)
[image2013-4-30 13:51:8.png](/.attachments/29919870.png)
[image2013-4-30 13:30:59.png](/.attachments/29919871.png)
[image2013-4-30 11:32:18.png](/.attachments/29919872.png)
[image2013-4-30 11:31:31.png](/.attachments/29919873.png)
[image2013-4-30 11:25:30.png](/.attachments/29919874.png)
[image2013-4-30 10:54:19.png](/.attachments/29919875.png)

# Introduction

Defects per million (DPM), represents a standard measurement that collects failures from any manufacturing process. DPM evaluates the number of defects taking place in a manufacturing operation. A process can have multiple opportunities for errors. The number of DPM is used to establish a baseline, which is used to determine any performance achievements as process improvement projects are being executed. DPM is also used in benchmarking because it is standardized and provides equal evaluation to products or services with fluctuating complexity. The report will only calculate DPM for route steps where its route step type is flagged as "Included in DPM" report. There are two types of DPM Report: WIP DPM and Order DPM.


### WIP DPM




::: mermaid
graph LR
A("FORMULA = [(TOTAL OF DEFECTIVE UNITS) / (TOTAL UNITS INSPECTED)] X 1,000,000")
:::

- \*Units depict WIP only


- System shall only take defect quantity & unit inspected on COMPLETE operation. Should not take defect quantity & unit inspected when IN PROGRESS

- Sample calculation:

10AM: SN001 inspected with 7 defects. The WIP is considered as failed. Defective Units = 1. Total Inspected = 1. DPM at 10am = **1/1 \*1000000** 
11AM: SN001 reinspected with 5 defects. The WIP is considered fail again. Defective Units = 1+1. Total Inspected = 1+1. DPM at 10am = **2/2 \*1000000** 
<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Date/Time</th><th class="confluenceTh">Serial Number</th><th class="confluenceTh">Route Step</th><th class="confluenceTh">Defective Material</th><th colspan="1" class="confluenceTh">Defect Type</th><th colspan="1" class="confluenceTh">Qty of Defect</th><th colspan="1" class="confluenceTh">WIP DPM</th></tr><tr><td colspan="1" class="confluenceTd">9/22/2013 10AM</td><td colspan="1" class="confluenceTd">SN001</td><td colspan="1" class="confluenceTd">QC2</td><td colspan="1" class="confluenceTd">403-0093-01</td><td colspan="1" class="confluenceTd">Abrasion</td><td colspan="1" class="confluenceTd">2</td><td colspan="1" class="confluenceTd">1/1 *1000000 </td></tr><tr><td colspan="1" class="confluenceTd">9/22/2013 10AM</td><td colspan="1" class="confluenceTd">SN001</td><td colspan="1" class="confluenceTd">QC2</td><td colspan="1" class="confluenceTd">403-0093-01</td><td colspan="1" class="confluenceTd">Damaged</td><td colspan="1" class="confluenceTd">5</td><td colspan="1" class="confluenceTd">1/1 *1000000</td></tr><tr><td class="confluenceTd">9/22/2013 11AM</td><td class="confluenceTd">SN001</td><td class="confluenceTd">QC2</td><td class="confluenceTd">403-0093-01</td><td colspan="1" class="confluenceTd">Damaged</td><td colspan="1" class="confluenceTd">5</td><td colspan="1" class="confluenceTd">2/2 *1000000</td></tr></tbody></table>

1/1 \*1000000 9/22/2013 10AMSN001QC2403-0093-01Damaged51/1 \*10000009/22/2013 11AMSN001QC2403-0093-01Damaged52/2 \*1000000


### Order DPM




::: mermaid
graph LR
A("FORMULA = [(TOTAL DEFECTS) / (TOTAL UNITS INSPECTED IN DELIVERY AUDIT)] X 1,000,000")
:::

Order DPM is only applicable to Delivery Orders that uses the Delivery Audit station

- \*Units depict serialized, unserialized, WIP, Inventory ID (all item count) in the delivery order

- In delivery audit, if there are 2 Serial Number that is defective, user is required to enter QTY = 2 for an accurate DPM calculation

- System shall only take defect quantity & unit inspected on COMPLETE operation. Should not take defect quantity & unit inspected when IN PROGRESS

- Sample calculation:


#### 2PM: DN001 was audited. Defect Qty = 4. Once start audit, all units in delivery is started at the same time. Total Inspected = 3. Thus DPM at 2PM = 4/3 \* 1000000



3PM: DN001 was reaudited. Defect Qty = 4 + 2. Total Inspected = 3 + 3. Thus DPM at 3PM = 6/6 \* 1000000

<table class="confluenceTable"><colgroup><col /><col /><col /><col /><col /><col /><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Date/Time</th><th class="confluenceTh">Serial Number</th><th class="confluenceTh">Route Step</th><th class="confluenceTh">Delivery Number</th><th colspan="1" class="confluenceTh">Item Number</th><th colspan="1" class="confluenceTh">Defect Type</th><th colspan="1" class="confluenceTh">Qty of Defect</th><th colspan="1" class="confluenceTh">Order DPM</th></tr><tr><td colspan="1" class="confluenceTd">9/22/2013 2PM</td><td colspan="1" class="confluenceTd">SN001</td><td colspan="1" class="confluenceTd">Delivery Audit</td><td colspan="1" class="confluenceTd">DN0001</td><td colspan="1" class="confluenceTd">1000</td><td colspan="1" class="confluenceTd">Missing </td><td colspan="1" class="confluenceTd">1</td><td colspan="1" class="confluenceTd">4/3 * 1000000 </td></tr><tr><td colspan="1" class="confluenceTd">9/22/2013 <span>2PM</span></td><td colspan="1" class="confluenceTd">SN001</td><td colspan="1" class="confluenceTd">Delivery Audit</td><td colspan="1" class="confluenceTd">DN0001</td><td colspan="1" class="confluenceTd">1000</td><td colspan="1" class="confluenceTd">Airline </td><td colspan="1" class="confluenceTd">2</td><td colspan="1" class="confluenceTd">4/3 * 1000000</td></tr><tr><td class="confluenceTd">9/22/2013 <span>2PM</span></td><td class="confluenceTd">SN002</td><td class="confluenceTd">Delivery Audit</td><td class="confluenceTd">DN0001</td><td colspan="1" class="confluenceTd">2000</td><td colspan="1" class="confluenceTd">Bent</td><td colspan="1" class="confluenceTd">1</td><td colspan="1" class="confluenceTd">4/3 * 1000000</td></tr><tr><td colspan="1" class="confluenceTd"><span>9/22/2013 </span><span>2PM</span></td><td colspan="1" class="confluenceTd">SN003</td><td colspan="1" class="confluenceTd">Delivery Audit</td><td colspan="1" class="confluenceTd">DN0001</td><td colspan="1" class="confluenceTd">3000</td><td colspan="1" class="confluenceTd">-</td><td colspan="1" class="confluenceTd">0</td><td colspan="1" class="confluenceTd"><span>4/3 * 1000000</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>9/22/2013 3</span><span>PM</span></td><td colspan="1" class="confluenceTd">SN001</td><td colspan="1" class="confluenceTd">Delivery Audit</td><td colspan="1" class="confluenceTd">DN0001</td><td colspan="1" class="confluenceTd">1000</td><td colspan="1" class="confluenceTd">Missing</td><td colspan="1" class="confluenceTd">1</td><td colspan="1" class="confluenceTd">6/6 * 1000000</td></tr><tr><td colspan="1" class="confluenceTd"><span>9/22/2013 3</span><span>PM</span></td><td colspan="1" class="confluenceTd">SN002</td><td colspan="1" class="confluenceTd">Delivery Audit</td><td colspan="1" class="confluenceTd">DN0001</td><td colspan="1" class="confluenceTd">2000</td><td colspan="1" class="confluenceTd">Bent</td><td colspan="1" class="confluenceTd">1</td><td colspan="1" class="confluenceTd">6/6 * 1000000</td></tr><tr><td colspan="1" class="confluenceTd"><span>9/22/2013 3</span><span>PM</span></td><td colspan="1" class="confluenceTd">SN003</td><td colspan="1" class="confluenceTd">Delivery Audit</td><td colspan="1" class="confluenceTd">DN0001</td><td colspan="1" class="confluenceTd">3000</td><td colspan="1" class="confluenceTd">-</td><td colspan="1" class="confluenceTd">0</td><td colspan="1" class="confluenceTd">6/6 * 1000000</td></tr></tbody></table>

4/3 \* 1000000 9/22/2013 2PMSN001Delivery AuditDN00011000Airline 24/3 \* 10000009/22/2013 2PMSN002Delivery AuditDN00012000Bent14/3 \* 10000009/22/2013 2PMSN003Delivery AuditDN00013000-04/3 \* 10000009/22/2013 3PMSN001Delivery AuditDN00011000Missing16/6 \* 10000009/22/2013 3PMSN002Delivery AuditDN00012000Bent16/6 \* 10000009/22/2013 3PMSN003Delivery AuditDN00013000-06/6 \* 1000000


#### **How to get there?** 



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("DEFECTpermillion")

:::
![image2020-4-1_6-12-49.png](/.attachments/67569903.png)



The SQL Server Reporting Service permits end users to filter report data by multiple 
**customers** , d**ivisions, product families** , **materials** , **Routes, Route Steps and Assembly details (Optional)** . This system also allow team member to display multiple **factories** , **routes** , **manufacturing areas** and **route steps** . The SQL Server Reporting Service permits end users to filter the defect per million (DPM) report by 
**start-date-time** and 
**end-date-time** . 
The “
**View Report** ” creates the report based on selection criteria. 

The “
**print** ” button publishes the DPM report, the “**export** ” button transfers the information into an MS excel document; the “**back** ” button allow end user to return to the previous screen.  The report displays a list of **defect per million opportunities (DPMO) catagories** and **defect types** .  The “**total** ” row displays the entire defect count according to date format selected by end user. “**Total WIP** ” shows the total distinct WIPs that has gone through route steps according to the date format chosen by a team member.  “**WIP DPM** ” displays the defects per million values according to the date format selected by end user. ![image2020-4-1_6-17-19.png](/.attachments/67569906.png)


![image2020-4-1_6-18-50.png](/.attachments/67569907.png)


![image2020-4-1_6-20-40.png](/.attachments/67569910.png)


![image2020-4-1_6-21-9.png](/.attachments/67569912.png)



The detailed report section displays a list of 
**customers** , **materials** , affected **serial numbers** , **inventory identification** , **date time** ,**route** and **route step** .  This includes a list of **DPMO** and **defect catagories** , **defect types** , **indictement status** ,**location** where defects took place and**operator** that logged defects. ![image2020-4-1_6-24-47.png](/.attachments/67569914.png)





#### Screen Activity


The defect per million (DPM) report package enables end users to perform the following activies:

- Permit end users to filter report data by multiple customers, divisions, product families, materials, and Assemblies.

- The phoenix system allows team members to display multiple factories, routes, manufacturing areas and route steps.

- Allows end users to filter by start-date-time, change date format and end-date-time.

- The phoenix system displays DPMO categories, defect types, total WIP, WIP DPM and detailed reports.

- The system permits end users to show serial numbers, inventory identification, indictment status and operator names.



#### Screen Dependency


The following screen(s) have direct dependency with the defect per million (DPM) report package:

- [Defect Per Million Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Defect-Per-Million-Report.md)

- [Defect Per Million Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Defect-Per-Million-Report.md)

- [Defect Per Million Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Defect-Per-Million-Report.md)

- [Defect Per Million Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Defect-Per-Million-Report.md)

- [Defect Per Million Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Defect-Per-Million-Report.md)

- [Defect Per Million Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Defect-Per-Million-Report.md)

- [Defect Per Million Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Defect-Per-Million-Report.md)

- [Defect Per Million Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Defect-Per-Million-Report.md)

- [Defect Per Million Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Defect-Per-Million-Report.md)



#### Selection Criteria



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Start Date Time</td><td colspan="1" class="confluenceTd">Filter the records from this date onwards</td></tr><tr><td colspan="1" class="confluenceTd">End Date Time</td><td colspan="1" class="confluenceTd"><span>Filter the records from this date on and before this date</span></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">A business partner with whom a relationship exists, involving the issue of goods or services.</span></td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">The division of the customer</td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd">The factory where the WIP is being build</td></tr><tr><td colspan="1" class="confluenceTd">Manufacturing Area</td><td colspan="1" class="confluenceTd">The manufacturing location where the WIP is being build</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">The route <span>where the WIP is being build</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>The route step </span><span>where the WIP is being processed. The report will only calculate DPM for route steps where its route step type is flagged as "Included in DPM" report.</span></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd"><span>A products family is in a group; established on information that equipment is being used in similar manufacturing processes. They are a group of products resulting from a universal mass-production platform. Jabil customers also manufacture goods using similar production processes; related physical distinctiveness including common clients, distribution channels and divisions. </span></td></tr><tr><td colspan="1" class="confluenceTd">Defect Material</td><td colspan="1" class="confluenceTd"><span>Materials are distinctive or procured components that are prepared or absorbed in a manufacturing facility. Jabil categories include assemblies (FERT), sub-assemblies (HALB), components (ZROB), storage devices (FERT), and mother board (HALB) or memory cards (ZROH).</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Assembly Number / Revision / Version</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">User have option to select the Assembly Number/Revision/Version of the WIP with defect associated. </span><span style="color: rgb(23,43,77);">Assembly Number/Revision/Version is filtered by Customer, Division and Product Family. This is optional to enter (As BTO/CTO flow does not require Assembly Revision), user can opt NULL if (s)he wants the report result not associated with any Assembly.</span></td></tr></tbody></table>




#### Report Fields


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="DefectPerMillionReport-Fields\Functions"><strong>Fields\Functions</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field\Functions</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Defect Category</p></td><td class="confluenceTd"><p>A defect category classifies a components imperfection in terms of importance and significance a defect may have on other factors. The subsequent are internationally recognized defect categories such as critical defect, major defect A and B; minor A and B,.</p></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">The route where the inspection was performed</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The route step where the inspection was performed</td></tr><tr><td colspan="1" class="confluenceTd">DPMO Category</td><td colspan="1" class="confluenceTd">The DPMO category as configured in the Defect Type's Defect Category</td></tr><tr><td colspan="1" class="confluenceTd">Defect Type</td><td colspan="1" class="confluenceTd">The Defect Type logged against the WIP during inspection<br />The report provides a total occurrence of each defect types which contributed to the DPM calculation. <br />Note that the total occurrence of defect types does not equal to Total Defective WIP</td></tr><tr><td colspan="1" class="confluenceTd">Total Defective WIP/<span>Total Defects</span></td><td colspan="1" class="confluenceTd"><p>The field label of <span>Total Defective WIP/</span><span>Total Defects changes according to the type of DPM report selected.</span></p><ul><li>If DPM Type selected is <strong>WIP DPM</strong>, the report will display the field label "Total Defective WIP" with the count of total defective WIPs logged in the inspection step</li><li><span><span>If </span><span>DPM Type selected is <strong>Order DPM</strong>, the report will display the field label "Total Defects" with the count of total defects logged in delivery audit step</span></span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Total Inspected</td><td colspan="1" class="confluenceTd"><ul><li>If DPM Type selected is <strong>WIP DPM</strong>, this field displays the total inspected units (WIPs) in the inspection step</li><li>If DPM Type selected is <strong>Order DPM</strong>, the report will display the total of items inspected during delivery audit</li></ul></td></tr></tbody></table>





#### Attachments

[image2014-5-8 14:53:31.png](/.attachments/29919891.png)
[image2014-5-8 14:53:2.png](/.attachments/29919892.png)
[image2013-6-3 10:27:58.png](/.attachments/29919893.png)
[image2013-6-3 10:13:33.png](/.attachments/29919894.png)
[image2013-6-3 10:5:10.png](/.attachments/29919895.png)
[image2013-6-3 10:3:41.png](/.attachments/29919896.png)
[image2013-5-28 15:29:41.png](/.attachments/29919897.png)
[image2013-5-28 15:21:14.png](/.attachments/29919898.png)
[image2013-5-28 15:10:27.png](/.attachments/29919899.png)
[image2013-5-28 15:5:37.png](/.attachments/29919900.png)
[image2013-5-28 14:55:57.png](/.attachments/29919901.png)
[image2013-5-28 14:31:10.png](/.attachments/29919902.png)
[image2013-5-28 14:30:20.png](/.attachments/29919903.png)
[image2013-5-28 14:28:3.png](/.attachments/29919904.png)
[image2013-5-28 13:33:29.png](/.attachments/29919905.png)
[image2013-5-28 13:30:53.png](/.attachments/29919906.png)
[image2013-5-28 12:9:53.png](/.attachments/29919907.png)
[image2020-4-1_6-10-51.png](/.attachments/67569901.png)
[image2020-4-1_6-11-22.png](/.attachments/67569902.png)
[image2020-4-1_6-12-49.png](/.attachments/67569903.png)
[image2020-4-1_6-17-19.png](/.attachments/67569906.png)
[image2020-4-1_6-18-50.png](/.attachments/67569907.png)
[image2020-4-1_6-19-56.png](/.attachments/67569909.png)
[image2020-4-1_6-20-40.png](/.attachments/67569910.png)
[image2020-4-1_6-21-9.png](/.attachments/67569912.png)
[image2020-4-1_6-24-47.png](/.attachments/67569914.png)

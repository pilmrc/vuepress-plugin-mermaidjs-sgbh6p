# Introduction

IQC Dashboard is a screen to let user to 
monitor the incoming material status by various dimensions by lot, vendor or part number.


### **How to get there?** 



::: mermaid
graph LR
A("IQC REPORT & DASHBOARD")-->0("IQC DASHBOARD")

:::


#### **Screen Activity** 



- View the Line Chart, Table, Control C

hart 

- Filter the Dashboard by datetime ,by dimensions


- Jump to another system via link

- Export chart , Print chart


#### **Permission ( iFactory.IQC)** 



- Can View IQC Dashboard


#### **Screen Specification** 


**Basic Filter Condition** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Dimension </th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Project</td><td class="confluenceTd">It will list all project which relate to IQC inspection plan regardless of logged-on data partition</td></tr><tr><td class="confluenceTd">Receive Date From</td><td class="confluenceTd">User can choose 1 year date ahea form current date</td></tr><tr><td class="confluenceTd">By Date</td><td class="confluenceTd"><p>If it was checked， All charts will show 7 days data ahead form current date</p><p>Default by date was checked</p></td></tr><tr><td colspan="1" class="confluenceTd">By Wk</td><td colspan="1" class="confluenceTd"><p>If it was checked， All charts will show 7 weeks data ahead from current week regardless of the week across month or year.</p><p>And s<span style="color: rgb(0,0,0);">ummarize the data in weeks.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">By Month</td><td colspan="1" class="confluenceTd"><p>If it was checked， All charts will show 7 months data ahead from current month  regardless of the month across  year.</p><p><span style="color: rgb(0,0,0);">And summarize the data in months</span></p></td></tr><tr><td colspan="1" class="confluenceTd">By Qtr</td><td colspan="1" class="confluenceTd"><p style="text-align: left;">If it was checked， All charts will show 4 <span style="color: rgb(0,0,0);">quarters</span> data ahead from current quarters  regardless of the quarters across year.</p><p style="text-align: left;"><span style="color: rgb(0,0,0);">And summarize the data in quarters</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Search Button</td><td colspan="1" class="confluenceTd"><p>When user clicks the search button, system will auto generate chart base on the filter condition. </p></td></tr><tr><td colspan="1" class="confluenceTd">Reset Button</td><td colspan="1" class="confluenceTd">Clear all filters</td></tr></tbody></table>


**Incoming Inspection Status Tracker ( by lot)** 

- **Sketch Map**

![image2022-7-29_11-12-8.png](/.attachments/122750097.png)



- **The Chart Description**


- The bar chart with 2 Y-Axis

( Left : Quantity ; Right : Percentage) 
- The X-Axis represents X-Axis ( Date in YYYY-MM-DD format).


- The bar chart will list quantity for status are Skip/Inspected/Rejected/In Process
of GRS no + inspection lot base on IQC create GRS.No date.

- **Calculation As Below**


- Rejected rate ( percentage) = (Rejected / Inspected) \*100 for each of stacked bar in line form based on the filters.

- **Special Intruduce**


- The bar chart default to show basic on by date .A

nd will show the configured Target for the month or quarter based on the filters in this stacked bar chart

- If filtered by date/ week / month , then show month's target.

- If filtered by quarter , then show quarter's target

- Upon loading , the latest 7 days data will be shown on this chart.

- Sync the last 14 days data

- **Inspection Issue List**

- When user

clicked on the date/week/month/quarter on X-Axis
or clicked on status : Inspected /Pending for inspection/ Rejected
, then system will show Inspection issue List
. The List will be summarized by GRS. no, Inspection lot and Inspection Type<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">GRS No.</td><td class="confluenceTd"><span style="color: rgb(0,0,0);">GRS .No that has defect will be showing in here.</span></td></tr><tr><td class="confluenceTd">Material Group</td><td class="confluenceTd"><span style="color: rgb(0,0,0);">Material group that belong to the GRS No.</span></td></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd"><span style="color: rgb(0,0,0);"> Part Number that belong to the GRS No.</span></td></tr><tr><td class="confluenceTd">Vendor</td><td class="confluenceTd"><span style="color: rgb(0,0,0);">Vendor name  that belong to the GRS No</span></td></tr><tr><td colspan="1" class="confluenceTd">Creation Date</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Creation date that belong to the GRS No</span></td></tr><tr><td colspan="1" class="confluenceTd">Inspection Lot</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection lot that belong to the GRS No</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection Lot QTY</span></td><td colspan="1" class="confluenceTd">Inspection qty that belong to the GRS No</td></tr><tr><td colspan="1" class="confluenceTd">Inspection Type</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection type that belong to the GRS No.+ Inspection Lot + Part number.</span></td></tr><tr><td colspan="1" class="confluenceTd">Inspected QTY</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspected QTY that belong to the GRS No.+ Inspection Lot + Part number.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">No. Defect</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Total of defect that summarize based on Inspection Type.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Remark</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">All the remarks that provided to the defect based on inspection type. If there is multiple remarks then need to be split by comma (, )</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Dispose Code</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Dispose code that assigned to the GRS No. + Inspection Lot</span></td></tr><tr><td colspan="1" class="confluenceTd">Category</td><td colspan="1" class="confluenceTd">Show GRS.No status base on GRS.No status of the left chart</td></tr></tbody></table>

**Incoming Inspection Status Tracker ( PN)** 

- **Sketch Map**

![image2022-7-13_15-44-1.png](/.attachments/122749063.png)


![image2022-7-29_11-23-9.png](/.attachments/122750101.png)



- **The Chart Description**


- The Y-Axis represents DDPM.


- The X-Axis represents Date /Weeks/months/ Quarter depend on the filters.


- The legend to show the part number that display in the line chart


- The DPPM values should display for each line based on Date /Weeks/Months/ Quarter depend on the filters


- The maximum line to display is 10 lines which are 10 part numbers with the highest DPPM.

- **Calculation As Below**

- DPPM calculation for a part number = ( number of total sample failure qty/ number of status is complated) \*1000000. and it values will display for each line based on
Date /Weeks/Months/ Quarter depend on the filters.
- If filtered by date , then DPPM calculation =  (number of
total failure sample qtyper date / number of status is complated per date) \* 1000000.
- if filtered by week , then DPPM calculation = sum of [
(number of total failure sample qtyper date / number of status is complated per date) \* 1000000 ]for a week.
- if filtered by month , then DPPM calculation = sum of
[(number oftotal failure sample qtyper date / number ofstatus is complated per date) \* 1000000] for a month.
- if filtered by quarter , then DPPM calculation = sum of [
(number of total failure sample qty per date / number of status is complated per date) \* 1000000] for a quarter.
- **Special Intruduce**


- Upon loading , it will display the latest 7 days data with Top 10 highest DPPM for part numbers.

- Only calculate status is inspected(completed,QN In Process,QN Closed) Part Number base on IQC create GRS.No date

- Sync the last 14 days data

- **Part Number List**

- Once user clicked part number button, it will list all the part number from IQC ,the pop-up screen cover fields as below

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">part number</span></td><td class="confluenceTd">The part number name</td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Description<span> </span></span></td><td class="confluenceTd">Description of the part number </td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Plant Code</span></td><td class="confluenceTd">The plant code of the part number</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Material Type</span></td><td colspan="1" class="confluenceTd">The material type of the part number</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Product group</span></td><td colspan="1" class="confluenceTd">The product group of the part number</td></tr></tbody></table>


- Allow user to select maximum 10 part numbers from the list.


- If only one part number selected , then the chart should able to display the part number DPPM and all the vendors' DPPM of the selected part number.


- Slected part number also apply to basic filter condition by project , part number , and date range / week/month/ quarter

**Incoming Inspection Status Tracker ( Vendor)** 

- **Sketch Map**

![image2022-7-29_11-12-34.png](/.attachments/122750098.png)



- **The Chart Description**


- The Y-Axis
represents
DPPM values
- The X-Axis
represents 
Date /Weeks/months/ Quarter depend on the filters.
- Legend to show the vendors that display in the line chart.

- The DPPM values wil display for each line based on
Date /Weeks/Months/ Quarter depend on the filters.
- The maximum line to display is 10 lines which are 10 vendors with the highest DPPM.

- **Calculation As Below**

- DPPM calculation for a vendor = ( number of total sample failure qty/ number of status is complated) \*1000000. and it values will display for each line based on
Date /Weeks/Months/ Quarter depend on the filters.
- If filtered by date , then DPPM calculation =  (number of
total failure sample qtyper date / number of status is complated per date) \* 1000000.
- if filtered by week , then DPPM calculation = sum of [
(number of  total failure sample qty per date / number of status is complated per date) \* 1000000 ]for a week.
- if filtered by month , then DPPM calculation = sum of
[(number of total failure sample qty per date / number ofstatus is complated per date) \* 1000000] for a month.
- if filtered by quarter , then DPPM calculation = sum of [
(number of  total failure sample qty per date / number of status is complated per date) \* 1000000] for a quarter.
- **Special Intruduce**


- Upon loading , it will display the latest 7 days data with Top 10 highest DPPM for vendor.

- Only calculate status is inspected(completed,QN In Process,QN Closed) Part Number base on IQC create GRS.No date

- Sync the last 14 days data

- **Vendor List**

- Once user clicked vendor button, it will list all the vendor from IQC ,the pop-up screen cover fields as below

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Vendor</span></td><td class="confluenceTd">The vendor name</td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Vendor Code</span></td><td class="confluenceTd">Vendor code of the vendor </td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Description</span></td><td class="confluenceTd">Description of vendor</td></tr></tbody></table>


- Allow user to select maximum 10 vendors from the list.


- Slected vendor also apply to basic filter condition by project , part number , and date range / week/month/ quarter

**Quality Notification (QN ) Tracker** 

- **Sketch Map**

![image2022-7-29_11-12-54.png](/.attachments/122750099.png)



- **The Chart Description**


- X-Axis : Display date / week/month/quarter based on filter.

- Y-Axis : Display the quantity

- Legend : QN Status : QN Closed , QN Open

- **Special Intruduce**


- Upon loading dashboard , this chart should display the latest 7 days data.

- QN tracker can be filtered by the basic filters condition to display the data .


- Sync the last 14 days data

- **Hot Part Tracking**


- Allow user  to click  link to jump to another system

- [http://cnwuxm0web01/partcontrol/index.asp](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Quality-Data-Management-System--%2D-Incoming-Quality-Control-(QDMS-%2D-IQC)/IQC-Reports-&-Dashboard/IQC-Dashboard.md)

- [http://cntxqm0web02/IMT_PRD/](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Quality-Data-Management-System--%2D-Incoming-Quality-Control-(QDMS-%2D-IQC)/IQC-Reports-&-Dashboard/IQC-Dashboard.md)






#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/119800185.png)
[image2022-7-13_15-44-1.png](/.attachments/122749063.png)
[image2022-7-14_16-50-5.png](/.attachments/122749143.png)
[image2022-7-29_11-11-37.png](/.attachments/122750096.png)
[image2022-7-29_11-12-8.png](/.attachments/122750097.png)
[image2022-7-29_11-12-34.png](/.attachments/122750098.png)
[image2022-7-29_11-12-54.png](/.attachments/122750099.png)
[image2022-7-29_11-23-9.png](/.attachments/122750101.png)

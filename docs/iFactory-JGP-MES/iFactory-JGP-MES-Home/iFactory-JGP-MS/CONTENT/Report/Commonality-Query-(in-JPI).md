# Introduction

The Commonality Report 

is the report that combine History, Defect Code, Attribute information for Serial Number based on input parameters provided. Once can get the result, then provide the UR for user copy the file. The share folder only remaining 2 days files in the server.
**How to get there?** 


::: mermaid
graph LR
A("JPI")-->0("ifactory")
0-->1("Dashboard")
1-->2("Commonality")

:::


### **Filter Criteria** 


![image2021-6-25_15-10-12.png](/.attachments/94404827.png)



![image2021-6-25_15-11-40.png](/.attachments/94404829.png)


<table class="relative-table wrapped confluenceTable" style="width: 85.1286%;"><colgroup><col style="width: 13.1546%;" /><col style="width: 86.8587%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Site<span style="color: rgb(255,0,0);">*</span></span></p></td><td style="text-align: left;" class="confluenceTd">Single Selection base on the log-in.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Customer Division<span style="color: rgb(255,0,0);">*</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">Single Selection base on the Site selected.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);"><span style="color: rgb(255,0,0);"><span style="color: rgb(0,0,0);">Product Family</span></span><span style="color: rgb(255,0,0);">*</span></span></p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">All the available product family against with customer partition / project to be available here for user's selection. Single Selection.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Material<span style="color: rgb(255,0,0);">*</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">All the active materials against with/without selected Product Family to be available for user's selection. Single Selection.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Filter By<span style="color: rgb(255,0,0);">*</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user has the option to set 'Serial Number' or 'Date Range'.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Serial Number<span style="color: rgb(255,0,0);">*</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p style="text-align: left;">Allow user to insert any available Serial Number for report generation. This filter <span style="color: rgb(23,43,77);">allows multiple input, using comma(,<span style="color: rgb(77,81,86);">)</span><span> </span>to separate</span>. <span style="color: rgb(23,43,77);">Base on the Filter By selected Serial Number.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Route Step<span style="color: rgb(255,0,0);">*</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">All the Route Step against with selected Route to be available for user's selection. Single Selection and base on the Filter By selected Date Range.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Resource<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">All the active Resource against with selected Route Step to be available for user's selection. Single Selection and base on the Filter By selected Date Range.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Result<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Allow user has the option to set 'All', Pass' or 'Fail'. Base on the Filter By selected Date Range.</span></td></tr><tr><td colspan="1" class="confluenceTd">Final Date From<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><p style="text-align: left;">Specify the Start Date, only operation completed date time within will be included in the report. Default to "Current date -1". <span style="color: rgb(23,43,77);">Base on the Filter By selected Date Range.</span></p><p style="text-align: left;"><span style="color: rgb(23,43,77);">Note: From and To value range can be maximum of 7 days if t<span style="color: rgb(51,51,51);">here filter by date range</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Final Date To<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><p style="text-align: left;">Specify the End Date, only operation completed date time within will be included in the report. Default to Current date". <span style="color: rgb(23,43,77);">Base on the Filter By selected Date Range.</span></p><p style="text-align: left;"><span style="color: rgb(23,43,77);">Note: From and To value range can be maximum of 7 days if t<span style="color: rgb(51,51,51);">here filter by date range</span></span></p></td></tr></tbody></table>

**Available field detail in Report** 
If search condition can not get the result display the no data found in UI.
![image2021-6-25_15-18-28.png](/.attachments/94404830.png)


![image2021-6-25_15-18-52.png](/.attachments/94404831.png)


If search condition can get the result display the URL in UI for user copy path to copy the file
.
![image2021-6-25_15-21-50.png](/.attachments/94404832.png)


![image2021-6-25_15-22-15.png](/.attachments/94404833.png)


Copy the URL to open the file
![image2021-6-25_15-23-32.png](/.attachments/94404834.png)


File name as "
commonality_YYYYMddHHMMSS.csv
".![image2021-6-25_15-24-54.png](/.attachments/94404835.png)


<table class="relative-table wrapped confluenceTable" style="width: 63.5163%;"><colgroup><col style="width: 17.7451%;" /><col style="width: 15.664%;" /><col style="width: 66.6046%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;" colspan="2"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="2" class="confluenceTd">Site</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows Site matched with filtered criteria provided by user</span></td></tr><tr><td style="text-align: left;" colspan="2" class="confluenceTd">Customer</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">This field shows Customer matched with filtered criteria provided by user</span></p></td></tr><tr><td style="text-align: left;" colspan="2" class="confluenceTd">Division</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows Division matched with filtered criteria provided by user</span></td></tr><tr><td style="text-align: left;" colspan="2" class="confluenceTd">Family</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows Product Family matched with filtered criteria provided by user</span></td></tr><tr><td style="text-align: left;" colspan="2" class="confluenceTd">Material</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows Material matched with filtered criteria provided by user</span></td></tr><tr><td style="text-align: left;" colspan="2" class="confluenceTd">Route</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows Route matched with filtered criteria provided by user</span></td></tr><tr><td style="text-align: left;" colspan="2" class="confluenceTd">Serial Number</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">This field shows all the Serial Number matched with filtered criteria provided by user</span></p></td></tr><tr><td style="text-align: left;" rowspan="5" class="confluenceTd">History</td><td colspan="1" class="confluenceTd">Date</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Column Name as RouteStep-Date. Different Route Step in different column. e.g QC1-Date</p><p>Value as Route Step latest datetime.</p></td></tr><tr><td colspan="1" class="confluenceTd">Result</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Column Name as RouteStep-Result. Different Route Step in different column, e.g QC1-Result</p><p>Value as Route Step latest operation status. </p></td></tr><tr><td colspan="1" class="confluenceTd">Defect Code</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>MIE Route Step</p><p>Column Name as RouteStep-DefectCode. Different Route Step in different column, e.g QC1-DefectCode</p><p>Value as </p><ul><li>If have CRD, then show DefectCode@CRD. (e.g AIRLINE@CRD1, ABRISION@CRD2)</li><li>If no CRD, then show DefectCode.  (e.g. ARIELINE, ABRISION)</li><li>If have multiple, combine value with ",".</li></ul><p><br /></p><p>MTE Rout Step</p><p>Column Name as RouteStep-FailureLabel. Different Route Step in different column, e.g QC1-FailureLabel</p><p>Value as Failure Label value. If have multiple, combine value with ",".</p></td></tr><tr><td colspan="1" class="confluenceTd">Loop</td><td style="text-align: left;" colspan="1" class="confluenceTd">The count of it consecutive. process Column Name as RouteStep-Loop. Different Route Step in different column. Value as Route Step loop, e.g. QCQ-Loop.</td></tr><tr><td colspan="1" class="confluenceTd">Process Loop</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The count of this WIP processed. </span>Column Name as RouteStep-ProcessLoop. Different Route Step in different column. Value as Route Step process loop, e.g. QCQ-ProcessLoop.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Data Collection</td><td colspan="1" class="confluenceTd">Data Collection</td><td style="text-align: left;" colspan="1" class="confluenceTd">Column Name as Data Collection Name. Different Attribute in different column. Value as Data Collection values. If have multiple, combine value with ",".</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Attributes Assignment</td><td colspan="1" class="confluenceTd">Attributes</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Column Name as Attribute Name. Different Attribute in different column. Value as Attribute values. If have multiple, combine value with ",".</p></td></tr></tbody></table>

**Column Name as RouteStep_Date. Different Route Step in different column. e.g QC1_Date** 
Value as Route Step latest datetime.
ResultColumn Name as RouteStep_Result. Different Route Step in different column, e.g QC1_Result
Value as Route Step latest operation status. 
Defect CodeMIE Route Step
Column Name as RouteStep_DefectCode. Different Route Step in different column, e.g QC1_DefectCode
Value as 

- If have CRD, then show DefectCode@CRD. (e.g AIRLINE@CRD1, ABRISION@CRD2)

- If no CRD, then show DefectCode.  (e.g. ARIELINE, ABRISION)

- If have multiple, combine value with ",".

MTE Rout Step
Column Name as RouteStep_FailureLabel. Different Route Step in different column, e.g QC1_FailureLabel
Value as Failure Label value. If have multiple, combine value with ",".
LoopThe count of it consecutive. process Column Name as RouteStep_Loop. Different Route Step in different column. Value as Route Step loop, e.g. QCQ_Loop.Process LoopThe count of this WIP processed. 
Column Name as RouteStep_ProcessLoop. Different Route Step in different column. Value as Route Step process loop, e.g. QCQ_ProcessLoop.Data CollectionData CollectionColumn Name as Data Collection Name. Different Attribute in different column. Value as Data Collection values. If have multiple, combine value with ",".Attributes AssignmentAttributesColumn Name as Attribute Name. Different Attribute in different column. Value as Attribute values. If have multiple, combine value with ",".


#### Attachments

[image2021-3-16_15-21-44.png](/.attachments/94404822.png)
[image2021-3-16_15-32-43.png](/.attachments/94404823.png)
[image2021-3-16_15-31-31.png](/.attachments/94404824.png)
[image2021-3-16_15-28-31.png](/.attachments/94404825.png)
[image2021-3-16_15-29-41.png](/.attachments/94404826.png)
[image2021-6-25_15-10-12.png](/.attachments/94404827.png)
[image2021-6-25_15-11-0.png](/.attachments/94404828.png)
[image2021-6-25_15-11-40.png](/.attachments/94404829.png)
[image2021-6-25_15-18-28.png](/.attachments/94404830.png)
[image2021-6-25_15-18-52.png](/.attachments/94404831.png)
[image2021-6-25_15-21-50.png](/.attachments/94404832.png)
[image2021-6-25_15-22-15.png](/.attachments/94404833.png)
[image2021-6-25_15-23-32.png](/.attachments/94404834.png)
[image2021-6-25_15-24-54.png](/.attachments/94404835.png)

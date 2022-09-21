# Introduction

This page is allowed user to view all the measured data based on particular filtering for analysis purpose.


### How to get there?



::: mermaid
graph LR
A("QLMS REPORTS")-->0("Measurement Result History")

:::


#### Permission 



- Can Access Measurement Result History Report



#### Screen Activity


Measurement Result History Report enables user to perform the following activities:

- Allow user to see all available measured data based on filtering.

- User can filter the report results with following field criteria

- Dimension Code, Project, Product Family, Job Type, Production Type, Production Equipment, Production Equipment ID, Cavity, Serial Number and
Measured Date (From – To)

- If there is deleted in iFactory, system will handle deleted in iFactory configuration:


- All the configured data (Project, Product Family, Material, Route/Version, Route Step, Job Type, Production Process,  Measuring Equipment Type, Production Machine ID) will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.


- System will retrieve soft deleted configuration from ifactory / Dimension Maintenance configuration for filter fields.



#### **Fields** 



**Filter criteria** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Dimension Code</span></p></td><td style="text-align: left;" class="confluenceTd"><p>Allow user to insert any available dimension code for report generation.</p></td></tr><tr><td colspan="1" class="confluenceTd">Project</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">All the available Projects against Customer partitioning to be available here for user's selection.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd"><p style="text-align: left;"><span style="color: rgb(23,43,77);">All the available product family against with customer partition / project to be available here for user's selection.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Job Type</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">All the available Job Types for all the factories, against Customer partitioning to be available here for user's selection.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Production Process</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">All the available production Process against customer partition to be available here for user's selection.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Production Equipment Type</td><td style="text-align: left;" colspan="1" class="confluenceTd">Allow user to insert any available production equipment type for report generation.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Route/Version</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">All the available Route/Version against selected Project, Product Family to be available here for user's selection.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">All the available Route Step against selected Route to be available here for user's selection.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Production Machine ID</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Allow user to insert any available production equipment ID  for report generation.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Cavity</td><td style="text-align: left;" colspan="1" class="confluenceTd">Allow user to insert any available cavity for report generation.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Serial Number</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Allow user to insert any available serial number for report generation.</p><p>Note: This value is applicable only for Repetitive type Work Order.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Measured Date From</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The field value is defaulted by 7 days earlier than current date. Although user can change the From date after opening Calendar icon.</p><p>Note: From and To value range can be maximum of 30 days</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Measured Date To</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The field value is defaulted by current date. Although user can change the 'To' date after opening Calendar icon.</p><p>Note: From and To value range can be maximum of 30 days</p></td></tr></tbody></table>

**Available field detail in Report** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Work Order ID</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows all the Work order IDs matched with filtered criteria provided by user</span></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd"><p style="text-align: left;">This field shows the route and route version of the filtered work order ID.</p><p style="text-align: left;"><span style="color: rgb(23,43,77);">The filed showed route and rout version value which registered in inspection registration and display NA if there is no route registered for work order.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><p style="text-align: left;">This field shows the route step of the filtered work order ID.</p><p style="text-align: left;"><span style="color: rgb(23,43,77);">The filed showed route step value which registered in inspection registration and display NA if there is no route step registered for work order.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Job Type</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the job type of the filtered work order ID.</span></td></tr><tr><td colspan="1" class="confluenceTd">Production Type</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the production type of the filtered work order ID.</span></td></tr><tr><td colspan="1" class="confluenceTd">Production Equipment</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the production equipment type of the filtered work order ID.</span></td></tr><tr><td colspan="1" class="confluenceTd">Production Equipment ID</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the production equipment ID of the filtered work order ID.</span></td></tr><tr><td colspan="1" class="confluenceTd">Cavity </td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the configured Cavity  of the filtered work order ID.</span></td></tr><tr><td colspan="1" class="confluenceTd">Sample Number</td><td colspan="1" class="confluenceTd">This field shows the configured Sample Number of the filtered work order ID.</td></tr><tr><td colspan="1" class="confluenceTd">Item Number</td><td colspan="1" class="confluenceTd">This field shows the configured Item Number of the filter work order ID.</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">This field shows the available serial number of the filtered work order ID if the work order is belonging to Repetitive process type.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Dimension Code</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the filtered dimension code.</span></td></tr><tr><td colspan="1" class="confluenceTd">Dimension Type</td><td colspan="1" class="confluenceTd">This field shows the configured dimension type</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Nominal</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p style="text-align: left;"><span style="color: rgb(23,43,77);">This field shows the configured nominal for the filtered dimension code. </span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">+TOL</td><td style="text-align: left;" colspan="1" class="confluenceTd">This field shows the configured +TOL for the filtered dimension code.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">-TOL</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">This field shows the configured -TOL for the filtered dimension code.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Measured Data</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p style="text-align: left;">This field shows the measured data of the filtered dimension code.</p><p style="text-align: left;">If the measured data is out of limit, then the value is shown BOLD in RED.</p></td></tr><tr><td colspan="1" class="confluenceTd">Measured Datetime</td><td colspan="1" class="confluenceTd">This field shows when the product is being measured.</td></tr></tbody></table>



#### Attachments

[image2019-8-30_15-46-3.png](/.attachments/59441431.png)
[image2019-10-31_11-25-45.png](/.attachments/59441432.png)
[image2019-10-31_12-37-53.png](/.attachments/59441433.png)

# Introduction

This page is allowed user to generate report by comparing particular dimension code with different production type , project , job type , product family and material based on the selected production date range.


### How to get there?



::: mermaid
graph LR
A("QLMS REPORTS")-->0("Measurement Result Comparison Report")

:::


#### Permission



- Can Access Measurement Result Comparison Report



#### Screen Activity


Measurement Result Comparison Report enables user to perform the following activities:

- Allow user to see all available Work order IDs with uploaded measured Data

- User can filter the report results with following field criteria

- Dimension Code, Job Type, Production Type, Project, Product Family, Material and
Production Date (From – To)

- If there is deleted in iFactory, system will handle deleted in iFactory configuration:


- All the configured data (Project, Product Family, Material, Route/Version, Route Step, Job Type, Production Process,  Measuring Equipment Type, Production Machine ID) will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.


- System will retrieve soft deleted configuration from ifactory / Dimension Maintenance configuration for filter fields.



#### **Fields** 



**Filter criteria** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Dimension Code</span></p></td><td style="text-align: left;" class="confluenceTd"><p>This is a mandatory field for user to insert in order to generate the report.</p></td></tr><tr><td colspan="1" class="confluenceTd">Production Type</td><td colspan="1" class="confluenceTd"><p>All the available production type against customer partition to be available here for user's selection.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Project</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>All the available Projects against Customer partition to be available here for user's selection.</p></td></tr><tr><td colspan="1" class="confluenceTd">Job Type</td><td colspan="1" class="confluenceTd"><p>All the available Job Types for all the factories, against Customer partitioning to be available here for user's selection.</p></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">All the available product family against with customer partition / project to be available here for user's selection.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">All the active materials against with/without selected Product Family to be available for user's selection.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd">All the available Route/Version against selected Project, Product Family, Material which the Project, Product Family, Material configured in the Dimension Maintenance to be available here for user's selection.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>All the available Route Step against selected Route which the Route configured in the Dimension Maintenance to be available here for user's selection.</p></div></td></tr><tr><td colspan="1" class="confluenceTd">Production Date From</td><td colspan="1" class="confluenceTd"><p>The field value is defaulted by 7 days earlier than current date. Although user can change the From date after opening Calendar icon.</p><p>Note: From and To value range can be maximum of 30 days</p></td></tr><tr><td colspan="1" class="confluenceTd">Production Date To</td><td colspan="1" class="confluenceTd"><p>The field value is defaulted by current date. Although user can change the 'To' date after opening Calendar icon.</p><p>Note: From and To value range can be maximum of 30 days</p></td></tr></tbody></table>

**Available field detail in Report** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Work Order ID</span></td><td style="text-align: left;" colspan="1" class="confluenceTd">This field shows all the Work order IDs matched with filtered criteria provided by user</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Project</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the filtered </span><span style="color: rgb(23,43,77);">work order ID </span><span style="color: rgb(23,43,77);">is belonging to which project.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Product Family</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the product family of the filtered work order ID.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Material</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">This field shows the material of the filtered work order ID.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd"><p>This field shows the route and route version of the filtered work order ID.</p><p><span style="color: rgb(23,43,77);">The filed showed route and rout version value which registered in inspection registration and display NA if there is no route registered for work order.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><p>This field shows the route step of the filtered work order ID.</p><p><span style="color: rgb(23,43,77);">The filed showed route step value which registered in inspection registration and display NA if there is no route step registered for work order.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Job Type</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">This field shows the job type of the filtered work order ID.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Production Type</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">This field shows the production type of the filtered work order ID.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Measurement Equipment Model</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">This field shows the measurement equipment model of the filtered work order ID.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Production Equipment ID</td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">This field shows the production equipment ID of the filtered work order ID.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Mold ID / Tooling ID</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the Mold ID /Tooling ID of the filtered work order ID.</span></td></tr><tr><td colspan="1" class="confluenceTd">Cavity</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the configured Cavity  of the filtered work order ID.</span></td></tr><tr><td colspan="1" class="confluenceTd">Production Date</td><td colspan="1" class="confluenceTd">This field shows when the product is produced .</td></tr><tr><td colspan="1" class="confluenceTd">Dimension Code</td><td colspan="1" class="confluenceTd">This field shows the filtered dimension code.</td></tr><tr><td colspan="1" class="confluenceTd">Dimension Type</td><td colspan="1" class="confluenceTd">This field shows the configured dimension type</td></tr><tr><td colspan="1" class="confluenceTd">Nominal</td><td colspan="1" class="confluenceTd">This field shows the configured nominal for the filtered dimension code. </td></tr><tr><td colspan="1" class="confluenceTd">+TOL ( upper limit)</td><td colspan="1" class="confluenceTd">This field shows the configured +TOL for the filtered dimension code.</td></tr><tr><td colspan="1" class="confluenceTd">-TOL ( lower limit)</td><td colspan="1" class="confluenceTd">This field shows the configured -TOL for the filtered dimension code.</td></tr><tr><td colspan="1" class="confluenceTd">Measured Data</td><td colspan="1" class="confluenceTd"><p>This field shows the measured data of the filtered dimension code.</p><p>If the measured data is out of limit, then the value is shown BOLD in RED.</p></td></tr></tbody></table>



#### Attachments

[image2019-8-30_15-46-3.png](/.attachments/59441426.png)
[image2019-10-30_11-28-13.png](/.attachments/59441427.png)
[image2019-10-31_11-25-45.png](/.attachments/59441428.png)
[image2020-7-1_10-48-13.png](/.attachments/73236801.png)

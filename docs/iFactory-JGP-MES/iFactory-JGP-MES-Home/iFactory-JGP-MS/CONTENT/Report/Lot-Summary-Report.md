# Introduction

The Lot Summary Report shows all the Planned Order Number, Planned Order quantity, Internal Lot quantity, Internal Lot fail quantity, In Progress quantity, Aging Quantity, On Hold quantity that can 
further analysis and 
monitor the productivity. 
**How to get there?** 

::: mermaid
graph LR
A("IFACTORY-STANDARD-REPORT")-->0("LotSummary Report")

:::
![image2021-3-4_11-33-47.png](/.attachments/88113483.png)





### Screen Activity


Lot Summary Report enables user to perform the following activities:

- Allow user to see all Internal Lot under the Super Lot

- User can filter by filter condition to see relative Lot productivity


#### **Fields** 





#### **Filter Criteria** 


![image2021-3-12_11-31-33.png](/.attachments/88113742.png)


<table class="relative-table confluenceTable" style="width: 65.7159%;"><colgroup><col style="width: 12.5418%;" /><col style="width: 87.4582%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Customer<span style="color: rgb(255,0,0);">*</span></span></p></td><td style="text-align: left;" class="confluenceTd"><p>All the available Customer for against the Security permission to available here for user's selection. This filter only allow single selection.</p></td></tr><tr><td colspan="1" class="confluenceTd">Division<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">Single Selection base on the Customer selected.</td></tr><tr><td colspan="1" class="confluenceTd">Family<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">All the available Product Family against with customer partition to be available here for user's selection. This filter only allow single selection.</td></tr><tr><td colspan="1" class="confluenceTd">Material<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">All the active materials against with selected Product Family to be available for user's selection. This filter allows multiple selection and default selected "All".</span></td></tr><tr><td colspan="1" class="confluenceTd">Factory<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">All the available Factory for user's selection.<span style="color: rgb(23,43,77);">. This filter allows multiple selection and default selected "All".</span></td></tr><tr><td colspan="1" class="confluenceTd">Route<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">All the available Route against with selected Factory to be available here for user's selection. This filter only allow single selection.</td></tr><tr><td colspan="1" class="confluenceTd">Super Lot<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">All the available Super Lot against with selected Material to be available here for user's selection. This filter only allow single selection.</td></tr><tr><td colspan="1" class="confluenceTd">Internal Lot<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">All the available Lot against with selected Super Lot to be available here for user's selection. This filter <span style="color: rgb(23,43,77);">allows multiple selection and default selected "All".</span></td></tr><tr><td colspan="1" class="confluenceTd">WIP (Aging)<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">Available 1 to 365 days here for user's selection. This filter<span style="color: rgb(23,43,77);"> default value set as</span><span style="color: rgb(23,43,77);"> "7". </span></td></tr></tbody></table>

**Available field detail in Report** 
![image2021-3-12_11-29-30.png](/.attachments/88113741.png)


<table class="relative-table confluenceTable" style="width: 66.0998%;"><colgroup><col style="width: 12.2093%;" /><col style="width: 87.7907%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Customer</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows Customer matched with filtered criteria provided by user.</span></td></tr><tr><td colspan="1" class="confluenceTd">Family</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field  shows Family matched with filtered criteria provided by user.</span></td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows Factory matched with filtered criteria provided by user.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field  shows Route matched with filtered criteria provided by user.</span></td></tr><tr><td colspan="1" class="confluenceTd">Super Lot</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows Super Lot matched with filtered criteria provided by user.</span></td></tr><tr><td colspan="1" class="confluenceTd">Super Lot Qty</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows total Super Lot Quantity that user selected Super Lot.</span></td></tr><tr><td colspan="1" class="confluenceTd">W/O Number</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the name of the Planned Order that the Super Lot was released against.<span> </span></span></td></tr><tr><td colspan="1" class="confluenceTd">W/O Released Date</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the actual date where the planned order started in production.</span></td></tr><tr><td colspan="1" class="confluenceTd">W/O Remaining Qty</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the remaining WIP quantity that is yet to release for this planned order.</span></td></tr><tr><td colspan="1" class="confluenceTd">Internal Lot</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the number that will be automatically created during lot release.</span></td></tr><tr><td colspan="1" class="confluenceTd">Internal Lot Qty</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the quantity of items of this Internal Batch Number.</span></td></tr><tr><td colspan="1" class="confluenceTd">Input</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><span style="color: rgb(23,43,77);">This field shows total </span>internal lot quantity that released into the Route.</span></td></tr><tr><td colspan="1" class="confluenceTd">Output</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the quantity</span> of lot of Completed status.</td></tr><tr><td colspan="1" class="confluenceTd">Fail</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><span style="color: rgb(23,43,77);">This field shows total </span>lot quantity that has fail status in particular internal lot.</span></td></tr><tr><td colspan="1" class="confluenceTd">WIP</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the quantity</span> of lot of In Progress and New status.</td></tr><tr><td colspan="1" class="confluenceTd">WIP (Aging)</td><td colspan="1" class="confluenceTd"><p>This field base on WIP(Aging) days parameter value to shows the quantity of lot of In Progress status that aging day > days parameter value.</p><p>The Aging calculation and scenario:</p><p>Route Step 1 (RS 1), Route Step 2 (RS 2)</p><p><strong>Scenario 1: In Queue at RS1</strong></p><p>Aging = NA</p><p><strong>Scenario 2: Completed RS1, In Queue RS2</strong></p><p>Aging = Current date - Complete date in RS1</p><p><strong>Scenario 3: Completed RS1, Started at RS2</strong></p><p>Aging = Current date - Start date in RS2</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">On Hold</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field shows the quantity </span>of internal lot of On Hold status.</td></tr></tbody></table>



#### Attachments

[image2021-2-24_15-41-8.png](/.attachments/88113480.png)
[image2021-3-4_11-33-15.png](/.attachments/88113481.png)
[image2021-3-4_11-33-27.png](/.attachments/88113482.png)
[image2021-3-4_11-33-47.png](/.attachments/88113483.png)
[image2021-3-4_14-29-45.png](/.attachments/88113488.png)
[image2021-3-4_15-25-45.png](/.attachments/88113490.png)
[image2021-3-12_11-29-30.png](/.attachments/88113741.png)
[image2021-3-12_11-31-33.png](/.attachments/88113742.png)

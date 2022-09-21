# Introduction

Lot Production Dashboard will retrieve all the Production Dashboard information so that user can use it for further analysis and monitor the productivity.


### How to get there?



::: mermaid
graph LR
A("SFS-IFACTORY-STANDARD-REPORTS")
:::
![wiki arrow.png](/.attachments/89588288.png)




::: mermaid
graph LR
A("LOTPRODUCTIONDASHBOARD")
:::


#### Screen Activity


Lot Production Dashboard enables user to perform the following activities:

- Allow user to see all Internal Lot under the Super Lot

- User can filter by filter condition to see relative Lot productivity


#### Fields


Filter Criteria
![image2021-4-9_10-24-47.png](/.attachments/89588305.png)


<table class="relative-table confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 13.8748%;" /><col style="width: 86.1252%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Customer<span style="color: rgb(255,0,0);">*</span></td><td class="confluenceTd">Show all the customer that is assigned to the user. Allows only single selection</td></tr><tr><td class="confluenceTd">Division<span style="color: rgb(255,0,0);">*</span></td><td class="confluenceTd">The division list is based on the Customer selected. Allows only single selection</td></tr><tr><td class="confluenceTd">Family<span style="color: rgb(255,0,0);">*</span></td><td class="confluenceTd">The Family list is based on the Customer and Division selected. Allows only single selection</td></tr><tr><td class="confluenceTd">Material<span style="color: rgb(255,0,0);">*</span></td><td class="confluenceTd">By default, “[All]” is selected. The Material list is based on the Family selected. Allows multiple selections</td></tr><tr><td colspan="1" class="confluenceTd">Factory<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">By default, “[All]” is selected. Allows multiple selections</td></tr><tr><td colspan="1" class="confluenceTd">Route<span style="color: rgb(255,0,0);">*</span></td><td colspan="1" class="confluenceTd">Route list is based on the Factory selected. Allows only single selection</td></tr><tr><td colspan="1" class="confluenceTd"><p>Date Time From </p><p>Date Time To</p></td><td colspan="1" class="confluenceTd">The Date Time From and Date Time To need to be within 15 days</td></tr><tr><td colspan="1" class="confluenceTd">Work Order Number</td><td colspan="1" class="confluenceTd">Work Order list is based on the Material and Route selected and it is refers to Planned Order . Allows only single selection</td></tr><tr><td colspan="1" class="confluenceTd">Super Lot</td><td colspan="1" class="confluenceTd">The Super Lot list is based on the Material selected. Allows only single selection</td></tr><tr><td colspan="1" class="confluenceTd">Internal Lot</td><td colspan="1" class="confluenceTd">Internal Lot list is based on the Material, Route and Superlot selected and it is refer to Internal Batch Number</td></tr><tr><td colspan="1" class="confluenceTd">WIP (Aging)</td><td colspan="1" class="confluenceTd">By default value is "7" (Min: 1, Max: 365)</td></tr></tbody></table>

Report
![image2021-4-9_11-14-6.png](/.attachments/89588306.png)


<table class="relative-table confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 14.044%;" /><col style="width: 85.956%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Station</td><td class="confluenceTd"><div class="content-wrapper"><p>Refer to the Route Step</p><p>Allows user to click on the station and will display a new page</p></div></td></tr><tr><td class="confluenceTd">Is FPY Station</td><td class="confluenceTd">Refer to Route Step Type have turned on the Included in Yield (On/Off).</td></tr><tr><td class="confluenceTd">FPY</td><td class="confluenceTd"><p>FPY refers to Passed Lot Qty / Tested Lot Qty</p><p>Passed Lot Qty are Lots with test result is "PASS"<br />Tested Lot Qty is the total Lot that tested in the particular route step and within the test time frame if got choose the DateTime criteria</p></td></tr><tr><td class="confluenceTd">Input</td><td class="confluenceTd">Refer to tested lot quantity</td></tr><tr><td class="confluenceTd">Fail</td><td class="confluenceTd"><p>Refer to the Lot Qty that with test result is "FAIL"</p><p>Allows user to click on the Fail quantity and will display a new page</p></td></tr><tr><td class="confluenceTd">WIP</td><td class="confluenceTd"><p>Refer to the total lot quantity that has lot status "In Progress" and completed in particular route step</p><p>Allows user to click on the WIP or WIP(Aging) and will display a new page</p></td></tr><tr><td class="confluenceTd">WIP (Aging)</td><td class="confluenceTd"><p>Refer to the total lot quantity that has lot status "In Progress" and completed in particular route step with the aging day based on the WIP (Aging) >= Days parameter value</p><p>Allows user to click on the WIP or WIP(Aging) and will display a new page</p></td></tr><tr><td colspan="1" class="confluenceTd">On Hold</td><td colspan="1" class="confluenceTd"><p>Refer to the total lot qty that is on hold</p><p>Allows user to click on the Hold lot quantity and will display a new page</p></td></tr></tbody></table>


When user click on the station, user will be redirected to this new page
![image2021-4-9_16-41-53.png](/.attachments/89588313.png)


Fail
When user click on the Fail quantity, user will be redirected to this new page
![image2021-4-9_16-58-34.png](/.attachments/89588315.png)


WIP/WIP(Aging)
When user click on the WIP / WIP(Aging), user will be redirected to this new page
![image2021-4-9_17-45-43.png](/.attachments/89588320.png)


![image2021-4-9_17-49-8.png](/.attachments/89588321.png)


On Hold
When user click on the on hold lot quantity, user will be redirected to this new page
![image2021-4-9_17-43-46.png](/.attachments/89588319.png)




#### Attachments

[wiki arrow.png](/.attachments/89588288.png)
[image2021-4-9_10-17-33.png](/.attachments/89588304.png)
[image2021-4-9_10-24-47.png](/.attachments/89588305.png)
[image2021-4-9_11-14-6.png](/.attachments/89588306.png)
[image2021-4-9_11-41-29.png](/.attachments/89588309.png)
[image2021-4-9_11-41-36.png](/.attachments/89588310.png)
[image2021-4-9_16-41-53.png](/.attachments/89588313.png)
[image2021-4-9_16-57-55.png](/.attachments/89588314.png)
[image2021-4-9_16-58-34.png](/.attachments/89588315.png)
[image2021-4-9_17-6-45.png](/.attachments/89588316.png)
[image2021-4-9_17-42-16.png](/.attachments/89588317.png)
[image2021-4-9_17-43-46.png](/.attachments/89588319.png)
[image2021-4-9_17-45-43.png](/.attachments/89588320.png)
[image2021-4-9_17-49-8.png](/.attachments/89588321.png)

# Introduction

The Attribute Assignment report shows attributes that have been assigned at the particular route step ( Lot/Batch and Repetitive) in a selected time range.


### How to get there?


There will be SQL Server Reporting Services URL to be provided to site for reports accessing.
![image2018-12-26_16-35-31.png](/.attachments/39649516.png)





#### Selection Criteria


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Start Date</td><td class="confluenceTd">Specify the Start Date, only Attribute assigned equal/after Start Date will be included in the report</td></tr><tr><td class="confluenceTd">End Date</td><td class="confluenceTd">Specify the End Date, only <span>Attribute assigned </span> equal/before End Date will be included in the report</td></tr><tr><td class="confluenceTd">Customer</td><td class="confluenceTd">Specify the Customer. Single selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">Specify the Route, only the specified Route will be included in the report.<span>Single selection is available.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Specify the route step to be included in the report. Multiple selection is available.</td></tr><tr><td colspan="1" class="confluenceTd">Attribute Name</td><td colspan="1" class="confluenceTd"><span>Specify the Attribute Name to be included in the report.<span>Multiple selection is available.</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Specify the material to be included in the report.<span>Multiple selection is available.</span></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">Product family will be auto selected once user selected the material.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd"><p>Specify the Assembly to be included in the report. <span>Multiple selection is available.</span></p><p>Note : For Lot/Batch without Assembly, user need to select "Lot Only".</p></td></tr><tr><td colspan="1" class="confluenceTd">View Report</td><td colspan="1" class="confluenceTd">To view the report once all mandatory fields are selected.</td></tr></tbody></table>

Note : User need to refresh the page to clear the selections.


#### Report Fields


![image2018-12-27_9-58-3.png](/.attachments/39649520.png)


<table class="relative-table confluenceTable" style="width: 63.0994%;"><colgroup><col style="width: 26.5491%;" /><col style="width: 73.3848%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Route</td><td class="confluenceTd">The Route where the Attribute is assigned.</td></tr><tr><td class="confluenceTd">Route Step</td><td class="confluenceTd"><span>The Route Step where the Attribute is assigned.</span></td></tr><tr><td class="confluenceTd">Customer</td><td class="confluenceTd">The customer where the Attribute belongs.</td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">The Product family where the Attribute belongs.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The material where the Attribute is configured.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The Assembly where the Attribute is assigned.</td></tr><tr><td colspan="1" class="confluenceTd">Attribute Name</td><td colspan="1" class="confluenceTd">The Attribute Name which defined by user.</td></tr><tr><td colspan="1" class="confluenceTd">Attribute Value</td><td colspan="1" class="confluenceTd">The Attribute Value which inserted by user.</td></tr><tr><td colspan="1" class="confluenceTd">Total Count</td><td colspan="1" class="confluenceTd">Total count of Attribute value that being assigned at the particular route step.</td></tr></tbody></table>




#### Attachments

[image2018-12-26_16-35-31.png](/.attachments/39649516.png)
[image2018-12-27_9-56-55.png](/.attachments/39649519.png)
[image2018-12-27_9-58-3.png](/.attachments/39649520.png)

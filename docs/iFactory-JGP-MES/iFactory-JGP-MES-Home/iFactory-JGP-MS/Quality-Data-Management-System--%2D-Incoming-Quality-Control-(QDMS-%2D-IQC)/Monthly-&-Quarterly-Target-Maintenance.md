# Introduction

This maintenance screen is to maintain the monthly and quarterly target for Dashboard.


### **How to get there?** 



::: mermaid
graph LR
A("IQC CONFIGURATION")-->0("MONTHLY & QUARTERLY TARGET MAINTENANCE ")

:::


#### **Screen Activity** 


Monthly & Quarterly Target maintenance enables user to perform the following activities:

- View, add and update monthly and quarterly target


#### **Permission ( iFactory.IQC)** 



- Monthly and Quarterly Target Maintenance


- Can modify Monthly and Quarterly Target Maintenance



#### **Precondition** 



- N/A



#### **Screen Specification** 



- User is able to configure , edit and update monthly & quarterly target for dashboard . This target to be shown in Incoming Inspection Status Tracker ( by lot) control chart as a benchmark for user to compare with the actual result.

- User is allowed to view the configuration- ( historical data) by selecting fiscal year


#### **Fields** 


<table class="relative-table wrapped confluenceTable" style="width: 66.435%;"><colgroup><col style="width: 12.0432%;" /><col style="width: 87.9699%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Category</td><td class="confluenceTd"><ul><li>Allow user to select the right category to configure.</li><li>Values : Monthly , Quarterly</li></ul></td></tr><tr><td class="confluenceTd">Fiscal Year</td><td class="confluenceTd"><ul><li>Allow user to configure the fiscal year for the target.</li><li>Values :Start from FY 20<span> <span> </span></span>and end at FY 99</li><li>It will validate the FY based on current year and month as Jabil Fiscal year is starting from SEP.</li></ul></td></tr><tr><td class="confluenceTd">Month</td><td class="confluenceTd"><ul><li>This field will be enabled and mandatory if the selected category is Monthly.</li><li>Values : SEP , OCT, NOV, DEC , JAN, FEB , MAR, APR, MAY, JUN, JUL , AUG</li><li>If SEP , OCT, NOV and DEC months is selected , then the year will be minus 1 as it is Jabil Fiscal year is starting from SEP.</li><li>It will validate if the same month created.</li></ul></td></tr><tr><td class="confluenceTd">Quarter</td><td class="confluenceTd"><ul><li>This field will be enabled and mandatory if the selected category is Quarterly.</li><li>Values : Q1 , Q2, Q3 , Q4</li><li>It will validate if the same quarter created.</li></ul></td></tr><tr><td class="confluenceTd">Target ( %)</td><td class="confluenceTd"><ul><li>This field allows user to configure Target in percentage only.</li><li><span>Maximum target is 100% and allow 2 decimals.</span></li></ul></td></tr></tbody></table>



#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/120750291.png)

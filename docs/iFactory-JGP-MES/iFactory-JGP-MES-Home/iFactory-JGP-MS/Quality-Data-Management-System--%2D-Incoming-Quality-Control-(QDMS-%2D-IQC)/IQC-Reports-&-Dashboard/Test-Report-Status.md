# Introduction

Test Report Status is a screen to let user to 
inquire all 


### **How to get there?** 



::: mermaid
graph LR
A("IQC REPORT & DASHBOARD")-->0("IQC DASHBOARD")

:::


#### **Screen Activity** 



- View test report status


- Generate filter result


- Clear filter condition



#### **Permission ( iFactory.IQC)** 



- Can view Test Report status.


#### **Screen Specification** 




- This report will display all the part number with test reports uploaded based on the assigned data partition regardless of logged-on data partition.
**Query Condition** 
<table class="wrapped relative-table confluenceTable" style="width: 73.8707%;"><colgroup><col style="width: 16.3854%;" /><col style="width: 83.6276%;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Fields</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Part Number</td><td style="text-align: left;" class="confluenceTd"><ul><li><span><span>Show all the part number based on the assigned data partition regardless of logged-on customer/division.</span></span></li><li><span><span>Search screen display Part Number Name, Description, Plant Code and Material Type for selection<br /></span></span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd">Vendor</td><td style="text-align: left;" class="confluenceTd"><ul><li><span><span>Show all the available vendor name.<br /></span></span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd">Project</td><td style="text-align: left;" class="confluenceTd"><ul><li><span><span>Show all the project based on the assigned data partition regardless of logged-on customer/division.<br /></span></span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Uploaded by</td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li><span><span>Show all the active security user.<br /></span></span></li><li><span><span>Search screen display username, NTID, email for selection<br /></span></span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Validity date （from-to）</td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li>Always default by the current date -1 month.</li><li>When “From” was input and “to” is empty，System will search all test report  validity date from “Form selected Date” </li><li>When “From” was empty  and “to” is input，System will search all test report validity date before “to selected Date” </li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Last Uploaded date （from-to）</td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li>Always default by the current date -1 month.</li><li>When “From” was input and “to” is empty，System will search all test report  last uploaded date from “Form selected Date” </li><li>When “From” was empty  and “to” is input，System will search all test report last uploaded date before “to selected Date” </li></ul></td></tr></tbody></table>







- **A List of fields**

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Fields</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Inspection Plan Name</td><td class="confluenceTd"><ul><li> User can click on the inspection plan name will pop the inspection plan.</li><li>The inspection plan name that has test report will list in this report.</li></ul></td></tr><tr><td class="confluenceTd">Part Number</td><td class="confluenceTd"><ul><li>Part number that belong to the inspection plan name.</li></ul></td></tr><tr><td class="confluenceTd">Part Number Description</td><td class="confluenceTd"><ul><li>Part number description<span> <span> </span></span>that given to the part number will list in this report.</li></ul></td></tr><tr><td class="confluenceTd">Test Report Name</td><td class="confluenceTd"><ul><li>Test Report name given to the test report that belong to the inspection plan name will list in this report.</li></ul></td></tr><tr><td class="confluenceTd">Vendor</td><td class="confluenceTd"><ul><li>Vendor that configured for the test report name will list in this report.</li></ul></td></tr><tr><td class="confluenceTd">Last Uploaded Date</td><td class="confluenceTd"><ul><li>The test report last uploaded date</li></ul></td></tr><tr><td class="confluenceTd">Validity Date</td><td class="confluenceTd"><ul><li>The test report validity date.</li></ul></td></tr><tr><td class="confluenceTd">Status</td><td class="confluenceTd"><ul><li>System should display the following status</li><li>Expired : If the test report validity date overdue.</li><li>Unexpired : if the test report not yet overdue.</li></ul></td></tr><tr><td class="confluenceTd">Expiring In ( Day)</td><td class="confluenceTd"><ul><li>System auto calculate the Expiring in ( Day ).</li><li>If the report expired，Expired day will have value.<span style="letter-spacing: 0.0px;"> Expired day =Current date- Validity date</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Expired （Day）</td><td colspan="1" class="confluenceTd"><ul><li>System auto calculate the Expired  ( Day ).</li><li><span>If the report don't expire, Expiring In ( Day) have value ,Expiring in (Day)= Validity date – Current date.</span></li></ul></td></tr></tbody></table>



#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/122750722.png)
[image2022-7-29_11-12-8.png](/.attachments/122750723.png)

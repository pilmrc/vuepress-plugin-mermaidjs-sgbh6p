# Introduction

The Failure Report (also called the Failure Pareto Report) shows failure details per the parameters entered. 

The rows show Current assembly where the failure was attached (if assembly was progressed before defect was attached, shows progressed assembly) for repetitive flow. For BTO/CTO, there is no assembly attached and hence the report shows BLANK value for Assembly details.

### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("FAILURE")

:::
![image2020-3-25_15-7-27.png](/.attachments/67569586.png)




#### **Screen Activity** 


The Failure Report allows the following activity:

- View
the failure list of the WIP which associated to the given Failure Material within selected date range

- View results in grid and chart format.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


Pre-Condition
The following data needs to be pre-configured (if used) before user runs the FailureReport: 

- At least one failure is attached to a WIP withing selected date range

Select the mandatory fields: Start Date and End Date. Other parameters can be selected to narrow the results.
![image2020-3-25_15-11-35.png](/.attachments/67569587.png)






#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Start Date</td><td colspan="1" class="confluenceTd">Displays defects from this date/time. Mandatory selection criteria.</td></tr><tr><td colspan="1" class="confluenceTd">End Date</td><td colspan="1" class="confluenceTd">Displays defects before this date/time. Mandatory selection criteria.</td></tr><tr><td colspan="1" class="confluenceTd">Report By</td><td colspan="1" class="confluenceTd">The report can be generated by WIP build date/time or WIP Test date/time. Mandatory selection criteria.</td></tr><tr><td colspan="1" class="confluenceTd">Pareto Chart</td><td colspan="1" class="confluenceTd">Auto-selected as 'Failure Label'</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">Specify the Route. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Specify the Route Step. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Specify the Customer. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Specify the Division. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">Specify the Product Family. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Failure Material</td><td colspan="1" class="confluenceTd">Specify the Material where failure attached. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">Specify the Route. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Specify the Route Step. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd">Specify the Resources. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd"><div style="text-align: right;">Exclude Failure on Loops (more than)</div></td><td colspan="1" class="confluenceTd"><p>Exclude in the report where the WIP process loop count is more than the specified count in this field. <br />By default, the value is zero where there will be no exclusion based on the loop count. <br />Example: <br />If the Exclude Failure on Loops (more than) = 2, then system will only display the defect records where the WIP's process loop count in the route step is zero to two times.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Top N Value at Pareto Chart</span></td><td colspan="1" class="confluenceTd">If the Top N Value at Pareto Chart is set to 5, the chart will show the top 5 failure label and its respective occurrence count within the selected period. <br />The defaulted value is 5. </td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Assembly Number / Revision / Version</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">User have option to select the Assembly Number/Revision/Version of the WIP with defect associated. </span><span style="color: rgb(23,43,77);">Assembly Number/Revision/Version is filtered by Customer, Division and Product Family. This is optional to enter (As BTO/CTO flow does not require Assembly Revision), user can opt NULL if (s)he wants the report result not associated with any Assembly.</span></td></tr></tbody></table>









#### Report Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Failure Label</td><td colspan="1" class="confluenceTd">The failure label</td></tr><tr><td colspan="1" class="confluenceTd">Failure Message</td><td colspan="1" class="confluenceTd">The failure message</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">WIP Serial Number where the failure is logged</td></tr><tr><td colspan="1" class="confluenceTd">Board Build Date Time</td><td colspan="1" class="confluenceTd">Date/Time where the WIP is birthed</td></tr><tr><td colspan="1" class="confluenceTd">Process Date Time</td><td colspan="1" class="confluenceTd">Date/Time where the failure is logged for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">The Route where the failure is logged</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The Route Step where the failure is logged</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd">The Resurce where the failure is logged</td></tr><tr><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd">The MA of resource</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The WIP's customer</td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">Product family of the failure material</td></tr><tr><td colspan="1" class="confluenceTd">Failure Material</td><td colspan="1" class="confluenceTd">The material where the failure is attached</td></tr><tr><td colspan="1" class="confluenceTd">Assembly　Number/Revision/Version</td><td colspan="1" class="confluenceTd">Assembly　Number/Revision/Version</td></tr><tr><td colspan="1" class="confluenceTd">Defect Type</td><td colspan="1" class="confluenceTd">The defect code for the failure</td></tr><tr><td colspan="1" class="confluenceTd">Defect Category</td><td colspan="1" class="confluenceTd">The category of the defect code</td></tr><tr><td colspan="1" class="confluenceTd">Customer Defect</td><td colspan="1" class="confluenceTd">The customer defect of the defect code</td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd">The CRD of the defect</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The defect material</td></tr><tr><td colspan="1" class="confluenceTd">Indicted By</td><td colspan="1" class="confluenceTd">The employee who add the defect</td></tr><tr><td colspan="1" class="confluenceTd">Indicted At</td><td colspan="1" class="confluenceTd">The datetime when add the defect</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The route step where add the defect</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd">The resource where add the defect</td></tr><tr><td colspan="1" class="confluenceTd">Defect Status</td><td colspan="1" class="confluenceTd">The defect status</td></tr><tr><td colspan="1" class="confluenceTd">Rework Category</td><td colspan="1" class="confluenceTd">The rework category</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">The defect comment</td></tr><tr><td colspan="1" class="confluenceTd">Detail</td><td colspan="1" class="confluenceTd">The defect details</td></tr><tr><td colspan="1" class="confluenceTd">Defect Area Rows</td><td colspan="1" class="confluenceTd">The material display the total rows of areas configured in material maintenance screen</td></tr><tr><td colspan="1" class="confluenceTd">Defect Area Columns</td><td colspan="1" class="confluenceTd">The material display the total columns of areas configured in material maintenance screen</td></tr><tr><td colspan="1" class="confluenceTd">Defect Areas</td><td colspan="1" class="confluenceTd">The material display the areas associated to current defect, the format like this:  A1,A2,B1,B2</td></tr></tbody></table>



#### Attachments

[image2013-7-16 10:4:15.png](/.attachments/29919915.png)







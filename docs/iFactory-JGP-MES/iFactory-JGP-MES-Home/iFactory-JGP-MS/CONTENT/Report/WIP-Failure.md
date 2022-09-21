# Introduction

The WIP Failure shows failure details per the parameters entered. The report output will showing First Test and Final Test information as below


### How to get there?


![image2022-2-3_14-9-22.png](/.attachments/106464619.png)



![image2022-2-3_14-9-53.png](/.attachments/106464620.png)




#### Screen Activity


The Failure Report allows the following activity:

- View
the failure list of the WIP which associated to the given Failure Material within selected date range

- View results in grid and chart format.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


Pre-Condition
The following data needs to be pre-configured (if used) before user runs the WIP FailureReport.

- At least one first or final failure is attached to a WIP and meet selected criteria as entered


#### Selection Criteria 


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">From Date</td><td style="text-align: left;" colspan="1" class="confluenceTd">Displays WIP from this date/time. Mandatory selection criteria. Allow user to select or input datetime, default is today.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">To Date</td><td style="text-align: left;" colspan="1" class="confluenceTd">Displays WIP before this date/time. Mandatory selection criteria. Allow user to select or input datetime, default is tomorrow. The From and To should be less than 14 days.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Customer</td><td style="text-align: left;" colspan="1" class="confluenceTd">Specify the Customer. Multiple selection is available</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Division</td><td style="text-align: left;" colspan="1" class="confluenceTd">Specify the Division. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd">Specify the Factory. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd">Specify the Manufacturing area. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">Specify the Product Family. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">Specify the Assembly. Multiple selection is available</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Specify the Material where failure attached. Multiple selection is available</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Route</td><td style="text-align: left;" colspan="1" class="confluenceTd">Specify the Route. Multiple selection is available</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Route Step</td><td style="text-align: left;" colspan="1" class="confluenceTd">Specify the Route Step. Multiple selection is available</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Resource</td><td style="text-align: left;" colspan="1" class="confluenceTd">Specify the Resources. Multiple selection is available</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Exclude Failure on Loops (more than)</td><td style="text-align: left;" colspan="1" class="confluenceTd">Exclude in the report where the WIP process loop count is more than the specified count in this field.<br />By default, the value is zero where there will be no exclusion based on the loop count.<br />Example:<br />If the Exclude Failure on Loops (more than) = 2, then system will only display the defect records where the WIP's process loop count in the route step is zero to two times.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Final Test Result</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Specify either is a First or Final Test</p><ol><ol><li>Dropdown checkbox list, allow multiple selection, three values under it:  System should filter data by user selected results.</li><ol><li>All(default)</li><li>Pass</li><li>Fail</li></ol></ol></ol></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Test Count</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Specify the test count either for First or Final Test<br /><span style="letter-spacing: 0.0px;">a. Dropdown checkbox list, allow multiple selection, three values under it, system should filter data by test count user selected.</span></p><ol><ol><ol><li>All(default)</li><li>= 1</li><li>> 1</li></ol></ol></ol></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Time Selection</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Specify either time selection is First or Final Test</p><p>a. First Time: Only the WIP which first time went through the target route step is covered by From & To time range will be calculated and displayed.<br />b. Final Time: Only the WIP which final time went through the target route step is covered by From & To time range will be calculated an displayed.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Serial Number</td><td style="text-align: left;" colspan="1" class="confluenceTd">Specify the Route. Multiple selection is available. If searching by Serial Number, the above parameters filtering will be ignore. <br />Allow user provide multiple SN to perform searching. The maximum of SN count is 1000. </td></tr></tbody></table>










- #### Report Fields

<table class="wrapped relative-table confluenceTable" style="width: 44.6384%;"><colgroup><col style="width: 20.4235%;" /><col style="width: 28.2576%;" /><col style="width: 51.3462%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" colspan="2"><strong>                                                 Description</strong></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Serial Number</td><td colspan="2" class="confluenceTd">WIP Serial Number where the failure is logged</td></tr><tr><td colspan="1" class="confluenceTd">Material </td><td colspan="2" class="confluenceTd"><span style="color: rgb(23,43,77);">The WIP's material.</span></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="2" class="confluenceTd"><span style="color: rgb(23,43,77);">The WIP's assembly</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="2" class="confluenceTd">The Route Step where the failure is logged</td></tr><tr><td colspan="1" class="confluenceTd">Total Row Count</td><td colspan="2" class="confluenceTd">Number of count either first or final Test. <ol><ol><li>Total count WIP went through the route step(only pass and fail)</li></ol></ol></td></tr><tr><td colspan="1" class="confluenceTd">Failed Count</td><td colspan="2" class="confluenceTd">Number of failed count</td></tr><tr><td colspan="1" class="confluenceTd">IsNTF</td><td colspan="2" class="confluenceTd">Yes represent earlier process was failed before meet the pass test<br />No represent along the way, the process are never has failed Test<br /><br /></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">IsDisassembled</span></td><td colspan="2" class="confluenceTd">Specify whether the assembly has been disassembled or not during the first or final test<br /><br /></td></tr><tr><td rowspan="13" class="confluenceTd">First Test Info<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></td><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The Manufacturing  Area column will display the release MA if the WIP is processed in different MA at different Route Step</span></td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The WIP is using which resource</span></td></tr><tr><td colspan="1" class="confluenceTd">Operator</td><td colspan="1" class="confluenceTd">Person who perform the transaction</td></tr><tr><td colspan="1" class="confluenceTd">Date Time</td><td colspan="1" class="confluenceTd">WIP scan Date and time</td></tr><tr><td colspan="1" class="confluenceTd">Shift Date</td><td colspan="1" class="confluenceTd">WIP transaction date </td></tr><tr><td colspan="1" class="confluenceTd">Shift</td><td colspan="1" class="confluenceTd">Shift date by referring to maintain</td></tr><tr><td colspan="1" class="confluenceTd">Test Result</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The number of passed first passed Serial Number in the material/route step</span></td></tr><tr><td colspan="1" class="confluenceTd">Failure</td><td colspan="1" class="confluenceTd">Failure result was perform during test - First Test</td></tr><tr><td colspan="1" class="confluenceTd">Failure Description</td><td colspan="1" class="confluenceTd">Failure result was perform during First test</td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd">CRD information</td></tr><tr><td colspan="1" class="confluenceTd">State</td><td colspan="1" class="confluenceTd">Specify the status either is "Open" or "Closed"</td></tr><tr><td colspan="1" class="confluenceTd">Rework</td><td style="text-align: left;" colspan="1" class="confluenceTd">Specify the rework when perform failed</td></tr><tr><td colspan="1" class="confluenceTd">Rework Category</td><td style="text-align: left;" colspan="1" class="confluenceTd">Specify the rework category when perform failed</td></tr></tbody></table>

**The WIP’s material.** 
AssemblyThe WIP’s assembly
Route StepThe Route Step where the failure is loggedTotal Row CountNumber of count either first or final Test. 
- Total count WIP went through the route step(only pass and fail)
Failed CountNumber of failed countIsNTFYes represent earlier process was failed before meet the pass test
No represent along the way, the process are never has failed Test

IsDisassembled
Specify whether the assembly has been disassembled or not during the first or final test

First Test Info














MAThe Manufacturing  Area column will display the release MA if the WIP is processed in different MA at different Route Step
ResourceThe WIP is using which resource
OperatorPerson who perform the transactionDate TimeWIP scan Date and timeShift DateWIP transaction date ShiftShift date by referring to maintainTest ResultThe number of passed first passed Serial Number in the material/route step
FailureFailure result was perform during test - First TestFailure DescriptionFailure result was perform during First testCRDCRD informationStateSpecify the status either is "Open" or "Closed"ReworkSpecify the rework when perform failedRework CategorySpecify the rework category when perform failed<table class="relative-table wrapped confluenceTable" style="width: 44.2643%;"><colgroup><col style="width: 20.5826%;" /><col style="width: 27.6152%;" /><col style="width: 51.8297%;" /></colgroup><tbody><tr><td rowspan="13" class="confluenceTd">Final Test Info<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></td><td colspan="1" class="confluenceTd">MA</td><td colspan="1" class="confluenceTd">Specify whether the assembly has been disassembled or not during the first or final test</td></tr><tr><td colspan="1" class="confluenceTd">Resource</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The WIP is using which resource</span></td></tr><tr><td colspan="1" class="confluenceTd">Operator</td><td colspan="1" class="confluenceTd">Person who perform the transaction</td></tr><tr><td colspan="1" class="confluenceTd">Date Time</td><td colspan="1" class="confluenceTd">WIP scan Date and time</td></tr><tr><td colspan="1" class="confluenceTd">Shift Date</td><td colspan="1" class="confluenceTd">WIP transaction date </td></tr><tr><td colspan="1" class="confluenceTd">Shift</td><td colspan="1" class="confluenceTd">Shift date by referring to maintain</td></tr><tr><td colspan="1" class="confluenceTd">Test Result</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">The number of passed final passed Serial Number in the material/route step</span></td></tr><tr><td colspan="1" class="confluenceTd">Failure</td><td colspan="1" class="confluenceTd">Failure result was perform during test - Final Test</td></tr><tr><td colspan="1" class="confluenceTd">Failure Description</td><td colspan="1" class="confluenceTd">Failure result was perform during Final test</td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd">CRD information</td></tr><tr><td colspan="1" class="confluenceTd">State</td><td colspan="1" class="confluenceTd">Specify the status either is "Open" or "Closed"</td></tr><tr><td colspan="1" class="confluenceTd">Rework</td><td style="text-align: left;" colspan="1" class="confluenceTd">Specify the rework when perform failed</td></tr><tr><td colspan="1" class="confluenceTd">Rework Category</td><td style="text-align: left;" colspan="1" class="confluenceTd">Specify the rework category when perform failed</td></tr></tbody></table>


















#### Attachments

[image2022-2-3_14-4-31.png](/.attachments/106464616.png)
[image2022-2-3_14-7-49.png](/.attachments/106464617.png)
[image2022-2-3_14-8-16.png](/.attachments/106464618.png)
[image2022-2-3_14-9-22.png](/.attachments/106464619.png)
[image2022-2-3_14-9-53.png](/.attachments/106464620.png)

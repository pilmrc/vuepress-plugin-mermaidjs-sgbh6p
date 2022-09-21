# Introduction

This report helps user to review 
monthly personnel efficiency so that they can evaluate the operator’s productivity for current fiscal year starting from 1 September till 31 August.


### How to get there?



::: mermaid
graph LR
A("QLMS REPORTS")-->0("personnel EFFICIENCY REPORT")

:::


#### Permission 



- Can Access Personnel Efficiency Report



#### Screen Activity


Personnel Efficiency Report enables user to perform the following activities:

- Allow user to see all available Personnel efficiency of the current Fiscal year

- User can filter by the Employee's name to see relative Employee's efficiency

- Showing User when user completed the task.

- If there is deleted in iFactory, system will handle deleted in iFactory configuration:


- If the user has been soft deleted in ifactory then user will still be showing in the reports.


- System will retrieve soft deleted configuration from ifactory configuration for filter fields.



#### **Fields** 



**Actionable field available in the screen** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Employee Name</span></p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to filter by employee name.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Employee ID</td><td colspan="1" class="confluenceTd">Employee ID to be shown based on selected employee name.</td></tr></tbody></table>

**Available field detail in Report** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Employee Name</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">All the operator name that registered through Kiosk to be shown if it is not filtering by employee name.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Month / Year </span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">The current fiscal year starting from September to August to be shown here.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Average Annual Efficiency</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Sum the personnel efficiency of each month / 12 months</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Efficiency Target</td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li><span>Efficiency target is 80.00%</span></li><li><span>This percentage is used to compare with the actual efficiency.</span></li></ul></td></tr></tbody></table>


- ### **Efficiency Calculation**


- The formula to calculate personnel ‘s working hours for a day as below:
Formula = 
(Completion datetime – Start datetime- (Resumed datetime – Paused Datetime))Note: 
Regardless how many times the task has been paused and resumed; all these hours to be included into calculation.

- If there is no Completion datetime for the task then the latest Paused datetime will be considered as Completion datetime.

- System will calculate the working hours based on the earliest start datetime of the task and the latest completion datetime of the task for a day by personnel.

- For cross month scenario, if a task completed before 12 a.m then the working hours will be considered in current month. If a task completed after 12 a.m then the working hours will be considered in next month.

- For cross year scenario, if a task completed before 12 a.m of last day of year then the working hours will be considered in current year (year 2020). If a task completed after 12 a.m of last day of year then the working hours will be considered in next year (year 2021).
2. All the working hours of the months will be summed, then calculate personnel’s efficiency with the formula below.
Formula = 
(Sum the measurement time of a month in hours / (10hours\*number of workdays for a month)) \* 100Note: Number of workdays for a month = 25 days
3. Personnel efficiency calculation is displayed in percentage . The calculated percentage is compared with Efficiency Target and if doesn’t met efficiency target then the value will be bold in red.



#### Attachments

[image2019-8-30_15-46-3.png](/.attachments/59441379.png)
[image2019-10-30_7-51-16.png](/.attachments/59441380.png)
[image2019-10-30_11-28-13.png](/.attachments/59441381.png)

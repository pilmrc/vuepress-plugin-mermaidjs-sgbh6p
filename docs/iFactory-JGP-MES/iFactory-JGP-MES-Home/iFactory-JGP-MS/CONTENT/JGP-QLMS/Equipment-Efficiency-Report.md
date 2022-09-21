# Introduction

This report helps user to review 
monthly measuring equipment efficiency so that they can evaluate the measuring equipment’s productivity for current fiscal year starting from 1 September till 31 August.


### How to get there?



::: mermaid
graph LR
A("QLMS Reports")-->0("Equipment efficiency report")

:::


#### Permission 



- Can Access Equipment Efficiency Report



#### Screen Activity


Equipment Efficiency Report enables user to perform the following activities:

- Allow user to see all available Equipment related efficiency of the current Fiscal year

- User can filter by Equipment type to see relative equipment's efficiency

- Showing User when user completed the task.

- If there is deleted in iFactory, system will handle deleted in iFactory configuration:


- If the resource has been soft deleted in ifactory then resource will still be showing in the reports.


- System will retrieve soft deleted configuration from ifactory configuration for filter fields.



#### **Fields** 





#### **Actionable field available in the screen** 


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Measuring Equipment Type</span></p></td><td style="text-align: left;" class="confluenceTd"><p>Allow user to filter by measuring equipment type and all the related equipment model's efficiency under selected type to be shown in the list.</p></td></tr></tbody></table>

**Available field detail in Report** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Measuring Equipment Model</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>All the Equipment Model to be shown if it is not filtering by measuring equipment type.</p><p>If the measuring equipment model is soft deleted, it will still be showing in the reports.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Month / Year </span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The current fiscal year starting from September to August to be shown here.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Average Annual Efficiency</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Sum the Equipment efficiency of each month / 12 months</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Efficiency Target</td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li><span>Efficiency target is 80.00%</span></li><li><span>This percentage is used to compare with the actual efficiency.</span></li></ul></td></tr></tbody></table>


- ### **Efficiency Calculation**


- The formula to calculate Equipment ‘s working hours for a day as below:
Formula = 
(Completion datetime – Start datetime- (Resumed datetime – Paused Datetime))Note: 
Regardless how many times the task has been paused and resumed; all these hours to be included into calculation.

- If there is no Completion datetime for the task then the latest Paused datetime will be considered as Completion datetime.

- System will calculate the working hours based on the earliest start datetime of the task and the latest completion datetime of the task for a day by equipment model.

- For cross month scenario, if a task completed before 12 a.m then the working hours will be considered in current month. If a task completed after 12 a.m then the working hours will be considered in next month.

- For cross year scenario, if a task completed before 12 a.m of last day of year then the working hours will be considered in current year (year 2020). If a task completed after 12 a.m of last day of year then the working hours will be considered in next year (year 2021).
2. All the measuring hours of the months will be summed, then calculate Equipment’s efficiency with the formula below.
Formula = (Sum the measurement time of a month in hours / (20hours\*number of workdays for a month)) \* 100
Note: Number of workdays for a month = 25 days
3. Equipment efficiency calculation is displayed in percentage . It is compared with Efficiency Target and if doesn’t met efficiency target then the value will be bold in red.



#### Attachments

[image2019-8-30_15-46-3.png](/.attachments/59441375.png)
[image2019-10-22_14-43-40.png](/.attachments/59441376.png)
[image2019-10-30_7-51-16.png](/.attachments/59441377.png)

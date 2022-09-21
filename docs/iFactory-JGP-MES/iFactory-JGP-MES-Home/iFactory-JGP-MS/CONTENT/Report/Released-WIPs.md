# Introduction

The ReleasedWIPs Report can shows 2 Released Types:

- Released – Show a list of WIPs match with the criteria where the WIP serial already released to production or process in any route step

- Generated Only - Show a list of WIPs match with the criteria where the WIP serial already generated but yet to release.


### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("RELEASEDWIPS")

:::
![image2022-7-17_21-46-26.png](/.attachments/122749293.png)




#### **Screen Activity** 


The ReleasedWIPs Report allows the following activity:

- Show a list of WIPs match with “Released” released type where the WIP serial already released to production or process in any route step

- Show a list of WIPs match with “Generated Only” released type where the WIP serial already generated but yet to release.

- View results in grid table.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


#### Pre-Condition



- The following data needs to be ready before user runs the ReleasedWIPS Report:


- WIPs generated with serial number but yet to released. OR

- WIPs released to production bug or process in any route step.
![image2022-7-17_21-49-35.png](/.attachments/122749294.png)





#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Date From</td><td colspan="1" class="confluenceTd"><p>Allow maximum 7 days of duration from date</p></td></tr><tr><td colspan="1" class="confluenceTd">Date To</td><td colspan="1" class="confluenceTd">Allow maximum 7 days of duration to date</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Customer(s).</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Division(s). Filter by Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Material(s). Filter by duration and customer/division.</td></tr><tr><td colspan="1" class="confluenceTd">Released Type</td><td colspan="1" class="confluenceTd"><p>Available for 2 Released Types:</p><ul><li>Released (default) – Show a list of WIPs match with the criteria where the WIP serial already released to production but yet to process in any route step, means no operation history</li><li><span style="letter-spacing: 0.0px;">Generated Only - Show a list of WIPs match with the criteria where the WIP serial already generated but yet to release.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">IsProcessed</td><td colspan="1" class="confluenceTd"><p>IsProcessed only apply <span>when the "Released Type" is "Released"</span></p><p>Available for 3 Type:</p><ul><li>All - <span>system should display all the wips which processed in any route step and not processed in any route step</span></li><li><span>Y - System should only display the wips which Processed" in any route step</span></li><li><span>N - System should only display the wips which not processed in any route step</span></li></ul></td></tr></tbody></table>




- #### Report Fields

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">The WIP's customer.</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">The WIP's division.</td></tr><tr><td colspan="1" class="confluenceTd">Batch</td><td colspan="1" class="confluenceTd">The WIP's batch number</td></tr><tr><td colspan="1" class="confluenceTd">Factory</td><td colspan="1" class="confluenceTd">The WIP's Factory</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">The WIP's material.</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The WIP's assembly rev</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number </td><td colspan="1" class="confluenceTd">The generated/released WIP's serial number</td></tr><tr><td colspan="1" class="confluenceTd"><p>Released Route/Ver</p></td><td colspan="1" class="confluenceTd"><p>The route/ver of released WIP</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Released Route Step</p></td><td colspan="1" class="confluenceTd"><p>The route step of released WIP</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Created By</p></td><td colspan="1" class="confluenceTd"><p>The user who generated a WIP's serial</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Created Date</p></td><td colspan="1" class="confluenceTd"><p>The date and time when a WIP serial generated.</p></td></tr><tr><td colspan="1" class="confluenceTd">Current Route Step</td><td colspan="1" class="confluenceTd">The Wip's Last Scaned Route Step</td></tr></tbody></table>

**The WIP’s customer.** 
DivisionThe WIP’s division.BatchThe WIP’s batch numberFactoryThe WIP’s FactoryMaterialThe WIP’s material.AssemblyThe WIP’s assembly revSerial Number The generated/released WIP’s serial numberReleased Route/Ver
The route/ver of released WIP
Released Route Step
The route step of released WIP
Created By
The user who generated a WIP’s serial
Created Date
The date and time when a WIP serial generated.
Current Route StepThe Wip's Last Scaned Route Step



#### Attachments

[image2020-5-18_16-20-22.png](/.attachments/84705388.png)
[image2020-5-18_16-16-17.png](/.attachments/84705389.png)
[Smaller.jpg](/.attachments/84705390.jpg)
[7-9-2013 2-58-11 PM.jpg](/.attachments/84705391.jpg)
[image2013-7-9 13:37:43.png](/.attachments/84705392.png)
[image2013-7-9 13:36:46.png](/.attachments/84705393.png)
[image2013-7-9 13:35:13.png](/.attachments/84705394.png)
[image2020-3-25_14-6-43.png](/.attachments/84705395.png)
[image2020-3-25_14-18-49.png](/.attachments/84705396.png)
[image2020-12-16_14-30-6.png](/.attachments/84705397.png)
[image2020-12-16_14-38-23.png](/.attachments/84705398.png)
[image2022-7-17_21-46-26.png](/.attachments/122749293.png)
[image2022-7-17_21-49-35.png](/.attachments/122749294.png)

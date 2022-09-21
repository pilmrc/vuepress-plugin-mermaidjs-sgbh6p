# Introduction

This report can display all the associations between the WIP and the Panel.


### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("PANELView")

:::
![image2021-5-31_15-4-25.png](/.attachments/92734124.png)




#### **Screen Activity** 


The PanelView Report allows the following activity:

- Show all the associations between the WIP and the Panel.

- View results in the grid table.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.


#### Pre-Condition



- The following data needs to be ready before the user runs the PanelView Report:


- Panel birth needs to be done.
![image2021-5-31_15-25-39.png](/.attachments/92734128.png)





#### Selection Criteria



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Customer(s).</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Default to All. Mandatory to select Division(s). Filter by Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Panel Serial Number</td><td colspan="1" class="confluenceTd">Default to Blank. Using string to import value.</td></tr><tr><td colspan="1" class="confluenceTd">WIP Serial Number</td><td colspan="1" class="confluenceTd">Default to Blank. Using string to import value.</td></tr></tbody></table>





#### Report Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Panel Serial Number</td><td colspan="1" class="confluenceTd">The panel which associate the WIP</td></tr><tr><td colspan="1" class="confluenceTd">WIP Serial Number</td><td colspan="1" class="confluenceTd">The WIP which associate the panel</td></tr><tr><td colspan="1" class="confluenceTd">Route </td><td colspan="1" class="confluenceTd">The route </td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The route step is the breakout station.</td></tr><tr><td colspan="1" class="confluenceTd">Is Break</td><td colspan="1" class="confluenceTd">The WIP is the breakout </td></tr><tr><td colspan="1" class="confluenceTd">Date Time</td><td colspan="1" class="confluenceTd">Breakout date time</td></tr></tbody></table>



#### Attachments

[image2021-3-4_15-36-55.png](/.attachments/92734105.png)






















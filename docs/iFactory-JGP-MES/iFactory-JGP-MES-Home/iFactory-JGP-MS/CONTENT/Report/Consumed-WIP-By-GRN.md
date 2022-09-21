# Introduction

The ConsumedWIPByGRN report shows the highest level of WIP serial number that consumed the selected GRN.


### How to get there?



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")
1-->2("GRNbyDATecodelotcode")
2-->3("GRN Hyperlink")

:::
![image2020-5-29_14-13-21.png](/.attachments/71369861.png)



::: mermaid
graph LR
A("SQL SERVER REPORTING SERVICES")-->0("IFACTORY_QA ")
0-->1("SFS-IFACTORY-STANDARD-REPORTS ")

:::


#### **ConsumedWIPByGRN** 


![image2020-5-29_14-14-53.png](/.attachments/71369863.png)






#### Screen Activity


The ConsumedWIPByGRN Report allows the following activity:

- View the highest level of WIP serial number that consumed the selected GRN.

- View results in grid table.

- Export results in Word, Excel, PPT, PDF, TIFF, MHTML, CSV or XML formats.

Pre-Condition
The following data needs to be pre-configured before user runs the ConsumedWIPByGRN Report: 

- GRN consumed into a WIP


User has 2 options:

- If don’t know the GRN number, use GRNByDateCodeLotCode report to get the GRN number then click on the GRN number hyperlink will open this ConsumedWIPByGRN sub report.

- If already know the GRN number, then directly use ConsumedWIPByGRN sub report and provide the GRN number.
![image2020-5-29_14-17-51.png](/.attachments/71369866.png)





#### Selection Criteria



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd">Mandatory to provide a GRN number. (Or GRN hyperlink from GRNByDateCodeLotCode report)</td></tr></tbody></table>





#### Report Fields


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd">The selected GRN number.</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">The serial number of a child WIP that consumed selected GRN number or the serial number of a highest level WIP consumed a child WIP that consumed this GRN.</td></tr><tr><td colspan="1" class="confluenceTd">Material </td><td colspan="1" class="confluenceTd">The material of the above serial number.</td></tr></tbody></table>










#### Attachments

[image2020-5-18_16-20-22.png](/.attachments/71369851.png)
[image2020-5-18_16-16-17.png](/.attachments/71369852.png)
[Smaller.jpg](/.attachments/71369853.jpg)
[7-9-2013 2-58-11 PM.jpg](/.attachments/71369854.jpg)
[image2013-7-9 13:37:43.png](/.attachments/71369855.png)
[image2013-7-9 13:36:46.png](/.attachments/71369856.png)
[image2013-7-9 13:35:13.png](/.attachments/71369857.png)
[image2020-3-25_14-6-43.png](/.attachments/71369858.png)
[image2020-3-25_14-18-49.png](/.attachments/71369859.png)
[image2020-5-29_14-13-21.png](/.attachments/71369861.png)
[image2020-5-29_14-14-53.png](/.attachments/71369863.png)
[image2020-5-29_14-17-51.png](/.attachments/71369866.png)

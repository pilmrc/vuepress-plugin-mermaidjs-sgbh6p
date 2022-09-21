# Introduction

This function allows to compare two Bill of Materials (BOM) components starting as input the WIP created in a BTO/CTO process or between 2 BOMs


### How to get there?



::: mermaid
graph LR
A("PRODUCT")-->0("BOM Compare")

:::


#### Screen Activity


BOM Compare enables user to perform the following activity:

- Compare BOMs associated to two units produced as BTO/CTO process.

- Compare 2 BOMs (independently from the process)

- Highlighting difference

- Export to a file the differences


#### Pre Condition


Using WIP, this must be produced as BTO/CTO



#### Screen Dependency



- NA



[S](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)
elect the WIP (or the BOM) to compare and press GENERATE.Selecting "Show Difference Only", the system will highlight only the items that are different
Selecting "Side by Side Compare" or "Unified Compare" (mutually exclusive) the system will align the line items with difference or just showing the list
Expand All is expanding all the sub levels.
Using 
![image2019-1-15_18-38-49.png](/.attachments/41058365.png)


the system is exporting the difference in a comma separated value (.CSV) file, that is possible to open directly in excel.

![image2019-1-15_18-36-3.png](/.attachments/41058364.png)




#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd">Source BOM / Target BOM</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">WIP</td><td class="confluenceTd">Unique identifier of the unit. The system is performing a partial search, so it is required to type at least one char before performing the search.</td></tr><tr><td colspan="1" class="confluenceTd">Batch</td><td colspan="1" class="confluenceTd">Release Batch associated to the WIP (reference only)</td></tr><tr><td colspan="1" class="confluenceTd">BOM Date</td><td colspan="1" class="confluenceTd">Date of WIP release, possible to change it</td></tr><tr><td colspan="1" class="confluenceTd">BOM</td><td colspan="1" class="confluenceTd">BOM name. It is read only as reference if provided the WIP, otherwise (with WIP blank), it is possible to provide the BOM to compare.</td></tr><tr><td colspan="1" class="confluenceTd">BOM id</td><td colspan="1" class="confluenceTd">Unique BOM identifier</td></tr><tr><td colspan="1" class="confluenceTd">Revision</td><td colspan="1" class="confluenceTd">BOM Revision</td></tr><tr><td colspan="1" class="confluenceTd">Version</td><td colspan="1" class="confluenceTd">BOM Version</td></tr><tr><td colspan="1" class="confluenceTd">Current</td><td colspan="1" class="confluenceTd">If this BOM (revision/version) is the current or not</td></tr><tr><td colspan="1" class="confluenceTd">Alternative BOM</td><td colspan="1" class="confluenceTd"><p>Alternative BOM value</p></td></tr><tr><td colspan="1" class="confluenceTd">Source System</td><td colspan="1" class="confluenceTd"><p>SAP if BOM coming from ERP or PHX if manually created</p></td></tr><tr><td colspan="1" class="confluenceTd">Type</td><td colspan="1" class="confluenceTd">BOM Type</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">BOM Description</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">BOM Status</td></tr><tr><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><p>Refer to <a href="29919358.html">Bill Of Material - BOM (legacy)</a> for detailed description of fields</p></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd">Grid</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Material Name</td><td colspan="1" class="confluenceTd"><p>Line Item material name. A plus near means it is a sub level, and pressing on it the system will show the sub level components.</p></td></tr><tr><td colspan="1" class="confluenceTd">Material Description</td><td colspan="1" class="confluenceTd">Description of the material</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">Material Quantity</td></tr><tr><td colspan="1" class="confluenceTd">Assemble Type Name</td><td colspan="1" class="confluenceTd">Applicable only for BOM used for BTO/CTO process, showing the assemble type related to the material</td></tr><tr><td colspan="1" class="confluenceTd">Material Type</td><td colspan="1" class="confluenceTd">Material Type as used in manufacturing system.</td></tr></tbody></table>





#### Attachments

[image2019-1-15_17-53-10.png](/.attachments/41058361.png)
[image2019-1-15_18-0-44.png](/.attachments/41058362.png)
[image2019-1-15_18-2-9.png](/.attachments/41058363.png)
[image2019-1-15_18-36-3.png](/.attachments/41058364.png)
[image2019-1-15_18-38-49.png](/.attachments/41058365.png)

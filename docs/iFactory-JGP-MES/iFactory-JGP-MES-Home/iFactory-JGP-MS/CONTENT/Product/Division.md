# Introduction

A Customer can be segregated to multiple Divisions. Each Division produces different end products and normally practices varying business and process rules. For example, Cisco is segregated to its SMT division and DF division.

How to get there?



::: mermaid
graph LR
A("ADMINISTRATION")-->0("CUSTOMER")
0-->1("DIVISION")

:::


### Screen Activity


Division Maintenance enables user to perform the following activity:

- Create, view, update and delete division records

- Associate division to a customer



#### Screen Dependency


The following screen(s) has direct dependency with Division

- *[Customer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)*

- *[Product Family Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)*

- *[Reference Unit Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Reference-Unit.md)*

- *[Scheduled Job Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/System-Administration/Scheduled-Job.md)*

- [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(3.0).md)



#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Customer</p></td><td class="confluenceTd"><p>The Customer where the Division belongs. Divisions are grouped by Customer in the display.</p></td></tr><tr><td class="confluenceTd"><p>Division Name</p></td><td class="confluenceTd"><p>Division Name is unique within the same Customer. However, the same Division Name can be used for a different Customer.</p></td></tr><tr><td class="confluenceTd"><p>Global Division ID</p></td><td class="confluenceTd"><p>Unique identifier for each Division. By default, system will auto generate a global division ID. User can override the value with unique identifier</p><p><span style="color: rgb(0,0,0);">Formula = Global Site ID * 1000 + incremental value for the division</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Default Defect Mode</td><td colspan="1" class="confluenceTd"><p>Default Defect Mode determines the default selected Indicted By option when adding defect for WIP</p><p>There are 3 options:</p><ol><li><p>Assembled Item/BOM Item</p></li><li>CRD</li></ol></td></tr></tbody></table>

**Formula = Global Site ID \* 1000 + incremental value for the division** 
Default Defect ModeDefault Defect Mode determines the default selected Indicted By option when adding defect for WIP
There are 3 options:

- Assembled Item/BOM Item


- CRD

# Introduction

Profit Center is a configuration that u
sing in the fixture application form and approval workflow. Profit Center able have same across Work Cell but should unique across sites.


### How to get there?



::: mermaid
graph LR
A("MDO")-->0("PROFIT CENTER")

:::


#### **Permission ( MDO Application)** 



- Can view Profit Center


- Can modify Profit Center



#### **Screen Activity** 


Profit Center enables user to perform the following activity:

- Create, view, update, delete Profit Center records

- Configuration and BUM is mandatory field before save.


#### **Precondition** 


Need to configure plant, customer, division in JGP master data.


#### **Application /**  


**Screen**  
**Dependency** 
The following application / screen(s) has dependency with Profit Center.

- K2

- MDO Project Maintenance

- iFactory Project Maintenance


#### **Screen Specification** 


System will validate against duplicate record:

- The uniqueness lies against
Plant, Profit Center.
When the Profit Center deleted, the 
item will besoft deleted and not showing on the screen. Once detected the same configuration (Plant, BG/Workcell/OP, Customer Division, Project, Profit Center) has been configured, then system restore the configured data.

#### **Fields** 


<table class="relative-table confluenceTable" style="width: 55.7331%;"><colgroup><col style="width: 22.2238%;" /><col style="width: 77.7887%;" /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Configuration</strong></td></tr><tr><th style="text-align: left;" class="confluenceTh">Field </th><th style="text-align: left;" class="confluenceTh">Description</th></tr><tr><td style="text-align: left;" class="confluenceTd">Plant</td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to indicate the part is belong to which Plant. </span><span style="color: rgb(23,43,77);">The drop down list base on the logged on plant.</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd">BG/Workcell/OP</td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to indicate the part is belong to which Work Cell. </span><span style="color: rgb(23,43,77);">The drop down list base on the logged on plant.</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Customer Division</td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to indicate the part is belong to which Customer / Division. </span><span style="color: rgb(23,43,77);">The drop down list available customer in MDO.</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Project</td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to indicate the part is belong to which Project. </span><span style="color: rgb(23,43,77);">The drop down list base on the selected Customer.</span></p><p><span style="color: rgb(23,43,77);">Notes: Display the Project Abbreviation of MDO Project Maintenance or Project Code of iFactory Project Maintenance.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Profit Center / BU Type</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field is a free text field for user to enter the Profit Center / BU Type.</span></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>BUM</strong></td></tr><tr><th style="text-align: left;" class="confluenceTh">Field </th><th style="text-align: left;" class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd">Search Name</td><td colspan="1" class="confluenceTd"><p style="text-align: left;">Allow user to search by Employee ID or user name. The search will display user name, Employee Number and email.</p><p style="text-align: left;">Once the name have been configured, system is not going to allow the user name again.</p><p style="text-align: left;">Note: Only the user list to be available against which partitioned Customer is assigned to user through ToMS Security</p></td></tr><tr><td colspan="1" class="confluenceTd">Action</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Allow user to delete the approver from the list</span></td></tr><tr><td colspan="1" class="confluenceTd">Name</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Added approver's Name will display in this field.</span></td></tr><tr><td colspan="1" class="confluenceTd">Employee ID</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Added approver's Employee ID will display in this field.</span></td></tr><tr><td colspan="1" class="confluenceTd">Email</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Added approver's Email address will display in this field.</span></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>WCM</strong></td></tr><tr><th style="text-align: left;" class="confluenceTh">Field </th><th style="text-align: left;" class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd">Search Name</td><td colspan="1" class="confluenceTd"><p style="text-align: left;">Allow user to search by Employee ID or user name. The search will display user name, Employee Number and email.</p><p style="text-align: left;">Once the name have been configured, system is not going to allow the user name again.</p><p style="text-align: left;">Note: Only the user list to be available against which partitioned Customer is assigned to user through ToMS Security</p></td></tr><tr><td colspan="1" class="confluenceTd">Action</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Allow user to delete the approver from the list.</span></td></tr><tr><td colspan="1" class="confluenceTd">Name</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Added approver's Name will display in this field.</span></td></tr><tr><td colspan="1" class="confluenceTd">Employee ID</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Added approver's Employee ID will display in this field.</span></td></tr><tr><td colspan="1" class="confluenceTd">Email</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Added approver's Email address will display in this field</span></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>I/O Number</strong></td></tr><tr><th style="text-align: left;" class="confluenceTh">Field </th><th style="text-align: left;" class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd">Add</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">User can Edit / Delete each record against each </span>Stage with I/O Number. Each Stage have different I/O Number.</td></tr><tr><td colspan="1" class="confluenceTd">Action</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Allow user to edit / delete the I/O Number from the list.</span></td></tr><tr><td colspan="1" class="confluenceTd">Stage</td><td colspan="1" class="confluenceTd">Add Stage will display in this field. Stage with EVT / DVT / PVT / Production Ramp / MP.</td></tr><tr><td colspan="1" class="confluenceTd">I/O Number</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field is must 12 digits n<span>umeric </span>field  for user to enter the I/O number.</span></td></tr></tbody></table>

**BUD** 
<table class="relative-table confluenceTable" style="width: 56.0111%;"><colgroup><col style="width: 21.5932%;" /><col style="width: 78.4193%;" /></colgroup><tbody><tr><th class="confluenceTh">Field </th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Search Name</td><td class="confluenceTd"><p style="text-align: left;">Allow user to search by Employee ID or user name. The search will display user name, Employee Number and email.</p><p style="text-align: left;">Once the name have been configured, system is not going to allow the user name again.</p><p style="text-align: left;">Note: Only the user list to be available against which partitioned Customer is assigned to user through ToMS Security</p></td></tr><tr><td class="confluenceTd">Action</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">Allow user to delete the approver from the list.</span></td></tr><tr><td class="confluenceTd">Name</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">Added approver's Name will display in this field.</span></td></tr><tr><td class="confluenceTd">Employee ID</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">Added approver's Employee ID will display in this field.</span></td></tr><tr><td class="confluenceTd">Email</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">Added approver's Email address will display in this field</span></td></tr></tbody></table>

**BUVP** 
<table class="relative-table confluenceTable" style="width: 55.9416%;"><colgroup><col style="width: 21.6433%;" /><col style="width: 78.3691%;" /></colgroup><tbody><tr><th class="confluenceTh">Field </th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Search Name</td><td class="confluenceTd"><p style="text-align: left;">Allow user to search by Employee ID or user name. The search will display user name, Employee Number and email.</p><p style="text-align: left;">Once the name have been configured, system is not going to allow the user name again.</p><p style="text-align: left;">Note: Only the user list to be available against which partitioned Customer is assigned to user through ToMS Security</p></td></tr><tr><td class="confluenceTd">Action</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">Allow user to delete the approver from the list.</span></td></tr><tr><td class="confluenceTd">Name</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">Added approver's Name will display in this field.</span></td></tr><tr><td class="confluenceTd">Employee ID</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">Added approver's Employee ID will display in this field.</span></td></tr><tr><td class="confluenceTd">Email</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">Added approver's Email address will display in this field</span></td></tr></tbody></table>


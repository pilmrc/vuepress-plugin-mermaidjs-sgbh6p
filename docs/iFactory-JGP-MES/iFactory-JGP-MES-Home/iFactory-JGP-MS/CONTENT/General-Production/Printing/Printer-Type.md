# Introduction

Printer Type enables user to group similar printers. For some customers, a general printer grouping such as Inventory_ID printer, Traveller printer, Box Label printer is used. For some customers, the printer type is used to group printers by its print resolution and label output size. Every printer is required to be configured with a printer type. When a document is configured to be printed with printer type "Zebra S4M", system will determine if the resource that triggers the label printing was configured with a printer of "Zebra S4M" printer type. When the printer type matches, the document will be printed. 



### How to get there?





::: mermaid
graph LR
A("ADMINISTRATION")-->0("SYSTEM")
0-->1("PRINTER")
1-->2("PRINTER TYPES")

:::


#### Screen Activity



Printer Type Maintenance enables user to perform the following activity:

- Create, view, update and delete printer type





#### **Screen Dependency** 


The following screen(s) has direct dependency with Printer Type

- *[Printe](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer-Type.md)*

r[ Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Type.md)
- *[Document Assignment (3.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Assignment-(3.0).md)*






#### **Fields** 




<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Printer Type Name</p></td><td class="confluenceTd"><p>The unique name given to the printer type</p></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Additional description for the printer type can be entered in this field</td></tr></tbody></table>


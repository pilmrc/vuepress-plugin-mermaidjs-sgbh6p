# Introduction

Printers are configured here to enable various printing activities in Phoenix 



### How to get there?





::: mermaid
graph LR
A("ADMINISTRATION")-->0("SYSTEM")
0-->1("PRINTER")

:::


#### **Precondition** 


*[Printer Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer-Type.md)* 
and*[ Print Server](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Print-Server.md)* need to be configured before user can configure printers
Screen Activity

Printer Maintenance enables user to perform the following activity:

- Create, view, update and delete printers

- Assign resource to a printer





#### **Screen Dependency** 


The following screen(s) has direct dependency with Printer

- *[Printer ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer-Type.md)*

T
ype  Maintenance
- *[Print Server Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Print-Server.md)*






#### **Fields** 




<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Printer Name</p></td><td class="confluenceTd"><p>The unique name given to the printer. Printer Name shall be a unique name for each printer within the site. </p></td></tr><tr><td class="confluenceTd"><p>Printer Number</p><p> </p></td><td class="confluenceTd"><p>User is required to key in the printer number. <br />Printer Number shall be unique by site and Print Server. The same Printer Number can exist in multiple Print Server. <br />Because of this, the same Printer Number can have multiple Printer Name.</p><div class="table-wrap"><table class="confluenceTable"><tbody><tr><th class="confluenceTh">Print Server</th><th class="confluenceTh">Printer Number</th><th class="confluenceTh">Printer Name</th></tr><tr><td class="confluenceTd"><span style="color: rgb(51,153,102);"><strong>Server01</strong></span></td><td class="confluenceTd"><span style="color: rgb(51,153,102);"><strong>1</strong></span></td><td class="confluenceTd"><span style="color: rgb(51,153,102);"><strong>Printer-1</strong></span></td></tr><tr><td class="confluenceTd"><span>Server01</span></td><td class="confluenceTd">2</td><td class="confluenceTd"><span>Printer-2</span></td></tr><tr><td class="confluenceTd"><span>Server01</span></td><td class="confluenceTd">3</td><td class="confluenceTd"><p><span>Printer-3</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,153,102);"><strong>Server02</strong></span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,153,102);"><strong>1</strong></span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,153,102);"><strong>Printer-4</strong></span></td></tr><tr><td colspan="1" class="confluenceTd">Server02</td><td colspan="1" class="confluenceTd">2</td><td colspan="1" class="confluenceTd">Printer-5</td></tr><tr><td colspan="1" class="confluenceTd">Server02</td><td colspan="1" class="confluenceTd">3</td><td colspan="1" class="confluenceTd"><span>Printer-6</span></td></tr></tbody></table></div></td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Additional description for the printer can be entered in this field</td></tr><tr><td colspan="1" class="confluenceTd">Printer Type</td><td colspan="1" class="confluenceTd">Defines if the printer is to print Inventory-ID, Traveller, Box Label or etc. The Printer Type is configured in <a href="Printer-Type-29918421.html">Printer Type Maintenance</a></td></tr><tr><td colspan="1" class="confluenceTd">Print Server</td><td colspan="1" class="confluenceTd">Defines the Print Server where this Printer resides. <span>The Print Server is configured in </span><a href="Printer-Type-29918421.html">Printer Type</a><a href="Printer-Type-29918421.html">Print</a><a href="Print-Server-29918419.html"> Server Maintenance</a></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd"><p>Defines the current printer status. There are 4 available statuses:</p><ul><li>Active - Printer is visible for usage in the Operation</li><li>Inactive - Printer was previously active and it is now set to inactive. It is not ready for use and it is not visible for usage in the Operation</li><li>Maintenance - Printer is brought down for maintenance and is not visible for usage in the Operation</li><li>New - Printer is still under configuration and it is not visible in Operation</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Assigned Resource Count</td><td colspan="1" class="confluenceTd">The number of resources assigned to the printer</td></tr><tr><td colspan="1" class="confluenceTd">Resource Assignment</td><td colspan="1" class="confluenceTd"><p>Allows user to add or remove resource to the printer</p><div class="confluence-information-macro confluence-information-macro-information"><p class="title">TIP!</p><span class="aui-icon aui-icon-small aui-iconfont-info confluence-information-macro-icon"></span><div class="confluence-information-macro-body"><p>At times a label fails to print due to a missing resource to printer association. Check that your resource is added to the target printer here</p></div></div></td></tr></tbody></table>



<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Print Server</th><th class="confluenceTh">Printer Number</th><th class="confluenceTh">Printer Name</th></tr><tr><td class="confluenceTd"><span style="color: rgb(51,153,102);"><strong>Server01</strong></span></td><td class="confluenceTd"><span style="color: rgb(51,153,102);"><strong>1</strong></span></td><td class="confluenceTd"><span style="color: rgb(51,153,102);"><strong>Printer-1</strong></span></td></tr><tr><td class="confluenceTd"><span>Server01</span></td><td class="confluenceTd">2</td><td class="confluenceTd"><span>Printer-2</span></td></tr><tr><td class="confluenceTd"><span>Server01</span></td><td class="confluenceTd">3</td><td class="confluenceTd"><p><span>Printer-3</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,153,102);"><strong>Server02</strong></span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,153,102);"><strong>1</strong></span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,153,102);"><strong>Printer-4</strong></span></td></tr><tr><td colspan="1" class="confluenceTd">Server02</td><td colspan="1" class="confluenceTd">2</td><td colspan="1" class="confluenceTd">Printer-5</td></tr><tr><td colspan="1" class="confluenceTd">Server02</td><td colspan="1" class="confluenceTd">3</td><td colspan="1" class="confluenceTd"><span>Printer-6</span></td></tr></tbody></table>

**Printer_1** 
Server012Printer_2Server013Printer_3
**Server02** 
**1** 
**Printer_4** 
Server022Printer_5Server023Printer_6DescriptionAdditional description for the printer can be entered in this fieldPrinter TypeDefines if the printer is to print Inventory_ID, Traveller, Box Label or etc. The Printer Type is configured in [Printer Type Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer-Type.md)Print ServerDefines the Print Server where this Printer resides. The Print Server is configured in [Printer Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer-Type.md)[Print](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer-Type.md)[ Server Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Print-Server.md)StatusDefines the current printer status. There are 4 available statuses:

- Active - Printer is visible for usage in the Operation

- Inactive - Printer was previously active and it is now set to inactive. It is not ready for use and it is not visible for usage in the Operation

- Maintenance - Printer is brought down for maintenance and is not visible for usage in the Operation

- New - Printer is still under configuration and it is not visible in Operation
Assigned Resource CountThe number of resources assigned to the printerResource AssignmentAllows user to add or remove resource to the printer
TIP!
At times a label fails to print due to a missing resource to printer association. Check that your resource is added to the target printer here



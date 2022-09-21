# Introduction


In the production floor, various documents and labels are being printed. Each document configured can be assigned to a route step. User shall be able to configure the print trigger, print quantity and print sequence of the documents.

How to get there?
::: mermaid
graph LR
A("CONFIGURATION")-->0("DOCUMENT")
0-->1("DOCUMENT ASSIGNMENT")

:::

**Precondition** 
The following items need to be pre-configured to assign document to a route step:

- [D](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)
[ocument](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-(3.0).md)
- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)




### Screen Activity


Document Assignment enables user to perform the following activity:

- Create, view, update and delete document assignments

- Configure the print quantity, print trigger and print sequence of the documents



#### Screen Dependency


The following screen(s) has direct dependency with document

- [D](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)
[ocument](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-(3.0).md)
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)



Fields<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Scope</p></td><td class="confluenceTd"><p>The scope of the document assignment:</p><ul><li>Material</li><li>Product Family</li><li>Container Type</li><li>Order</li></ul></td></tr><tr><td class="confluenceTd">Applies To</td><td class="confluenceTd"><span style="color: rgb(0,0,0);">The value of the selected scope. If Material is selected as the scope, Material list will be displayed for selection. </span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Print Trigger</span></td><td colspan="1" class="confluenceTd"><p>The triggering point for the document to be printed:</p><ul><li>On WIP Complete</li><li>On WIP Pass</li><li>On WIP Start</li><li>On WIP Status Complete</li><li>On Reserialization</li><li>On Container Create</li><li>On Container Close</li><li>On Delivery Complete</li><li>On Customer Order Complete</li><li>On Delivery Release</li><li>On Palletization Complete</li><li>On Assemble<br /><br /></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Attribute Name</td><td colspan="1" class="confluenceTd"><p>A user defined WIP attribute name may be optionally entered to further refine <span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">the Scope criteria. <br />This additional criterion is used when the Scope by it</span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">self is not detailed enough to specify when a document is to be printed. </span></p><p><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">Example:</span></p><p>If building Widgets for a customer, and a Widget can be either a Laser or <span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">non-Laser Widget, and Laser Widgets uses either a Red or Green Laser.</span></p><p>The customer defines the Product families of the Widget as <span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">“Widget” and “Laser Widgets”, but you need to print a special document </span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">only for Laser </span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">Widget that have green lasers. <br /></span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">Adding an Attribute Name </span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">of LaserType and a setting the Attribute Value to "Red" or “Green” will </span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">add the additional criterion to meet the customer printing requirements.  <br />Setting a “Product Family” of “Laser Widget” with a WIP Attribute of “LaserType” and Attribute Value to “Green” will print when this condition is met.  </span></p></td></tr><tr><td colspan="1" class="confluenceTd">Attribute Value</td><td colspan="1" class="confluenceTd"><p>A user defined WIP attribute value may be optionally entered to further refine the Scope criteria. It is required if Attribute Name is defined. <br />This additional criterion is used when the Scope is not enough detail to specify when a document is to be printed. <br />The Attribute Name and Attribute Value are required as a pair and used as a logical AND function with the 'Scope' / 'Applies To' pair. <br />The WIP attribute Name and Value would likely be set by the Phoenix / Jabil Test script command. </p></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">The route where this document will be assigned to</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>The route step where this document will be assigned to</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Document</span></td><td colspan="1" class="confluenceTd"><p>The document that has been configured in <a href="29918398.html">Document Maintenance </a></p></td></tr><tr><td colspan="1" class="confluenceTd">Printer Type</td><td colspan="1" class="confluenceTd"><p>The printer type configured here needs to match the printer type of the printer that will be printing the document. <br />Mismatch or incorrect printer type setting here will result in no document being printed.</p></td></tr><tr><td colspan="1" class="confluenceTd">Print Quantity</td><td colspan="1" class="confluenceTd">The quantity of the document to be printed</td></tr><tr><td colspan="1" class="confluenceTd">Print Sequence</td><td colspan="1" class="confluenceTd"><p>The sequence of the document to be printed</p><p>When user assigns multiple documents to the same Route and Route Step, user need to define the sequence for each document to be printed.</p></td></tr></tbody></table>









- The Attribute Name and Attribute Value are required as a pair and used as a logical AND function with the ‘Scope’ / ‘Applies To’ pair.

The WIP attribute Name and Value would likely be set by the Phoenix / Jabil Test script command. RouteThe route where this document will be assigned toRoute StepThe route step where this document will be assigned toDocument
The document that has been configured in 
[Document Maintenance ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-(3.0).md)Printer TypeThe printer type configured here needs to match the printer type of the printer that will be printing the document. 

Mismatch or incorrect printer type setting here will result in no document being printed.Print QuantityThe quantity of the document to be printedPrint SequenceThe sequence of the document to be printed
When user assigns multiple documents to the same Route and Route Step, user need to define the sequence for each document to be printed.

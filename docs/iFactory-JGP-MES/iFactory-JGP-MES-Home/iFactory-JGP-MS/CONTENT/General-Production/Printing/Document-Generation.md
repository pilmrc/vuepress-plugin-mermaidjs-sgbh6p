# Introduction



## ***Introduction***  


**to**  Document Generation
Typically, documents are printed after it is configured in 
[Document Assignment ](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Generation.md)to determine when the document is supposed to be printed. Document generation is used in an ad-hoc manner where it allows user to load any document to print immediately without additional configuration required. User also has the flexibility to enter or overwrite the document printing value. With its Document Generation shall be restricted to supervisor or higher level engineers. 

## ***How to navigate to***  


Document Generation

::: mermaid
graph LR
A("CONFIGURE")-->0("DOCUMENT GENERATION")

:::


### Screen Activity


Document Generation enables user to perform the following activity:

- Ad-hoc printing of any document type

- Allows user to enter or modify field value(s) to be printed


- Select any available printer to print the document


- Verify and Scan Quantity. A prompt will be displayed to the user if this is configured for the document in Document Maintenance. The intent is to help reduce wasted labels by printing a few labels for user to verify before printing the remaining labels.



Example: 

- In Document Maintenance, Verify Quantity is configured as 1.

Scan Quantity is configured as 1. 
Meaning, user is required to scan one printed label's Serial Number to ensure the Serial Number printed is scannable. Then, user has to visually verify the label is good before confirming to print the remaining quantities.
- In Document Generation, u

ser enters 50 quantity to print.
- On document generation, the pop up below will appear. User is required to scan the printed Serial Number to verify the Serial Number printed is scannable.


- If the scanned value did not match, the remaining quantity for printing is aborted.



![](/.attachments/29918404.png)





- If the Serial Number scan validation passed, user will be required to visually check the label. Clicking Okay will print the remaining quantity of the document. Clicking Cancel will abort the printing.



![](/.attachments/29918403.png)







#### Screen Dependency


The following screen(s) has direct dependency with Document  Reprint

- Printer Maintenance

- Document Maintenance



#### Fields



<table class="relative-table wrapped confluenceTable" style="width: 87.0049%;"><colgroup><col style="width: 13.0456%;" /><col style="width: 86.9704%;" /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><strong>Document Selection Section</strong></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Document Name</p></td><td class="confluenceTd"><p>User shall select a document to generate (WIP / Carrier / Container / Carrier Container / Generic)</p></td></tr><tr><td colspan="1" class="confluenceTd">Version</td><td colspan="1" class="confluenceTd">Displays the selected document's version</td></tr><tr><td colspan="1" class="confluenceTd"><p>Description</p></td><td colspan="1" class="confluenceTd"><p>Displays the selected document's description</p></td></tr><tr><td colspan="1" class="confluenceTd">Document Type</td><td colspan="1" class="confluenceTd"><p><span>Displays the selected document's document type</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Label Stock</td><td colspan="1" class="confluenceTd"><p><span>The current label stock for the document. This is a reference for user to reprint only if there are sufficient label stock.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Ribbon Stock</td><td colspan="1" class="confluenceTd"><span>The current ribbon stock for the document. This is a reference for user to reprint only if there are sufficient ribbon stock.</span></td></tr><tr><td colspan="1" class="confluenceTd">Document Definition</td><td colspan="1" class="confluenceTd">The template file used to print the document (IE: *.lwl)</td></tr><tr><td colspan="1" class="confluenceTd"><p>WIP/Container/Carrier/<br /><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">Serialized Material/<br />Assembled Item </span></p></td><td colspan="1" class="confluenceTd"><p>An optional user entry.</p><p>If <span>Serial Number/Container/Carrier/CarrierContainer/</span><span>Serialized Material/Assembled Item</span> is entered, the system is able to generate and provide a preview for some of the document value based on the <span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">Serial Number/Container/Carrier/CarrierContainer/</span><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">Serialized Material/Assembled Item</span><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;"> entered. </span><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">User can still overwrite the document value.</span></p><p><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">For Carrier and Assembly must to enter at least 1 character in "Search Carrier" field in order to search for carrier that has lot assigned.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd"><p>An optional user entry. User can enter WIP/Container/Carrier or Assembly (either one). If Assembly is entered, the system will provide a preview for some of the document value based on the Assembly. User can still overwrite the document value. </p></td></tr><tr><td colspan="1" class="confluenceTd">Order</td><td colspan="1" class="confluenceTd">The sequence of each document field</td></tr><tr><td colspan="1" class="confluenceTd">Field Name</td><td colspan="1" class="confluenceTd"><p>The name of each document field. Field Name shall match the Field Name configured in the Document Definition file for the print value to be parsed successfully for printing. If the field type is “NEXT NUMBER” (only for Generic document type), Value field is disabled.</p><p>If the field type of “ASSEMBLYREVISION PROPERTIES” field type and “MATERIALCUSTOMDATA[NAME}” field value under Carrier Properties field type value for Carrier document type will be auto-populated <span style="color: rgb(0,0,0);">when user enters an Carrier or Assembly.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Value</td><td colspan="1" class="confluenceTd"><p>The print value for each of the Field Name. </p><p><span style="color: rgb(0,0,0);">If an Alias assembly is selected, alias fields will be populated based on the Alias assembly value. Other fields shall refer to the base assembly values. </span></p><p><span style="color: rgb(0,0,0);">If a base assembly is selected, when there are more than 1 Alias associated to the base assembly, system shall prompt a warning message and the alias fields will not be populated.</span></p><p>If a Carrier or an Assembly is selected for Carrier document type, the field type of “ASSEMBLYREVISION PROPERTIES” field type and “MATERIALCUSTOMDATA[NAME}” field value under Carrier Properties field type value under Carrier Properties field type value will be auto-populated.</p></td></tr><tr><td colspan="1" class="confluenceTd">Printer</td><td colspan="1" class="confluenceTd">Allows user to select the printer for the document to be printed</td></tr><tr><td colspan="1" class="confluenceTd">Printer Number</td><td colspan="1" class="confluenceTd">Displays the selected printer's printer number</td></tr><tr><td colspan="1" class="confluenceTd">Type</td><td colspan="1" class="confluenceTd">Displays the selected printer's printer type</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd"><p>If the document has a “NEXT NUMBER” field type (only for Generic document type), the value entered in Quantity field will determine the range of next number to be printed. If the document does not have a “NEXT NUMBER” field type, the Quantity determines the number of copies to <span style="letter-spacing: 0.0px;">be printed for this document.</span></p><p><span style="letter-spacing: 0.0px;">Carrier, CarrierContainer <span style="color: rgb(0,0,0);">allowed max quantity increased to 1000.</span></span></p></td></tr></tbody></table>

**The template file used to print the document (IE: \*.lwl)** 
WIP/Container/Carrier/

Serialized Material/

Assembled Item An optional user entry.
If 
Serial Number/Container/Carrier/CarrierContainer/Serialized Material/Assembled Itemis entered, the system is able to generate and provide a preview for some of the document value based on the Serial Number/Container/Carrier/CarrierContainer/
Serialized Material/Assembled Item
entered. 
User can still overwrite the document value.
For Carrier and Assembly must to enter at least 1 character in "Search Carrier" field in order to search for carrier that has lot assigned.
AssemblyAn optional user entry. User can enter WIP/Container/Carrier or Assembly (either one). If Assembly is entered, the system will provide a preview for some of the document value based on the Assembly. User can still overwrite the document value. 
OrderThe sequence of each document fieldField NameThe name of each document field. Field Name shall match the Field Name configured in the Document Definition file for the print value to be parsed successfully for printing. If the field type is “NEXT NUMBER” (only for Generic document type), Value field is disabled.
If the field type of “ASSEMBLYREVISION PROPERTIES” field type and “MATERIALCUSTOMDATA[NAME}” field value under Carrier Properties field type value for Carrier document type will be auto-populated 
when user enters an Carrier or Assembly.
ValueThe print value for each of the Field Name. 
If an Alias assembly is selected, alias fields will be populated based on the Alias assembly value. Other fields shall refer to the base assembly values. 
If a base assembly is selected, when there are more than 1 Alias associated to the base assembly, system shall prompt a warning message and the alias fields will not be populated.
If a Carrier or an Assembly is selected for Carrier document type, the field type of “ASSEMBLYREVISION PROPERTIES” field type and “MATERIALCUSTOMDATA[NAME}” field value under Carrier Properties field type value under Carrier Properties field type value will be auto-populated.
PrinterAllows user to select the printer for the document to be printedPrinter NumberDisplays the selected printer's printer numberTypeDisplays the selected printer's printer typeQuantityIf the document has a “NEXT NUMBER” field type (only for Generic document type), the value entered in Quantity field will determine the range of next number to be printed. If the document does not have a “NEXT NUMBER” field type, the Quantity determines the number of copies to 
be printed for this document.
Carrier, CarrierContainer 
allowed max quantity increased to 1000.









#### Attachments

[image2016-7-5 15:33:43.png](/.attachments/29918403.png)
[image2016-7-5 15:26:35.png](/.attachments/29918404.png)

# Introduction



## ***Introduction***  


**to**  Document Generation
**Document Generation** 
is used in an ad-hoc manner where it allows a user to load any document to print immediately without additional configuration.

## ***How to navigate to***  


Document Generation
Please refer to the user guide 
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Generation/User-Guide-%2D-Document-Generation.md)***  
for detail information.


## ***Why is this screen important?***  


**Document Generation**  
is important to allow a user generate a label without having to configure detailed options in the system.



## ***Topic 1: How to get to Document Generation***  


***Click***  
to enlarge the image!![](/.attachments/29918407.png)




- On the main
**iFactory** landing page,**Click Manufacturing Suite.** 
- **Click Configure.**

- **Click Document Generation.**



## ***Topic 2:  Understanding the Document Generation Screen***  


**Click** 
on the image to enlarge![](/.attachments/29918406.png)



Select one Document
![image2019-8-9_11-21-19.png](/.attachments/53773372.png)


Here you will select the 
**Document** that you want to generate. The page is divided into three sections:
- **Select Document**


- In the

**Document** **Name** field, **enter** the name of the **Document** or the first few characters of the **Document Name**  and **Click** the **Search icon** (magnifying glass) to search for the **Document** .(**Note** 
:  This is a required field)
- **Select**

the **Document** you want to print and the following fields will auto populate:
- **Description**


- **Document Type**


- **Version**


- **Label Stock**


- **Ribbon Stock**


- **Document Definition**




- **Configure Document Info**


- The fields

**Identifier** 
in this section depend on the **Document** configuration.  You may be required to enter **Serial Number** ,  **WIP or Carrier ID.**   This will bring up other fields that may auto-populate or you may need to enter data in some fields.

- The fields

**Assembly** will be display when the **Document Name** is selected. You can enter at lease 1 character in Assembly field in order to search for Assembly. The Assembly search list will return the assemblies for WIP if the document type is WIP and return lot assemblies if the document type is Carrier.
- **Select Printer**


- In this section, the user will search for the appropriate
**Printer** in the **Printer**  field.


- **Enter**
the**quantity**  to print and**Click Generate**  to execute the print process.(
**Note:** The only **Documents** that will show in the **Document Search** list are the **Documents** that have **IsManualPrintingAllowed** turned **ON** .)

## ***Fields***  


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><strong>Document Selection Section</strong></td></tr><tr><td class="confluenceTd"><p style="margin-left: 0.0px;"><strong>Field</strong></p></td><td class="confluenceTd"><p style="margin-left: 0.0px;"><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p style="margin-left: 0.0px;">Document Name</p></td><td class="confluenceTd"><p style="margin-left: 0.0px;">User shall select a document to generate</p></td></tr><tr><td colspan="1" class="confluenceTd">Version</td><td colspan="1" class="confluenceTd">Displays the selected document's version</td></tr><tr><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">Description</p></td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">Displays the selected document's description</p></td></tr><tr><td colspan="1" class="confluenceTd">Document Type</td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">Displays the selected document's document type</p></td></tr><tr><td colspan="1" class="confluenceTd">Label Stock</td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">The current label stock for the document. This is a reference for user to reprint only if there are sufficient label stock.</p></td></tr><tr><td colspan="1" class="confluenceTd">Ribbon Stock</td><td colspan="1" class="confluenceTd">The current ribbon stock for the document. This is a reference for user to reprint only if there are sufficient ribbon stock.</td></tr><tr><td colspan="1" class="confluenceTd">Document Definition</td><td colspan="1" class="confluenceTd">The template file used to print the document (IE: *.lwl)</td></tr><tr><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">Serial Number/Container/ <span style="color: rgb(0,0,0);">Serialized Material/ Assembled Item </span></p></td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">An optional user entry.</p><p style="margin-left: 0.0px;">If Serial Number/Container/Serialized Material/Assembled Item is entered, the system is able to generate and provide a preview for some of the document value based on the <span style="color: rgb(0,0,0);">Serial Number/Container/</span><span style="color: rgb(0,0,0);">Serialized Material/Assembled Item</span><span style="color: rgb(0,0,0);"> entered. </span><span style="color: rgb(0,0,0);">User can still overwrite the document value.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">Assembly of Serial Number/Carrier  material</td></tr><tr><td colspan="1" class="confluenceTd">Order</td><td colspan="1" class="confluenceTd">The sequence of each document field</td></tr><tr><td colspan="1" class="confluenceTd">Field Name</td><td colspan="1" class="confluenceTd">The name of each document field. Field Name shall match the Field Name configured in the Document Definition file for the print value to be parsed successfully for printing</td></tr><tr><td colspan="1" class="confluenceTd">Value</td><td colspan="1" class="confluenceTd">The print value for each of the Field Name</td></tr><tr><td colspan="1" class="confluenceTd">Printer</td><td colspan="1" class="confluenceTd">Allows user to select the printer for the document to be printed</td></tr><tr><td colspan="1" class="confluenceTd">Printer Number</td><td colspan="1" class="confluenceTd">Displays the selected printer's printer number</td></tr><tr><td colspan="1" class="confluenceTd">Type</td><td colspan="1" class="confluenceTd">Displays the selected printer's printer type</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">The number of copies to be printed for this document</td></tr></tbody></table>

**The template file used to print the document (IE: \*.lwl)** 
Serial Number/Container/ 
Serialized Material/ Assembled Item 
An optional user entry.
If Serial Number/Container/Serialized Material/Assembled Item is entered, the system is able to generate and provide a preview for some of the document value based on the 
Serial Number/Container/
Serialized Material/Assembled Item
entered. 
User can still overwrite the document value.
AssemblyAssembly of Serial Number/Carrier  materialOrderThe sequence of each document fieldField NameThe name of each document field. Field Name shall match the Field Name configured in the Document Definition file for the print value to be parsed successfully for printingValueThe print value for each of the Field NamePrinterAllows user to select the printer for the document to be printedPrinter NumberDisplays the selected printer's printer numberTypeDisplays the selected printer's printer typeQuantityThe number of copies to be printed for this document


## ***Instructor Presentations and User Guides***  


Not all of the iFactory screens have associated PowerPoint presentations with Note pages that can be used by instructors and/or participants.  If one is provided below, download the presentation to view the contents.


#### Attachments

[image2018-5-16_15-47-13.png](/.attachments/29918406.png)
[image2018-5-16_15-46-36.png](/.attachments/29918407.png)
[image2019-8-9_11-21-19.png](/.attachments/53773372.png)

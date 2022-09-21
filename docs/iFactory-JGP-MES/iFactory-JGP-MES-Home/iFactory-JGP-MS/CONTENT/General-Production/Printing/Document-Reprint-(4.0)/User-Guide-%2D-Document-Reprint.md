# Introduction



## ***Introduction to Document Reprint***  



Document/Labels may need to be reprinted if the label was damaged, missing or not printed correctly due to printer issues. The 
**Document Reprint** allows a user to reprint labels/documents that were previously printed. The **Document Reprint** module is usually restricted to line lead/supervisor as reprinting label signifies an issue that needs to be tracked and controlled because each label printed incurs additional cost. 

## ***How to navigate to Document Reprint***  



Please refer to the following user guide link - 
***[Navigating to iFactory Screens](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Menu-Navigation/User-Guide-%2D-Navigating-to-iFactory-Groups-and-Screens.md)***  

- for detail information.


## ***The following screens should be configured as predecessors to Document Reprint***  



- Printer Maintenance


- Document Maintenance





## ***Topic 1: How to search a Document?***  


**Click** 
to enlarge the image!![image2018-5-16_9-40-42.png](/.attachments/29918416.png)





- **Click**
the
**Drop Down Arrow**  in the
**Document Type**  field and
**Select**  your
**Document Type**  for reprint
**.**   (In this example: 
**WIP** option was selected. For every 
**Document Type** , the system will request the data for the different required fields)  
(
**Note** :  This is a required field!)
- **Enter**

the **Serial Number** (
**Note** :  This is a required field!)
- **Click**
on 
**Search** button
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="2" class="confluenceTd"><strong>Document Selection Section</strong></td></tr><tr><td class="confluenceTd"><p style="margin-left: 0.0px;"><strong>Field</strong></p></td><td class="confluenceTd"><p style="margin-left: 0.0px;"><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p style="margin-left: 0.0px;">Document Type</p></td><td class="confluenceTd"><ul><li>For All document type reprint, user shall be required to enter Print From Date and Print To Date</li><li>For WIP document type reprint, user shall be required to enter a Serial Number</li><li>For WIP document type reprint and batch mode is selected, user shall be required to enter the range of Serial Numbers to reprint</li><li>For Container document type reprint, user shall be required to enter a Container name</li><li>For Order document type reprint, user shall be required to select the Order Type and enter the Order Number</li><li>For Serialized Material document type reprint, user shall be required to enter a Material Name</li><li>For Generic or MSD document type reprint, user shall be required to enter an specific Document Identifier</li><li>For Assembled Item document type reprint, user shall be required to enter a WIP Serial Number</li><li>For Carrier Container document type reprint, user shall be required to enter a Container Name</li><li>For Carrier document type reprint, user shall be required to enter a Carrier Serial Number</li></ul></td></tr><tr><td class="confluenceTd"><p style="margin-left: 0.0px;">Document Name</p></td><td class="confluenceTd"><p style="margin-left: 0.0px;">User shall have an optional choice to enter the document name to refine the filter to return results matching the document name only</p></td></tr><tr><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">From WIP & To WIP</p></td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">For WIP document type reprint, user shall be able to turn on the batch mode filtering. User shall be required to enter a batch number and the range of WIP Serial Number from the batch to refine the results.</p></td></tr><tr><td colspan="1" class="confluenceTd">Print From Date & To Date</td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">User shall have an optional choice to enter the date/time range where the document was printed. System shall return all documents that were printed within the selected date/time range only</p></td></tr><tr><td colspan="1" class="confluenceTd">Printer Override</td><td colspan="1" class="confluenceTd"><p style="margin-left: 0.0px;">User shall have an option to redirect the reprint to a different printed from the original printer where the document was printed<br />Often a pas file was generated but the document never got printed due to printer failures, out of ribbon etc. User needs to have the ability to select the document and send the document to be printed in a working printer.</p></td></tr><tr><td colspan="1" class="confluenceTd">Search Button</td><td colspan="1" class="confluenceTd">Click Search to return all the documents matching the filtering criteria above</td></tr></tbody></table>




- ## ***Topic 2:  How to reprint a document?***


**Click**  
to enlarge the image!![image2018-5-16_9-43-22.png](/.attachments/29918415.png)



**4.  Click** 
in the 
**Rep** **rinter Quantity** field and enter the 
**Reprint Quantity** (The u
ser has an option to define the number of copies to be reprinted
)
**5.  iFactory**  
displays the different times that this document has been reprinted, when and who did.  
**Select the Document** to be reprinted.
**6.  Click** 
the 
**Document Reprint** button and a new record will be generated as part of 
**Document Print History** list.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td colspan="1" class="confluenceTd"><strong>Field</strong></td><td colspan="1" class="confluenceTd"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Reprint Quantity</td><td colspan="1" class="confluenceTd">User shall have an option to define the number of copies to be reprinted</td></tr><tr><td colspan="1" class="confluenceTd">Document Type</td><td colspan="1" class="confluenceTd">Dictates the document type</td></tr><tr><td colspan="1" class="confluenceTd">Document Name</td><td colspan="1" class="confluenceTd">Dictates the document name</td></tr><tr><td colspan="1" class="confluenceTd">Customer Name</td><td colspan="1" class="confluenceTd">Dictates the document's customer name</td></tr><tr><td colspan="1" class="confluenceTd">Container Name</td><td colspan="1" class="confluenceTd">Dictates the document's container name. Only applicable for Document Type = Container</td></tr><tr><td colspan="1" class="confluenceTd">Printer Name</td><td colspan="1" class="confluenceTd">The printer where the document was printed</td></tr><tr><td colspan="1" class="confluenceTd">Loftware Template</td><td colspan="1" class="confluenceTd">The loftware file used when the document was printed</td></tr><tr><td colspan="1" class="confluenceTd">Label Stock</td><td colspan="1" class="confluenceTd">The current label stock for the document. This is a reference for user to reprint only if there are sufficient label stock.</td></tr><tr><td colspan="1" class="confluenceTd">Ribbon Stock</td><td colspan="1" class="confluenceTd">The current ribbon stock for the document. This is a reference for user to reprint only if there are sufficient ribbon stock.</td></tr><tr><td colspan="1" class="confluenceTd">Print Date</td><td colspan="1" class="confluenceTd">The Date where the document was printed</td></tr><tr><td colspan="1" class="confluenceTd">Printed By</td><td colspan="1" class="confluenceTd">The user who printed the document</td></tr><tr><td colspan="1" class="confluenceTd">other columns for "All" Document Type</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>If Document Type is "All", system could return all the document type in different column, if no value, system could display blank</p><ul><li>WIP</li><li>ContainerName</li><li>OrderNumber</li><li>SerialNumber</li><li>ContainerNumber</li><li>CarierSerialNumber</li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="187" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/122749818.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/122749818.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="122749818" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-7-25-17-30-46.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918414" data-linked-resource-container-version="2" /></span></p></div></td></tr></tbody></table>



- ## ***Instructor Presentations and User Guides***

Not all of the iFactory screens have associated 
**PowerPoint** presentations with **Note** pages that can be used by instructors and/or participants.  If one is provided below, download the presentation to view the contents.

#### Attachments

[image2018-5-16_9-43-22.png](/.attachments/29918415.png)
[image2018-5-16_9-40-42.png](/.attachments/29918416.png)
[image2018-5-16_9-32-34.png](/.attachments/29918417.png)
[image2018-5-16_9-31-46.png](/.attachments/29918418.png)
[image2022-7-25_17-29-3.png](/.attachments/122749816.png)
[image2022-7-25_17-29-19.png](/.attachments/122749817.png)
[image2022-7-25_17-30-46.png](/.attachments/122749818.png)

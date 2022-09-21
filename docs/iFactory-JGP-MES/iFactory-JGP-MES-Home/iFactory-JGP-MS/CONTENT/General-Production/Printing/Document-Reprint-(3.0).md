# Introduction


Document/Labels may need to be reprinted if the label was damaged, missing or not printed correctly due to printer issues. The document reprint allows user to reprint labels/documents that were previouslyprinted. The Document Reprint module is usually restricted to line lead/supervisor as reprinting label signifies an issue that needs to be tracked and controlled becayse each label printed incurs additional cost. **How to get there?** 

::: mermaid
graph LR
A("PRODUCTION")-->0("DOCUMENT")
0-->1("DOCUMENT REPRINT")

:::
![image2013-5-15 9:24:30.png](/.attachments/29918409.png)




### Screen Activity


Document  Reprint enables user to perform the following activity:

- Search, select and reprint Label/Documents for the following document types:

1. WIP

2. Container
3. Order
4. Serialized Material
5. Generic
6. Assembled Item

- A .pas file must exist and stored in the print server to allow reprints. Refer to your site administrator for document retention period in the print server.


- Documents that are not marked as "Store Document Contents On Print" in document maintenance shall not be available on reprint

- Refer to
[Label Printing troubleshooting guide](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/TROUBLESHOOTING-GUIDE/Label-Printing.md)for issues related to printing.


#### Screen Dependency


The following screen(s) has direct dependency with 
Document  Reprint
- [Printer Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Printer.md)

- [Document Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-(3.0).md)


#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><strong>Document Selection Section</strong></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Document Type</p></td><td class="confluenceTd"><ul><li>For WIP document type reprint, user shall be required to enter a Serial Number</li><li>For WIP document type reprint and batch selected, user shall be required to enter a Batch Number</li><li>For Container document type reprint, user shall be required to enter a Container name</li><li>For Order document type reprint, user shall be required to select the Order Type (Production Order, Planned Order, Customer Order, Delivery Order) and enter the Order Number</li><li>For Serialized Material document type reprint, user shall be required to enter a Material Name</li><li>For Generic document type reprint, user shall be required to enter a Document Identifier (Serial Number) . <em>This feature is not supported at this time</em></li><li>For Assembled Item document type reprint, user shall be required to enter a WIP Serial Number</li></ul></td></tr><tr><td class="confluenceTd"><p>Document Name</p></td><td class="confluenceTd"><p><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">User shall have an optional choice to enter the document name to refine the filter to return results matching the document name only</span></p></td></tr><tr><td class="confluenceTd"><p>Batch</p></td><td class="confluenceTd"><p>When reprinting document type WIP, user has an option to filter by batch number.<br />This filter allows a returned result from a range of WIP Serial Number instead of individual Serial Number.</p><p>If the document is filtered by batch:</p><ul><li>User shall be required to enter a batch number </li><li><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">User shall have an optional choice to enter a range of WIP Serial Number from the batch to refine the results</span></li></ul><p>If the document is NOT filtered by batch:</p><ul><li>User shall be required to enter a Serial Number</li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p>From S/N & To S/N</p></td><td colspan="1" class="confluenceTd"><p>For WIP document type reprint, user shall be able to turn on the batch mode filtering. User shall be required to enter a batch number User shall have an optional choice to enter a range of WIP Serial Number from the batch to refine the results</p></td></tr><tr><td colspan="1" class="confluenceTd">Print From Date & To Date</td><td colspan="1" class="confluenceTd"><p>User shall have an optional choice to enter the date/time range where the document was printed. <span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">System shall return all documents that were printed within the selected date/time range only</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Printer Override</td><td colspan="1" class="confluenceTd"><p>User shall have an option to redirect the reprint to a different printed from the original printer where the document was printed<br />Often a pas file was generated but the document never got printed due to printer failures, out of ribbon etc. User needs to have the ability to select the document and send the document to be printed in a working printer.</p></td></tr><tr><td colspan="1" class="confluenceTd">Reprint Quantity</td><td colspan="1" class="confluenceTd">User shall have an option to define the number of copies to be reprinted</td></tr><tr><td colspan="1" class="confluenceTd">Search Button</td><td colspan="1" class="confluenceTd">Click Search to return all the documents matching the filtering criteria above</td></tr><tr><td colspan="2" class="confluenceTd"><strong>Document Print History Section <br /></strong>This section list all the documents matching the filtering criteria available for reprint</td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Document Type</td><td colspan="1" class="confluenceTd">Dictates the document type</td></tr><tr><td colspan="1" class="confluenceTd">Document Name</td><td colspan="1" class="confluenceTd"><span>Dictates the document name</span></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd"><span>Dictates the document's order number. </span><span>Only applicable for Document Type = WIP</span></td></tr><tr><td colspan="1" class="confluenceTd">Order Number</td><td colspan="1" class="confluenceTd"><span>Dictates the document's order number. <span>Only applicable for Document Type = Order</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Container Name</td><td colspan="1" class="confluenceTd"><span>Dictates the document's container name. Only applicable for Document Type = Container</span></td></tr><tr><td colspan="1" class="confluenceTd">Material Number</td><td colspan="1" class="confluenceTd"><span>Dictates the document's material name. </span><span>Only applicable for Document Type = Serialized Material</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Material Name</span></td><td colspan="1" class="confluenceTd"><span>Dictates the material that triggers the document printing on assembly. </span><span>Only applicable for Document Type = Serialized Material</span></td></tr><tr><td colspan="1" class="confluenceTd">Document Identifier</td><td colspan="1" class="confluenceTd"><em>Related to Document Type = Generic. This feature is not supported at this time</em></td></tr><tr><td colspan="1" class="confluenceTd">Customer Name</td><td colspan="1" class="confluenceTd"><span>Dictates the document's customer name</span></td></tr><tr><td colspan="1" class="confluenceTd">Printer Name</td><td colspan="1" class="confluenceTd">The printer where the document was printed</td></tr><tr><td colspan="1" class="confluenceTd">Section Name</td><td colspan="1" class="confluenceTd">Document section name applicable to multi-section document</td></tr><tr><td colspan="1" class="confluenceTd">Print Date</td><td colspan="1" class="confluenceTd">The Date where the document was printed</td></tr><tr><td colspan="1" class="confluenceTd">Printed By</td><td colspan="1" class="confluenceTd"><span>The user who printed the document</span></td></tr></tbody></table>






#### Attachments

[image2013-5-15 9:24:30.png](/.attachments/29918409.png)
[image2013-5-15 9:22:41.png](/.attachments/29918410.png)
[image2013-5-14 10:53:1.png](/.attachments/29918411.png)
[image2013-3-28 9:7:3.png](/.attachments/29918412.png)

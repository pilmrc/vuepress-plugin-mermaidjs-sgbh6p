# Introduction

Document/Labels may need to be reprinted if the label was damaged, missing or not printed correctly due to printer issues. The document reprint allows user to reprint labels/documents that were previously printed. The Document Reprint module is usually restricted to line lead/supervisor as reprinting label signifies an issue that needs to be tracked and controlled becayse each label printed incurs additional cost. 
**How to get there?** 

::: mermaid
graph LR
A("CONFIGURE")-->0("DOCUMENT REPRINT")

:::


### Screen Activity


Document  Reprint enables user to perform the following activity:

- Search, select and reprint Label/Documents for the following document types:

- WIP

- Container

- Order

- Serialized Material

- Generic

- Assembled Item

- CarrierContainer

- Carrier

- MSD


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" height="16" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/information.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/information.png&$format=octetStream" /></span></td><td class="confluenceTd"><ul><li>Documents that are not marked as "Store Document Contents On Print" in document maintenance shall not be available on reprint</li><li><span>Refer to your site administrator for document retention period. Documents exceeding the retention period will not be available anymore for reprint.</span></li><li>Refer to <a href="http://usplnd0wiki01:8090/display/PB/Label+Printing" rel="nofollow">Label Printing troubleshooting guide</a> for issues related to printing.</li></ul></td></tr></tbody></table>


- #### Screen Dependency

The following screen(s) has direct dependency with Document  Reprint

- Printer Maintenance

- Document Maintenance


#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><strong>Document Selection Section</strong></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Document Type</p></td><td class="confluenceTd"><ul><li>For WIP document type reprint, user shall be required to enter a Serial Number</li><li>For WIP document type reprint and batch mode is selected, user shall be required to enter the range of Serial Numbers to reprint</li><li>For Container document type reprint, user shall be required to enter a Container name</li><li>For Order document type reprint, user shall be required to select the Order Type (Production Order, Planned Order, Customer Order, Delivery Order) and enter the Order Number</li><li>For Serialized Material document type reprint, user shall be required to enter a Material Name</li><li>For Generic document type reprint, user shall be required to enter a Document Identifier</li><li>For Assembled Item document type reprint, user shall be required to enter a WIP Serial Number</li><li>For Carrier Container document type reprint, user shall be required to enter a Container Name</li><li>For Carrier document type reprint, user shall be required to enter a Carrier Serial Number</li></ul></td></tr><tr><td class="confluenceTd"><p>Document Name</p></td><td class="confluenceTd"><p>User shall have an optional choice to enter the document name to refine the filter to return results matching the document name only</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>From WIP & To WIP</p></td><td colspan="1" class="confluenceTd"><p>For WIP document type reprint, user shall be able to turn on the batch mode filtering. User shall be required to enter a batch number and the range of WIP Serial Number from the batch to refine the results.</p></td></tr><tr><td colspan="1" class="confluenceTd">Print From Date & To Date</td><td colspan="1" class="confluenceTd"><p>User shall have an optional choice to enter the date/time range where the document was printed. System shall return all documents that were printed within the selected date/time range only</p></td></tr><tr><td colspan="1" class="confluenceTd">Printer Override</td><td colspan="1" class="confluenceTd"><p>User shall have an option to redirect the reprint to a different printed from the original printer where the document was printed<br />Often a pas file was generated but the document never got printed due to printer failures, out of ribbon etc. User needs to have the ability to select the document and send the document to be printed in a working printer.</p></td></tr><tr><td colspan="1" class="confluenceTd">Reprint Quantity</td><td colspan="1" class="confluenceTd">User shall have an option to define the number of copies to be reprinted</td></tr><tr><td colspan="1" class="confluenceTd">Search Button</td><td colspan="1" class="confluenceTd">Click Search to return all the documents matching the filtering criteria above</td></tr><tr><td colspan="2" class="confluenceTd"><strong>Document Print History Section <br /></strong>This section list all the documents matching the filtering criteria available for reprint. Can be possible to select the documents that wants to reprint.</td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Document Type</td><td colspan="1" class="confluenceTd">Dictates the document type</td></tr><tr><td colspan="1" class="confluenceTd">Document Name</td><td colspan="1" class="confluenceTd">Dictates the document name</td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd">Dictates the WIP or Serialized Material's Serial Number. Only applicable for Document Type = WIP or Serialized Material</td></tr><tr><td colspan="1" class="confluenceTd">Order Number</td><td colspan="1" class="confluenceTd">Dictates the document's order number. <span>Only applicable for Document Type = Order</span></td></tr><tr><td colspan="1" class="confluenceTd">Container Name</td><td colspan="1" class="confluenceTd">Dictates the document's container name. Only applicable for Document Type = Container</td></tr><tr><td colspan="1" class="confluenceTd">Document Identifier</td><td colspan="1" class="confluenceTd"><span>Dictates the document's name. Only applicable for Document Type = Generic</span></td></tr><tr><td colspan="1" class="confluenceTd">Assembled Item</td><td colspan="1" class="confluenceTd"><span>Dictates the assembled material of the WIP that triggers the document printing. Only applicable for Document Type = Assembled Item</span></td></tr><tr><td colspan="1" class="confluenceTd">Customer Name</td><td colspan="1" class="confluenceTd">Dictates the document's customer name</td></tr><tr><td colspan="1" class="confluenceTd">Printer Name</td><td colspan="1" class="confluenceTd">The printer where the document was printed</td></tr><tr><td colspan="1" class="confluenceTd">Loftware Template</td><td colspan="1" class="confluenceTd">The loftware file used when the document was printed</td></tr><tr><td colspan="1" class="confluenceTd">Label Stock</td><td colspan="1" class="confluenceTd">The current label stock for the document. <span>This is a reference for user to reprint only if there are sufficient label stock. </span></td></tr><tr><td colspan="1" class="confluenceTd">Ribbon Stock</td><td colspan="1" class="confluenceTd"><span>The current ribbon stock for the document. This is a reference for user to reprint only if there are sufficient ribbon stock. </span></td></tr><tr><td colspan="1" class="confluenceTd">Section Name</td><td colspan="1" class="confluenceTd">Related to multi-section document</td></tr><tr><td colspan="1" class="confluenceTd">Print Date</td><td colspan="1" class="confluenceTd">The Date where the document was printed</td></tr><tr><td colspan="1" class="confluenceTd">Printed By</td><td colspan="1" class="confluenceTd">The user who printed the document</td></tr></tbody></table>




# Introduction

The Batch Number Transfer Data Importer functionality provides the ability to 
update WIP’s batch number without the need 
to transfer WIP to the destination batch by going through the 
[Batch Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production.md)screen.<table class="confluenceTable"><colgroup><col /></colgroup><tbody><tr><th class="confluenceTh">Field</th></tr><tr><td class="confluenceTd"><strong>Customer</strong></td></tr><tr><td class="confluenceTd"><strong>Assembly Number</strong></td></tr><tr><td class="confluenceTd"><strong>Assembly Revision</strong></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Assembly Version</strong></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Serial Number</strong></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Batch Number</strong></td></tr></tbody></table>

**All fields are mandatory and t** 
he fields in the table above must be listed from left to right in the order they appear. If the sequence of the fields is different,
the system will generate an error log.
The field that contains a space MUST be enclosed in quotes (“”). 
The file format used by the batch number transfer data importer is 
[CSV](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Batch-Number-Transfer-Data-Importer.md)(Comma Separated Values). 
The system shall verify the following:

- Serial Number must exist and belongs to the Customer and Assembly


- Batch Number must exist and is active in the system

- Batch Number's customer or material (depending on the new batch number's batch scope), must match with the Serial Number's

- Batch Number must have enough Build Quantity available to assign Serial Number

- Batch Number must be valid to user (upload date time must be within the validity date)
If all validation passes, system will update the association between Batch Number and Serial Number. Once the system has successfully processed the file, the file will be moved to the History folder. System will log the change of the Batch Number in WIP View (Audit Log tab).
If an error occurs when loading the information or validation fails, the system will move the file to the Error folder.  If one of the records (line) fail, system will generate an error log but will continue to process the rest of the records and the file will be moved to the Error folder as well.     
Sample file contents:
WY-JGP-Customer,WY-JGP-MAT01-REP,2,1,WY18280010,WYBatch18280004


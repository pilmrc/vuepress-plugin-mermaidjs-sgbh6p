# Introduction

Fixture Request Form ability to assign vendor and sequence number for the approved application form so the system could generate Fixture ID for the assigned vendor.
The Fixture Request From could pushed from K2 which has been approved and require qualification or manually created for New / ECN / Repair form. ECN and Repair form need completed qualification flow in ToMS then system will auto created the form in Fixture Request From.
The Request ID and Fixture ID is sharing across all the JGP sites.


### How to get there?



::: mermaid
graph LR
A("TOMS REQUEST")-->0("FIXTURE REQUEST FORM")

:::


#### **Permission ( ToMS Application)** 



- Fixture Request Form


- Can modify Fixture Request Form



#### **Screen Activity** 


Fixture Request Form enables user to perform the following activity:

- Create, view, update, delete and download Fixture Request Form records

- The data pushed from K2 only able to edit for add the vendor, Required Closed and ECN Enforced Closured but not able to delete

- Manual created only able to create the New form type


#### **Precondition** 



- Need to configure plant, work cell, process function and production area  in JGP master data.

- Need to configure user in the partition in security module

- Submitted the form in K2 which has been approved and required qualification


#### **Screen Dependency** 


The following screen(s) has dependency with Fixture Request Form.

- [Vendor Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-ToMS-(Tool-Management-System)/Vendor-Maintenance.md)

- [NPI Fixture Drawing Number Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-ToMS-(Tool-Management-System)/NPI-Fixture-drawing-number%2Dversion-Maintenance.md)

- [Production and Project Data Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-ToMS-(Tool-Management-System)/Production-and-Project-Data-Maintenance.md)

- IC Warehouse Receiving

- ECN Warehouse

- K2


#### **Screen Specification** 


When the Fixture Request Form deleted, the 
item will besoft deleted and not showing on the screen. The data pushed from K2 / ECN / Repair not able to edit (Level 1) and deleted.

#### **Fields** 


<table class="relative-table confluenceTable" style="width: 80.746%;"><thead><tr><th style="text-align: left;" class="confluenceTh">Field </th><th style="text-align: left;" class="confluenceTh">Description</th></tr></thead><colgroup><col style="width: 13.4602%;" /><col style="width: 86.5398%;" /></colgroup><tbody><tr><td colspan="1" class="confluenceTd">Work Cell</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Allow user to indicate the request from is belong to which Work Cell. </span>The drop down list base on the logged on plant.</td></tr><tr><td colspan="1" class="confluenceTd">Process Function</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Allow user to indicate the request from is belong to which Process Function. </span>The drop down list base on the selected Work Cell.</td></tr><tr><td colspan="1" class="confluenceTd">Manual</td><td colspan="1" class="confluenceTd">Allow user to indicate the <span style="color: rgb(23,43,77);">request from </span>is belong to manual input or selected the application form.</td></tr><tr><td colspan="1" class="confluenceTd">Sub Application Form ID</td><td colspan="1" class="confluenceTd">Allow user to indicate the <span style="color: rgb(23,43,77);">request from </span>is belong to which Fixture Application Form.</td></tr><tr><td colspan="1" class="confluenceTd">Project Code</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate the <span style="color: rgb(23,43,77);">request from </span>is belong to which Project. The drop down list base on the work Cell/ Process Function.</p><p>It auto populate if Sub Application Form ID is selected. It must to configured in Production and Project Data Maintenance if it is manual input to selected the Project Code.</p></td></tr><tr><td colspan="1" class="confluenceTd">Fixture Drawing Number</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate the <span style="color: rgb(23,43,77);">request from </span>is belong to which Fixture Drawing Number. The selection will base on the Work Cell, Process Function, Project Code.</p><p>It auto populate if Sub Application Form ID is selected. It must to configured in NPI Fixture Drawing Number/Version Maintenance if it is manual input to selected the Fixture Drawing Number.</p></td></tr><tr><td colspan="1" class="confluenceTd">Fixture Process</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate the <span style="color: rgb(23,43,77);">request from </span>is belong to which Fixture Process.</p><p>It auto populate if Sub Application Form ID is selected. It will auto populate if it is manual input to selected the Fixture Drawing Number.</p></td></tr><tr><td colspan="1" class="confluenceTd">Fixture Drawing Version</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate the <span style="color: rgb(23,43,77);">request from </span>is belong to which Fixture Drawing Version.</p><p>It auto populate if Sub Application Form ID is selected. It will auto populate if it is manual input to selected the Fixture Drawing Number.</p></td></tr><tr><td colspan="1" class="confluenceTd">Applicant</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate applicant employee name.</p><p>It auto populate if Sub Application Form ID is selected but it is still able to edit before the Request Closed or ECN Enforced Closure.</p></td></tr><tr><td colspan="1" class="confluenceTd">Request Dept</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate the <span style="color: rgb(23,43,77);">request from </span>is request by which department.</p><p>It auto populate if Sub Application Form ID is selected but it is still able to edit before the Request Closed or ECN Enforced Closure.</p></td></tr><tr><td colspan="1" class="confluenceTd">Request Date</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate the <span style="color: rgb(23,43,77);">request from </span>is request by which date.</p><p>It auto populate if Sub Application Form ID is selected but it is still able to edit before the Request Closed or ECN Enforced Closure.</p></td></tr><tr><td colspan="1" class="confluenceTd">Request Quantity</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate the quantity belong to the request form.</p><p>It auto populate if Sub Application Form ID is selected.</p></td></tr><tr><td colspan="1" class="confluenceTd">Verification Number</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate the request form is belong to which Repair / ECN request ID.</p><p>It auto populate if the request form is auto generate by Repair / ECN.</p></td></tr><tr><td colspan="1" class="confluenceTd">Fixture Stage Code</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate the request form is belong to which Stage. The drop down list for EVT, DVT, PVT, Production Ramp, MP.</p><p> It auto populate if Sub Application Form ID is selected but it is still able to edit before the Request Closed or ECN Enforced Closure.</p></td></tr><tr><td colspan="1" class="confluenceTd">Fixture Form Type</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate the request form is belong to which Type.</p><p>It is not editable and if newly created, then show New otherwise it auto populate ECN / Repair if the request form is auto created by Repair / ECN.</p></td></tr><tr><td colspan="1" class="confluenceTd">ECN Type</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate the request form is belong to which ECN Type.</p><p>It is auto populated the ECN type by ECN request form.</p></td></tr><tr><td colspan="1" class="confluenceTd">Request ID</td><td colspan="1" class="confluenceTd"><p>Auto generate once the request form is created. The request ID is sharing across all the JGP sites and the sequence number always reset to 1 every day.</p><p>The format will be:</p><p>New fixture request be REQYYYYMMDD+4digits sequence number. ECN request be ECNYYYYMMDD+4digits sequence number. Repair fixture request ID be REPYYYYMMDD+4digits sequence number.</p></td></tr><tr><td colspan="1" class="confluenceTd">Remark</td><td colspan="1" class="confluenceTd"><p>Allow user to indicate the request remark and ECN Enforced Closure reason belong to the request form.</p><p>It auto populate if Sub Application Form ID is selected.</p></td></tr><tr><td colspan="1" class="confluenceTd">Require Closed</td><td colspan="1" class="confluenceTd">Allow user to indicate the request form is required to closed. Once all the Fixture ID have completed the qualification process, request form will auto update to closed. Once updated to close, can't be changed anymore.</td></tr><tr><td colspan="1" class="confluenceTd">ECN Enforced Closure</td><td colspan="1" class="confluenceTd">Allow user to indicate enforced the request form to be closed due to ECN. Only allow the user to perform ECN enforced closure after all the inspection tasks is closed. Once updated to close, can't be changed anymore.</td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Vendor Information</strong></td></tr><tr><th style="text-align: left;" class="confluenceTh">Field </th><th style="text-align: left;" class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd">Vendor</td><td colspan="1" class="confluenceTd">Allow user to indicate the request form assigned to which vendor. It is able assigned more than 1 vendor.</td></tr><tr><td colspan="1" class="confluenceTd">Produce Quantity</td><td colspan="1" class="confluenceTd">Allow user to indicate assign the specific quantity to the vendor.</td></tr><tr><td colspan="1" class="confluenceTd">Estimated Completion Date</td><td colspan="1" class="confluenceTd">Allow user to indicate the estimated completion date from the vendor.</td></tr><tr><td colspan="1" class="confluenceTd">First Sequence Number</td><td colspan="1" class="confluenceTd">Allow user to indicate the Fixture ID sequence number. Auto populate the first sequence number based on the last assigned sequence number for the fixture group code <span style="color: rgb(0,0,0);">once the produce quantity is filled.</span></td></tr><tr><td colspan="1" class="confluenceTd">Last Sequence Number</td><td colspan="1" class="confluenceTd">Allow user to indicate the Fixture ID sequence number. Auto populate the last sequence number by adding the first sequence number and<span style="color: rgb(0,0,0);"> the provided produce quantity.</span></td></tr><tr><td style="text-align: left;" class="confluenceTd">Fixture Detail</td><td style="text-align: left;" class="confluenceTd"><p>Display the list of fixture group code, fixture version and fixture ID.</p><p><strong>Noes:</strong> Fixture ID is unique, it generated to be sharing across all the JGP sites. The fixture group code format is Project Code + Fixture Process + Fixture Drawing Number + 6 digits number.</p></td></tr></tbody></table>



#### **Fields available for File upload in Fixture Request Form screen** 


<table class="relative-table confluenceTable" style="width: 80.9106%;"><colgroup><col style="width: 13.5675%;" /><col style="width: 86.4325%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Choose File</td><td style="text-align: left;" colspan="1" class="confluenceTd">Allow user to select file with .csv format.</td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to download Resource Type template (CSV UTF-8 format) for batch upload. This file contains below columns:</span></p><ul><li><span style="color: rgb(23,43,77);">Work Cell</span></li><li><span style="color: rgb(23,43,77);">Process Function (optional)</span></li><li><span style="color: rgb(23,43,77);">Project Code</span></li><li><span style="color: rgb(23,43,77);">Fixture Process</span></li><li><span style="color: rgb(23,43,77);">Fixture Drawing Number</span></li><li><span style="color: rgb(23,43,77);">Fixture Version</span></li><li><span style="color: rgb(23,43,77);">Applicant (<span style="color: rgb(0,0,0);">Applicant Name)</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Request Dept</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Request Qty (Numeric)</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Sub Application Number</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Fixture Stage Code</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Vendor (Vendor need configured in the system)</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Producing Qty</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Sequence Number Start (Numeric and 6 digit)</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Sequence Number End (Numeric and 6 digit)</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Requested Date (Date)</span></span></li><li><span style="color: rgb(23,43,77);"><span style="color: rgb(0,0,0);">Estimated Completion Date (Date)</span></span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd">Upload</td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">System will check if all mandatory fields' values for each line items have been provided.</span></li><li><span style="color: rgb(23,43,77);">System will check if the Sub Application Form is duplicated.</span></li><li><span style="color: rgb(23,43,77);">For each line item, the system will write if correctly loaded or in case of issue, writing the error.</span></li><li><span style="color: rgb(23,43,77);">If there is any error in the file, system will  not upload data and return error.</span></li><li><span style="color: rgb(23,43,77);">When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” The Fixture Request Form are uploaded successfully” OR with error then prompt message with specific error message.</span></li><li><span style="color: rgb(23,43,77);">At the end of process, the PASS data will processed in the system. </span><span style="color: rgb(23,43,77);">System will create an output file and download it from the browser, with same file name and adding extension .out before the file extension (if input file is Template-Fixture-Request-Form.csv, the output file will be Template-Fixture-Request-Form.out.csv)</span></li><li><span style="color: rgb(23,43,77);"><em>Note :The users, those not having Microsoft Office 365 or higher version of excel at least to 16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.</em></span></li></ul></td></tr></tbody></table>


- **System will check if all mandatory fields’ values for each line items have been provided.**


- System will check if the Sub Application Form is duplicated.


- For each line item, the system will write if correctly loaded or in case of issue, writing the error.


- If there is any error in the file, system will  not upload data and return error.


- When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” The Fixture Request Form are uploaded successfully” OR with error then prompt message with specific error message.


- At the end of process, the PASS data will processed in the system.

System will create an output file and download it from the browser, with same file name and adding extension .out before the file extension (if input file is Template_Fixture_Request_Form.csv, the output file will be Template_Fixture_Request_Form.out.csv)

- Note :The users, those not having Microsoft Office 365 or higher version of excel at least to 16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.


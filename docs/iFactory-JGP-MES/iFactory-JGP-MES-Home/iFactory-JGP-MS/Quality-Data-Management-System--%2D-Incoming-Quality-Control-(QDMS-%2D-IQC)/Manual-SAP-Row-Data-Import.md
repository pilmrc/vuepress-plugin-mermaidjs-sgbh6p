# Introduction

This Manual SAP Row Data Import screen support user to import SAP master data and GRS.No


### **How to get there?** 



::: mermaid
graph LR
A("MANUAL SAP ROW DATA IMPORT")
:::


#### **Screen Activity** 



- Download template

- Upload template


#### **Permission ( iFactory.IQC)** 



- Can view
Manual SAP Row Data Import

- Can bulk upload SAP Inspection Plan Details Import


- Can bulk upload SAP IQC Component Evaluation Report Import


- Can bulk upload SAP Receipt Data Report Import



#### **Precondition** 



- User needs to have the screen and function permission



#### **Screen Specification** 



- User is able to configure , edit and update monthly & quarterly target for dashboard . This target to be shown in Incoming Inspection Status Tracker ( by lot) control chart as a benchmark for user to compare with the actual result.

- User is allowed to view the configuration- ( historical data) by selecting fiscal year


#### SAP Inspection Plan Details Import



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Item</th><th class="confluenceTh">Desription</th></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span style="color: rgb(23,43,77);">Allow user to select file with .UTF-8 format</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td class="confluenceTd"><ul style="text-align: left;"><li>Pre-defined template that must be used for upload the configuration. </li><li>Field that available in the template as below </li><li><span><span style="color: rgb(0,0,0);">Plant</span> </span><span style="color: rgb(0,0,0);">（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Material（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">SmplProc（Optional-String）</span></li><li><span style="color: rgb(0,0,0);">MstrChar （Optional-String）</span></li><li><span style="color: rgb(0,0,0);">Ctrl key（Optional-String）</span></li><li><span style="color: rgb(0,0,0);">Ctyp（Optional-String）</span></li><li><span style="color: rgb(0,0,0);">I（Optional-String）</span></li><li><span style="color: rgb(0,0,0);">Q（Optional-String）</span></li><li><span style="color: rgb(0,0,0);">Short text for the inspection charac （Optional-String）</span></li><li><span style="color: rgb(0,0,0);">Action（Mandatory-String）</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Upload </span></td><td class="confluenceTd"><ul style="text-align: left;"><li>The bulk upload support user to add，update</li><li><span style="color: black;">Add the new material data into IQC system. If the material data is available in the system, then not allowed to add into system.</span></li><li><span style="color: black;">Update the existing material data in IQC system. If material data not available in the system, then updating action will be failed.</span></li><li><span style="color: black;">If user leaves the action column as blank, then no action should be taken.</span></li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk upload based on the implemented validation at UI.</span></li><li><span style="color: rgb(0,0,0);">System will check if all mandatory fields' values for each line item are provided.</span></li><li>If the material has been submitted IQC Form， System will not update existed IQC Form, User must delete existed IQC Form， then the material will capture the last information.</li><li>System shall create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</li><ul><li>The file will replicate the same line of source file, plus an additional column with the processed result.</li><li>For each line, the system will write if correctly loaded or in case of issue, writing the error</li></ul><li>If there is any error in the file, system should process the pass data and return error.</li><li>When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “File processed with errors and please check output file”</li></ul></td></tr></tbody></table>


- System will check if all mandatory fields’ values for each line item are provided.


- If the material has been submitted IQC Form， System will not update existed IQC Form, User must delete existed IQC Form， then the material will capture the last information.

- System shall create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)

- The file will replicate the same line of source file, plus an additional column with the processed result.

- For each line, the system will write if correctly loaded or in case of issue, writing the error

- If there is any error in the file, system should process the pass data and return error.

- When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “File processed with errors and please check output file”
**SAP IQC Component Evaluation Report Import** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Item</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">Allow user to select file with .UTF-8 format</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td class="confluenceTd"><ul style="text-align: left;"><li>Pre-defined template that must be used for upload the configuration. </li><li>Field that available in the template as below </li><li><span style="color: rgb(0,0,0);">Plant（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Inspection Lot （Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Material（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Created On（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">MstrChar（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Insp. Stage（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Inspect Qty（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">UOM（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Acceptance No（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Rejection No（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Action（Mandatory-String）</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Upload </span></td><td class="confluenceTd"><ul style="text-align: left;"><li>The bulk upload support user to add，update</li><li><span style="color: black;">Add – Add the new material data into IQC system. If the material data is available in the system, then not allowed to add into system.</span></li><li><span style="color: black;">Update – Update the existing material data in IQC system. If material data not available in the system, then updating action will be failed.</span></li><li><span style="color: black;">If user leaves the action column as blank, then no action should be taken.</span></li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk upload based on the implemented validation at UI.</span></li><li><span style="color: rgb(0,0,0);">System will check if all mandatory fields' values for each line item are provided.</span></li><li>If the material has been submitted IQC Form， System will not update existed IQC Form, User must delete existed IQC Form， then the material will capture the last information.</li><li>System shall create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</li><ul><li>The file will replicate the same line of source file, plus an additional column with the processed result.</li><li>For each line, the system will write if correctly loaded or in case of issue, writing the error</li></ul><li>If there is any error in the file, system should process the pass data and return error.</li><li>When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “File processed with errors and please check output file”</li></ul></td></tr></tbody></table>


- System will check if all mandatory fields’ values for each line item are provided.


- If the material has been submitted IQC Form， System will not update existed IQC Form, User must delete existed IQC Form， then the material will capture the last information.

- System shall create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)

- The file will replicate the same line of source file, plus an additional column with the processed result.

- For each line, the system will write if correctly loaded or in case of issue, writing the error

- If there is any error in the file, system should process the pass data and return error.

- When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “File processed with errors and please check output file”
**SAP Receipt Data Report Import** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Item</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">Allow user to select file with .UTF-8 format</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td class="confluenceTd"><ul style="text-align: left;"><li>Pre-defined template that must be used for upload the configuration. </li><li>Field that available in the template as below </li><li><span style="color: rgb(0,0,0);">Plant（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Medi（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">MPN（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Material description（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Mfr（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Quantity（Mandatory-</span><span style="color: black;">Numeric</span><span style="color: rgb(0,0,0);">）</span></li><li><span style="color: rgb(0,0,0);">Pstg date（Mandatory-Date）</span></li><li><span style="color: rgb(0,0,0);">Mat. doc.（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Purch.doc.（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Vendor（Mandatory-<span style="color: black;">Numeric</span>）</span></li><li><span style="color: rgb(0,0,0);">Masked MPN（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Insp. Lot（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);"><span style="">Batch Number ( Optional-String)</span></span></li><li><span style="color: rgb(0,0,0);">Skip（Mandatory-String）(If it is "X",the IQC Form will be skip)</span></li><li><span style="color: rgb(0,0,0);">Action（Mandatory-String）</span></li></ul></td></tr><tr><td class="confluenceTd"><br /></td><td class="confluenceTd"><ul style="text-align: left;"><li>The bulk upload support user to add，update</li><li><span style="color: black;">Add – Add the new material data into IQC system. If the material data is available in the system, then not allowed to add into system.</span></li><li><span style="color: black;">Update – Update the existing material data in IQC system. If material data not available in the system, then updating action will be failed.</span></li><li><span style="color: black;">If user leaves the action column as blank, then no action should be taken.</span></li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk upload based on the implemented validation at UI.</span></li><li><p style="">Once uploaded successfully, GRS.No+Part Number+Inspection Lot will be list IQC Form screen and status is null,need user manually submitted.</p></li><li><p style="">Allow user to update if the IQC Form is not submitted;<span> </span><span style="">If IQC Form is submitted, Block user to upload,then when user delete IQC Form, system does not update information</span></p></li><li><span style="color: rgb(0,0,0);">System will check if all mandatory fields' values for each line item are provided.</span></li><li>System shall create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</li><ul><li>The file will replicate the same line of source file, plus an additional column with the processed result.</li><li>For each line, the system will write if correctly loaded or in case of issue, writing the error</li></ul><li>If there is any error in the file, system should process the pass data and return error.</li><li>When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “File processed with errors and please check output file”</li></ul></td></tr><tr><td class="confluenceTd"><br /></td><td class="confluenceTd"><br /></td></tr></tbody></table>



- System will check if all mandatory fields’ values for each line item are provided.


- System shall create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)

- The file will replicate the same line of source file, plus an additional column with the processed result.

- For each line, the system will write if correctly loaded or in case of issue, writing the error

- If there is any error in the file, system should process the pass data and return error.

- When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “File processed with errors and please check output file”




#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/122750748.png)

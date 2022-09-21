# Introduction

Parameter List is a 
basic
configuration screen that needed for IQC Inspection Plan so that they can associate the parameter with material in IQC Inspection Plan.


### **How to get there?** 



::: mermaid
graph LR
A("IQC CONFIGURATION")-->0("PARAMETER LIST MAINTENANCE")
0-->1("PARAMETER LIST MAINTENANCE")

:::


#### **Screen Activity** 


Parameter List Maintenance enables user to perform the following activities:

- Create, view, update and delete Parameter records.


- Associate Parameter to PCCode and PTCode.


#### **Permission ( iFactory.IQC)** 



- IQC Parameter List Maintenance (Can view)


- Can modify Parameter


- Can bulk upload Parameter



#### **Precondition** 


PCCode, PTCode and Commodity need to configured in backend table and PCCode and PTCode need have a mapping it relationship.


#### **Screen Dependency** 


The following screen(s) has dependency with Approval Workflow.

- IQC Inspection Plan

- IQC Form

- Form Return


#### **Screen Specification** 



- System validates unique
configuration by Parameter name. If duplicates, throws error and new data does not get created.

- When the records deleted, the

item will be

deleted and not showing on the screen.
- User able to Add/Edit/Delete the Parameter Name, PCCode, PTCode, Description, Commodity.



#### **Fields** 


<table class="relative-table wrapped confluenceTable" style="width: 1373.0px;"><colgroup><col style="width: 255.359px;" /><col style="width: 1116.64px;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Action</td><td style="text-align: left;" class="confluenceTd">Allow user to edit and update at anytime. The updates should reflect at new record's run time immediately.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Parameter Name</td><td style="text-align: left;" class="confluenceTd">Allow user to insert the Parameter Name. <br />The Parameter Name cannot be duplicated.</td></tr><tr><td colspan="1" class="confluenceTd">PCCode</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Allow user to indicate the part is belong to which</span> PCCode. </td></tr><tr><td colspan="1" class="confluenceTd">PTCode</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Allow user to indicate the part is belong to which PTCode.</span></td></tr><tr><td style="text-align: left;" class="confluenceTd">Description</td><td style="text-align: left;" class="confluenceTd">Allow user to describe the Parameter. <span style="color: rgb(23,43,77);">Optional field.</span></td></tr><tr><td style="text-align: left;" class="confluenceTd">Commodity</td><td style="text-align: left;" colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span style="color: rgb(23,43,77);">Allow user to indicate the part is belong to which Commodity. Optional field.</span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd">Default it is ON, if the Parameter set to OFF where it cannot be used in Inspection Plan.</td></tr></tbody></table>

Allow user to edit and update at anytime. The updates should reflect at new record’s run time immediately.
Parameter NameAllow user to insert the Parameter Name. 
The Parameter Name cannot be duplicated.PCCodeAllow user to indicate the part is belong to which
PCCode. PTCodeAllow user to indicate the part is belong to which PTCode.
DescriptionAllow user to describe the Parameter. Optional field.
CommodityAllow user to indicate the part is belong to which Commodity. Optional field.
ActiveDefault it is ON, if the Parameter set to OFF where it cannot be used in Inspection Plan.

#### **Fields available for File upload** 


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th colspan="1" class="confluenceTh">Field </th><th colspan="1" class="confluenceTh">Description</th></tr><tr><td style="text-align: left;" class="confluenceTd">Choose File</td><td style="text-align: left;" class="confluenceTd">System allows user to select .csv file having defined format to upload</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Download</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to download Parameter List template (CSV UTF-8 format) for batch upload. This file contains below columns:</span></p><ul><li><span>Parameter Name (Mandatory, string)</span></li><li><span>PCCode (Mandatory, string)</span></li><li><span>PTCode (Mandatory, string)</span></li><li><span>Description (Optional, string)</span></li><li><span>Commodity (Optional, string)</span></li><li><span>Active</span><span>  (Mandatory, Y/N)</span></li><li><span>Action (Mandatory, case insensitive for add, update, delete)</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd">Upload</td><td style="text-align: left;" class="confluenceTd"><ul><li>System needs to check if all mandatory fields' values for each line item should be provided.</li><li><span>System needs to check if the Parameter Name, PCCode, PTCode, Commodity are configured in system.</span></li><li><span>If it is deleted, only validate the parameter name.</span></li><li>The system should create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is <span style="color: rgb(0,0,0);">Parameter</span>.csv, the output file will be <span style="color: rgb(0,0,0);">Parameter</span>.out.csv)</li><li>The file will replicate the same line of source file, plus an additional column with the operation result.</li><li>For each line item, the system will write if correctly loaded or in case of issue, writing the error.</li><li>If there is any error in the file, system should stop the uploading and return error.</li><li>When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.</li><li>At the end of operation, the PASS data need to be listed at the Parameter in screen.</li></ul></td></tr></tbody></table>


- System needs to check if all mandatory fields’ values for each line item should be provided.


- System needs to check if the Parameter Name, PCCode, PTCode, Commodity are configured in system.

- If it is deleted, only validate the parameter name.

- The system should create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is
Parameter
.csv, the output file will be Parameter
.out.csv)
- The file will replicate the same line of source file, plus an additional column with the operation result.

- For each line item, the system will write if correctly loaded or in case of issue, writing the error.

- If there is any error in the file, system should stop the uploading and return error.

- When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- At the end of operation, the PASS data need to be listed at the Parameter in screen.


#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/110919913.png)
[image2022-3-14_14-32-31.png](/.attachments/110919914.png)

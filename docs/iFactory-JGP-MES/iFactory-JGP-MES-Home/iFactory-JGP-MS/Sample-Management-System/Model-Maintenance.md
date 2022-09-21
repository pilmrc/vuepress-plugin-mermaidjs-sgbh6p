# Introduction

Model Maintenance screen is used to configure the model that belong to a product group. This Model data will be using in Sample Application form/ Sample information to indicate the sample will be using for reference in which Product's model.


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT CONFIGURATION")-->0("Model MAINTENANCE")

:::


#### **Permission ( Ifactory.SMS)** 



- Model Maintenance


- Can modify Model Maintenance

**Screen Activity** 
This screen enables user to perform the following activity:

- Create, view, update and delete records

- Associate model to product group and part numbers.



#### **Precondition** 


Product group and part numbers needs to be configured in ifactory before user configures model.



#### **Screen Dependency** 


The following screen(s) has dependency with this configuration.

- Sample Application Form

- Sample List View

- Sample Distribution

- Sample Reception

- Routine Checkup List

- My Task - Pending , Completed ,Overdue


#### **Screen Specification** 


System validates unique
configuration combination of  model and product group. If duplicates, throws error and new data does not get created.
When the records deleted, the 
item will be

soft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.


#### **Fields** 



<table class="relative-table wrapped confluenceTable" style="width: 64.2113%;"><colgroup><col style="width: 20.2533%;" /><col style="width: 79.7603%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Model</p></td><td style="text-align: left;" class="confluenceTd"><p>Name given to the model.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Description</p></td><td style="text-align: left;" class="confluenceTd"><p>Additional description can be entered in this field.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Product Group</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Product group that model belongs to .</p><ul><li>This product group is filtered by project data partition.</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Part Number</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Part number that model belongs to.</p><ul><li>One model can associate to multiple part numbers .</li><li>The part number available for selection is filtered by the selected product group.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Assembly/Revision/Version</td><td colspan="1" class="confluenceTd"><p>System will auto check if there is Assembly /Revision/Version available for the selected part number.</p><ul><li>If the selected part numbers have been configured in Assembly then system will display all the available Assembly/Revision/Version else it will display as blank.</li><li>This will be considered as an association to ifactory production configuration.</li></ul></td></tr></tbody></table>


- #### **Upload via Template**

Bulk upload is allowed user to bulk upload Model by using excel. This function is controlled by permission and if no permission granted for this function then this function will not be appeared on screen. If the permission granted then user will see the Bulk upload function when first load the Model Maintenance screen. The information in the bulk upload file will be validating.
<table class="confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Item </p></th><th style="text-align: left;" class="confluenceTh"><p>Description </p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">Allow user to select file with .xlsx format</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td style="text-align: left;" class="confluenceTd"><ul><li>Pre-defined template that must be used for upload the configuration. </li><li>Field that available in the template as below </li><li>Model( Mandatory - String)</li><li>Description ( Optional - String)</li><li>Product Group (Mandatory - String)</li><li>Part Number ( Optional - String) </li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Upload </span></td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">This bulk upload only support uploading not updating and deleting. </span></li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk upload based on the implemented validation at UI.</span></li><li><span style="color: rgb(0,0,0);">System will check if all mandatory fields' values for each line item are provided.</span></li><li>System needs to check if the provided product group and part number is matched the configuration in the system.</li><li>System needs to create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</li><ul><li>The file need to replicate the same line of source file, plus an additional column with the processing result.</li><li>For each line item, the system need to write if correctly loaded or in case of issue, writing the error.</li></ul><li>If there is any error in the file, system will upload the pass data and return error.</li><li>When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.</li><li>At the end of process, the PASS data will processed in the system</li><li>User is allowed to upload up to 1000 rows only per file. If the data is more 1000 rows then user needs to split 2 files before upload.</li></ul></td></tr></tbody></table>


- System will check if all mandatory fields’ values for each line item are provided.


- System needs to check if the provided product group and part number is matched the configuration in the system.

- System needs to create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)

- The file need to replicate the same line of source file, plus an additional column with the processing result.

- For each line item, the system need to write if correctly loaded or in case of issue, writing the error.

- If there is any error in the file, system will upload the pass data and return error.

- When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- At the end of process, the PASS data will processed in the system

- User is allowed to upload up to 1000 rows only per file. If the data is more 1000 rows then user needs to split 2 files before upload.

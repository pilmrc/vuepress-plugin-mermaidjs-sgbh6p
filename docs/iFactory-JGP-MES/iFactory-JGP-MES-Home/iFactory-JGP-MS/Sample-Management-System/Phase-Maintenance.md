# Introduction

Phase Maintenance screen is used to configure the customized phase that associated to the particular customer/division and standard phase . This customized phase will be using in project phase maintenance .


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT CONFIGURATION")-->0("Phase MAINTENANCE")

:::


#### **Permission ( Ifactory.SMS)** 



- Phase Maintenance


- Can modify Phase Maintenanc


- Can bulk upload Phase

**Screen Activity** 
This screen enables user to perform the following activity:

- Create, view, update and delete records

- Download template and upload template

- Associate customized phase to customer/division and standard phase.



#### **Precondition** 


Customer/division needs to be configured in ifactory before user configures customized phase.



#### **Screen Dependency** 


The following screen(s) has dependency with this configuration.

- Sample Application Form

- Sample List View

- Sample Distribution

- Sample Reception

- Routine Checkup List

- My Task - Pending , Completed ,Overdue


#### **Screen Specification** 



- System validates unique
configuration combination of  Customer/Division and Customized Phase. If duplicates, throws error and new data does not get created.

- When the records deleted, the

item will be

soft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.

- System support download template and bulk upload template. The Customer/Division、Standard Phase Name and Customized Phase Name are mandatory, the Description is optional.


- When upload successfully or fails, the system will ouput a files to explain valid or invalid data, and the bulk upload function only allows user to upload up to 1000 rows


- If user has data partition permission, user can see all data whether which data partition.


#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Customer/Division</p></td><td style="text-align: left;" class="confluenceTd"><p>Auto populate the customer/division based on logged-on data partition</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Standard Phase Name</p></td><td style="text-align: left;" class="confluenceTd"><p>The standard phases that available for selection are <span style="color: rgb(0,0,0);">Proto,  EVT, DVT, EET, PVT, Ramp and MP.</span></p><ul><li><span style="color: rgb(0,0,0);">User is allowed to select more than one standard phase.</span></li><li><span style="color: rgb(0,0,0);">User is allowed to add additional standard phase to the existing record but not removing the existing phase name from the record.</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Customized Phase Name</td><td colspan="1" class="confluenceTd">Customized phase name that given by customer.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Description </td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Additional description can be entered in this field</p></td></tr></tbody></table>


- #### **Upload via Template**

Bulk upload is allowed user to bulk upload Sample Location by using excel. This function is controlled by permission and if no permission granted for this function then this function will not be appeared on screen. If the permission granted then user will see the Bulk upload function when first load the Phase Maintenance screen. The information in the bulk upload file will be validating.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">File</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span style="color: rgb(23,43,77);">Allow user to select file with .xlsx format</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td class="confluenceTd"><ul style="text-align: left;"><li>Pre-defined template that must be used for upload the configuration. </li><li>Field that available in the template as below </li><li><span style="color: rgb(0,0,0);">Customer/Division</span>( Mandatory - String)</li><li>Standard Phase Name ( Mandatory- String)</li><li>Customized Phase Name ( Mandatory - String) </li><li>Description ( Optional - String)</li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Upload</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span style="color: rgb(0,0,0);">This bulk upload only support uploading not updating and deleting. </span></li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk upload based on the implemented validation at UI.</span></li><li><span style="color: rgb(0,0,0);">System will check if all mandatory fields' values for each line item are provided.</span></li><li><span style="color: rgb(0,0,0);">System will check if  the Customer/Division and Standard Phase Name available in the system（mutiple Standard Phase Name need to use commas to separate them）</span></li><li>System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</li><ul><li>The file will replicate the same line of source file, plus an additional column with the processing result.</li><li>For each line item, the system need to write if correctly loaded or in case of issue, writing the error.</li></ul><li>If there is any error in the file, system will upload the pass data and return error.</li><li>When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.</li><li>At the end of process, the PASS data will processed in the system</li><li>User is allowed to upload up to 1000 rows only per file. If the data is more 1000 rows then user needs to split 2 files before upload.</li></ul></td></tr></tbody></table>


- System will check if all mandatory fields’ values for each line item are provided.


- System will check if  the Customer/Division and Standard Phase Name available in the system（mutiple Standard Phase Name need to use commas to separate them）


- System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)

- The file will replicate the same line of source file, plus an additional column with the processing result.

- For each line item, the system need to write if correctly loaded or in case of issue, writing the error.

- If there is any error in the file, system will upload the pass data and return error.

- When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- At the end of process, the PASS data will processed in the system

- User is allowed to upload up to 1000 rows only per file. If the data is more 1000 rows then user needs to split 2 files before upload.

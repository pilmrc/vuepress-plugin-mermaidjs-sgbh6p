# Introduction

Department Maintenance screen is used to maintain the department owner and department leader that under a department. The configured department owner will be needed for sample distribution. Once the sample distributed to the department owner , it will be managed by the department owner. This configuration also will be using for email triggering.


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT CONFIGURATION")-->0("Department MAINTENANCE")

:::


#### **Permission ( Ifactory.SMS)** 



- Department Maintenance


- Can modify Department Maintenance


- Can bulk upload Dempartment by template

**Screen Activity** 
This screen enables user to perform the following activity:

- Create, view, update and delete records

- Download template and upload template

- Associate department owner and department leader to a department.



#### **Precondition** 


User needs to be configured in security before this configuration.



#### **Screen Dependency** 


The following screen(s) has dependency with this configuration.

- Sample Distribution

- Sample Reception

- Routine Checkup List

- My Task - Pending , Completed ,Overdue


#### **Screen Specification** 



- System validates unique
configuration by department name. If duplicates, throws error and new data does not get created.

- When the records deleted, the

item will be

soft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.

- System support download template and bulk upload template. The Department Name、Department Owner and Department Leader mandatory, the Description is optional.


- When upload successfully or fails, the system will ouput a files to explain valid or invalid data, and the bulk upload function only allows user to upload up to 1000 rows



#### **Fields** 



<table class="relative-table wrapped confluenceTable" style="width: 78.2488%;"><colgroup><col style="width: 17.1467%;" /><col style="width: 82.8667%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Department Name</p></td><td style="text-align: left;" class="confluenceTd"><p>Name given to the department.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Description</p></td><td style="text-align: left;" class="confluenceTd"><p>Additional description can be entered in this field.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Department Owner</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Department Owner that belongs to the configured department.</p><ul><li>This list will show all the users available in security.</li><li>Once clicked on the username, then it will auto add into the list.</li><li>The list will display username, employee number and email.</li><li>User can be only assigned to one Department.</li><li><span>Once user assigned to department owner then can't be assigned as department leader in the same department</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Department Leader</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Department Leader that belongs to the configured department.</p><ul><li>This list will show all the users available in security.</li><li>Once clicked on the username, then it will auto add into the list.</li><li>The list will display username, employee number and email.</li><li>User can be  assigned to more than one Department.</li><li><span>Once user assigned to department leader then can't be assigned as department owner in the same department</span></li></ul></td></tr></tbody></table>


- #### **Upload via Template**

Bulk upload is allowed user to bulk upload Sample Location by using excel. This function is controlled by permission and if no permission granted for this function then this function will not be appeared on screen. If the permission granted then user will see the Bulk upload function when first load the Department Maintenance screen. The information in the bulk upload file will be validating.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">File</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">Allow user to select file with .xlsx format</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td class="confluenceTd"><ul><li>Pre-defined template that must be used for upload the configuration. </li><li>Field that available in the template as below </li><li>Department Name( Mandatory - String)</li><li>Description ( Optional - String)</li><li>Department Owner ( Mandatory - Email) (Note :System will display username , employee ID and email after uploaded)</li><li>Department Leader  ( Mandatory - Email) (Note :System will display username , employee ID and email after uploaded)</li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Upload </span></td><td class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">This bulk upload only support uploading not updating and deleting. </span></li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk upload based on the implemented validation at UI.</span></li><li><span style="color: rgb(0,0,0);">System will check if all mandatory fields' values for each line item are provided.</span></li><li><span style="color: rgb(0,0,0);">System will check if the Department Name is unique</span></li><li>System will check if the provided user for D<span style="color: rgb(0,0,0);">epartment Owner and Department Leader available in the system.</span> For multiple Department Owner and Department Leader , user need to split it by  semicolon (;)</li><li><span style="color: rgb(0,0,0);">System will check if the same user upload  for the same/different department<span> </span></span></li><li>System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</li><ul><li>The file will replicate the same line of source file, plus an additional column with the processing result.</li><li>For each line item, the system will write if correctly loaded or in case of issue, writing the error.</li></ul><li>If there is any error in the file, system will upload the pass data and return error.</li><li>When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.</li><li>At the end of process, the PASS data will processed in the system</li><li>User is allowed to upload up to 1000 rows only per file. If the data is more 1000 rows then user needs to split 2 files before upload.</li></ul></td></tr></tbody></table>


- System will check if all mandatory fields’ values for each line item are provided.


- System will check if the Department Name is unique


- System will check if the provided user for D
epartment Owner and Department Leader available in the system.
For multiple Department Owner and Department Leader , user need to split it by  semicolon (;)
- System will check if the same user upload  for the same/different department


- System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)

- The file will replicate the same line of source file, plus an additional column with the processing result.

- For each line item, the system will write if correctly loaded or in case of issue, writing the error.

- If there is any error in the file, system will upload the pass data and return error.

- When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- At the end of process, the PASS data will processed in the system

- User is allowed to upload up to 1000 rows only per file. If the data is more 1000 rows then user needs to split 2 files before upload.

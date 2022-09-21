# Introduction

Sample Location Maintenance screen is used to configure the location of defect on a part number. When user select the configured sample location in Sample Application form, it will help to indicate that sample has defect on which location. 


### How to get there?



::: mermaid
graph LR
A("Sample management configuration")-->0("Sample LOcation Maintenance")

:::


#### **Permission ( Ifactory.SMS)** 



- Sample Location Maintenance


- Can modify Sample Location Maintenance


- Can perform bulk upload
**Screen Activity** 
This screen enables user to perform the following activity:

- Create, view, update and delete records

- Download template and bulk upload template

- Associate Sample location to part number.



#### **Precondition** 


[Part number](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)
needs to be configured in ifactory before user configures sample location.


#### **Screen Dependency** 


The following screen(s) has dependency with Sample Location.

- Sample Application Form

- Sample List View

- Sample Distribution

- Sample Reception

- Routine Checkup List

- My Task - Pending , Completed ,Overdue


#### **Screen Specification** 



- System validates unique
configuration combination of  Sample Location and Part number. If duplicates, throws error and new data does not get created.

- When the records deleted, the

item will be

soft deleted and not showing on the screen. Once detected the same configuration name has been configured, then system restore the configured data.

- System support download template and bulk upload template. The Sample Location and Part Number is mandatory, the description is optional.


- When upload successfully or fails, the system will ouput a files to explain valid or invalid data, and the bulk upload function only allows user to upload up to 1000 rows



#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Sample Location</p></td><td style="text-align: left;" class="confluenceTd"><p>Naming where is the defect location </p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Part Number</p></td><td style="text-align: left;" class="confluenceTd"><p>The defect location is related to which part number</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Description </td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Additional description can be entered in this field</p></td></tr></tbody></table>



#### **Upload via Template**  


Bulk upload is allowed user to bulk upload Sample Location by using excel. This function is controlled by permission and if no permission granted for this function then this function will not be appeared on screen. If the permission granted then user will see the Bulk upload function when first load the Sample Location Maintenance screen. The information in the bulk upload file will be validating.
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Item</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span style="color: rgb(23,43,77);">Allow user to select file with .xlsx format</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td class="confluenceTd"><ul><li>Pre-defined template that must be used for upload the configuration. </li><li>Field that available in the template as below </li><li><span style="color: rgb(0,0,0);">Sample Location（Mandatory-String）</span></li><li>Description ( Optional - String)</li><li>Part Number ( Optional<span style="color: rgb(0,0,0);">-String</span>) </li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Upload </span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span style="color: rgb(0,0,0);">This bulk upload only support uploading not updating and deleting. </span></li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk upload based on the implemented validation at UI.</span></li><li><span style="color: rgb(0,0,0);">System will check if all mandatory fields' values for each line item are provided.</span></li><li>System will check if the provided part number <span style="color: rgb(0,0,0);">available</span> in the system.</li><li>System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</li><ul><li>The file will replicate the same line of source file, plus an additional column with the processing result.</li><li>For each line item, the system will write if correctly loaded or in case of issue, writing the error.</li></ul><li>If there is any error in the file, system will upload the pass data and return error.</li><li>When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.</li><li>At the end of process, the PASS data will processed in the system</li><li>User is allowed to upload up to 1000 rows only per file. If the data is more 1000 rows then user needs to split 2 files before upload.</li></ul></td></tr></tbody></table>


- System will check if all mandatory fields’ values for each line item are provided.


- System will check if the provided part number
available
in the system.
- System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)

- The file will replicate the same line of source file, plus an additional column with the processing result.

- For each line item, the system will write if correctly loaded or in case of issue, writing the error.

- If there is any error in the file, system will upload the pass data and return error.

- When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- At the end of process, the PASS data will processed in the system

- User is allowed to upload up to 1000 rows only per file. If the data is more 1000 rows then user needs to split 2 files before upload.

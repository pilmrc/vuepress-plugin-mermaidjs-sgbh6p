# Introduction

Sample Distribution is a screen that allowed distributor to distribute the sample to the respective department owner.


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT ")-->0("SAMPLE DISTRIBUTION")

:::


#### **Permission ( Ifactory.SMS)** 



- Sample Distribution

- Can bulk distribute by template

- Can withdraw the distribution

- Can distribute the sample number

- Can print label

- Can export sample
**Screen Activity** 
This screen enables user to perform the following activity:

- Filter and Select the records.

- Distribute and bulk distribute the records.

- Withdraw the distributed records.

- Print label


#### **Pre-condition**  


The following need to be configured before using this screen

- Need to configure user in department.


#### **Screen Dependency** 


The following screen(s) has dependency with Sample Application Form.

- Sample List View

- Sample Reception

- Routine Checkup List


#### **Screen Specification** 



- Sample distribution is controlled by data partition. User is able to view all the created samples based on the assigned customer/division in any data partition even user has logged-on with the specific customer/division.

- The sample number with the following task status will be available
in Sample distribution list:
- Pending distribution - Sample number is pending for distribution.

- Pending Reception - Sample number is distributed but pending for reception.

- Rejected Reception - Sample number is rejected by department owner

- If the sample number is pending distribution for more than 24 hours ,

- Based on sample number's submitted date time and group code.

- Trigger notification to user group has only permission to Sample Distribution screen.

- Template as below.
![image2021-10-9_12-43-31.png](/.attachments/100892834.png)



- User is allowed to print label for the selected sample number by clicking the print button regardless of the task status and sample status.


- User is allowed to bulk distribute the sample number by using template.

- User is allowed to filter according to submission date and distribution date, when user filter,system will refresh sample distribution screen.

- Once successfully distributed the sample , system will trigger notification to department owner.
![image2022-1-14_14-3-19.png](/.attachments/106463376.png)




#### Actions


<table class="relative-table wrapped confluenceTable" style="width: 84.5726%;"><colgroup><col style="width: 7.00761%;" /><col style="width: 93.0058%;" /></colgroup><tbody><tr><th class="confluenceTh">Button </th><th class="confluenceTh">Description </th></tr><tr><td class="confluenceTd">Distribute </td><td class="confluenceTd"><ol><li>User is allowed  to select<span> </span><em>one </em><span> or <em>multiple sample numbers</em> </span>then assign to<span> </span><strong>one<span> </span></strong>department owner by searching the department name ,description, username, email and NTID.</li><li>Once department owner is selected , then system will auto populate the department name.</li><li>User is able to review the selected sample numbers and assigned department owner before confirming the distribution.</li><li>Once confirmed distribution, then the task status will change to "Pending Reception" and Sample Status still remain as Approved.</li><li><span>User is allowed to re-distribute the withdrawn sample number.</span></li><li>If the Sample number's task status =" Rejected Reception" , then user is allowed to distribute the sample number to another department owner.</li><li>System will validate the EOL date and Validity date is current date or future date before distribution </li></ol></td></tr><tr><td class="confluenceTd">Withdraw</td><td class="confluenceTd"><ol><li><span>User is allowed to withdraw the sample number (one by one) if the sample's task status is Pending Reception.</span></li><li><span>Once withdrawn the distribution , the task status will change to " Pending Distribution" and sample status still remain as " Approved".</span></li></ol></td></tr><tr><td colspan="1" class="confluenceTd">Print</td><td colspan="1" class="confluenceTd"><ol><li><span>Once clicked on print button, allow user to </span><ul><li><span>Select printer  ( lookup to Printer Maintenance . Only display active printer and without resource configured )</span></li><li><span> Select document( lookup to document maintenance) .</span></li><li><span> Fill in how many copies to print.</span></li><li>It is support data prompt<span> </span><span>if the selected Document is configured with Data prompt field type. ( Note : Multiple sample number can share the same Data Prompt data .)</span></li><li><span>Before printing , user is allowed to edit the data prompt's data.</span></li></ul></li></ol></td></tr></tbody></table>



- #### Bulk Distribute via Template

Bulk export and update is allowed user to bulk export and update sample information by using excel. This function is controlled by permission and if no permission granted for this function then this function will not be appeared on screen. If the permission granted then user will see the Bulk export and update function when first load the Sample List View screen. The information in the bulk update file will be validating based on logged in data partition. 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Item </p></th><th style="text-align: left;" class="confluenceTh"><p>Description </p></th></tr></thead><tbody><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Export </td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li><p class="auto-cursor-target">User is allowed to select sample number then export the sample information below in excel.</p><div class="table-wrap"><table class="wrapped confluenceTable"><tbody><tr><td class="confluenceTd">Sample number</td><td class="confluenceTd"><span> </span>Project</td><td class="confluenceTd">Phase</td><td class="confluenceTd">Product<br />Group</td><td class="confluenceTd">Model</td><td class="confluenceTd">Process</td><td class="confluenceTd"><span> </span>Sample Status  </td><td class="confluenceTd"><span> </span>Sample Type</td><td class="confluenceTd">Description</td><td class="confluenceTd">Sample Location</td><td class="confluenceTd">Creation Date</td><td class="confluenceTd">Validity Date </td><td class="confluenceTd">Part Number</td><td class="confluenceTd">Revision</td><td class="confluenceTd">Applicative Phase</td><td class="confluenceTd"><span> </span>SN</td><td class="confluenceTd">Task Status</td><td class="confluenceTd">Group Code</td><td colspan="1" class="confluenceTd">Department Owner</td></tr></tbody></table></div></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">Allow user to select file with .xlsx format</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Upload Template</span></td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">Pre-defined template must be used for upload the configuration. </span></li><li><span style="color: rgb(0,0,0);">Field that available in the template as below </span><ul><li><span><span>Sample ID ( Mandatory - String)</span><br /></span></li><li><span>Project ( Mandatory - String)</span></li><li>Phase ( Mandatory- String)</li><li><span>Applicative Phase ( Optional - String)</span></li><li><span>Product group ( Mandatory - String)</span></li><li><span>Process ( Mandatory - String)</span></li><li><span>Sample Type (Mandatory - String)</span></li><li><span>Description (Mandatory -String)</span></li><li><span>Revision (Mandatory -String)</span></li><li><span>Model (Mandatory - String)</span></li><li><span>Sample Location ( Optional -String)</span></li><li><span>Creation Date (Mandatory -Date)</span></li><li><span>Validity Date  (Mandatory -Date)</span></li><li><span>Group Code ( Optional -String)</span></li><li><span>SN (Optional -String)</span></li><li><span>Part Number (Optional -String)</span></li><li><span>Task Status (Mandatory - String)</span></li><li><span>Sample Status  (Mandatory -String)</span></li><li><span>Department Owner </span><span>( Mandatory - email )</span></li></ul></li><li><span style="color: rgb(0,0,0);">System will be able to display username , employee ID and email for Department Owner at the front end by using email .</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Update</span></td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">This bulk update only support updating not supporting adding or deleting.</span></li><li>One sample number only allow to assign to one department owner.</li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk update based on the implemented validation at UI.</span></li><li><span style="color: rgb(0,0,0);">System will check if all mandatory fields' values for each line item are provided.</span></li><li><span style="color: rgb(0,0,0);">System will validate if EOL date and Validity date is current date or future date.</span></li><li><span style="color: rgb(0,0,0);"><span>System will ignore the distribution for task status =pending reception OR receipted.</span></span></li><li><span style="color: rgb(0,0,0);"><span>System will validate the bulk upload data based on assigned data partition.</span></span></li><li><span style="color: rgb(0,0,0);">If there is any error in the file, system will continue upload the pass data but stop uploading the failed data.</span></li><li><span style="color: rgb(0,0,0);">System will create an output file and auto download from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</span><ul><li><span style="color: rgb(0,0,0);">The file will replicate the same line of source file, plus an additional column with the processed result. </span></li><li><span style="color: rgb(0,0,0);">For the error sample data, the system will write the error.</span></li></ul></li><li><span style="color: rgb(0,0,0);"> When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “Upload failed, please check output file”.</span></li></ul></td></tr></tbody></table>

<table class="wrapped confluenceTable"><tbody><tr><td class="confluenceTd">Sample number</td><td class="confluenceTd"><span> </span>Project</td><td class="confluenceTd">Phase</td><td class="confluenceTd">Product<br />Group</td><td class="confluenceTd">Model</td><td class="confluenceTd">Process</td><td class="confluenceTd"><span> </span>Sample Status  </td><td class="confluenceTd"><span> </span>Sample Type</td><td class="confluenceTd">Description</td><td class="confluenceTd">Sample Location</td><td class="confluenceTd">Creation Date</td><td class="confluenceTd">Validity Date </td><td class="confluenceTd">Part Number</td><td class="confluenceTd">Revision</td><td class="confluenceTd">Applicative Phase</td><td class="confluenceTd"><span> </span>SN</td><td class="confluenceTd">Task Status</td><td class="confluenceTd">Group Code</td><td colspan="1" class="confluenceTd">Department Owner</td></tr></tbody></table>


Choose File

- Allow user to select file with .xlsx format

Upload Template

- Pre-defined template must be used for upload the configuration.


- Field that available in the template as below


- Sample ID ( Mandatory - String)


- Project ( Mandatory - String)

- Phase ( Mandatory- String)

- Applicative Phase ( Optional - String)

- Product group ( Mandatory - String)

- Process ( Mandatory - String)

- Sample Type (Mandatory - String)

- Description (Mandatory -String)

- Revision (Mandatory -String)

- Model (Mandatory - String)

- Sample Location ( Optional -String)

- Creation Date (Mandatory -Date)

- Validity Date  (Mandatory -Date)

- Group Code ( Optional -String)

- SN (Optional -String)

- Part Number (Optional -String)

- Task Status (Mandatory - String)

- Sample Status  (Mandatory -String)

- Department Owner
( Mandatory - email )
- System will be able to display username , employee ID and email for Department Owner at the front end by using email .

Update

- This bulk update only support updating not supporting adding or deleting.


- One sample number only allow to assign to one department owner.

- System will validate each line item when processing bulk update based on the implemented validation at UI.


- System will check if all mandatory fields’ values for each line item are provided.


- System will validate if EOL date and Validity date is current date or future date.


- System will ignore the distribution for task status =pending reception OR receipted.


- System will validate the bulk upload data based on assigned data partition.


- If there is any error in the file, system will continue upload the pass data but stop uploading the failed data.


- System will create an output file and auto download from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)


- The file will replicate the same line of source file, plus an additional column with the processed result.


- For the error sample data, the system will write the error.


- When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “Upload failed, please check output file”.



#### Attachments

[image2021-10-9_12-43-31.png](/.attachments/100892834.png)
[image2022-1-14_14-3-19.png](/.attachments/106463376.png)

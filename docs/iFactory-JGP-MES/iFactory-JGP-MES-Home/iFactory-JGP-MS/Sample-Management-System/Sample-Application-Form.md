# Introduction

Sample Application Form is a screen that allowed user to create new sample with all the necessary information that require for task execution. Once submitted, system will generate unique sample number that will be used for tracking purpose. 


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT ")-->0("SAMPLE AppliCation Form")

:::


#### **Permission ( Ifactory.SMS)** 



- Sample Application Form


- Can Create Sample Application Form


- Can Edit Sample Application Form


- Can Delete Sample Application Form


- Can Copy Sample Application Form


- Can Submit Sample Application Form


- Can bulk upload sample application form.
**Screen Activity** 
This screen enables user to perform the following activity:

- Create, edit , delete and copy records.

- Submit the records to generate sample number.

- Localization


#### **Pre-condition**  


The following need to be configured before using this screen

- Need to configure user in security.

- Need to configure project,  product group (product family ), process (Route), and part number (Material) in ifactory.

- Need to configure phase, sample type, model, and sample location


#### **Screen Dependency** 


The following screen(s) has dependency with Sample Application Form.

- Sample List View

- Sample Distribution


#### **Sample Application Form View** 



- This view only show all the sample application form in draft mode.

- Allow user to create new sample application form. Once user clicked the “+”button, it will redirect user to Sample Application Form screen.

- Allow user to edit/update the drafted sample application form.

- The latest modified sample application form will always show at the top.


#### **Screen Specification** 



- Require to fill in the necessary sample information in this application form.

- Before submission , this application form will be saved as draft and still able to edit/update/delete.

- User can access the drafted application form via
[Sample Application Form View](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Sample-Management-System/Sample-Application-Form.md).
- Once user submitted the application form , sample number will be generated based on the provided quantity and the defined format.

- Sample number is unique across all JGP sites.

- Sample number is in capital letter.


- Sample number format is

Plant Code + Project + Sample Type +
sequence number + running number

- Below is the details of the sample number format:
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Item </th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Plant Code </td><td class="confluenceTd"><ul><li>pre-defined plant code <span style="color: rgb(0,0,0);">and assign based on logged-on site</span></li></ul></td></tr><tr><td class="confluenceTd">Project</td><td class="confluenceTd"><ul><li>The first 4 characters of the project name</li><li>Based on the selected project </li><li>If <span>less than the defined digits then no need to trim the name and just displayed as it is.</span>  </li></ul></td></tr><tr><td class="confluenceTd">Sample Type </td><td class="confluenceTd"><ul><li>The first 2 characters of the sample type name</li><li>Based on the selected sample type</li><li>if <span>less than the defined digits then no need to trim the name and just displayed as it is.</span>  </li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Sequence Number ( SN)</td><td colspan="1" class="confluenceTd"><ul><li>6 digits</li><li>Start from 000001 for first sample application form.</li><li>The sequence number will be increased if there is no group code selected for the sample application form</li><li>Group code is plant code + project + sample type +Sequence Number</li><li>Sequence number is unique.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Running number </td><td colspan="1" class="confluenceTd"><ul style="text-align: left;"><li>2 digits</li><li>Assign based on the provided quantity in sample application form.</li><li>Start from 01 for new group code</li><li>The running number will be increased from the latest running number if there is group code selected and it is based on the provided quantity in sample application form.</li></ul></td></tr></tbody></table>


- Following is the example on how to define sample number

<table class="wrapped confluenceTable"><colgroup><col /><col /><col /><col /><col /><col /><col /></colgroup><tbody><tr><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">Info</span></strong></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">Plant</span></strong></p><p style="text-align: center;" align="center"><strong><span style="color: black;">Code</span></strong></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">Project</span></strong></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">Sample Type</span></strong></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">SN</span></strong></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">Running number<br />(within a group code)</span></strong></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">Sample ID</span></strong></p></td></tr><tr><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">Digit</span></strong></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">6 Chars</span></strong></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">4 Chars</span></strong></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">2 Chars</span></strong></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">6 digits</span></strong></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">2 digits</span></strong></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><strong><span style="color: black;">23 characters</span></strong></p></td></tr><tr><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">Example 1</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">WXIMET</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">Moscow</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">Customer provided</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">000001</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">01</span></p></td><td class="confluenceTd"><p><span style="color: black;">WXIMET-Mosc-Cu-000001-01</span></p></td></tr><tr><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">Example 2</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">WXIMET</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">Moscow</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">Customer provided</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">000002</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">01</span></p></td><td class="confluenceTd"><p><span style="color: black;">WXIMET-Mosc-Cu-000002-01</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: black;"><span> </span>Example 3</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">WXIMET</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">Moscow</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">Customer provided</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">000002</span></p></td><td class="confluenceTd"><p style="text-align: center;" align="center"><span style="color: black;">02</span></p></td><td class="confluenceTd"><p><span style="color: black;">WXIMET-Mosc-Cu-000002-02</span></p></td></tr></tbody></table>


**Example  1 : The group code is WXIMET-Mosc-Cu-000001 and 01 is the running number based on the applied quantity.** 
Example  2 : The group code is WXIMET-Mosc-Cu-000002 because user didn't select group code so the SN is increased from 000001 to 000002 and the 01 is the running number based on the applied quantity.
Example 3 : The group code is WXIMET-Mosc-Cu-000002  because user selected group code WXIMET-Mosc-Cu-000002 so the running number is increased from the last running number in the group code based on the applied quantity.
- The pre-defined Plant Code provided by user.

![](https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/e6118946-75ea-4a94-b17d-b1cac5eac9e4?fileName=image.png)



- The generated sample number's task status will be updated as " Pending distribution" and sample status as " Approved".


- The generated sample number will be listed in Sample List View and Sample Distribution.


- This application form can be uploaded via the defined template as well.



#### **Fields** 



<table class="relative-table wrapped confluenceTable" style="width: 96.8728%;"><colgroup><col style="width: 10.9799%;" /><col style="width: 89.0336%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><strong>Fields</strong></td><td class="highlight confluenceTd" style="text-align: left;"><strong>Description</strong></td></tr><tr><td style="text-align: left;" class="confluenceTd">Project </td><td style="text-align: left;" class="confluenceTd"><p>The project that sample will associate to.</p><ul style="text-align: left;"><li><span>The value for selection is displayed based on the assigned customer/division and project regardless of logged-on customer/division.</span></li><li>Data from project phase maintenance</li><li>System will validate EOL date and phase change effective date of the project.<ul><li>If EOL date is due and today date , then prompt user an error message that project is EOL not able to submit application form.</li><li>If phase change effective date is today date and the future date , then prompt user a warning message that project is switching from "X" phase to " Y" phase but still allowing user to continue the submission.</li></ul></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd">Phase</td><td style="text-align: left;" class="confluenceTd"><p>The phase that project currently at.</p><ul style="text-align: left;"><li><span>Auto populated based on the selected project.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Applicative Phase</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The applicative phase that determine if the sample not required to perform expired and Q&E review.</p><ul style="text-align: left;"><li><span>If this field is checked, then this sample form will be excluded from phase change review and expired review.</span></li><li><span>The validity date will be disabled if this check box is checked.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">EOL date </td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The EOL date that project will be end of life and it is EOL review due date.</p><ul style="text-align: left;"><li><span>Auto populated based on the selected project.</span></li><li><span>Validating if EOL date is future date.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Product Group</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The product group that associate to the project.</p><ul style="text-align: left;"><li><span>Auto populated based on the selected project.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Process</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The process that sample will associate to.</p><ul style="text-align: left;"><li><span>Show only active process for selection.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Sample Type</td><td style="text-align: left;" colspan="1" class="confluenceTd">The sample type that sample belongs to.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Description</td><td style="text-align: left;" colspan="1" class="confluenceTd">The description that determine which defect that sample has.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">PLM Link</td><td style="text-align: left;" colspan="1" class="confluenceTd">The PLM link that can access to Sample's documents.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Revision</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Revision that sample belongs to.</p><ul style="text-align: left;"><li><span>Only support Alphabet (A-Z)</span></li><li><span>Maximum 2 alphabets</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Model</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Model that sample belongs to.</p><ul style="text-align: left;"><li><span>The selection is based on the selected product group.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Quantity</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Quantity that require to generate the number of sample number.</p><ul style="text-align: left;"><li><span>Only accept numeric</span></li><li><span>Minimum is 1 and maximum is 1000</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Part Number</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Part Number that sample belongs to.</p><ul style="text-align: left;"><li><span>Show all the part number regardless of status</span></li><li>Part number is from ifactory configuration and no filtering based on data partition, project and product group .</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Product Name</td><td colspan="1" class="confluenceTd">The product name that given to the sample.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Serial Number</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Serial Number of the sample that sample number will associate to.</p><ul style="text-align: left;"><li><span>Allow user to scan/insert serial number based on the quantity filled by user.</span></li><li><span>System will auto matches the inserted serial number to the generated sample number randomly.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Sample Location</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Sample Location that defect located at Sample.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Creation Date</td><td style="text-align: left;" colspan="1" class="confluenceTd">The Creation date is that sample received from External party</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Validity Date</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Validity date that sample will be expired and it is expired review due date.</p><p>System is validating if validity date is not current / future date during submission, copy and save.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Group Code</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Group Code that sample belongs to. </p><ul style="text-align: left;"><li><span>Group Code format = Plant code + Project + sample type + sequence number</span></li><li><span>The list will list based on the selected project, sample type , logged -on site and description.</span></li><li><span>New group code will be created with sequence number 000001 for first sample application form. </span></li><li><span>If there is group code selected then sequence number will be remaining the same.</span></li><li><span>if there is no group code selected , then new group code will be created with sequence number increased.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Signee</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Signee who signed the sample application.</p><ul style="text-align: left;"><li><span>When "manual input" turn off, the list of available users based on the logged-on data partition .</span></li><li><span>When "manual input" turn on, supoort  for Chinese/English ,transverse line, underline,sapce </span></li><li><span>Maximum 10 usernames is allowed.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Approver</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Approver who approve the sample application</p><ul style="text-align: left;"><li><span>The list of available users based on the logged-on data partition</span></li><li><span>Maximum 10 usernames is allowed.</span></li></ul></td></tr></tbody></table>


- #### **Upload via Template**

Bulk upload is allowed user to bulk upload application form by using excel. This function is controlled by permission and if no permission granted for this function then this function will not be appeared on screen. If the permission granted then user will see the Bulk upload function when first load the Sample Application Form screen. The information in the bulk upload file will be validating based on logged in data partition. 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Item </th><th class="confluenceTh">Description </th></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">Allow user to select file with .xlsx format</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td class="confluenceTd"><ul><li style="text-align: left;">Pre-defined template that must be used for upload the configuration. </li><li style="text-align: left;">Field that available in the template as below <ul><li><span>Project ( Mandatory - String)</span></li><li>Applicative Phase ( Optional - String)</li><li>Product Group ( Mandatory - String)</li><li>Process /version( Mandatory - String)</li><li>Sample Type (Mandatory - String)</li><li>Description (Mandatory -String)</li><li>PLM Link ( optional -String) </li><li>Revision (Mandatory -String)</li><li>Model (Mandatory - String)</li><li>Sample Location ( Optional -String)</li><li>Creation Date (Mandatory -String)</li><li>Validity Date  (Mandatory -String)</li><li>Quantity ( Mandatory -numeric)</li><li>Group Code ( Optional -String)</li><li>SN (Optional -String)</li><li>Part Number (Optional -String)</li><li>Product Name ( Optional- String)</li><li>Signee (Mandatory -Email or username ) ( Note : When upload by Email, s<span>ystem will display username , employee ID and email after uploaded; When upload by username, system will display username )</span></li><li>Approver (Mandatory -Email) <span><span> </span>( Note : </span><span>System will display username , employee ID and email after uploaded)</span></li></ul></li><li><p><span>For multiple signee and approver, user need to split them by  semicolon (; ).</span></p></li><li><p>For multiple serial number (SN), user need to split them by semicolon (;).</p></li><li style="text-align: left;">For multiple PLM link , PLM name and URL link is split by (,) , multiple PLM Name is split by (;)</li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Upload </span></td><td class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">This bulk upload only support uploading not updating and deleting. </span></li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk upload based on the implemented validation at UI.</span></li><li><span style="color: rgb(0,0,0);">System will check if all mandatory fields' values for each line item are provided.</span></li><li><span style="color: rgb(0,0,0);">If there is any error in the file, system will stop the uploading and return error.</span></li><li><span style="color: rgb(0,0,0);">System will validate if EOL date is future date.</span></li><li><span style="color: rgb(0,0,0);">System will validate if validity date is current /future date.</span></li><li><span style="color: rgb(0,0,0);">System will process one record and check for the error once the error is written then continue check for the next record.</span><ul><li><span style="color: rgb(0,0,0);">E.g If the 5th record is error , system should continue checking all the line item then only prompt output file.</span></li><li><span style="color: rgb(0,0,0);">If format error (e.g: missing one line/ columns ) , then system will prompt error instead of downloading the output file.</span></li></ul></li><li><span style="color: rgb(0,0,0);">System will create an output file and auto download from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</span><ul><li><span style="color: rgb(0,0,0);">The file will replicate the same line of source file, plus an additional column with the processed result. </span></li><li><span style="color: rgb(0,0,0);">For the error sample data, the system will write the error.</span></li></ul></li><li><span style="color: rgb(0,0,0);"><span style="color: rgb(0,0,0);"> When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successfully” OR with error then prompt message: “File has some invalid data, please validate before uploading.</span></span><span style="color: rgb(0,0,0);">”.</span></li><li><span style="color: rgb(0,0,0);">Once processed successfully , then system will auto submit the sample application form and generate sample number.</span></li><li><span style="color: rgb(0,0,0);">System will assign the generated sample number to the provided serial number randomly.</span></li></ul></td></tr></tbody></table>


- System will check if all mandatory fields’ values for each line item are provided.


- If there is any error in the file, system will stop the uploading and return error.


- System will validate if EOL date is future date.


- System will validate if validity date is current /future date.


- System will process one record and check for the error once the error is written then continue check for the next record.


- E.g If the 5th record is error , system should continue checking all the line item then only prompt output file.


- If format error (e.g: missing one line/ columns ) , then system will prompt error instead of downloading the output file.


- System will create an output file and auto download from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)


- The file will replicate the same line of source file, plus an additional column with the processed result.


- For the error sample data, the system will write the error.


- When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successfully” OR with error then prompt message: “File has some invalid data, please validate before uploading.

”.

- Once processed successfully , then system will auto submit the sample application form and generate sample number.


- System will assign the generated sample number to the provided serial number randomly.



#### Attachments

[image2021-9-29_15-56-23.png](/.attachments/99223231.png)
[image2021-9-29_16-29-56.png](/.attachments/99223236.png)

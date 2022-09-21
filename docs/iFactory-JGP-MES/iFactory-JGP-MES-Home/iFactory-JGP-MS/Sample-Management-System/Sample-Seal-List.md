# Introduction

Sample Seal List screen is used to view all the samples with status = seal. This to ease user to manage those sealed samples in one screen.


### How to get there?



::: mermaid
graph LR
A("SAMPLE MANAGEMENT")-->0("SAMPLE SEAL LIST")

:::


#### **Permission ( Ifactory.SMS)** 



- Can export sealed sample

- Can enable sealed sample

- Can bulk enable sealed sample
**Screen Activity** 
This screen enables user to perform the following activity:

- Enable the sealed samples

- Edit information before enabling

- Bulk upload by the template

- Export the sealed samples


#### **Precondition** 


Sample needs to complete either one of the reviews with process B = SEAL.



#### **Screen Dependency** 


The following screen(s) has dependency with this configuration.

- Sample List View


#### **Screen Specification** 


In this screen , user is only able to view the sample with status = SEAL .
.User is able to view all the sample based on the assigned projects regardless of logged-on customer/division in Sample Seal List.
They can enable samples to become unseal through UI or template. User is able to export the sample for further management.

- User needs to filter by task status and part number ( blank/same ) before continue the bulk enabling.

- Once click on the Enable button,

- User is allowed  to update the fields below.
<table class="relative-table wrapped confluenceTable" style="width: 1133.4px;"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><strong>Fields</strong></td><td class="highlight confluenceTd" style="text-align: left;"><strong>Description</strong></td></tr><tr><td style="text-align: left;" class="confluenceTd">Project </td><td style="text-align: left;" class="confluenceTd"><p>The project that sample will associate to.</p><ul style="text-align: left;"><li><span>The value for selection is displayed based on the logged-on customer/division.</span></li><li>Data from project phase maintenance</li><li>User is compulsory to change project if the sample sealed because of EOL review.</li><li>if user selected the same project if task status = Completed EOL review, then system will prompt an error message to stop enabling.</li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd">Phase</td><td style="text-align: left;" class="confluenceTd"><p>The phase that project currently at.</p><ul style="text-align: left;"><li><span>Auto populated based on the selected project.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Applicative Phase</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The applicative phase that determine if the sample not required to perform expired and Q&E review.</p><ul style="text-align: left;"><li><span>If this field is checked, then this sample form will be excluded from phase change review and expired review.</span></li><li><span>The validity date will be disabled if this check box is checked.</span></li><li>This field will display as GENERAL if the checkbox is checked else display as blank in the list view.</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">EOL date </td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The EOL date that project will be end of life and it is EOL review due date.</p><ul style="text-align: left;"><li><span>Auto populated based on the selected project.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Product Group</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The product group that associate to the project.</p><ul style="text-align: left;"><li><span>Auto populated based on the selected project.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Process</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The process that sample will associate to.</p><ul style="text-align: left;"><li><span>Show only active process for selection.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Sample Type</td><td style="text-align: left;" colspan="1" class="confluenceTd">The sample type that sample belongs to.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Description</td><td style="text-align: left;" colspan="1" class="confluenceTd">The description that determine which defect that sample has.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">PLM Link</td><td style="text-align: left;" colspan="1" class="confluenceTd">The PLM link that can access to Sample's documents.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Revision</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Revision that sample belongs to.</p><ul style="text-align: left;"><li><span>Only support Alphabet (A-Z)</span></li><li><span>Maximum 2 alphabets</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Model</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Model that sample belongs to.</p><ul style="text-align: left;"><li><span>The selection is based on the selected product group.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Part Number</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Part Number that sample belongs to.</p><ul style="text-align: left;"><li>Part number is disabled for editing.</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Serial Number</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Serial Number of the sample that sample number will associate to.</p><ul><li>Serial number is disabled for editing.</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Sample Location</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Sample Location that defect located at Sample.</p><ul style="text-align: left;"><li><span>The selection is based on the selected part number.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Creation Date</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Creation date that sample accepted from external party. </p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Validity Date</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Validity date that sample will be expired and it is expired review due date.</p><ul><li>User is compulsory to change validity if the sample sealed because of Expired review.</li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Group Code</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Group Code that sample belongs to. </p><ul style="text-align: left;"><li><span>Group Code format = Plant code + Project + sample type + sequence number</span></li><li><span>The list will list based on the selected project, sample type ,logged -on site and description.</span></li><li><span>New group code will be created with sequence number 000001 for new sample application form. </span></li><li><span>If there is group code selected then sequence number will be remaining the same.</span></li><li><span>if there is no group code selected , then new group code will be created with sequence number increased count 1.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Signee</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Signee who signed the sample application.</p><ul style="text-align: left;"><li><span>When "manual input" turn off, the list of available users based on the logged-on data partition .</span></li><li><span>When "manual input" turn on, supoort  for Chinese/English ,transverse line, underline,sapce .</span></li><li><span>Maximum 10 usernames is allowed.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Approver</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>The Approver who approve the sample application</p><ul style="text-align: left;"><li><span>The list of available users based on the logged-on data partition</span></li><li><span>Maximum 10 usernames is allowed.</span></li></ul></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Comment</td><td style="text-align: left;" colspan="1" class="confluenceTd">Comment that provided by task owner/department owner during their review.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Remark </td><td style="text-align: left;" colspan="1" class="confluenceTd">Remark of the sample number that provided by user.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Specification</td><td style="text-align: left;" colspan="1" class="confluenceTd">Specification of sample number.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Storage Condition</td><td style="text-align: left;" colspan="1" class="confluenceTd">Storage condition of sample number.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Transfer to</td><td style="text-align: left;" colspan="1" class="confluenceTd">Where this sample number transfer to.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Transferred from</td><td style="text-align: left;" colspan="1" class="confluenceTd">Where this sample number transferred from</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Transferred date</td><td style="text-align: left;" colspan="1" class="confluenceTd">When this sample number transferred out.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Received date </td><td style="text-align: left;" colspan="1" class="confluenceTd">When this sample number received from other site.</td></tr></tbody></table>


- **System will prompt a confirmation window to allow user confirm before enabling.**


- Once confirmed , then system needs to update task status as " Pending Distribution" and sample status as " Approved".

- User still able to view historical data.


#### Export and Enable via Template 


Bulk export and enable is allowed user to bulk export and enable sample by using excel. This function is controlled by permission and if no permission granted for this function then this function will not be appeared on screen. If the permission granted then user will see the Bulk export and enable function when first load the Sample Seal List screen. 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Item </p></th><th style="text-align: left;" class="confluenceTh"><p>Description </p></th></tr></thead><tbody><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Export </td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li>User is allowed to select sample number then export the sample information in excel.<ul><li>Multiple Signee and Approver will be exported in email and split by (;).</li><li><span>PLM name and PLN link is split by (,) , multiple PLM Links is split by (;) when export out.</span></li><li><span>Multiple comments should split by (;) when export out.</span></li></ul></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">Allow user to select file with .xlsx format</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Upload Template</span></td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">Pre-defined template must be used for enabling samples. </span></li><li><span style="color: rgb(0,0,0);">Field that available in the template as below </span><ul><li><span style="color: rgb(0,0,0);">Project ( Mandatory - String)</span></li><li><span style="color: rgb(0,0,0);">Phase ( Mandatory- String)</span></li><li><span style="color: rgb(0,0,0);">Applicative Phase ( Optional - String)</span></li><li><span style="color: rgb(0,0,0);">EOL Date ( Mandatory - Date)</span></li><li><span style="color: rgb(0,0,0);">Product group( Mandatory - String)</span></li><li><span style="color: rgb(0,0,0);">Process ( Mandatory - String)</span></li><li><span style="color: rgb(0,0,0);">Sample Type (Mandatory - String)</span></li><li><span style="color: rgb(0,0,0);">Description (Mandatory -String)</span></li><li><span style="color: rgb(0,0,0);">PLM Link ( optional -String) </span></li><li><span style="color: rgb(0,0,0);">Revision (Mandatory -String)</span></li><li><span style="color: rgb(0,0,0);">Model (Mandatory - String)</span></li><li><span style="color: rgb(0,0,0);">Sample Location ( Optional -String)</span></li><li><span style="color: rgb(0,0,0);">Creation Date (Mandatory -Date)</span></li><li><span style="color: rgb(0,0,0);">Validity Date  (Mandatory -Date)</span></li><li><span style="color: rgb(0,0,0);">Group Code ( Optional -String)</span></li><li><span style="color: rgb(0,0,0);">Sample Number ( Mandatory - String)</span></li><li><span style="color: rgb(0,0,0);">Signee (Mandatory -Email or username)</span></li><li><span style="color: rgb(0,0,0);">Approver (Mandatory -Email)  </span></li><li><span style="color: rgb(0,0,0);">Transfer To ( Optional - String)</span></li><li><span style="color: rgb(0,0,0);">Transferred Date( Optional - Date)</span></li><li><span style="color: rgb(0,0,0);">Transfer From ( Optional - String)</span></li><li><span style="color: rgb(0,0,0);">Receiving Date ( Optional -Date)</span></li><li><span style="color: rgb(0,0,0);">Remark ( Optional - String; Mandatory if project changed)</span></li><li><span style="color: rgb(0,0,0);">Storage condition ( Optional - String)</span></li><li><span style="color: rgb(0,0,0);">Specification ( Optional - String)</span></li></ul></li><li><p><span style="color: rgb(0,0,0);">For multiple signee and approver, user need to split them by  semicolon (; ).</span></p></li><li><span style="color: rgb(0,0,0);">For multiple PLM link , PLM name and URL link is split by (,) , multiple PLM Links is split by (;)</span></li><li><span style="color: rgb(0,0,0);">When upload internal staff by email, system will display username , employee ID and email for Signee ;When upload external personnel by username, system will only display username for Signee.</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Update</span></td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">This bulk enabling only support updating not supporting adding or deleting.</span></li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk update based on the implemented validation at UI.</span></li><li><span style="color: rgb(0,0,0);">System will check if all mandatory fields' values for each line item are provided.</span></li><li><span style="color: rgb(0,0,0);">If there is any error in the file, system will continue upload the pass data but stop uploading the failed data.</span></li><li><span style="color: rgb(0,0,0);">System will create an output file and auto download from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</span><ul><li><span style="color: rgb(0,0,0);">The file will replicate the same line of source file, plus an additional column with the processed result. </span></li><li><span style="color: rgb(0,0,0);">For the error sample data, the system will write the error.</span></li></ul></li><li><span style="color: rgb(0,0,0);"> When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “Upload failed, please check output file”.</span></li><li><span>If the file processed successfully , then the sample number's task status will be updated as "Pending for distribution" and sample status " Approved".</span></li></ul></td></tr></tbody></table>


- System will check if all mandatory fields’ values for each line item are provided.


- If there is any error in the file, system will continue upload the pass data but stop uploading the failed data.


- System will create an output file and auto download from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)


- The file will replicate the same line of source file, plus an additional column with the processed result.


- For the error sample data, the system will write the error.


- When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “Upload failed, please check output file”.


- If the file processed successfully , then the sample number's task status will be updated as "Pending for distribution" and sample status " Approved".

# Introduction

This Pending Task screen is used to list all the sample with pending task status . The following task status will be listed in this screen , allow user to have a glance on which task need to be executed easily.

- Pending EOL Review

- Pending Expired Review

- Pending Routine Review

- Pending Phase Change Review

- Pending Q &E Review


### How to get there?




::: mermaid
graph LR
A("MY TASK")-->0("PENDING TASK")

:::


#### **Permission ( Ifactory.SMS)** 



- Pending Task


- Can modify Pending Task


- Can Review Pending Task


- Can export Pending Task


- Can Bulk Upload Pending Task

**Screen Activity** 
This screen enables user to perform the following activity:

- Filter and select the records

- Review the records

- Localization

**Screen Dependency** 
The following screen(s) has dependency with this screen

- Sample List View

- Sample Seal List

- Sample Scrap List

- My Task - Completed ,Overdue


#### **Screen Specification** 



- User is allowed to view all the assigned tasks when landing on this screens regardless of customer/division even user has logged-on with the specific customer/division.

- Once user clicked on the sample number from different data partition , user still able to edit / update the sample.

- Sample in the list view is segregated by task status and user can filter the sample by task status.

- Sample Number is clickable to view all the sample information in Sample List View

- All the sample number that assigned to the logged-on user with task status below with sample status = "IN-USE"、“TBR” and "SUSPECTED" will be listed in here


- Pending EOL Review

- Pending Expired Review

- Pending Routine Review

- Pending Phase Change Review

- Pending Q&E Review


#### Export and Update via Template 


Bulk export and update is allowed user to bulk export and update sample information by using excel. This function is controlled by permission and if no permission granted for this function then this function will not be appeared on screen. If the permission granted then user will see the Bulk export and update function when first load the Pending Task screen. The information in the bulk update file will be validating based on logged in data partition. 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Item </p></th><th style="text-align: left;" class="confluenceTh"><p>Description </p></th></tr></thead><tbody><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Export </td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li>User is allowed to select sample number then export the sample information in excel.<br /><ul><li><span>PLM name and PLN link is split by (,) , multiple PLM Name is split by (;) when export out.</span></li><li><span>EOL Confirmation、Still require this sample ?、Process B、Replaced by Sample Number、Comment are empty when export out.</span></li></ul></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">Allow user to select file with .xlsx format</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Upload Template</span></td><td style="text-align: left;" class="confluenceTd"><ul><li>Pre-defined template must be used for upload the configuration. </li><li>Field that available in the template as below <ul><li>Sample Number ( Mandatory - String)</li><li>Project ( Mandatory- String)</li><li>Product Group( Mandatory- String)</li><li>Phase ( Mandatory - Date)</li><li>EOL Date( Mandatory - String)<ul><li>Editable if EOL Confirmation is NO and task status = Pending EOL Review.</li></ul></li><li>Process/version ( Mandatory - String)</li><li>Sample Type (Mandatory - String)</li><li>Description (Mandatory -String)</li><li>Model ( Mandatory- String) </li><li>Sample Location(Mandatory -String)</li><li>Validity date (Mandatory - String)<ul><li>Not required if Applicative phase = General</li><li>Editable if task status = Pending for expired review and still require this sample = YES.</li><li>Only can accept existing validity date or forward date.</li></ul></li><li>PLM Link( Optional -String)<ul><li>PLM name and PLM link is split by (,) , multiple PLM links is split by (;)</li></ul></li><li>Task Status (Mandatory -Date)<ul><li>Editable if task status = Pending Routine Review and Q&E Review else non-editable and <span>value is InUse and NG</span></li></ul></li><li>Sample Status(Mandatory -Date)<ul><li>Editable if task status = Pending Routine Review and Q&E Review else non-editable.</li></ul></li><li>Comment <ul><li>Optional if task status = Pending Expired review or Pending Routine Review</li><li>Mandatory if EOL Confirmation = NO and task status = Pending for EOL review.</li><li>Mandatory if task status = Pending Phase change review or Pending Q&E review.</li></ul></li><li>EOL Confirmation <br /><ul><li>Mandatory If task status = Pending EOL Review</li><li>Value: YES OR NO</li><li>This field should be blank if  task status NOT belong to Pending EOL Review.</li></ul></li><li>Still Require this sample? <ul><li>Mandatory if task status = <span style="color: rgb(0,0,0);">Pending Routine Review</span></li><li><span>Mandatory if task status =Pending Routine reviewand Sample status =NG.</span></li><li>Not required for task status = Pending EOL review , pending Q&E review,<span>Pending Phase change review <span style="color: rgb(0,0,0);">or Pending Expired Review </span></span></li><li>Value: YES or NO</li></ul></li><li><span>Is there a need to continue using this defect as reference</span><ul><li>Mandatory if task status = <span style="color: rgb(0,0,0);">Pending Expired Review</span></li><li>Not required for task status = Pending EOL review , pending Q&E review,<span>Pending Phase change review <span style="color: rgb(0,0,0);">or Pending Routine Review</span></span></li><li>Value: YES or NO</li></ul></li><li><span>Whether to extent Validity Date</span><ul><li>Mandatory if task status = <span style="color: rgb(0,0,0);">Pending Expired Review and "<span>Is there a need to continue using this defect as reference"=YES</span></span></li><li>Not required for task status = Pending EOL review , pending Q&E review,<span>Pending Phase change review <span style="color: rgb(0,0,0);">or Pending Routine Review</span></span></li><li>Value: YES or NO</li></ul></li><li><span><span style="color: rgb(0,0,0);">Is this sample applicable for next phase?</span></span><ul><li><span>Mandatory if task status = Pending Phase change review </span></li><li><span><span style="color: rgb(0,0,0);">Value:Yes or NO</span></span></li><li><span>Not required for task status = Pending EOL review  , Pending Q&E review , PendingExpired Review  or Pending <span style="color: rgb(0,0,0);">Routine Review</span> </span></li></ul></li><li>Sample Review <ul><li>Mandatory if task status = Pending Q& E review.</li><li>Value: OK or NG</li><li>Not required for task status = Pending EOL review or Expired review or Routine review or phase change review.</li></ul></li><li>Process B( Optional -String)<ul><li>Value: Scrap or SEAL</li><li>Mandatory if task status = <span style="color: rgb(0,0,0);">Pending Expired Review and "<span>Is there a need to continue using this defect as reference"=NO or "Is there a need to continue using this defect as reference"=YES, Whether to extent Validity Date=NO</span></span></li><li>Mandatory if Sample Status = “NG” and task status = Pending routine review.</li><li>Mandatory if EOL Confirmation =YES and Task status = Pending for EOL review.</li><li>Mandatory if “<span><span style="color: rgb(0,0,0);">Is this sample applicable for next phase</span></span> = NO “and Task status = Pending for Phase change review.</li><li>Mandatory if Sample Review = NG and Task status = Pending for Q&E review.</li></ul></li><li>Replaced by Sample Number <ul><li>String</li><li>Mandatory if “Still require this sample = YES” and NO validity date changed and Task status = Pending for expired review.</li><li>Mandatory if “Still require this sample = YES” and Sample Status = NG and Task status = Pending for Routine review.</li><li>Not required if task status = Pending EOL , Phase change or Q&E review</li><li>Replaced Sample status should be Approved and InUse</li></ul></li><li>Execution date<ul><li>Mandatory if<span> task status = Pending Phase change review，Pending EOL review  , Pending Q&E review , PendingExpired Review  or Pending <span style="color: rgb(0,0,0);">Routine Review</span> </span></li><li><span>Allow user <span style="color: rgb(0,0,0);">to select current date and backward date ( 30 days range). </span></span></li></ul></li></ul></li><li>System will validate each line item when processing bulk upload based on the implemented validation at UI.</li><li>System will check if all mandatory fields' values for each line item are provided.</li><li>System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.xlxs, the output file will be X.out.xlxs)<ul><li>The file will replicate the same line of source file, plus an additional column with the processing result.</li><li>For each line item, the system will write if correctly loaded or in case of issue, writing the error.</li></ul></li><li>If there is any error in the file, system will upload the pass data and return error.</li><li>When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.</li><li>At the end of process, the PASS data will processed in the system.</li><li>System should update the sample status , task status and last executed date based on what have implemented front end accordingly.</li><li>Allow user to upload up to 1000 rows. If the data is more 1000 rows then user needs to split 2 files before upload.</li></ul></td></tr></tbody></table>




- System will check if all mandatory fields’ values for each line item are provided.


- System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.xlxs, the output file will be X.out.xlxs)

- The file will replicate the same line of source file, plus an additional column with the processing result.

- For each line item, the system will write if correctly loaded or in case of issue, writing the error.

- If there is any error in the file, system will upload the pass data and return error.

- When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- At the end of process, the PASS data will processed in the system.

- System should update the sample status , task status and last executed date based on what have implemented front end accordingly.

- Allow user to upload up to 1000 rows. If the data is more 1000 rows then user needs to split 2 files before upload.

- If user upload much task type at the same time，system will according below rules
![image2022-3-1_16-35-52.png](/.attachments/108430192.png)


![image2022-3-1_16-36-21.png](/.attachments/108430193.png)




#### Attachments

[image2022-3-1_16-35-52.png](/.attachments/108430192.png)
[image2022-3-1_16-36-21.png](/.attachments/108430193.png)

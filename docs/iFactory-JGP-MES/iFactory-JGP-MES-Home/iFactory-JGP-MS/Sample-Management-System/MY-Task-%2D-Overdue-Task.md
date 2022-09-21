# Introduction

This Overdue Task screen is used to list all the sample with task status . The following task status will be listed in this screen , allow user to have a glance on which task has been overdue easily.

- EOL Review Overdue

- Expired Review Overdue

- Routine Review Overdue

- Phase Change Review Overdue

- Q &E Review Overdue


### How to get there?




::: mermaid
graph LR
A("MY TASK")-->0("OVERDUE TASK")

:::


#### **Permission ( Ifactory.SMS)** 



- Overdue Task


- Can modify Overdue Task


- Can Review Overdue Task


- Can export Overdue Task


- Can Bulk Upload  Overdue Task

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

- My Task - Pending ,Completed


#### **Screen Specification** 



- User is allowed to view all the assigned tasks when landing on this screens regardless of customer/division even user has logged-on with the specific customer/division.

- Once user clicked on the sample number from different data partition , user still able to edit / update the sample.

- Sample in the list view is segregated by task status and user can filter the sample by task status.

- Sample Number is clickable to view all the sample information in Sample List View

- All the sample number that assigned to the logged-on user with task status below with sample status = "EOL", "EXPIRED" and "SUSPECTED" will be listed in here


- EOL Review Overdue

- Expired Review Overdue

- Routine Review Overdue

- Phase Change Review Overdue

- Q &E Review Overdue


#### Export and Update via Template 


Bulk export and update is allowed user to bulk export and update sample information by using excel. This function is controlled by permission and if no permission granted for this function then this function will not be appeared on screen. If the permission granted then user will see the Bulk export and update function when first load the Overdue Task screen. The information in the bulk update file will be validating based on logged in data partition. 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Item </p></th><th style="text-align: left;" class="confluenceTh"><p>Description </p></th></tr></thead><tbody><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Export </td><td style="text-align: left;" colspan="1" class="confluenceTd"><ul><li>User is allowed to select sample number then export the sample information in excel.<br /><ul><li><span>PLM name and PLN link is split by (,) , multiple PLM Name is split by (;) when export out.</span></li><li><span>EOL Confirmation、Still require this sample ?、Process B、Replaced by Sample Number、Comment are empty when export out.</span></li></ul></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: rgb(23,43,77);">Allow user to select file with .xlsx format</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><span style="color: rgb(0,0,0);">Upload Template</span></td><td style="text-align: left;" class="confluenceTd"><ul><li>Pre-defined template must be used for upload the configuration. </li><li>Field that available in the template as below <ul><li>Sample Number ( Mandatory - String)</li><li>Project ( Mandatory- String)</li><li>Product Group( Mandatory- String)</li><li>Phase ( Mandatory - Date)</li><li>EOL Date( Mandatory - String)<ul><li>Editable if EOL Confirmation is NO and task status =EOL</li></ul></li><li>Process/version ( Mandatory - String)</li><li>Sample Type (Mandatory - String)</li><li>Description (Mandatory -String)</li><li>Model ( Mandatory- String) </li><li>Sample Location(Mandatory -String)</li><li>Validity date (Mandatory - String)<ul><li>Not required if Applicative phase = General</li><li>Editable if task status = Pending for expired review and still require this sample = YES.</li><li>Only can accept existing validity date or forward date.</li></ul></li><li>PLM Link( Optional -String)<ul><li>PLM name and PLM link is split by (,) , multiple PLM links is split by (;)</li></ul></li><li>Task Status (Mandatory -Date)<ul><li><span>Non-editable</span></li></ul></li><li>Sample Status(Mandatory -Date)<ul><li><span>Editable if task status = Routine Review Overdue.</span></li></ul></li><li>Comment <ul><li><span>Optional if task status = Expired review Overdue or Routine Review Overdue</span></li><li><span>Mandatory if EOL Confirmation = NO and task status = EOL review Overdue.</span></li><li><span>Mandatory if task status = Phase change review Overdue or Q&E review Overdue.</span></li><li><span>Mandatory If task status = EOL Review Overdue</span></li></ul></li><li><span>EOL confirmation</span><ul><li><span>Value: YES OR NO</span></li><li><span>This field should be blank if  task status Not Belong to EOL Review Overdue.</span></li></ul></li><li>Still Require this sample? <ul><li><span>Mandatory if task status = <span style="color: rgb(0,0,0);">Routine Review</span> Overdue </span></li><li><span>Mandatory if task status = Routine review Overdue and Sample status =NG.</span></li><li><span>Not required for task status = EOL review Overdue , Q&E review Overdue,Phase change review overdue or Expired review overdue</span></li><li><span>Value: YES or NO</span></li></ul></li><li><span>Is there a need to continue using this defect as reference</span><ul><li>Mandatory if task status =<span> </span><span style="color: rgb(0,0,0);"> Expired Review Overdue</span></li><li>Not required for task status =<span>EOL review Overdue , Q&E review Overdue,Phase change review overdue or Routine Review overdue</span></li><li>Value: YES or NO</li></ul></li><li><span>Whether to extent Validity Date</span><ul><li>Mandatory if task status =<span style="color: rgb(0,0,0);"> Expired Review Overdue and "<span>Is there a need to continue using this defect as reference"=YES</span></span></li><li>Not required for task status =<span>EOL review Overdue , Q&E review Overdue,Phase change review overdue or Routine Review overdue</span></li><li>Value: YES or NO</li></ul></li><li><span><span style="color: rgb(0,0,0);">Is this sample applicable for next phase?</span></span><ul><li><span>Mandatory if task status = Phase change review overdue</span></li><li><span><span style="color: rgb(0,0,0);">Value:Yes or NO</span></span></li><li><span>Not required for task status = EOL review Overdue , Q&E review Overdue, Expired Review Overdue or <span style="color: rgb(0,0,0);">Routine Review</span> Overdue </span></li></ul></li><li>Sample Review <ul><li><span>Mandatory if task status = Q& E review Overdue.</span></li><li><span>Value: OK or NG</span></li><li><span>Not required for task status = EOL review Overdue or Expired review Overdue or Routine review<span> </span><span> </span>Overdue or phase change review Overdue.</span></li></ul></li><li>Process B( Optional -String)<ul><li><span>Value: Scrap or SEAL</span></li><li>Mandatory if task status = <span style="color: rgb(0,0,0);">Expired Review Overdue and "<span>Is there a need to continue using this defect as reference"=NO or "Is there a need to continue using this defect as reference"=YES, Whether to extent Validity Date=NO</span></span></li><li><span>Mandatory if<span> </span><span style="color: black;">Sample Status = “NG”</span><span> </span>and task status = Routine review<span> </span></span>Overdue.</li><li><span>Mandatory if<span> </span><span style="color: black;">EOL Confirmation =YES</span><span> </span>and Task status = EOL review<span> </span></span>Overdue.</li><li><span>Mandatory if<span> </span><span style="color: black;">“<span style="color: rgb(0,0,0);">Is this sample applicable for next phase</span> = NO</span><span> </span>“and Task status = Phase change review<span> </span></span>Overdue.</li><li><span>Mandatory if<span> </span><span style="color: black;">Sample Review = NG</span><span> </span>and Task status = Q&E review<span> </span></span>Overdue.</li></ul></li><li>Replaced by Sample Number <ul><li><span style="color: black;">Mandatory if “Still require this sample = YES” and NO validity date changed and Task status = Expired review<span> </span></span><span>Overdue.</span></li><li><span>Mandatory if<span> </span><span style="color: black;">“Still require this sample = YES” and Sample Status = NG</span><span> </span>and Task status = Routine review<span> </span></span>Overdue<span style="color: black;">.</span></li><li><span>Not required if task status = EOL , Phase change or Q&E review Overdue.</span></li></ul></li><li><span>Execution date</span></li><li>Mandatory if task status = <span>Phase change review overdue，</span><span>EOL review Overdue , Q&E review Overdue, Expired Review Overdue or <span style="color: rgb(0,0,0);">Routine Review</span> Overdue </span></li><li><span><span style="color: rgb(23,43,77);">Allow user </span><span style="color: rgb(0,0,0);">to select current date and backward date ( 30 days range).</span></span></li></ul></li><li>System will validate each line item when processing bulk upload based on the implemented validation at UI.</li><li>System will check if all mandatory fields' values for each line item are provided.</li><li>System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.xlxs, the output file will be X.out.xlxs)<ul><li>The file will replicate the same line of source file, plus an additional column with the processing result.</li><li>For each line item, the system will write if correctly loaded or in case of issue, writing the error.</li></ul></li><li>If there is any error in the file, system will upload the pass data and return error.</li><li>When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.</li><li>At the end of process, the PASS data will processed in the system.</li><li>System should update the sample status , task status and last executed date based on what have implemented front end accordingly.</li><li>Allow user to upload up to 1000 rows. If the data is more 1000 rows then user needs to split 2 files before upload.</li></ul></td></tr></tbody></table>



- System will check if all mandatory fields’ values for each line item are provided.


- System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.xlxs, the output file will be X.out.xlxs)

- The file will replicate the same line of source file, plus an additional column with the processing result.

- For each line item, the system will write if correctly loaded or in case of issue, writing the error.

- If there is any error in the file, system will upload the pass data and return error.

- When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- At the end of process, the PASS data will processed in the system.

- System should update the sample status , task status and last executed date based on what have implemented front end accordingly.

- Allow user to upload up to 1000 rows. If the data is more 1000 rows then user needs to split 2 files before upload.


#### Attachments

[image2022-3-1_16-35-52.png](/.attachments/110920182.png)
[image2022-3-1_16-36-21.png](/.attachments/110920183.png)

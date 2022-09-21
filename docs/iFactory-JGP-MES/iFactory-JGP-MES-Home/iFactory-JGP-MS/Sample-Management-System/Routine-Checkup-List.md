# Introduction

Routine Checkup List is a screen to list all the sample that accepted by department owner . Department owner shall manage the sample in this list to check the quantity of sample in the storage is tally with what they have accepted based on the defined routine checkup frequency. 


### How to get there?




::: mermaid
graph LR
A("MY TASK")-->0("ROUTINE CHECKUP LIST")

:::


#### **Permission ( Ifactory.SMS)**

1.  Routine Checkup List
2.  Can modify Sample Number
3.  Can review Sample Number
4.  Can bulk upload Sample Number

**Screen Activity**

This screen enables user to perform the following activity:

*   Edit , Review , Bulk Review, Export, Bulk upload the records 
*   Localization

#### **Precondition**

Department Owner need to accept the sample in Sample Reception before can use this routine checkup list  
 

#### **Screen Dependency**

The following screen(s) has dependency with this screen.

*   Sample List View
*   Sample Seal List
*   Sample Lost List

#### **Screen Specification**

1.  User is allow to view all the assigned tasks when landing on this screens regardless of customer/division even user has logged-on with the specific customer/division.
2.  Once user clicked on the sample number from different data partition , user still able to edit / update the sample.
3.  Sample Number is clickable to view all the sample information in Sample List View
4.  All the sample number that assigned to the logged-on user with task status below with sample status = "IN-USE" 、 "SEAL"  and “SUSPECTED” will be listed in Routine Checkup List.
    
    | Task status  | Description  |
    | --- | --- |
    | Task status  | Description  |
    | --- | --- |
    | Receipted  | *   Once the sample is accepted by department owner and yet to kick start routine checkup review <br />*   Receipted status will only remove if pending routine checkup task status is kicked in NOT other task status.<br />*   User is not allowed to edit/review if the Task status = Receipted. |
    | Pending Routine Checkup  | *   If the notification is triggered to department owner based on the configured notification and routine checkup frequency ( project + product group + sample type + task type).<br />*   For routine checkup frequency <=3 based on project + product group + sample type + task type |
    | Completed Routine Checkup | *   If the sample is reviewed  |
    | Routine Checkup Overdue | *   if the sample didn't complete the review by the due date. |
    
5.  Sample Number in the list view is segregated by task status and user is able to filter the task status in the list.
6.  User is allowed to _edit __one or bulk edit process step and manufacturing area of the selected sample numbers _that with the same process_. _. Upon saving the latest process step and manufacturing area , it will auto update the building , floor and production area
7.  User is allowed to export and bulk upload all task status sample. If user export sample, The sample status , Last executed date and comment will be blank; If user bulk upload sample, the rules is as below:
    
    | File | Description |
    | --- | --- |
    | File | Description |
    | --- | --- |
    | Choose File | *   Allow user to select file with .xlsx format |
    | Download Template | *   Pre-defined template that must be used for upload the configuration. <br />*   Field that available in the template as below <br />*   Sample Number ( Mandatory - String)<br />*   Project ( Mandatory - String)<br />*   Phase ( Mandatory- String)  <br />    <br />*   EOL Date ( Mandatory - Datetime)  <br />    <br />*   Product Group ( Mandatory - String)<br />*   Model (Mandatory - String)<br />*   Process/version ( Mandatory - String)<br />*   Sample Type (Mandatory - String)<br />*   Description (Mandatory -String)<br />*   Sample Location ( Optional -String)<br />*   Task status ( Mandatory -String)<br />*   Sample status (Mandatory - String) - Only accept IN-USE, LOST, TBR, SUSPECTED and SEAL.<br />*   Executed Date ( Mandatory- Datetime)<br />*   Comment ( Optional-String ; Mandatory if sample status = LOST or TBR). |
    | Upload  | *   This bulk upload only support  updating not deleting. <br />*   System will validate each line item when processing bulk upload based on the implemented validation at UI.<br />*   System will check if all mandatory fields’ values for each line item are provided.<br />*   System support user update all task status.<br />*   System will check if the current sample status = SEAL , then not allowed to update as IN-USE or SUSPECTED.<br />*   System will check if the current sample status =IN-USE or SUSPECTED , then not allowed to update as SEAL .<br />*   System will check if the Executed Date is not future date.<br />*   System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is X.xlxs, the output file will be X.out.xlxs)<br /><br />*   The file will replicate the same line of source file, plus an additional column with the processing result.<br />*   For each line item, the system need to write if correctly loaded or in case of issue, writing the error.<br /><br />*   If there is any error in the file, system will upload the pass data and return error.<br />*   When the file upload process is completed, the system need to show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.<br />*   At the end of process, the PASS data will processed in the system.<br />*   Allow user to upload up to 1000 rows. If the data is more 1000 rows then user needs to split 2 files before upload. |
    
8.  User is allowed to review _one  or multiple sample number_'s  and provide the following info once click on the Review button.
    
    **Fields**
    
    **Description**
    
    Sample Status
    
    *   User to update the sample status based on the sample condition.
    
    | Sample Status | Description  |
    | --- | --- |
    | IN-USE | *   Sample is in good condition<br />*   System will update the next due date once saved.<br />*   System will update Task status to "Completed routine checkup". |
    | LOST | *   Sample is lost.<br />*   System will highlight the sample number row as red color in Sample List View<br />*   Sample number will be removed from routine checkup list then show in Sample Lost list<br />*   System will update Task status to "Completed routine checkup".<br />*   System will remove all other task status and no email triggering.<br />*   System will trigger notification to department owner, department leader and Q&E task owner based on project + product group +task type + sample type.  |
    | SUSPECTED | *   Sample is overdue routine review , phase change review or Q&E review.<br />*   System will highlight the sample number row as yellow color in Sample List View. |
    | SEAL | *   Sample is seal<br />*   System will highlight the sample number row as grey color in Sample List View. |
    | TBR | *   Sample is found damaged during routine checkup<br />*   Once user reviewed the sample as TBR , then system needs to<br />*   Insert Pending Q&E task and assign to Q&E task owner<br />*   Remove from routine checkup list<br />*   Trigger notification to department owner, department leader and Q &E task owner based on project + product group +task type + sample type. <br />*   Highlight the sample number row as yellow color in Sample List View<br />*   Q &E due date is current date +3 days. |
    
    *   Sample status = InUse , can update as InUse/ Lost/TBR.
    *   Sample status = Suspected, can update as Suspected/Lost/TBR
    *   Sample status = Seal , only can update as Seal/Lost
    
    Executed Date
    
    *   Default to current date
    *   User is allowed to update the executed date manually.
    *   Only allowed user to select date range of 30 days which is before the current date.
    
    Comment
    
    *   Optional
    *   Mandatory if sample status is LOST and TBR
    *   Text Field (256)
    
9.  System will capture the updated sample status, comment, executed by and executed date for historical data.
10.  If user updated the reviewed records , then system will update the historical data with the latest data. 
11.  Once completed routine checkup review ,system will calculate the next due date based on executed date and routine checkup frequency.
12.  There will be no new task insert if user didn't complete the overdue task. 
13.  Routine Checkup Overdue task will not move to historical data.
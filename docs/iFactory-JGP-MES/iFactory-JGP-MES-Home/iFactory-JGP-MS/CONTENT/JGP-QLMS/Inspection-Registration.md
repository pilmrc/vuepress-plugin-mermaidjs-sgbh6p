# Introduction

Inspection Registration is a page where allow user to register the inspection/measurement information and it will auto create work order ID during submission so that laboratory personnel can accept the work order to continue the measuring activities.


### How to get there?



::: mermaid
graph LR
A("QLMS LAB OPERATIONS")
:::
![image2019-9-23_14-22-33.png](/.attachments/57639394.png)



::: mermaid
graph LR
A("INSPECTION REGISTRATION")
:::


#### Permissions



- Inspection Registration


- Can Access Inspection Registration


- Can Modify Inspection Registration



#### Screen Activity


Inspection Registration enables user to perform the following activities

- Save, Copy , edit and delete the application.


- Submit the application only if all the necessary information provided . System also will check against the Dimension Configuration of the application based on the keys ( Factory , Customer, Project , Product Family , Material , Job Type, Route, Route Step and Drawing version/revision if the Dimension details have been configured before submission. Once submitted successfully , then system will generate work order ID.


- Can withdraw the Work order ID with " Pending Confirmation" status.



#### Precondition


Part Cycle Time and Dimension need to be configured before user configures Inspection Registration
**Screen Dependency** 

- [Part Cycle Time Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Part-Cycle-Time-Maintenance.md)


- [Dimension Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Dimension-Maintenance.md)


- [Work order confirmation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Work-Order-Confirmation.md)


- [Sample Return](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Sample-Return.md)


- [Task Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Task-Allocation.md)



#### **Screen Specification** 


If there is deleted in iFactory / Dimension Maintenance, system will handle deleted in iFactory / Dimension Maintenance configuration:

- Application tab configured data(Measurement Building, Production Building, Production Shift, Submitter, Report Requestor)  source is getting from iFactory; Work Order Tab configured data(Production Process, Production Equipment Type and Production Machine ID / Project, Product Family, Material, Job Type, Route/Version, Route Step, SIP Version/Drawing Revision/System Version) source is getting from iFactory and Dimension Maintenance.


- Creation:


- User shouldn’t be able to configure with deleted configuration.


- Registered:


- Application Tab:


- If the configured data has been soft deleted, the column should be blank and allow user to select another value.


- Work Order Tab:


- Before save:

User shouldn’t be able to configure with deleted configuration.

- After saved: If the configured data has been soft deleted, the column should be blank and allow user to select another value.


- Resource record will still be showing even though the

resource has been soft deleted. 
- User(Submitter, Report Requestor, Sample Collector)  will be not able to restore after active.


- Submit:


- When user click on the Submit button, system will check the resource availability and mandatory field should have value.


- If the mandatory field data is soft deleted, then system will prompt an error message and user have to select available value in blank column to save successfully.


- If the resource is soft deleted, then system will prompt an error message and user have to select available Production Machine ID to save successfully.


- Submitted:


- If the configuration has been soft deleted in Dimension Maintenance or iFactory then the configured data will be shown on the field as all the configured data have been associated with Work Order ID.


- If the resource has been soft deleted after submitting the Workorder, the configured data will still show on the field as all the configured data have been associated with the Workorder ID.


- Copy:


- All the information from the original Workorder will be copied, if the configured data has been soft deleted, the column will be blank and allow user to select another value.


- The resource data will be copied no matter the configuration is soft deleted, when click edit will be blank and submit will prompt error message.


If the soft deleted configuration is restored, user is allow to configure with the restored value.  


#### Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 18.5814%;" /><col style="width: 81.4465%;" /></colgroup><tbody><tr><th style="text-align: left;width: 18.5973%;" class="confluenceTh">Field</th><th style="text-align: left;width: 81.3239%;" class="confluenceTh">Description</th></tr><tr><td style="text-align: center;width: 99.9212%;" colspan="2" class="confluenceTd"><strong>Application Tab</strong></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Factory</td><td style="width: 81.3239%;" class="confluenceTd"><p>Factory is to indicate the factory that produced the product for measurement/inspection.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Customer</td><td style="width: 81.3239%;" class="confluenceTd"><p>Customer will be displayed based on user login.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Measurement Building</td><td style="width: 81.3239%;" class="confluenceTd"><p>Measurement Building is to indicate the building that carrying measurement/ inspection activities </p><p>This field will be displayed only the building type =" Measuring" based on the selected factory.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Production Building</td><td style="width: 81.3239%;" class="confluenceTd"><p>Production Building is to indicate the building that produced the products. </p><p>This field will be displayed only the building type ="Production" based on the selected factory.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Process Type</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the product is Lot/Batch Build ( Non Serialized)  or Repetitive/Board Build ( Serialized ).</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Production Date</td><td style="width: 81.3239%;" class="confluenceTd">Allow user to indicate the production date of the product that to be sent for measurement/ inspection.</td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Production Shift</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the production shift of the product that to be sent for measurement/ inspection.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Submission Unit</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the Work Order is submitted by which unit. </p><p>The Submission Unit values displayed based on factory and customer in Submission Unit Maintenance configuration.</p><p>Submission Unit Name that grouped with operation and business unit in Submission Unit Maintenance will be displayed as submission unit values for selection.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Submitter</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate who has submitted the Work Order.</p><ul><li>For NTID user, user is able to search the submitter name</li><li>For Non NTID user, user needs to manually insert in the submitter name </li></ul></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Submitter Employee ID</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate submitter employee ID.</p><ul><li>For NTID user, Submitter Employee ID will be displayed automatically in this field when the name is selected</li><li>For Non NTID user, user is required to key in the employee ID</li></ul></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Submitter Contact</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate submitter contact number.</p><ul><li>For NTID user, Submitter's contact number will be displayed automatically in this field when the name is selected</li><li>For Non NTID user, user is required to key in the contact number.</li></ul></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Report Requester</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the report requester of the work order.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Inspection Plan Time</td><td style="width: 81.3239%;" class="confluenceTd">This field allows user to indicate this application is related which inspection plan time as this is one of the key to stop the email notification triggering.</td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Measuring Requirements</td><td style="width: 81.3239%;" class="confluenceTd">This field allows user to indicate the measuring requirements.</td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Status</td><td style="width: 81.3239%;" class="confluenceTd"><p>This field will only show after application created.</p><ul><li>Registered: Once the Application is created without submission and still allow user to edit the work order.</li><li>Pending confirmation: Once the application is submitted.</li><li>Rejected: The Work Order status changed to Rejected when it is rejected by the lab personnel during work order confirmation.</li><li>Confirmed and pending Cosmetic Inspection : Change to this status if work order required Cosmetic inspection after confirmation.</li><li><span>Confirmed and Pending allocation : </span><span>Change to this status if work order completed Cosmetic Inspection or </span>work order doesn't require Cosmetic inspection after confirmation.</li><li>Done Allocation and pending for measurement : Once work order has done allocated by equipment or personnel.</li><li>Measuring In Progress : Once operators have pick up the task of the work order for measurement/inspection.</li><li>Pending Report and auditing : Once operators have completed all the tasks related to the work order.</li><li>Pending Sample Return : If the work order is required sample return.</li><li><span style="color: rgb(0,51,102);">Exceeded Sample Retention Period : If work order that required sample return has exceeded the sample retention period.</span></li><li>Closed : Once the measurement results have been approved by all the approvers or the sample has been collected from lab.</li><li>Withdrawn : If user withdraw the submitted work order and user is allow to edit the withdrew work order.</li></ul></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Submission Datetime</td><td style="width: 81.3239%;" class="confluenceTd"><p>Submission Datetime is a system-generated datetime when user submitted the work order for next process.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Rejection Datetime</td><td style="width: 81.3239%;" class="confluenceTd"><p>Rejection Datetime is a system-generated datetime when the work order is rejected in the next process.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Rejection Comment</td><td style="width: 81.3239%;" class="confluenceTd"><p>Rejection comment is captured from the next process( Work Order confirmation) if the work order is rejected.</p></td></tr><tr><td style="text-align: center;width: 99.9212%;" colspan="2" class="confluenceTd"><strong>Work Order</strong></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Production Process</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the product is produced from which production process.</p><p>The production process values displayed based on customer partition and Organization Unit's configuration.</p><p>Route step alternative name that grouped with production unit in Organization Unit will be displayed as production process values for selection.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Project</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the product is related to which project and it is displayed based on the configured project in Dimension Maintenance.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Product Family</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the product is from which product family and it is displayed based on the configured product family in Dimension Maintenance.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Material</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate which material to be measured/inspected based on the selected product family. </p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Job Type</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the work order is belong to which Job Type such FAI , GRR, SPC ,CPK  and etc .It is depending on the configured Job Type in Dimension Maintenance.</p><ul><li>If the Job Type was configured as unplanned (ON) in Dimension Maintenance , there'll be a Dimension Selection screen prompted to allow user to select the dimension codes that will be using for measuring/testing. </li><li>If the Job Type wasn't configured as unplanned (OFF) in Dimension Maintenance , then it will be working as usual. System will be using all the configured dimension codes in Dimension Maintenance for measuring/testing. </li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd">Allow user to indicate the product is from which Route and the route version and it is based on the selected material. It is Optional field. <span style="color: rgb(23,43,77);">The route version display to let user to view which route version has been selected.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Allow user to indicate the product is from which Route Step and it is based on Route. If Route is configured, then it becomes a mandatory field.</td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">SIP Version/Drawing  Revision</td><td style="width: 81.3239%;" class="confluenceTd"><div class="content-wrapper"><p>Allow user to indicate the product is related to which SIP version/ drawing revision and the values to be shown based the selected factory, customer, project, product family, material, Job type, route, route step.</p><p>SIP version / Drawing Revision is sorted with the latest system version to the oldest system version for selection.</p><p>When there are same SIP Version/ Drawing Revision configured in Dimension configuration , the SIP Version/ Drawing Revision with the latest system version to be shown in Inspection Registration for selection.</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-external-resource" height="150" src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/1ae38539-a8e4-45d4-b9bb-1c896548da12?fileName=image.png" data-image-src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/1ae38539-a8e4-45d4-b9bb-1c896548da12?fileName=image.png" /></span></p><p>Allow user re-select SIP Version/ Drawing Revision any time before they submission.</p><p>System will prompt user to update SIP version / drawing revision when there is latest system version available for selection.</p></div></td></tr><tr><td colspan="1" class="confluenceTd">Dimension Code Button</td><td colspan="1" class="confluenceTd"><p>This Dimension Code button will be enabled only if the selected Job Type is configured with Unplanned (ON ).</p><p>The dimension code list will be shown based on the selected Dimension Configuration in Inspection Registration ( Factory , Customer, Project , Product Family , Material , Job Type , Route , Route step and SIP Version/ Drawing Revision).</p><p>The following items will be showing in this Dimension Code Selection screen.</p><ul><li>Measurement Equipment Type</li><li>Dimension Code</li><li>SPC</li><li>Dimension Type</li><li>Nominal</li><li>+TOL(max)</li><li>-TOL(min)</li><li>IsCTQ</li><li>IsCTF</li></ul><p>This Dimension Selection screen is allowed user to select the dimension codes that needed for measuring/ testing.</p><p>User is allowed to modify the dimension codes selection before confirmation. Once confirmed , the selected dimension codes will be associated to the generated workorder ID and user can't do any changes from Inspection Registration.</p><p>Note : There'll be pre-selected dimension codes when switching from current SIP Version/Drawing Revision to another SIP Version/Drawing Revision.  This behavior only available if user had saved the workorder tab's configuration. This pre-selection is also depending whether the current selected dimension codes are available in the switched SIP version/Drawing Revision.  </p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Comment</td><td style="width: 81.3239%;" class="confluenceTd">Allow user to write the necessary comment about the workorder.</td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Is Sample Return required?</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate is the sample return required after the measurement/ inspection activity.</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Sample Collector</td><td style="width: 81.3239%;" class="confluenceTd"><p>Required user to provide Sample Collector name if the Sample Return is required.</p><ul><li>For NTID user, user is able to search the sample collector name</li><li>For Non NTID user, user needs to manually insert in the sample collector  name </li></ul></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Sample Collector Employee ID</td><td style="width: 81.3239%;" class="confluenceTd"><p>Required user to provide Sample Collector Employee ID if the Sample Return is required.</p><ul><li>For NTID user, Sample Collector Employee ID will be displayed automatically in this field when the name is selected</li><li>For Non NTID user, user is required to key in the employee ID</li></ul></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Sample Collection Due in Day(s)</td><td style="width: 81.3239%;" class="confluenceTd"><p>Mandatory field if Sample Return is required.</p><ul><li>Default to 90 days </li><li>Only allow to insert less than 90 days for sample return.</li></ul></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd"><span style="color: rgb(45,46,47);">Batch Upload Production Equipment Data</span></td><td style="width: 81.3239%;" class="confluenceTd"><p>A function which allows user to batch upload production equipment data in .csv format.</p><p>Production Equipment data entry template is available on screen for download.</p><p>System will validate the following before upload the file:</p><ul><li><span style="color: rgb(0,51,102);">Check if all mandatory fields' values for each line item are provided</span></li><li><span style="color: rgb(0,51,102);">Check if provided Production Equipment Type is configured in system</span></li><li><span>Check if only one/same production equipment type is provided. </span></li><li><span>Check if only one/same mold ID/ Tooling ID is provided for the same production machine ID.</span></li><li><span>Check if only one /same cavity is provided for the same production machine ID if the Job Type with “GRR” wording. </span></li><li><span>Mold ID/Tooling ID and Cavity number is able to be 0 </span></li><li><span>Mold ID/Tooling ID can be alphanumeric format.</span></li></ul><p>System will create an output file with same file name and adding extension .out before the file extension (if input file is production.csv, the output file will be production.out.csv) for downloading from browse.</p><p><span>a. The file will replicate the same line of source file, plus an additional column with the process result.</span></p><p><span>b. System will write only the line item with error.</span></p><p><span>c. If there is any error in the file, system should upload the pass data and return error.</span></p><p><span>When the file upload process is completed, system will prompt message:” File uploaded successful” if the file is loaded without error OR prompt message: “File uploaded with errors and please check output file” if the file loaded with error.</span><span>At the end of process, the PASS data will be listed at production equipment grid.</span></p><p><span style="color: rgb(32,31,30);"><em><strong>Note:</strong></em> The users,<span> </span></span><span style="color: rgb(32,31,30);">those</span><span style="color: rgb(32,31,30);"><span> </span>not having Microsoft Office 365 or higher version of excel at least to<span> </span></span><span style="color: rgb(32,31,30);">16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.</span></p></td></tr><tr><td style="text-align: center;width: 99.9212%;" colspan="2" class="confluenceTd">Subset</td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Actions</td><td style="width: 81.3239%;" class="confluenceTd">User is able to edit, update or delete</td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Production Equipment</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the production equipment that produced the product.</p><p>The production equipment values display based on the selection of Production Building.</p><ul><li>Only allow user to configure one production equipment type for a workorder regardless of job types.</li><li>System will auto-populates previously selected value. Although user is able to change the value as per preference, but at the time of saving it, system automatically changes the new value to all existing Production Equipment Data record rows after confirmation from user.</li></ul></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">PRD Machine ID</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the production machine ID that produced the product. The PRD machine ID values will be shown based on the selected Production equipment.</p><ul><li>Allow user to configure multiple production machine ID for a workorder regardless of job types.</li><li>System will auto-populates previously selected value for PRD Machine ID. Although user is able to change the value as per preference, but at the time of saving it, system automatically changes the new value to all existing Production Equipment Data record rows after confirmation from user.</li></ul></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Mold ID/Tooling ID</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the Mold ID/ Tooling ID  that produced the product.</p><ul><li>Only allow user to configure one mold ID/tooling ID for the same production machine ID regardless of job types.</li><li>System will auto-populates previously selected value for Mold ID. Although user is able to change the value as per preference, but at the time of saving it, system automatically changes the new value to all existing Production Equipment Data record rows after confirmation from user.</li><li>Mold ID/ Tooling ID is able to accept alphanumeric.</li></ul></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Cavity</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the Cavity that produced the product.</p><p>Cavity can be 0.</p><ul><li>If the Job type type belongs to 'GRR' then only one cavity can be added for the same production machine ID.</li></ul></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Quantity</td><td style="width: 81.3239%;" class="confluenceTd"><p>Allow user to indicate the quantity of product from the mentioned cavity that submitted for measurement/ inspection.</p></td></tr><tr><td colspan="1" class="confluenceTd">Sample Number</td><td colspan="1" class="confluenceTd"><p>Sample Number is auto generated by system and it is based on the quantity that inserted by user for the particular cavity.</p><ul><li>Sample Number is in integer format.</li><li>Sample Number will be generated based on the quantity provided for the specific cavity and it is always start from 1.</li><li>Sample Number will start from 1 for new cavity.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Item Number</td><td colspan="1" class="confluenceTd"><p>Item Number is auto generated by system and it is based on the quantity that inserted by user for the particular cavity.</p><ul><li>Item Number is in integer format.</li><li>Item Number is generated in sequence for each Cavity based on provided quantity and it is unique in a workorder.</li></ul></td></tr><tr><td style="text-align: center;width: 99.9212%;" colspan="2" class="confluenceTd"><strong>Task Details</strong></td></tr><tr><td style="width: 99.9212%;" colspan="2" class="confluenceTd"><strong>Task Allocation by Personnel and Unallocated Tasks (This section shows only the task details which were allocated by Personnel or skipped task allocation)</strong></td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Task Name</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Relative allocated or unallocated task details to be displayed .</p></td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Quantity</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Display total Quantity of each task</p></td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Measuring Equipment Type</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Display the Measuring resource type as per relative task</p></td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Task Status</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Display overall current status of each task</p></td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Start Datetime</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Display the task collection time</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Completed Datetime</td><td style="width: 81.3239%;" class="confluenceTd">Display the task completion time</td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">History</td><td style="width: 81.3239%;" class="confluenceTd">A clickable search icon to view relative history of the task row</td></tr><tr><td style="width: 99.9212%;" colspan="2" class="confluenceTd"><strong>Task Allocation by Equipment (This section shows only the task details which were allocated by Equipment)</strong></td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Task Name</td><td style="width: 81.3239%;text-align: left;" class="confluenceTd">Relative allocated task details to be displayed</td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Quantity</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Display total Quantity of each task</p></td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Measuring Equipment Type</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Display the Measuring resource type as per relative task</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Measuring Equipment Model</td><td style="width: 81.3239%;" class="confluenceTd">Display the Measuring resource as per relative task</td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Task Status</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Display overall current status of each task</p></td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Start Datetime</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Display the task collection time</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Completed Datetime</td><td style="width: 81.3239%;" class="confluenceTd">Display the task completion time</td></tr><tr><td colspan="1" class="confluenceTd">History</td><td colspan="1" class="confluenceTd">A clickable search icon to view relative history of the task row</td></tr><tr><td style="width: 99.9212%;text-align: center;" colspan="2" class="confluenceTd"><strong>Task History </strong>(this window appears when user clicks the view icon against any task details row)</td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Task Name</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Relative task name against selected Work order to be displayed.</p><p>If re-assigned and collected by re-assigned person, then two separate rows to be displayed against two activities on the task.</p></td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Collected Quantity</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Relative collected quantity to be displayed.</p></td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Completed Quantity</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Relative completed quantity in that particular task row activity to be displayed.</p></td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Sub Task Status</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Task status changed in that particular task row activity. This column can be 'Allocated', 'In Progress', 'Paused', 'Completed' based on the activity performed against that row. History shows the each activity in different row for that selected task.</p></td></tr><tr><td colspan="1" class="confluenceTd">Measuring User</td><td colspan="1" class="confluenceTd">Person who is doing the task in that particular task row activity</td></tr><tr><td style="text-align: left;width: 18.5973%;" class="confluenceTd">Start Datetime</td><td style="text-align: left;width: 81.3239%;" class="confluenceTd"><p>Start time of the task (Collected datetime) in that particular task row activity</p></td></tr><tr><td style="width: 18.5973%;" class="confluenceTd">Completed Datetime</td><td style="width: 81.3239%;" class="confluenceTd">Display the completed datetime of the task.</td></tr><tr><td colspan="1" class="confluenceTd">Created Datetime</td><td colspan="1" class="confluenceTd">Display the created datetime of the task.</td></tr></tbody></table>


- **Check if all mandatory fields’ values for each line item are provided**


- Check if provided Production Equipment Type is configured in system


- Check if only one/same production equipment type is provided.

- Check if only one/same mold ID/ Tooling ID is provided for the same production machine ID.

- Check if only one /same cavity is provided for the same production machine ID if the Job Type with “GRR” wording.

- Mold ID/Tooling ID and Cavity number is able to be 0

- Mold ID/Tooling ID can be alphanumeric format.
System will create an output file with same file name and adding extension .out before the file extension (if input file is production.csv, the output file will be production.out.csv) for downloading from browse.
a. The file will replicate the same line of source file, plus an additional column with the process result.
b. System will write only the line item with error.
c. If there is any error in the file, system should upload the pass data and return error.
When the file upload process is completed, system will prompt message:” File uploaded successful” if the file is loaded without error OR prompt message: “File uploaded with errors and please check output file” if the file loaded with error.
At the end of process, the PASS data will be listed at production equipment grid.**Note:** 
The users,those

not having Microsoft Office 365 or higher version of excel at least to16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.
SubsetActionsUser is able to edit, update or deleteProduction EquipmentAllow user to indicate the production equipment that produced the product.
The production equipment values display based on the selection of Production Building.

- Only allow user to configure one production equipment type for a workorder regardless of job types.

- System will auto-populates previously selected value. Although user is able to change the value as per preference, but at the time of saving it, system automatically changes the new value to all existing Production Equipment Data record rows after confirmation from user.
PRD Machine IDAllow user to indicate the production machine ID that produced the product. The PRD machine ID values will be shown based on the selected Production equipment.

- Allow user to configure multiple production machine ID for a workorder regardless of job types.

- System will auto-populates previously selected value for PRD Machine ID. Although user is able to change the value as per preference, but at the time of saving it, system automatically changes the new value to all existing Production Equipment Data record rows after confirmation from user.
Mold ID/Tooling IDAllow user to indicate the Mold ID/ Tooling ID  that produced the product.

- Only allow user to configure one mold ID/tooling ID for the same production machine ID regardless of job types.

- System will auto-populates previously selected value for Mold ID. Although user is able to change the value as per preference, but at the time of saving it, system automatically changes the new value to all existing Production Equipment Data record rows after confirmation from user.

- Mold ID/ Tooling ID is able to accept alphanumeric.
CavityAllow user to indicate the Cavity that produced the product.
Cavity can be 0.

- If the Job type type belongs to 'GRR' then only one cavity can be added for the same production machine ID.
QuantityAllow user to indicate the quantity of product from the mentioned cavity that submitted for measurement/ inspection.
Sample NumberSample Number is auto generated by system and it is based on the quantity that inserted by user for the particular cavity.

- Sample Number is in integer format.

- Sample Number will be generated based on the quantity provided for the specific cavity and it is always start from 1.

- Sample Number will start from 1 for new cavity.
Item NumberItem Number is auto generated by system and it is based on the quantity that inserted by user for the particular cavity.

- Item Number is in integer format.

- Item Number is generated in sequence for each Cavity based on provided quantity and it is unique in a workorder.
**Task Details** **Task Allocation by Personnel and Unallocated Tasks (This section shows only the task details which were allocated by Personnel or skipped task allocation)** Task NameRelative allocated or unallocated task details to be displayed .
QuantityDisplay total Quantity of each task
Measuring Equipment TypeDisplay the Measuring resource type as per relative task
Task StatusDisplay overall current status of each task
Start DatetimeDisplay the task collection time
Completed DatetimeDisplay the task completion timeHistoryA clickable search icon to view relative history of the task row**Task Allocation by Equipment (This section shows only the task details which were allocated by Equipment)** Task NameRelative allocated task details to be displayedQuantityDisplay total Quantity of each task
Measuring Equipment TypeDisplay the Measuring resource type as per relative task
Measuring Equipment ModelDisplay the Measuring resource as per relative taskTask StatusDisplay overall current status of each task
Start DatetimeDisplay the task collection time
Completed DatetimeDisplay the task completion timeHistoryA clickable search icon to view relative history of the task row**Task History**  (this window appears when user clicks the view icon against any task details row)Task NameRelative task name against selected Work order to be displayed.
If re-assigned and collected by re-assigned person, then two separate rows to be displayed against two activities on the task.
Collected QuantityRelative collected quantity to be displayed.
Completed QuantityRelative completed quantity in that particular task row activity to be displayed.
Sub Task StatusTask status changed in that particular task row activity. This column can be 'Allocated', 'In Progress', 'Paused', 'Completed' based on the activity performed against that row. History shows the each activity in different row for that selected task.
Measuring UserPerson who is doing the task in that particular task row activityStart DatetimeStart time of the task (Collected datetime) in that particular task row activity
Completed DatetimeDisplay the completed datetime of the task.Created DatetimeDisplay the created datetime of the task.

#### Attachments

[image2019-9-23_14-22-33.png](/.attachments/57639394.png)

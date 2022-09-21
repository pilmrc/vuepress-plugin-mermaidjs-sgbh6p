# Introduction

Inspection Plan is a configuration operation where user provides a plan to user and notify time to time when the product to be sent for measuring/inspection.


### How to get there?



::: mermaid
graph LR
A("QLMS Lab Operations")-->0("Inspection plan")

:::


#### **Permission ( QLMS)** 



- Inspection Plan


- Can Access Inspection Plan


- Can Modify Inspection Plan



#### **Screen Activity** 


Inspection plan configuration enables user to perform the following activity:

- Create, view, update and delete inspection plan data records against selected Customer during Login (Customer Partitioning in place)

- Add/Edit/Delete Inspection plan details against each parent record



#### **Pre-conditions** 



- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)
needs to be configured and assigned to current user, and user has to login with selected Customer
- Respective Part Cycle Time Maintenance and Dimension maintenance configuration must be in place

- User must have proper activity
[permission](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Permissions.md)on Inspection Plan (Can Access & Can Modify)


#### **Screen Specification**  


T
he home page of Inspection Plan will show Customer, Project , Drawing Revision, Drawing Number, SIP Version, SIP Document Number, Product Family, Material , Production Process and Production Equipment Type, Each grid column has filter option enabled and user can use those to ease their search.
![image2019-9-30_12-51-37.png](/.attachments/57639483.png)


Clicking on
Add icon enables user to add records for overall inspection plan. Whereas, Edit icon opens up the Inspection Plan details on each parent record. User do have delete option enabled for data to any level.If user clicks 'Add' button, system opens up another screen to enter details:
![image2020-3-4_14-21-4.png](/.attachments/66093807.png)


![image2020-3-4_14-21-54.png](/.attachments/66093808.png)


User can add records here one by one manually. Or, for multiple data they can upload .csv file in mentioned format. Defined template can be downloaded from screen itself.
System sends mail to the assigned person sending notifications based on configured frequency and start time
*Note:* 
The mail body will consist of application link for further action. ![image2019-9-30_13-10-17.png](/.attachments/57639489.png)


On not taking action, at last system automatically escalates with a mail to Assignee's supervisor available in System Database.
![image2019-9-30_13-8-39.png](/.attachments/57639488.png)



If there is deleted in iFactory, system will handle deleted in iFactory configuration:

- Inspection Plan’s data(Customer, Project, Product Family, Material, Job Type, Measuring Equipment Type)

source is getting from Dimension Maintenance except Production Process and Production Equipment Type which getting data from iFactory directly.
- Level 1 – Either one of the configured data (Customer, Project, Product Family, Material) has been soft deleted in Dimension Maintenance then the entire level 1 line item will be soft deleted and not showing on the screen.


- Level 1 – Either one of the configured data (Production Process, Production Equipment Type ) has been deleted in ifactory then the entire level 1 line item will be soft deleted and not showing on the screen.


- Level 2 – If user has been deactivated in ifactory security,

entire level 2 line item will be remove (hard deleted) from the list. 
Once the user is activated, 
level 2 line item
wouldn't be restored to the list. 

- Level 2 – if the configured Job Type and Measuring Equipment Type has been soft deleted in Dimension Maintenance then then entire level 2 line item will be soft deleted and not showing on the screen.


- The configured data (Customer, Project, Product Family, Material) has only configured 1 Job Type in Dimension Maintenance,  if the configured Job Type and Measuring Equipment Type has been soft deleted in Dimension Maintenance then then entire lever 1 and level 2 line item will be soft deleted and not showing on the screen.


- Once detected the Dimension configuration or iFactory configuration is restored, then restore the configured data in Inspection Plan based on level.




#### **Email notification Details** 



- **1st notification - Notify the assigned user 30mins earlier than start time by email.**

Subject : [JGP QLMS Notification]【Notice / [Job Type] is about to start / Please Note】Body : 
Hi, 
Please be informed that the [Job Type] measurement/test will start at MM:SS (30 minutes later) according to test plan, 
please make sure you have assigned someone to deliver the samples on time.

Please find the details below :Customer             : [Customer Name]

Product Family     : [ Product Family Name]
Material                : [ Material Name] 
Production Type   : [Production Type]
Project                  : [Project Name]
Drawing Revision : [ Drawing Revision]Please click t
he link below to access QLMS system. 
"QLMS URL"
Thanks.

- **2nd notification -Notify the assigned user at the start time by email.**

Subject :[JGP QLMS Notification]【Reminder / [Job Type] Didn't Start On Time / Please Note】Body : 
Hi, 
Please be informed that the [Job Type] measurement/test didn't start on time at MM:SS according to inspection plan, please note.

Please find the details below :
Customer             : [Customer Name]

Product Family     : [ Product Family Name]
Material                : [ Material Name] 
Production Type   : [Production Type]
Project                  : [Project Name]
Drawing Revision : [ Drawing Revision]Please click the link below to access QLMS system. 
"QLMS URL "
Thanks.

- **3rd notification - Notify the assigned user after 30 mins from the start time by email if user didn’t send unit for inspection.**

Subject :[JGP QLMS Notification]【Reminder / [Job Type] Have been Delayed for 30 minutes / Please Note】Body : Hi,

Please be informed that the [Job Type] measurement/test have been delayed for 30 minutes, please note.


Please find the details below :Customer             : [Customer Name]

Product Family     : [ Product Family Name]
Material                : [ Material Name] 
Production Type   : [Production Type]
Project                  : [Project Name]
Drawing Revision : [ Drawing Revision]Please click the link below to access QLMS system. 
"QLMS URL"
Thanks.

- **If user didn't register the product for inspection after 3 notifications then escalate to assigned user's supervisor by email notification.**

Subject : [JGP QLMS Notification]【Escalation / [Job Type] Have been Delayed for an Hour / Please Note】
Body :
Hi,
This is an escalation notification. Please be informed that the [Job Type] measurement/test have been delayed for 1 hour. 
Prior to this email , there is a notification have been sent 30 minutes before to remind the 
user for measurement/test .


Please find the details below :Customer             : [Customer Name]

Product Family     : [ Product Family Name]
Material                : [ Material Name] 
Production Type   : [Production Type]
Project                  : [Project Name]
Drawing Revision : [ Drawing Revision] Please click the link below to access QLMS system. 
"QLMS URL"
Thanks.

Email notification will be stop triggering if the WorkOrder ID with the following key criteria have been confirmed by lab personnel during WorkOrder Confirmation.

- If work order status changed from Pending Confirmation to Confirmed and pending for allocation / Confirmed and pending cosmetic inspection.

- Customer

- Product family

- material

- job type

- Production Type

- Drawing revision

- Project

- Inspection Plan Time ( This will be based on inspection plan start time and its frequency).


#### **Field Details:** 



<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 10.7371%;" /><col style="width: 89.2907%;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: black;">Customer</span></p></td><td style="text-align: left;" class="confluenceTd">Auto-populates the value based on selected Customer at the time user logs into the iFactory. Although there is search engine enabled but user can select only the Customer as per Customer partitioning</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: black;">Project</span></p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: black;">Display all projects based on customer partition.</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: black;">Drawing Version</span></p></td><td style="text-align: left;" class="confluenceTd">This field is to define Drawing version to be used in Inspection Registration</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: black;">Drawing No</span></p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>This field is to define Drawing No. to be used in Inspection Registration. (String value accepted)</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: black;">SIP Version</span></p></td><td style="text-align: left;" colspan="1" class="confluenceTd">This field is to define SIP version as preferred by user</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: black;">Sip Document No.</span></p></td><td style="text-align: left;" class="confluenceTd">This field is to define SIP Document No. as preferred by user (String value accepted)</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: black;">Product Family</span></p></td><td style="text-align: left;" class="confluenceTd"><ul><li><span style="color: black;">Display product family based on the selected project if project selected.</span></li><li><span style="color: black;">Display product family based on customer partition if project is not selected</span></li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: black;">Material</span></p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: black;">Only display active material based on selected product family.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Production Process</span></p></td><td colspan="1" class="confluenceTd"><p><span style="color: black;letter-spacing: 0.0px;">This field value display from Route Step Alternative name filtered by production unit that associated with Alternative name's scope and selected customer at Level 1.</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Production Equipment Type</span></p></td><td colspan="1" class="confluenceTd"><p><span style="color: black;letter-spacing: 0.0px;">The field populates all the general Equipment Type (Resource type with function = " General") for user selection</span></p></td></tr><tr><td class="highlight-blue confluenceTd" style="text-align: left;" colspan="2" data-highlight-colour="blue"><span style="color: rgb(0,0,0);" title=""><strong>Subset Window</strong></span></td></tr><tr><td colspan="1" class="confluenceTd">Job Type</td><td colspan="1" class="confluenceTd"><p><span>The field shows all the job type based on customer partition for selection</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Measuring Equipment Type</td><td colspan="1" class="confluenceTd"><p><span>This field shows all the measuring resource type for user selection</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Judgment Rule</td><td colspan="1" class="confluenceTd"><p>This field is to define Judgement Rule as preferred by user</p></td></tr><tr><td colspan="1" class="confluenceTd">Frequency</td><td colspan="1" class="confluenceTd"><p>This field is to defines the Inspection plan's frequency in hours. If the sample is not delivered on time for measuring/inspection then assigned user will receives respective mails against declared frequency.</p><p>For instance , the measuring activity is started at 8a.m and the configured frequency is 4 hours then user will receive notification every 4 hours.</p><p>The frequency allow user to configure more than 24 hours. If the frequency more then 750 hours( 31 days), prompt message to confirmed. It not allow to more 4500 hours(6 month).</p></td></tr><tr><td colspan="1" class="confluenceTd">Quantity per cavity</td><td colspan="1" class="confluenceTd">This field is to define quantity per cavity as preferred by user</td></tr><tr><td colspan="1" class="confluenceTd">Remark</td><td colspan="1" class="confluenceTd"><p>User can put the remark here as part of Inspection plan configuration</p></td></tr><tr><td colspan="1" class="confluenceTd">Start Time</td><td colspan="1" class="confluenceTd">This field defines the start time of the planned measuring/inspection activities.</td></tr><tr><td colspan="1" class="confluenceTd">Assigned to</td><td colspan="1" class="confluenceTd"><p><span>The field displays only the user that assigned to the selected customer. This field defines the person who is assigned against current inspection plan.</span></p><p><span>Email notification will be triggering to assigned user.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd"><p>This field defines if the plan is still applicable or not.</p><ul><li>Email notification will be triggering to assigned user based on the start time and frequency if the plan is active.</li><li>Email notification will be stop triggering if the plan is inactive.</li></ul></td></tr><tr><td class="highlight-blue confluenceTd" title="Background colour : Blue" colspan="2" data-highlight-colour="blue"><strong title="">Inspection plan Dimension Details</strong></td></tr><tr><td colspan="1" class="confluenceTd">Dimension Code</td><td colspan="1" class="confluenceTd"><p>This field is to define Dimension Code as preferred by user</p></td></tr><tr><td colspan="1" class="confluenceTd">SPC </td><td colspan="1" class="confluenceTd">This field is to define SPC  as preferred by user although optional to enter.</td></tr><tr><td colspan="1" class="confluenceTd">Is CTF</td><td colspan="1" class="confluenceTd"><p>This field defines if the product is critical to functional (CTF).</p></td></tr><tr><td rowspan="2" class="confluenceTd">Dimension Type</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">This field is to validate the Nominal, +TOL and -TOL based on the dimension type. System will do comparison of the value based on the dimension type.</span></td></tr><tr><td colspan="1" class="confluenceTd"><p style="text-align: left;"><span>No dimension type : there will be </span><span>no validation for Nominal, +TOL, -TOL</span></p><p style="text-align: left;">Tolerance: </p><ul style="text-align: left;"><li>Nominal cannot be blank</li><li>If +TOL is blank, then -TOL need to be blank and vice versa.</li><li>If + TOL has value, then -TOL need to have value and vice versa.</li><li>+TOL must greater than -TOL</li></ul><p style="text-align: left;">GD&T: </p><ul style="text-align: left;"><li>Nominal cannot be blank.</li><li>+TOL cannot be less than 0, -TOL cannot be more than 0 </li><li>If +TOL is blank, then -TOL need to be blank and vice versa.</li><li>If + TOL has value, then -TOL need to have value and vice versa.</li><li>+TOL must greater than -TOL</li></ul><p style="text-align: left;">Max: </p><ul style="text-align: left;"><li><span>If nominal has value, then +TOL need to be blank and vice versa.</span></li><li><span>-TOL need to be blank, the text field is disabled</span></li></ul><p style="text-align: left;">Min: </p><ul style="text-align: left;"><li>If nominal has value, then -TOL need to blank and vice versa.</li><li>+TOL need to be blank, the text field is disabled</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Nominal</td><td colspan="1" class="confluenceTd">This field defines the nominal value of measurement data. Can accept the value: 0 to 99999.99999</td></tr><tr><td colspan="1" class="confluenceTd">+TOL</td><td colspan="1" class="confluenceTd">This field defines the positive tolerance above Nominal value. Can accept the value: 0 to 99999.99999</td></tr><tr><td colspan="1" class="confluenceTd">-TOL</td><td colspan="1" class="confluenceTd">This field defines the negative tolerance below Nominal value. Can accept the value: 0 to 99999.99999</td></tr><tr><td class="confluenceTd">Choose File</td><td class="confluenceTd">System allows user to select .csv file having defined format to upload</td></tr><tr><td colspan="1" class="confluenceTd">Download template</td><td colspan="1" class="confluenceTd"><p>On clicking this field results automatic download of defined template .csv file for Inspection plan details upload. This file contains below columns:</p><ul style="text-align: left;"><li><span style="color: rgb(0,0,0);">Dimension Code</span></li><li><span style="color: rgb(0,0,0);">SPC</span></li><li><span style="color: rgb(0,0,0);">Dimension Type</span></li><li><span style="color: rgb(0,0,0);">Nominal</span></li><li><span style="color: rgb(0,0,0);">+TOL</span></li><li><span style="color: rgb(0,0,0);">-TOL</span></li><li><span style="color: rgb(0,0,0);">IsCTF (Y/N)</span></li></ul><p style="text-align: left;"><span style="color: rgb(0,0,0);">Note: SPC, Dimension Type, Nominal, +TOL and -TOL fields are optional, whereas Dimension code is mandatory entry, as preferred by user.</span></p></td></tr><tr><td class="confluenceTd">Upload</td><td class="confluenceTd"><ul><li>System will check if all mandatory fields' values for each line item should be provided.</li><li>System will check if the Dimension Code. for the particular Job type should not be duplicated.</li><li>The system will create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is plan.csv, the output file will be plan.out.csv)</li><li>The file will replicate the same line of source file, plus an additional column with the operation result.</li><li>For each line item, the system will write if correctly loaded or in case of issue, writing the error.</li><li>If there is any error in the file, system will upload the pass data and return error.</li><li>When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.</li><li>At the end of operation, the PASS data will be listed at the Dimension table</li><li>Allow user to download the Inspection Plan template.</li><li><em><span style="color: rgb(32,31,30);">Note : The users, </span><span style="color: rgb(32,31,30);">those</span><span style="color: rgb(32,31,30);"> not having Microsoft Office 365 or higher version of excel at least to </span><span style="color: rgb(32,31,30);">16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.</span></em></li></ul></td></tr></tbody></table>


- **This field value display from Route Step Alternative name filtered by production unit that associated with Alternative name’s scope and selected customer at Level 1.**

Production Equipment Type
The field populates all the general Equipment Type (Resource type with function = " General") for user selection
**Subset Window** 
Job TypeThe field shows all the job type based on customer partition for selection
Measuring Equipment TypeThis field shows all the measuring resource type for user selection
Judgment RuleThis field is to define Judgement Rule as preferred by user
FrequencyThis field is to defines the Inspection plan's frequency in hours. If the sample is not delivered on time for measuring/inspection then assigned user will receives respective mails against declared frequency.
For instance , the measuring activity is started at 8a.m and the configured frequency is 4 hours then user will receive notification every 4 hours.
The frequency allow user to configure more than 24 hours. If the frequency more then 750 hours( 31 days), prompt message to confirmed. It not allow to more 4500 hours(6 month).
Quantity per cavityThis field is to define quantity per cavity as preferred by userRemarkUser can put the remark here as part of Inspection plan configuration
Start TimeThis field defines the start time of the planned measuring/inspection activities.Assigned toThe field displays only the user that assigned to the selected customer. This field defines the person who is assigned against current inspection plan.
Email notification will be triggering to assigned user.
ActiveThis field defines if the plan is still applicable or not.

- Email notification will be triggering to assigned user based on the start time and frequency if the plan is active.

- Email notification will be stop triggering if the plan is inactive.
**Inspection plan Dimension Details** Dimension CodeThis field is to define Dimension Code as preferred by user
SPC This field is to define SPC  as preferred by user although optional to enter.Is CTFThis field defines if the product is critical to functional (CTF).
Dimension TypeThis field is to validate the Nominal, +TOL and -TOL based on the dimension type. System will do comparison of the value based on the dimension type.
No dimension type : there will be 
no validation for Nominal, +TOL, -TOLTolerance: 

- Nominal cannot be blank

- If +TOL is blank, then -TOL need to be blank and vice versa.

- If + TOL has value, then -TOL need to have value and vice versa.

- +TOL must greater than -TOL
GD&T: 

- Nominal cannot be blank.

- +TOL cannot be less than 0, -TOL cannot be more than 0

- If +TOL is blank, then -TOL need to be blank and vice versa.

- If + TOL has value, then -TOL need to have value and vice versa.

- +TOL must greater than -TOL
Max: 

- If nominal has value, then +TOL need to be blank and vice versa.

- -TOL need to be blank, the text field is disabled
Min: 

- If nominal has value, then -TOL need to blank and vice versa.

- +TOL need to be blank, the text field is disabled
NominalThis field defines the nominal value of measurement data. Can accept the value: 0 to 99999.99999+TOLThis field defines the positive tolerance above Nominal value. Can accept the value: 0 to 99999.99999-TOLThis field defines the negative tolerance below Nominal value. Can accept the value: 0 to 99999.99999Choose FileSystem allows user to select .csv file having defined format to uploadDownload templateOn clicking this field results automatic download of defined template .csv file for Inspection plan details upload. This file contains below columns:

- Dimension Code


- SPC


- Dimension Type


- Nominal


- +TOL


- -TOL


- IsCTF (Y/N)

Note: SPC, Dimension Type, Nominal, +TOL and -TOL fields are optional, whereas Dimension code is mandatory entry, as preferred by user.
Upload
- System will check if all mandatory fields’ values for each line item should be provided.

- System will check if the Dimension Code. for the particular Job type should not be duplicated.

- The system will create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is plan.csv, the output file will be plan.out.csv)

- The file will replicate the same line of source file, plus an additional column with the operation result.

- For each line item, the system will write if correctly loaded or in case of issue, writing the error.

- If there is any error in the file, system will upload the pass data and return error.

- When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- At the end of operation, the PASS data will be listed at the Dimension table

- Allow user to download the Inspection Plan template.

- Note : The users,

those
not having Microsoft Office 365 or higher version of excel at least to 
16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.


#### Attachments

[image2019-9-3_9-48-41.png](/.attachments/57639478.png)
[image2019-9-3_9-51-8.png](/.attachments/57639479.png)
[image2019-9-3_9-51-41.png](/.attachments/57639480.png)
[image2019-9-3_9-52-7.png](/.attachments/57639481.png)
[image2019-9-3_9-53-22.png](/.attachments/57639482.png)
[image2019-9-30_12-51-37.png](/.attachments/57639483.png)
[image2019-9-30_12-59-55.png](/.attachments/57639484.png)
[image2019-9-30_13-0-47.png](/.attachments/57639485.png)
[image2019-9-30_13-1-3.png](/.attachments/57639486.png)
[image2019-9-30_13-6-29.png](/.attachments/57639487.png)
[image2019-9-30_13-8-39.png](/.attachments/57639488.png)
[image2019-9-30_13-10-17.png](/.attachments/57639489.png)
[image2019-9-30_13-13-6.png](/.attachments/57639490.png)
[image2019-9-30_13-13-33.png](/.attachments/57639491.png)
[image2019-9-30_13-14-4.png](/.attachments/57639492.png)
[image2019-9-30_13-14-37.png](/.attachments/57639493.png)
[image2019-9-30_13-15-54.png](/.attachments/57639494.png)
[image2020-3-4_14-21-4.png](/.attachments/66093807.png)
[image2020-3-4_14-21-54.png](/.attachments/66093808.png)

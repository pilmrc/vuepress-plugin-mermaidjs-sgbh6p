# Introduction

Dimension maintenance is a configuration screen used for associating dimension data with measuring equipment type and its information ( Factory , Customer , project , product family , material and Job type). This configuration is to determine whether the measurement results are met with the quality standard.


### How to get there?



::: mermaid
graph LR
A("QLMS Configurations")-->0("Dimension MAINTENANCE")

:::


#### **Permission ( QLMS)** 



- Dimension Maintenance


- Can Access Dimension Maintenance


- Can Modify Dimension Maintenance



#### **Screen Activity** 


Dimension Maintenance enables user to perform the following activity:

- Create, view, update and delete Dimension data records against selected Customer during Login (Customer Partitioning in place)

- Upload / enter manually dimension data against each Measuring Equipment Type on Dimension Maintenance record

- Automatic Versioning on Dimension Data modification



#### **Pre-conditions** 



- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)
needs to be configured and assigned to current user, and user has to login with selected Customer
- At-least one
[ Part Cycle Time](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Part-Cycle-Time-Maintenance.md)configuration is available in system
- User must have proper activity
[permission](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Permissions.md)on Dimension Maintenance (Can Access & Can Modify)

#### Screen Dependency



- [Inspection Registration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Inspection-Registration.md)


- [Manual Measurement Management](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Manual-Measurement-Management.md)


- [Measurement Result Submission](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Measurement-Results-with-Approval-Process/Measurement-Result-Submission.md)


- [Upload Measurement Result API](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Upload-Measurement-Result-API.md)



#### **Screen Specification (Level 1)** 


T
he home page of Dimension Maintenance will show Factory, Customer, Project, Product Family, Material, Route, Route Step, Job Type, SIP Version, Drawing Revision, System Version and Current (if the latest version record).
System validates against duplicate record with the following combination:

- If there is route and route step configured then the uniqueness is checking by factory, customer, project, product family, material, job type, route and route step.

- If there is no route and route step configured then the uniqueness is checking by factory, customer, project, product family, material and job type.
User can edit / delete the Dimension maintenance record only if the configuration is not used in Inspection Registration. If the data is in used then does not allow user to edit / delete.
All of the configuration except Drawing Revision and SIP Version fields to be disabled once Equipment Type is configured. If user deletes the Measuring Equipment Type configuration, system allows to modify the relative fields (Such as: Factory, Customer, Project, Product Family, Material, Job Type, Drawing Revision, SIP Version, Route and Route Step )
User is able to download and upload with action Add , Update and Delete dimension data in bulk. 
If there is an update on dimension data, system will prompt user to select updated the Drawing Revision and SIP version upon saving at configuration level.

- System Version is automatically update if there’re changes on dimension data and it is unique.

- SIP Version and Drawing Revision is optional to update if there’re changes on dimension data.

- Current field will be indicated the latest version at home page.

- System allows user to search Dimension data in older version.
If there is deleted in iFactory, system will handle deleted in iFactory configuration:

- Either one of the configured data (Factory, Customer, Project, Product Family, Material, Route, Route step, Job Type) has been soft deleted in Part Cycle Time then the entire level 1 line item will be soft deleted and not showing on the screen regardless of system version.


- Once detected the part cycle time configuration is restored, then restore the configured data in Dimension Maintenance in level 1.


#### **Screen Specification (Level 2)** 


User can manually add / Edit / Delete the Dimension data from here after saving selected Measuring Equipment Type
If there is deleted in iFactory, system will handle deleted in iFactory configuration:

- If the configured Measuring Equipment Type has been soft deleted in part cycle time then entire level 2 line item will be soft deleted and not showing on the screen regardless of system version.


- Once detected
the 
Measuring Equipment Type in 
part cycle time configuration is restored, then restore the Measuring Equipment Type in level 2.


#### **Fields** 


<table class="wrapped confluenceTable" style="width: 1181.0px;"><colgroup><col style="width: 122.0px;" /><col style="width: 1060.0px;" /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;width: 121.0px;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;width: 1060.0px;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;width: 121.0px;" class="confluenceTd"><p>Actions</p></td><td style="text-align: left;width: 1060.0px;" class="confluenceTd"><p>User can perform the following actions in Dimension Maintenance screen.</p><p>Save : Allow user to save the configuration or updates</p><p>Copy : Allow user to copy the configuration if the dimension configuration is not matched with existing dimension configuration (different Factory, Project, Product Family, Material, Job Type, Route or Route Step). If the dimension configuration is matched with existing dimension configuration (same Factory, Project, Product Family, Material, Job Type, Route, Route Step) but with different SIP version, Drawing Revision and unplanned flag, user is not allow to copy the configuration but to update SIP version and drawing revision from the screen. </p><p>Delete : Allow user to delete the configuration if the dimension configuration is not in use.</p><p>Clear : Allow user to clear the configuration before save.</p></td></tr><tr><td style="text-align: left;width: 121.0px;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Factory</span></p></td><td style="text-align: left;width: 1060.0px;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to indicate the configuration is belong to which factory and it is</span> listed all the configured factory in Part cycle time for user's selection.</p></td></tr><tr><td style="text-align: left;width: 121.0px;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Customer</span></p></td><td style="text-align: left;width: 1060.0px;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Allow user to indicate the configuration is belong to which customer and it is auto-populated field value with selected customer at the time of user login.</span></p></td></tr><tr><td style="text-align: left;width: 121.0px;" class="confluenceTd"><p>Project</p></td><td style="text-align: left;width: 1060.0px;" class="confluenceTd"><p>Allow user to indicate the configuration is belong to which project and it is listed all the configured project in Part cycle time for user selection</p></td></tr><tr><td style="width: 121.0px;" class="confluenceTd"><p>Product Family</p></td><td style="width: 1060.0px;" class="confluenceTd"><p>Display product family based on the configured product family in part cycle time for user selection.</p><ul><li>If project is selected, then it will display the product family based on selected project.</li><li>If there is no project selected, then it will display the product family based on customer partition.</li></ul></td></tr><tr><td style="width: 121.0px;" class="confluenceTd"><p>Material</p></td><td style="width: 1060.0px;" class="confluenceTd"><p>Display active material based on the configured material in part cycle time.</p></td></tr><tr><td style="width: 121.0px;" class="confluenceTd">Route/Version</td><td style="width: 1060.0px;" class="confluenceTd"><span style="color: rgb(23,43,77);">System displays the Route based on selected Material which the material configured in the Route. Only active route will be available for selection. If only one route available then it will auto populate the value when user click the search bottom. The route version display to let user to view which route version has been selected.</span></td></tr><tr><td style="width: 121.0px;" class="confluenceTd">Route Step</td><td style="text-align: left;width: 1060.0px;" class="confluenceTd">System displays the route step based on selected Route. If only one route step configured for the selected route then it will auto populate the value when user click the search bottom.</td></tr><tr><td style="width: 121.0px;" class="confluenceTd"><p>Job Type</p></td><td style="width: 1060.0px;" class="confluenceTd"><p>Display Job Type based on customer partition and selected factory that configured in part cycle time for selection.</p></td></tr><tr><td style="width: 121.0px;" class="confluenceTd">SIP Version</td><td style="width: 1060.0px;" class="confluenceTd">Allow user to configure the Sample Inspection Plan version that they are referring to.</td></tr><tr><td style="width: 121.0px;" class="confluenceTd"><p>Drawing Revision</p></td><td style="width: 1060.0px;" class="confluenceTd"><p>Allow user to configure dimension configuration's drawing revision that they are referring to.</p></td></tr><tr><td style="width: 121.0px;" class="confluenceTd">System Version</td><td style="width: 1060.0px;" class="confluenceTd"><p>The versioning is auto updated by the system if user modifies dimension data configuration.</p><p>By modifying Drawing Revision or SIP Version system will not update the version to latest version.</p></td></tr><tr><td style="width: 121.0px;" class="confluenceTd">Unplanned</td><td style="width: 1060.0px;" class="confluenceTd"><p>Allow user to configure Unplanned option to indicate that the dimension configuration is for unplanned workorder.</p><p>Toggle will be disabled after user configure the dimension data and saved it.</p><p>Note: Once the job type has been configured as unplanned then it can't be configured as planned for the same configuration.</p></td></tr><tr><td style="width: 121.0px;" class="confluenceTd">Current ( Grid)</td><td style="width: 1060.0px;" class="confluenceTd">Default Yes to display the latest version record but user can remove the filter to see all the record ( older & latest) at the grid.</td></tr><tr><td class="highlight-blue confluenceTd" style="width: 121.0px;" title="Background colour : Blue" data-highlight-colour="blue"><span style="color: rgb(0,0,0);" title=""><strong>Subset Window</strong></span></td><td class="highlight-blue confluenceTd" style="width: 1060.0px;" title="Background colour : Blue" data-highlight-colour="blue"><br /></td></tr><tr><td style="width: 121.0px;" class="confluenceTd"><p>Measuring Equipment Type</p></td><td style="width: 1060.0px;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">Shows only Measuring Equipment type with resource function of Measuring type based on the configured Measuring Equipment Type and its Job type in part cycle configuration for user selection.</span></p></td></tr><tr><td style="width: 121.0px;" class="confluenceTd"><p>Dimension Code</p></td><td style="width: 1060.0px;" class="confluenceTd"><p>This field can be entered as per user preference. </p><ul><li>Dimension for the particular measurement resource type can't be duplicated.</li><li>Can support up to 20 strings.</li></ul></td></tr><tr><td style="width: 121.0px;" class="confluenceTd"><p>SPC</p></td><td style="width: 1060.0px;" class="confluenceTd"><span style="color: rgb(23,43,77);">This field is to define SPC No. as preferred by user</span></td></tr><tr><td style="width: 121.0px;" rowspan="2" class="confluenceTd">Dimension Type<p><br /></p><p><br /></p><p><br /></p><p><br /></p></td><td style="width: 1060.0px;" class="confluenceTd"><p>This field is to validate the Nominal, +TOL and -TOL based on the dimension type. System will do comparison of the value based on the dimension type.</p></td></tr><tr><td style="width: 1060.0px;" class="confluenceTd"><p><span>No dimension type : there will be </span><span>no validation for Nominal, +TOL, -TOL</span></p><p>Tolerance: </p><ul><li>Nominal cannot be blank</li><li>If +TOL is blank, then -TOL need to be blank and vice versa.</li><li>If + TOL has value, then -TOL need to have value and vice versa.</li><li>+TOL must greater than -TOL</li></ul><p>GD&T: </p><ul><li>Nominal cannot be blank.</li><li>+TOL cannot be less than 0, -TOL cannot be more than 0 </li><li>If +TOL is blank, then -TOL need to be blank and vice versa.</li><li>If + TOL has value, then -TOL need to have value and vice versa.</li><li>+TOL must greater than -TOL</li></ul><p>Max: </p><ul><li><span>If nominal has value, then +TOL need to be blank and vice versa.</span></li><li><span>-TOL need to be blank, the text field is disabled</span></li></ul><p>Min: </p><ul><li>If nominal has value, then -TOL need to blank and vice versa.</li><li>+TOL need to be blank, the text field is disabled</li></ul></td></tr><tr><td style="width: 121.0px;" class="confluenceTd"><p>Nominal</p></td><td style="width: 1060.0px;" class="confluenceTd"><p><span style="color: rgb(23,43,77);">This field defines the nominal value of measurement data and it is accepting the value: -99999.99999 to <span style="color: rgb(0,0,0);">99999.99999</span></span></p></td></tr><tr><td style="width: 121.0px;" class="confluenceTd"><p>+TOL(Max)</p></td><td style="width: 1060.0px;" class="confluenceTd"><span style="color: rgb(23,43,77);">This field defines the positive tolerance above Nominal value and it is accepting the value: -99999.99999 to <span style="color: rgb(0,0,0);">99999.99999</span></span></td></tr><tr><td style="width: 121.0px;" class="confluenceTd"><p>-TOL(Min)</p></td><td style="width: 1060.0px;" class="confluenceTd"><span style="color: rgb(23,43,77);">This field defines the negative tolerance below Nominal value and it is accepting the value: -99999.99999 to <span style="color: rgb(0,0,0);">99999.99999</span></span></td></tr><tr><td style="width: 121.0px;" class="confluenceTd"><p>isCTF</p></td><td style="width: 1060.0px;" class="confluenceTd">This field defines if the dimension data is Critical To Function ( CTF)</td></tr><tr><td style="width: 121.0px;" class="confluenceTd"><p>IsCTQ</p></td><td style="width: 1060.0px;" class="confluenceTd">This field defines if the dimension data is Critical To Quality (CTQ)</td></tr></tbody></table>



- Dimension for the particular measurement resource type can’t be duplicated.


- Can support up to 20 strings.
SPC
This field is to define SPC No. as preferred by user
Dimension Type



This field is to validate the Nominal, +TOL and -TOL based on the dimension type. System will do comparison of the value based on the dimension type.
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
Nominal
This field defines the nominal value of measurement data and it is accepting the value: -99999.99999 to 
99999.99999
+TOL(Max)
This field defines the positive tolerance above Nominal value and it is accepting the value: -99999.99999 to 
99999.99999
-TOL(Min)
This field defines the negative tolerance below Nominal value and it is accepting the value: -99999.99999 to 
99999.99999
isCTF
This field defines if the dimension data is Critical To Function ( CTF)IsCTQ
This field defines if the dimension data is Critical To Quality (CTQ)

#### **Fields available for File upload in Dimension Configuration screen** 


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" class="confluenceTd">Choose File</td><td style="text-align: left;" class="confluenceTd">Allow user to select file with .csv format.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Download Template</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Allow user to download Dimension data template for batch upload. This file contains below columns:</p><ul><li><span style="color: rgb(0,0,0);">Measuring Equipment Type </span></li><li><span style="color: rgb(0,0,0);">Dimension Code </span></li><li><span style="color: rgb(0,0,0);">SPC</span></li><li><span style="color: rgb(0,0,0);">Dimension Type</span></li><li><span style="color: rgb(0,0,0);">Nominal </span></li><li><span style="color: rgb(0,0,0);">+TOL</span></li><li><span style="color: rgb(0,0,0);">-TOL</span></li><li><span style="color: rgb(0,0,0);"> IsCTF (Y/N)</span></li><li><span style="color: rgb(0,0,0);"> IsCTQ (Y/N) </span></li><li><span style="color: rgb(0,0,0);">Action</span></li></ul><p><span style="color: rgb(0,0,0);">Note: SPC, Dimension Type, Nominal, +TOL and -TOL Route and Route Step fields are optional. Action are mandatory to enter (Add, Delete or Update). Measuring Equipment Type has to belong to the selected Dimension configuration data whereas Dimension code is mandatory entry, as preferred by user.</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Clear</td><td style="text-align: left;" colspan="1" class="confluenceTd">Allow user to clear the chosen file.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Upload</td><td style="text-align: left;" class="confluenceTd"><ul><li>System will check if all mandatory fields' values for each line items have been provided.</li><li><span>System will check if the Measuring Equipment Type were configured in system</span></li><li>System will check if the Dimension Code is duplicated.</li><li>System will check if the Action field is empty and prompt message "Action is mandatory field and it is missing for some of entries. Please correct the same."</li><li>System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is Dimensionconfig.csv, the output file will be Dimensionconfig.out.csv)</li><li>The file will replicate the same line of source file, plus an additional column with the processing result.</li><li>For each line item, the system will write if correctly loaded or in case of issue, writing the error.</li><li>If there is any error in the file, system will upload the pass data and return error.</li><li>When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.</li><li>At the end of process, the PASS data will be listed at the Dimension Data table.</li><li>User is allowed to upload up to 1000 rows. If the data is more 1000 rows then user needs to split 2 files before upload.</li><li><em><span style="color: rgb(32,31,30);">Note :The users, </span><span style="color: rgb(32,31,30);">those</span><span style="color: rgb(32,31,30);"> not having Microsoft Office 365 or higher version of excel at least to </span><span style="color: rgb(32,31,30);">16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.</span></em></li></ul></td></tr></tbody></table>


- System will check if all mandatory fields’ values for each line items have been provided.


- System will check if the Measuring Equipment Type were configured in system

- System will check if the Dimension Code is duplicated.

- System will check if the Action field is empty and prompt message "Action is mandatory field and it is missing for some of entries. Please correct the same."

- System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is Dimensionconfig.csv, the output file will be Dimensionconfig.out.csv)

- The file will replicate the same line of source file, plus an additional column with the processing result.

- For each line item, the system will write if correctly loaded or in case of issue, writing the error.

- If there is any error in the file, system will upload the pass data and return error.

- When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- At the end of process, the PASS data will be listed at the Dimension Data table.

- User is allowed to upload up to 1000 rows. If the data is more 1000 rows then user needs to split 2 files before upload.

- Note :The users,

those
not having Microsoft Office 365 or higher version of excel at least to 
16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template.


#### Attachments

[image2019-7-31_11-10-34.png](/.attachments/56950813.png)
[image2019-7-31_11-11-51.png](/.attachments/56950814.png)
[image2019-9-3_8-42-25.png](/.attachments/56950817.png)
[image2019-9-3_8-48-2.png](/.attachments/56950818.png)
[image2019-9-3_8-48-43.png](/.attachments/56950819.png)
[image2019-9-3_8-49-30.png](/.attachments/56950820.png)
[image2019-9-3_8-50-0.png](/.attachments/56950821.png)
[image2019-9-3_9-8-14.png](/.attachments/56950822.png)
[image2019-9-3_9-9-25.png](/.attachments/56950823.png)
[image2019-11-4_15-20-47.png](/.attachments/59441462.png)
[image2019-12-13_7-23-9.png](/.attachments/62423112.png)
[image2019-12-13_7-31-52.png](/.attachments/62423113.png)
[image2020-2-20_11-0-56.png](/.attachments/66093228.png)
[image2020-4-1_8-45-0.png](/.attachments/67569904.png)
[image2020-4-1_8-46-38.png](/.attachments/67569905.png)
[image2020-4-1_8-50-57.png](/.attachments/67569911.png)
[image2020-4-10_13-36-15.png](/.attachments/67570452.png)
[image2020-4-10_13-39-8.png](/.attachments/67570453.png)

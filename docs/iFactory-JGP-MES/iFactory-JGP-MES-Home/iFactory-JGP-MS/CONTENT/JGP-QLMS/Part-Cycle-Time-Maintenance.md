# Introduction

Part cycle time maintenance is a basic configuration that needed for Dimension Configuration and Task allocation by equipment. Dimension Configuration fields' value is depending on part cycle maintenance configuration and the estimation of measuring time for each equipment type will be based on part cycle time configuration.


### How to get there?



::: mermaid
graph LR
A("QLMS Configurations")-->0("Part Cycle Time")

:::


#### **Permission ( QLMS)** 



- Part Cycle Time Maintenance

- Can Access Part Cycle Time Maintenance


- Can Modify Part Cycle Time Maintenance



#### **Screen Activity** 


Part Cycle Time Maintenance enables user to perform the following activity:

- Create, view, update and delete Part Cycle Time data records against selected Customer during Login (Customer Partitioning in place)

- Add/Edit/Delete Cycle time configuration data against each Resource Type on each parent record



#### **Pre-conditions** 



- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Retrieve-Customers.md)
needs to be configured and assigned to current user, and user has to login with selected Customer
- User should have configured Factory, Manufacturing Area, Measuring Resource Type, Project, Product Family, Job Type and Material that belong to selected Customer partitioning

- At-least one
[ ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Part-Cycle-Time-Maintenance.md)
user group with only one permission on 'Cosmetic Inspection' should be available ( if the material is required cosmetic inspection )
- User must have proper activity
[permission](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Permissions.md)on Part Cycle Time Maintenance (Can Access & Can Modify)

#### Screen Dependency



- [Dimension Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Dimension-Maintenance.md)


- [Task Allocation by Equipment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Task-Allocation/Task-Allocation-by-Equipment.md)


- [Cosmetic Inspection](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Cosmetic-Inspection.md)



#### **Screens Specification** 


T
he home page of Part Cycle Time Maintenance will show Factory , Customer, Project , Product Family, Material, Route, Route Step , Skip Cosmetic Insp, IsActive and Cycle Time Configuration.
System will validate against duplicate record:

- If there is route and route step configured then the uniqueness lies against
factory, customer, project, product family, material , route and route step combination.

- If there is no route and route step configured then the

uniqueness lies against factory, customer, project, product family and material combination.
User can click on the setting icon to open up the cycle time configuration on each parent record and the the screen can movable to let user refer the 1st level configuration.
Once the part cycle time configuration is configured , then level 1 configuration will be disabled except “Skip Cosmetic Inspection” field.
User is allowed to configure cycle time of a job type for the selected measuring equipment type. The same job type can't be configured twice for a measuring equipment type.
If there is deleted in iFactory, system will handle deleted in iFactory configuration:

- Level 1 - Either one of the configured data (Factory, Customer, Project, Product Family, Material, Route, Route Step) has been deleted in iFactory then the entire level 1 line item will be soft deleted and not showing on the screen.

- Level 2 - If the configured Measuring Equipment Type has been deleted in iFactory then entire level 2 line item will be soft deleted and not showing on the screen.

- Level 3 - If the configured Job Type has been deleted in iFactory then entire level 3 line item will be soft deleted and not showing in the screen.
User should not able to configured new record with the deleted iFactory configuration. Once detected the same configuration name has been configured in iFactory, then system restore the configured data.


#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Actions</p></td><td style="text-align: left;" class="confluenceTd"><p>User can Edit / Delete each record against each Part Cycle Time grid records</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Factory</span></p></td><td style="text-align: left;" class="confluenceTd"><p>Allow user to indicate the part is belong to which factory.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Customer</span></p></td><td style="text-align: left;" class="confluenceTd"><p>Allow user to indicate the part is belong to which customer and it is auto-populated field value with selected customer at the time of user login.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Project</p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Optional search field. Displays the project based on customer partition .</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Product Family</p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">If product family is associated with project then the product family will be displayed based on selected project. If product family is not associated with project then the product family will be displayed based on selected customer. </span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Material</p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">System displays the material based on selected Product Family. Only </span><span style="color: rgb(0,0,0);">active material will be available for selection.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd">System displays the Route and Route Version based on selected Material which the material configured in the Route. Only active route will be available for selection. If only one route available then it will auto populate the value when user click the search bottom. The route version display to let user to view which route version has been selected.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">System displays the route step based on selected Route. If only one route step configured for the selected route then it will auto populate the value when user click the search bottom.</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Skip Cosmetic Insp</p></td><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(32,31,30);">This field allows user to indicate whether to skip cosmetic inspection. If user enable skip cosmetic inspection then user will not required to perform cosmetic inspection for work order. If user disable skip cosmetic inspection then user will need to perform cosmetic inspection for work order.</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Group</p></td><td style="text-align: left;" class="confluenceTd">Cosmetic User Group drop-down field to be available only if 'Skip Cosmetic Insp' toggle is marked as off. All the user group that having only permission 'Cosmetic Inspection' should be visible here.</td></tr><tr><td class="highlight-blue confluenceTd" style="text-align: left;" colspan="1" data-highlight-colour="blue"><span style="color: rgb(0,0,0);" title=""><strong>Subset Window</strong></span></td><td class="highlight-blue confluenceTd" style="text-align: left;" colspan="1" data-highlight-colour="blue"><br /></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Measuring Equipment Type</p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Shows only Measuring Equipment type with resource function of Measuring type.</p><ul><li>Not allow duplicate measuring equipment type to be configured for the same configuration but allow user to configure multiple Job Type against single Measuring Equipment Type.</li><li>Not allow duplicate Job type to be configured for the same measuring equipment type.</li><li>Measuring equipment type can't be deleted if the measuring equipment type is in use.</li></ul></td></tr><tr><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey"><span style="color: rgb(0,0,0);" title=""><strong>Subset Window</strong></span></td><td class="highlight-grey confluenceTd" title="Background colour : Grey" colspan="1" data-highlight-colour="grey"><br /></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Job Type</p></td><td style="text-align: left;" class="confluenceTd"><p>All the Job Types belong to the selected factory and Customer to be available for selection.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Units in a Group</p></td><td style="text-align: left;" class="confluenceTd"><p>Quantity in the group</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Measurement Time (sec/pc)</span></p></td><td style="text-align: left;" class="confluenceTd">Defines estimated Measurement time of that particular job type.</td></tr></tbody></table>




- #### **Fields available for File upload**

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" class="confluenceTd">Choose File</td><td style="text-align: left;" class="confluenceTd">Allow user to select file with .csv format.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Download Template</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Allow user to download part cycle time template for batch upload. This file contains below columns:</p><ul><li><span>Measuring Equipment Type (Mandatory, string)</span></li><li><span>Job Type (Mandatory, string)</span></li><li><span>Units in a Group (Mandatory, Numeric)</span></li><li><span>Measurement Time (sec/pc) (Mandatory, Time in sec) </span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Clear</td><td colspan="1" class="confluenceTd">Allow user to clear the chosen file.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Upload</td><td style="text-align: left;" class="confluenceTd"><ul><li>System will check if all mandatory fields' values for each line items have been provided.</li><li><span>System will check if the Measuring Equipment Type and Job Type were configured in system.</span></li><li>System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is PCTconfig.csv, the output file will be PCTconfig.out.csv)</li><li>The file will replicate the same line of source file, plus an additional column with the processing result.</li><li>For each line item, the system will write if correctly loaded or in case of issue, writing the error.</li><li>If there is any error in the file, system will upload the pass data and return error.</li><li>When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.</li><li>At the end of process, the PASS data will be listed at the Measurement Equipment Type Configuration against Part Cycle Time.</li><li>User is allowed to upload up to 1000 rows. If the data is more 1000 rows then user needs to split 2 files before upload.</li><li><em><span style="color: rgb(32,31,30);">Note :The users, </span><span style="color: rgb(32,31,30);">those</span><span style="color: rgb(32,31,30);"> not having Microsoft Office 365 or higher version of excel at least to </span><span style="color: rgb(32,31,30);">16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template</span></em></li></ul></td></tr></tbody></table>


- System will check if all mandatory fields’ values for each line items have been provided.


- System will check if the Measuring Equipment Type and Job Type were configured in system.

- System will create an output file and  download it from the browser, with same file name and adding extension .out before the file extension (if input file is PCTconfig.csv, the output file will be PCTconfig.out.csv)

- The file will replicate the same line of source file, plus an additional column with the processing result.

- For each line item, the system will write if correctly loaded or in case of issue, writing the error.

- If there is any error in the file, system will upload the pass data and return error.

- When the file upload process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File uploaded successful” OR with error then prompt message: “File uploaded with errors and please check output file”.

- At the end of process, the PASS data will be listed at the Measurement Equipment Type Configuration against Part Cycle Time.

- User is allowed to upload up to 1000 rows. If the data is more 1000 rows then user needs to split 2 files before upload.

- Note :The users,

those
not having Microsoft Office 365 or higher version of excel at least to 
16.0.7466.2023, then the excel will not support the UTF-8 format. So the template the user download will be lost the UTF-8 csv format after it has opened in the excel version in user system and the system will throw error on file upload template


#### Attachments

[image2019-9-3_8-49-30.png](/.attachments/56950825.png)
[image2019-9-3_8-50-0.png](/.attachments/56950826.png)
[image2019-9-3_8-42-25.png](/.attachments/56950827.png)
[image2019-9-3_8-48-43.png](/.attachments/56950828.png)
[image2019-9-3_8-48-2.png](/.attachments/56950829.png)
[image2019-9-3_9-8-14.png](/.attachments/56950830.png)
[image2019-9-3_9-9-25.png](/.attachments/56950831.png)
[image2019-9-3_9-48-41.png](/.attachments/56950833.png)
[image2019-9-3_9-51-8.png](/.attachments/56950834.png)
[image2019-9-3_9-51-41.png](/.attachments/56950835.png)
[image2019-9-3_9-52-7.png](/.attachments/56950836.png)
[image2019-9-3_9-53-22.png](/.attachments/56950837.png)
[image2019-10-1_9-51-1.png](/.attachments/57639516.png)
[image2019-10-31_10-26-57.png](/.attachments/59441422.png)

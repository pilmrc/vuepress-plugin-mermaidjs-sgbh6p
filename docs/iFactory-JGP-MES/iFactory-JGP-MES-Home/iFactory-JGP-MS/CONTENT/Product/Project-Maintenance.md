# Introduction

Project Maintenance is used to group product family of same range. 
However, the condition of this grouping may vary from customer to customer. 
A Project must be associated to a Customer and Division and it must be unique within each of the Customer and Division combination. If the Customer in the MDO, the Project and Project Code will sync to MDO.

### How to get there?



::: mermaid
graph LR
A("ADMIN")
:::
![image2019-7-24_9-59-10.png](/.attachments/53772455.png)



::: mermaid
graph LR
A("PROJECT MAINTENANCE")
:::


#### Permission



- Project Maintenance (iFactory)


- Can Access Project Maintenance


- Can Modify Project Maintenance


- Can perform bulk upload project



#### Precondition


[Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)
and [Division](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Division.md)need to be configured before user can configure Project


#### Screen Activity


Project Maintenance 
enables user to perform the following activity:

- Create, view, update and delete project

- Associate project to a customer and division combination



#### Screen Dependency


The following screen(s) has direct dependency with Project Maintenance

- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)


- [Division](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Division.md)


- [Product Family](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Product-Family.md)



#### Fields


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 15.5668%;" /><col style="width: 84.4332%;" /></colgroup><tbody><tr><th class="confluenceTh">Field </th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Project Name</td><td class="confluenceTd"><p><span style="color: rgb(23,43,77);">The project name must be unique within a Customer and Division combination. Therefore, d</span><span style="color: rgb(23,43,77);">uplicate project name can exist for a customer<span> </span><br />provided that they are from a different division. The configuration below is valid.<span> </span></span></p><p><br /></p><div class="table-wrap"><table class="wrapped confluenceTable"><tbody><tr><th class="confluenceTh">Project Name</th><th class="confluenceTh">Customer</th><th class="confluenceTh">Division</th></tr><tr><td class="confluenceTd">ProjectName-123</td><td class="confluenceTd">Customer A</td><td class="confluenceTd">Division A</td></tr><tr><td class="confluenceTd">ProjectName-123</td><td class="confluenceTd">Customer B</td><td class="confluenceTd">Division B</td></tr><tr><td colspan="1" class="confluenceTd">ProjectName-123</td><td colspan="1" class="confluenceTd">Customer A</td><td colspan="1" class="confluenceTd">Division Z</td></tr></tbody></table></div></td></tr><tr><td colspan="1" class="confluenceTd">Project Code</td><td colspan="1" class="confluenceTd">The project code is additional abbreviation for project. Only allow user to add up to 5 characters. P<span style="color: rgb(0,0,0);">roject code will sync to project abbreviation in MDO.</span></td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd"><span style="color: rgb(23,43,77);">Additional description for the project can be entered in this field</span></td></tr><tr><td class="confluenceTd"><span>Customer</span></td><td class="confluenceTd"><span>The customer associated to the project</span></td></tr><tr><td class="confluenceTd"><span>Division</span></td><td class="confluenceTd"><span>The division associated to the project</span></td></tr><tr><td colspan="1" class="confluenceTd">Ext. Material Group</td><td colspan="1" class="confluenceTd">Ext. material group is to indicate if the project is synced from SAP in the future</td></tr><tr><td colspan="1" class="confluenceTd">Phase </td><td colspan="1" class="confluenceTd"><p>Project is currently in which phase.</p><p>Phase : NPI , MP</p></td></tr><tr><td colspan="1" class="confluenceTd">MP Start Date</td><td colspan="1" class="confluenceTd"><p>MP phase start date .</p><p>Mandatory to provide MP start date when MP phase is selected.</p></td></tr></tbody></table>



<table class="wrapped confluenceTable"><tbody><tr><th class="confluenceTh">Project Name</th><th class="confluenceTh">Customer</th><th class="confluenceTh">Division</th></tr><tr><td class="confluenceTd">ProjectName-123</td><td class="confluenceTd">Customer A</td><td class="confluenceTd">Division A</td></tr><tr><td class="confluenceTd">ProjectName-123</td><td class="confluenceTd">Customer B</td><td class="confluenceTd">Division B</td></tr><tr><td colspan="1" class="confluenceTd">ProjectName-123</td><td colspan="1" class="confluenceTd">Customer A</td><td colspan="1" class="confluenceTd">Division Z</td></tr></tbody></table>

ProjectName_123Customer ADivision AProjectName_123Customer BDivision BProjectName_123Customer ADivision ZProject CodeThe project code is additional abbreviation for project. Only allow user to add up to 5 characters. Project code will sync to project abbreviation in MDO.
DescriptionAdditional description for the project can be entered in this field
CustomerThe customer associated to the projectDivisionThe division associated to the projectExt. Material GroupExt. material group is to indicate if the project is synced from SAP in the futurePhase Project is currently in which phase.
Phase : NPI , MP
MP Start DateMP phase start date .
Mandatory to provide MP start date when MP phase is selected.
Bulk upload 
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Item</th><th class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Choose File</span></td><td colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span style="color: rgb(23,43,77);">Allow user to select file with .UTF-8 format</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Download Template</span></td><td colspan="1" class="confluenceTd"><ul style="text-align: left;"><li>Pre-defined template that must be used for upload the configuration. </li><li>Field that available in the template as below </li><li>Project Name <span style="color: rgb(0,0,0);">（Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Project Code （Mandatory-String）</span></li><li><span style="color: rgb(0,0,0);">Phase（Optional-String）</span></li><li><span style="color: rgb(0,0,0);">MP Start Date（Optional-String）</span></li><li><span style="color: rgb(0,0,0);">Action（Mandatory-String）</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">Upload </span></td><td class="confluenceTd"><ul><li>The bulk upload support user to add，update，delete</li><li><span>Add – Add the new project. If the project data is available in the system, then not allowed to add into system.</span></li><li><span>Delete – Delete the existing project. If project data not available in the system, then deleting action will be failed. If the data is currently being used in other module , then deleting action will be failed.</span></li><li><span>Update – Update the existing project. If project data not available in the system, then updating action will be failed.</span></li><li><span style="color: black;">If user leaves the action column as blank, then no action should be taken.</span></li><li><span style="color: rgb(0,0,0);">System will validate each line item when processing bulk upload based on the implemented validation at UI.</span></li><li><span style="color: rgb(0,0,0);">System will check if all mandatory fields' values for each line item are provided.</span></li><li>System will check if the provided project name <span style="color: rgb(0,0,0);">available and duplicate</span><span> </span>in the system.</li><li>When bulk upload，the system will default the user to the current customer/division</li><li>System shall create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)</li><ul><li>The file will replicate the same line of source file, plus an additional column with the processed result.</li><li>For each line, the system will write if correctly loaded or in case of issue, writing the error</li></ul><li>If there is any error in the file, system should process the pass data and return error.</li><li>When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “File processed with errors and please check output file”</li></ul></td></tr></tbody></table>


- System will check if all mandatory fields’ values for each line item are provided.


- System will check if the provided project name
available and duplicate
in the system.
- When bulk upload，the system will default the user to the current customer/division

- System shall create an output file downloading it from the browser, with same file name and adding extension .out before the file extension (if input file is X.csv, the output file will be X.out.csv)

- The file will replicate the same line of source file, plus an additional column with the processed result.

- For each line, the system will write if correctly loaded or in case of issue, writing the error

- If there is any error in the file, system should process the pass data and return error.

- When the process is completed, the system will show a toaster message with the information if the file is loaded without error then prompt message:” File processed successful” OR with error then prompt message: “File processed with errors and please check output file”


#### Attachments

[image2019-7-24_9-59-10.png](/.attachments/53772455.png)

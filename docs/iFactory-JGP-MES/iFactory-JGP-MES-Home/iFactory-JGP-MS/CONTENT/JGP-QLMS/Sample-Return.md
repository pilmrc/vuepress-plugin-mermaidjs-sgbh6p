# Introduction

Sample Return is a page that allows user to keep tracking sample return progress once the measurement results have been approved by authorized user.  There will be an email notification trigger to sample collector ( if user provided is NTID user ) and report requester. Sample collector is required to scan badge, enter Employee name and Employee ID in order to complete the sample return successfully. 


### How to get there?



::: mermaid
graph LR
A("QLMS LAB OPERATION")
:::
![wiki arrow.png](/.attachments/61079609.png)




::: mermaid
graph LR
A("SAMPLE RETURN")-->0("SAMPLE COLLECTION")

:::
**Permission** 
1.Sample Return .
2. Can Access Sample Return
3. Can Modify Sample Return


#### Screen Activity


Sample Return enables user to perform the following activities:

- Able to view the work orders that required for Sample Return with status " Pending Sample Return" and " Exceeded Sample Retention Period."


- Allow user to select and view the selected work order


- Allow to view the Application (L1) and work order ( L2) information including Review Completion Datetime and Exceeded Days in read only mode.


- Scan the badge, enter employee name and employee ID and click on confirm button to collect the sample successfully in work order tab.

**Screen Dependency** 

- [Inspection Registration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Inspection-Registration.md)



#### **Screen Specification** 


If there is deleted in iFactory / Dimension Maintenance, system will handle deleted in iFactory / Dimension Maintenance configuration:

- All the configured data

will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.


#### Actions


<table class="relative-table wrapped confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 15.5668%;" /><col style="width: 84.4332%;" /></colgroup><tbody><tr><th class="confluenceTh">Action</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Edit</td><td class="confluenceTd">Allow user to edit the sample by providing the scan badge, employee name and employee ID </td></tr></tbody></table>



#### Field on the landing page


<table class="relative-table wrapped confluenceTable" style="width: 97.3795%;"><colgroup><col style="width: 15.8123%;" /><col style="width: 84.1587%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">WorkOrder ID</td><td class="confluenceTd">WorkOrder ID field will list all the sample with workorder status " Pending Sample Return" and " Exceeded Sample Retention Period" based on the user login and customer partition.</td></tr><tr><td class="confluenceTd">Status</td><td class="confluenceTd"><p>The status of the workorder</p><p>"Pending Sample Return" when the exceeded day is 0</p><p>"Exceeded Sample Retention Period" when the exceeded day is >0</p><p>An email notification will notify the report requester and sample collector for collection</p><p>If user didn't collect the sample after the first notification then system will notify the report requester and sample collector for collection on weekly basis.</p></td></tr><tr><td class="confluenceTd">Customer</td><td class="confluenceTd">The product of customer that sent for measuring.</td></tr><tr><td class="confluenceTd">Project</td><td class="confluenceTd">The product of a project that sent for measuring.</td></tr><tr><td class="confluenceTd">Product Family</td><td class="confluenceTd">The product family of a product that sent for measuring.</td></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd">The material of a product that sent for measuring.</td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd">The route of product that sent for measuring. <span style="color: rgb(23,43,77);">This field showed route and route step value which </span><span style="color: rgb(23,43,77);">registered in inspection registration and display NA if there is no route registered for work order.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">The route step of product that sent for measuring. <span style="color: rgb(23,43,77);">This field showed route step value which </span><span style="color: rgb(23,43,77);">registered in inspection registration and  display NA if there is no route step registered for work order.</span></td></tr><tr><td class="confluenceTd">Quantity</td><td class="confluenceTd">Total quantity that sent for measuring and inspection.</td></tr><tr><td colspan="1" class="confluenceTd">Job Type</td><td colspan="1" class="confluenceTd">Job Type that associated with the selected workorder ID</td></tr><tr><td colspan="1" class="confluenceTd">Review Completion Datetime</td><td colspan="1" class="confluenceTd">Review Completion Datetime is when the review completed .</td></tr><tr><td colspan="1" class="confluenceTd">Retention Period Days</td><td colspan="1" class="confluenceTd">Retention Period Days is when the collection date due.</td></tr><tr><td colspan="1" class="confluenceTd">Exceeded Days</td><td colspan="1" class="confluenceTd"><p>Exceeded Days = (Current Date - Review completion datetime) – Retention Period.</p></td></tr><tr><td colspan="1" class="confluenceTd">Report Requester </td><td colspan="1" class="confluenceTd">The report requester of the work order.</td></tr><tr><td colspan="1" class="confluenceTd">Submission Unit</td><td colspan="1" class="confluenceTd"><p>The Work Order is submitted by which unit.</p></td></tr></tbody></table>

**Fields need to be completed before confirm the sample return** 
<table class="relative-table wrapped confluenceTable" style="width: 55.1772%;"><colgroup><col style="width: 15.1324%;" /><col style="width: 84.8424%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description </th></tr><tr><td class="confluenceTd">Scan Badge </td><td class="confluenceTd"><p>Allow NTID and Non NTID user to scan badge.</p><p>Note : If user details have been registered with QLMS , the employee name and employee ID will be auto populated once scanned the badge.</p></td></tr><tr><td class="confluenceTd">Employee Name</td><td class="confluenceTd"><p>Allow NTID and Non NTID user to provide employee name .</p><ul><li>NTID user : Able to search NTID user.</li><li>Non NTID user : Able to enter the name manually.</li></ul></td></tr><tr><td class="confluenceTd">Employee ID </td><td class="confluenceTd"><p>Employee ID will be auto populated if NTID user was selected.</p><p>Non NTID user need to manually insert employee ID.</p></td></tr></tbody></table>



#### Attachments

[wiki arrow.png](/.attachments/61079609.png)

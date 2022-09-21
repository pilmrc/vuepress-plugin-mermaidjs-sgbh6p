# Introduction

Work Order Confirmation screen allows user to confirm/reject the submitted applications so that they can allocate the confirmed work orders for measuring/inspection. The action also allows printing of document after confirmation. System will notify user if the application is being rejected or cosmetic inspection is required.


### How to get there?



::: mermaid
graph LR
A("QLMS Lab Operations")-->0("WORK ORDER Confirmation")

:::


#### Permission (QLMS)



- QLMS Work Order Confirmation


- Can Access Work Order Confirmation


- Can Modify Work Order Confirmation



#### Screen Activity


Work Order Confirmation enables user to perform the following activities:

- Allow user to confirm application and once confirmed, send mail to Cosmetic User group in case Cosmetic inspection is required

- Allow user to reject application with rejection comment and sends rejection mail to Report Requester

- Allows user to print label for confirmed application

- Allows user to filter application list based on preferred criteria


#### Precondition


At least one Work Order should be submitted from Inspection Registration based on Customer partitioning


#### **Screen Dependency** 



- [Inspection Registration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Inspection-Registration.md)


- [Cosmetic Inspection](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Cosmetic-Inspection.md)


- [Task Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/JGP-QLMS/Task-Allocation.md)



#### **Screen Specification** 


The page loads the Work Orders with status 'Pending Confirmation' by default. Although user has option to filter against any status. 
Mentioned fields to be available in read-only mode against list of work order and relative filter is also available: Work Order ID, Measurement Building, Production Equipment, Project, Product Family, Material, Route/Version, Route Step, Submitter, Submission Date, Shift, Report Requester, Process Type, Status.
Route/Version and Route Step fields showed route/version or route step value which registered in inspection registration and display NA if there is no route and route step registered for the work order. 
The route version display to let user to view which route version has been selected.Once clicked on action icon, system redirects to the submitted work order details screen for confirmation / rejection.
For confirmation, system forces mentioned fields to be entered: Sample Submitter's Badge, Sample Submitter's Name, Sample Submitter's Employee ID, Urgency Status, Remarks and Serial Number (Applicable only for 'Repetitive' process type work order)

Once the Workorder is confirm, the cosmetic inspection configuration will be snapshot. 
On confirmation, Print option to be available for user to print work order ID label that configured with Order type document.
For Rejection, system forces user to provide mentioned fields: 
Sample Submitter's Badge, Sample Submitter's Name, Sample Submitter's Employee ID, and Rejection Comment on click 'Reject'. System records rejection date time and rejection comment in system.
Email notification appears to Cosmetic Inspection user group (as mentioned in Part Cycle Time configuration) in case Work Order needs Cosmetic Inspection to be done
Email Notification being received by Report requester in case Lab personnel rejects the application
If there is deleted in iFactory / Dimension Maintenance, system will handle deleted in iFactory / Dimension Maintenance configuration:

- All the configured data

will still be showing in the modules if the configuration has been soft deleted in Dimension Maintenance or ifactory then the configured data will be shown on the field as all the configured data have been associated with workorder ID.

- Even the Dimension Maintenance has been soft deleted, SIP Version/ Drawing Revision/ System Version still be retrieve

soft deleted configuration from Dimension Maintenance.

#### **Fields** 



**Actionable field available in list grid** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Actions</p></td><td style="text-align: left;" class="confluenceTd"><p>User can redirect to a screen to confirm/reject specific application </p></td></tr></tbody></table>

**Actionable field available in Application Details screen** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Sample Submitter Badge</span></td><td colspan="1" class="confluenceTd">This field is available in Application tab. The field is to scan Sample Submitter's unique badge. User may or may not be NT User. Hence user can scan /manually enter the badge details in case of first time non-NT user. If the user has used kiosk at least once and scans the badge, respective name and employee ID automatically appears in 'Sample Submitter Name' and 'Sample Submitter Employee ID' fields.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Sample Submitter Name</span></td><td colspan="1" class="confluenceTd">This field is available in Application tab. This field is to search available NT user in system. Although user can manually enter name in case of 1st time Non-NT user to system. If searched through NT User's list, employee ID automatically gets fetched from system</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Sample Submitter Employee ID</span></td><td colspan="1" class="confluenceTd">This field is available in Application tab. This field is auto-populated in case of existing badge details OR submitter's name. Although user can manually enter the value in case of 1st time non-NT user</td></tr><tr><td colspan="1" class="confluenceTd">SIP Version/ Drawing Revision/ System Version</td><td colspan="1" class="confluenceTd"><p>This field is available in 'Work Order' tab.This field is displayed the configured SIP Version/ Drawing Revision. System will prompt user whether to update SIP Version /Drawing Revision / System Version if there is latest version available for selection. Allow user re-select before confirmation, once confirmed, SIP Version/ Drawing Revision/ System Version will be associated to work order ID.</p><p><span style="color: rgb(0,0,0);">Even the Dimension Maintenance has been soft deleted, SIP Version/ Drawing Revision/ System Version still be retrieve<span> </span>soft deleted configuration from Dimension Maintenance.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Dimension Code</td><td colspan="1" class="confluenceTd"><p>This button will be available if the Workorder is unplanned</p><p>This button allows user to view, edit and update the selected Dimension Codes in Dimension Codes selection screen.</p></td></tr><tr><td colspan="1" class="confluenceTd">Dimension Configuration</td><td colspan="1" class="confluenceTd"><p>This button will be available if the Workorder is unplanned</p><p>This button will redirect user to dimension configuration based on Factory, Customer, Project , Product family, Material , Job Type , Route , Route step and SIP version/Drawing Revision/Revision to configure new dimension code</p></td></tr><tr><td colspan="1" class="confluenceTd">Urgency Status</td><td colspan="1" class="confluenceTd"><p>This field is available in 'Work Order' tab. There are below three type of status available in drop-down list. User can select any of them</p><ul><li>Urgent</li><li>High</li><li>Normal</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Remark</td><td colspan="1" class="confluenceTd">This field is available in 'Work Order' tab. This field is optional when 'Urgency Status' were marked as 'Normal'. For other two urgency status selection, Remark field is mandatory entry.</td></tr><tr><td colspan="1" class="confluenceTd">Production Equipment Type</td><td colspan="1" class="confluenceTd"><p>This field is available in 'Work Order' tab under Production Equipment Data grid view against each record row.</p><p>This field display the Production Equipment Type of the work order</p></td></tr><tr><td colspan="1" class="confluenceTd">Production Machine ID</td><td colspan="1" class="confluenceTd"><p>This field is available in 'Work Order' tab under Production Equipment Data grid view against each record row.</p><p>This field display the Production Machine ID(s) of the work order</p></td></tr><tr><td colspan="1" class="confluenceTd">Mold ID / Tooling ID</td><td colspan="1" class="confluenceTd"><p>This field is available in 'Work Order' tab under Production Equipment Data grid view against each record row.</p><p>This field display the Mold ID / Tooling ID of the work order</p></td></tr><tr><td colspan="1" class="confluenceTd">Cavity</td><td colspan="1" class="confluenceTd"><p>This field is available in 'Work Order' tab under Production Equipment Data grid view against each record row.</p><p>This field display the Cavity(s) of the work order</p></td></tr><tr><td colspan="1" class="confluenceTd">Sample Number</td><td colspan="1" class="confluenceTd"><p>This field is available in 'Work Order' tab under Production Equipment Data grid view against each record row.</p><p>This field display the Sample Number of the work order</p></td></tr><tr><td colspan="1" class="confluenceTd">Item Number</td><td colspan="1" class="confluenceTd"><p>This field is available in 'Work Order' tab under Production Equipment Data grid view against each record row.</p><p>This field display the Item Number of the work order</p></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd"><p>This field is available in 'Work Order' tab under Production Equipment Data grid view against each record row.</p><ul><li>Serial Number has to be added in case the Work Order with registration type is 'Repetitive'. User have to scan the serial number in this field</li><li>No option to scan Serial number in case the Work Order with registration type is 'Lot/Batch'</li></ul></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Rejection Comment</p></td><td style="text-align: left;" class="confluenceTd"><p>This field is available when user clicks 'Reject' button for application rejection. User has to enter the field value to proceed with rejection</p></td></tr></tbody></table>


- **Actionable field available during Document print**

<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Field</strong></p></td><td class="highlight confluenceTd" style="text-align: left;"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Printer</td><td colspan="1" class="confluenceTd">All active printers are available with no resource assigned</td></tr><tr><td colspan="1" class="confluenceTd">Document</td><td colspan="1" class="confluenceTd">Only 'Order' type documents are available in the drop-down</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Quantity</p></td><td style="text-align: left;" class="confluenceTd"><p>User can enter the integer value of the quantity. This field defines the print document count.</p></td></tr></tbody></table>



#### Attachments

[image2019-8-30_15-46-3.png](/.attachments/59441245.png)
[image2019-10-22_14-43-40.png](/.attachments/59441259.png)

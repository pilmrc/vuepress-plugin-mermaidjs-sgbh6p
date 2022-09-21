# Introduction

Test Report Status is a screen to let user according different filter condition to 
inquire all IQC Form 


### **How to get there?** 



::: mermaid
graph LR
A("IQC REPORT & DASHBOARD")-->0("IQC FORM PROGRESS REPORT")

:::


#### **Screen Activity** 



- View the report,


- Export the report


- Generate filter result


- Clear filter condition



#### **Permission ( iFactory.IQC)** 



- Can View IQC Form Progress Report

- Can export IQC Form Progress Report


#### **Screen Specification** 


The screen will list all IQC Form with status is null，pending for inspection，draft，pending for approval，rejected，Completed, QN in process，QN closed. 
User can export selected IQC Form with fixed template,

- If selected the multiple item to export, each GRS export to 1 file.


- If selected item has upload attachment. need to export attachment at the same time.

- Export item has attachment then export as compressed file (zip or rar), include 1 Excel file as IQC Form and each uploaded attachment file.
**Query Condition** 

<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Fields</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Customer / Division</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span>Show all the assigned Customer/Division for selection regardless of logged-on Customer/Division</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Part Number</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span>Show all the assigned Customer/Division's part number</span><span><span> </span>or list all Part Number based on selected Customer/Division for selection regardless of logged-on Customer/Division</span></li><li><span>Search screen display Part Number Name, Description, Plant Code and Material Type for selection</span></li></ul></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Part Number Description</span></td><td class="confluenceTd"><ul style="text-align: left;"><li><span>Based on selected Part Number regardless of logged-on Customer/Division</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Project</span></td><td colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>Show all the assigned Customer/Division's Project</span><span><span> </span>or based on selected Customer/Division and Part Number for selection regardless of logged-on Customer/Division</span></li><li><span>Search screen should display Project, Description, Customer Name and Division Name for selection</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">GRS No.</span></td><td colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>Show all the created GRS No.</span><span><span> </span>or based on selected Customer/Division, Part Number, Project's GRS No. for selection regardless of logged-on Customer/Division</span></li><li><span>Search screen display<span> </span></span><span>GRS No., Inspection Lot, Part Number, Part Number Description, Vendor Name</span><span><span> </span>for selection</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection Lot</span></td><td colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>Show all the created Inspection Lot</span><span><span> </span>or based on selected Customer/Division, Part Number, Project GRS No.'s Inspection Lot for selection regardless of logged-on Customer/Division</span></li><li><span>Search screen should display Inspection Lot,<span> </span></span><span>GRS No., Inspection Lot, Part Number, Part Number Description, Vendor Name</span><span><span> </span>for selection</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Vendor</span></td><td colspan="1" class="confluenceTd"><ul style="text-align: left;"><li><span>Show all the Vendor</span><span><span> </span>or based on selected Customer/Division, Part Number, Project GRS No., Inspection Lot's Vendor for selection regardless of logged-on Customer/Division</span></li><li><span>Search screen should display<span> </span></span><span>Vendor Name</span>, Vendor Code, Vendor Description<span><span> </span>for selection</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Status</span></td><td colspan="1" class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">Show <span>null,</span><span>Pending for Inspection, Draft, Pending Approval, Completed, Rejected，QN Inprocess，QN Closed</span></span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Creation Date (From-To)</span></td><td colspan="1" class="confluenceTd"><ul><li><span>Always default to 1 month</span></li><li><span>IQC Form creation date</span></li></ul></td></tr></tbody></table>


- or based on selected Customer/Division, Part Number, Project’s GRS No. for selection regardless of logged-on Customer/Division


- Search screen display
GRS No., Inspection Lot, Part Number, Part Number Description, Vendor Namefor selectionInspection Lot

- Show all the created Inspection Lot
or based on selected Customer/Division, Part Number, Project GRS No.’s Inspection Lot for selection regardless of logged-on Customer/Division
- Search screen should display Inspection Lot,
GRS No., Inspection Lot, Part Number, Part Number Description, Vendor Namefor selectionVendor

- Show all the Vendor
or based on selected Customer/Division, Part Number, Project GRS No., Inspection Lot’s Vendor for selection regardless of logged-on Customer/Division
- Search screen should display
Vendor Name, Vendor Code, Vendor Descriptionfor selectionStatus

- Show

null,Pending for Inspection, Draft, Pending Approval, Completed, Rejected，QN Inprocess，QN ClosedCreation Date (From-To)

- Always default to 1 month

- IQC Form creation date
**A List of Fields** 
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Fields</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">GRS.No</td><td class="confluenceTd"><ul style="text-align: left;"><li><span>Show the GRS Number based on filter</span></li><li><span>GRS Number is clickable and direct user to Inspection page to allow user view the IQC Form (and Inspection information).</span></li></ul></td></tr><tr><td class="confluenceTd">Inspection Lot</td><td class="confluenceTd"><ul style="text-align: left;"><li><span>Based on filter/show based on GRS Number</span></li></ul></td></tr><tr><td class="confluenceTd">Inspection Plan</td><td class="confluenceTd"><ul style="text-align: left;"><li><span>Display based on the selected Revision in IQC Form</span></li></ul></td></tr><tr><td class="confluenceTd">Customer Name</td><td class="confluenceTd"><ul style="text-align: left;"><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Part Number</td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Part Number Description</td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">MPN</td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Vendor</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Project</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Quantity</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Inspected Qty</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Creation Date</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Result</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span>Based on filter/show based on GRS Number final inspection result</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">VIS Total Defect Qty</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Fun/Reoriented Failed Qty</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Fun/Measurement Failed Qty</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">DIM Failed Qty</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Inspector</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span style="color: black;">View Button</span></li><li><span style="color: black;">Allow user to view the inspector information</span></li><li><span>The inspector section to be displayed is based on the available section in IQC form.</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">QN</span></p></td><td class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td class="confluenceTd"><p><span style="color: black;">Dispose</span></p></td><td class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Status</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Inspection Result Submitter</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span>Base on filter/show based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Inspection Result Submission Datetime</span></p></td><td colspan="1" class="confluenceTd"><ul><li><span style="color: rgb(0,0,0);">The inspection result submission datetime based on GRS Number</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: black;">Final Approval completion Datetime</span></p></td><td colspan="1" class="confluenceTd"><ul><li>Show the inspection result approved datetime based on GRS Number</li></ul></td></tr></tbody></table>



#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/122750725.png)

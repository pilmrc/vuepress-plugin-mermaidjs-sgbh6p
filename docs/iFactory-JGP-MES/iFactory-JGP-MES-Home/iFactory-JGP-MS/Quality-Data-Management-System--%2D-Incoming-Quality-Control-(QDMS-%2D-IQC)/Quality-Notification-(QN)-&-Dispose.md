# Introduction

Quality Notification & Dispose is a screen to let user view the QN and Dispose code that synced from SAP and able to provide remark for the IQC form.


### **How to get there?** 



::: mermaid
graph LR
A("IQC CONFIRMATION")-->0("QUALITY NOTIFICATION & DISPOSE")

:::


#### **Screen Activity** 


Quality Notification & Dispose enables user to perform the following activities:

- View Quality Notification and Dispose code

- Update Remark info


#### **Permission ( iFactory.IQC)** 



- Quality Notification & Dispose

- Can modify QN & Dispose IQC form


#### **Precondition** 



- IQC form's Inspection Result need to be confirmed as Failed

.


#### **Screen Specification** 



- User is able to view all the Quality Notification and Dispose based on the assigned data partition regardless of logged-on customer/division.

- All the IQC form
with status = Completed/ QN In Process/ QN Closed and Inspection Final result = Failed
will be listed in IQC Form View.
- Once clicked on edit,all the fields are disabled for editing except Remark info section is enabled for user to provide remark.

- User will be able to view the inserted Quality notification and Dispose Code.


#### **Quality Notification and Dispose View** 


<table class="relative-table wrapped confluenceTable" style="width: 1373.0px;"><colgroup><col style="width: 255.359px;" /><col style="width: 1116.64px;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Action</td><td style="text-align: left;" class="confluenceTd"><p>Allow user to edit the IQC form. Only Remark field will be enabled for editing.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">GRS no.</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>GRS no. ( Goods receipt slip ) that submitted for Inspection.</p><p>This is clickable to view the entire details of GRS no.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Inspection Lot</td><td style="text-align: left;" colspan="1" class="confluenceTd">Inspection Lot that associated to GRS no.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Batch Number</td><td style="text-align: left;" colspan="1" class="confluenceTd">Batch Number that associated to GRS no and Inspection Lot</td></tr><tr><td style="text-align: left;" class="confluenceTd">Part Number</td><td style="text-align: left;" class="confluenceTd">Part number that inspected</td></tr><tr><td style="text-align: left;" class="confluenceTd">Part Number Description</td><td style="text-align: left;" colspan="1" class="confluenceTd">Description of the part number.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Inspection Plan Name</td><td style="text-align: left;" colspan="1" class="confluenceTd">Inspection Plan that associated to GRS no.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Project</td><td style="text-align: left;" colspan="1" class="confluenceTd">Project that associated to the part number</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Vendor</td><td style="text-align: left;" colspan="1" class="confluenceTd">Vendor that supplied the part number.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Status</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>IQC form with the following statues will be display here.</p><ul><li>Completed - All the levels have approved the IQC form and final result is fail</li><li>QN In Process -Only Quantity Notification is synced from SAP</li><li>QN Closed-Both Quantity Notification and Dispose Code are synced from SAP</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Inspector</td><td colspan="1" class="confluenceTd">Inspector that inspected the part number.</td></tr><tr><td colspan="1" class="confluenceTd">Inspection Final Result</td><td colspan="1" class="confluenceTd">The IQC form that confirmed as FAILED .</td></tr><tr><td colspan="1" class="confluenceTd">Quality Notification </td><td colspan="1" class="confluenceTd">Quality Notification that synced from SAP</td></tr><tr><td colspan="1" class="confluenceTd">QN Issued Date ( From -To)</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">When the QN auto inserted from SAP.</span></td></tr><tr><td colspan="1" class="confluenceTd">Dispose Code</td><td colspan="1" class="confluenceTd">Dispose Code that synced from SAP</td></tr></tbody></table>





#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/116359476.png)

# Introduction

Sourcing Inspection (SI ) Report  is page to let user to register the inspection result and upload SI report when perform inspection off site.


### **How to get there?** 



::: mermaid
graph LR
A("IQC SUBMISSION FORM")-->0("SOURCING INSPECTION REPORT")

:::


#### **Screen Activity** 


Sourcing Inspection Report enables user to perform the following activities:

- Create, view, update and delete the record


- Upload / Download the SI report


#### **Permission ( iFactory.IQC)** 



- IQC SI Report

- Can modify IQC SI Report


#### **Precondition** 


ifactory configurations below need to be configured before using this screen

- Customer/Division


- Project


- Material Manufacturer


- Material



#### **Screen Dependency** 


The following screen(s) has dependency with Sourcing Inspection Report

- IQC Inspection Form

- IQC Returned

- IQC Confirmation


#### **Screen Specification** 



- User is able to view all the configuration based on the assigned data partition regardless of logged-on customer/division.

- System allows user to select one or multiple IQC SI report from list view then export into Excel format.

- For SI Report export , if there are multiple customer/division or project then it will be separated by semicolon (;)


#### **Fields** 


<table class="relative-table wrapped confluenceTable" style="width: 1373.0px;"><colgroup><col style="width: 255.359px;" /><col style="width: 1116.64px;" /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd">Action</td><td style="text-align: left;" class="confluenceTd"><p>Allow user to edit and update the record anytime.</p><p>Allow user to delete the record if it is not in use.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd">Customer/Division</td><td style="text-align: left;" class="confluenceTd">Multiple customers/divisions are allowed to configure in this field based on the assigned data partition.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Project</td><td style="text-align: left;" colspan="1" class="confluenceTd">Multiple projects are allowed to configure in this field based on the selected customer/division.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">GRS no.</td><td style="text-align: left;" colspan="1" class="confluenceTd">GRS no. ( Goods receipt slip ) that given for the part number.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Part Number</td><td style="text-align: left;" class="confluenceTd">Part number that need to be inspected.</td></tr><tr><td style="text-align: left;" class="confluenceTd">Part Number Description</td><td style="text-align: left;" colspan="1" class="confluenceTd">Description of the selected part number.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">MPN</td><td style="text-align: left;" colspan="1" class="confluenceTd">MPN ( manufacturing part number ) that given to the part number.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Vendor</td><td style="text-align: left;" colspan="1" class="confluenceTd">Vendor that supply the part number.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"> Lot Qty</td><td style="text-align: left;" colspan="1" class="confluenceTd">Lot Qty of the part number that to be received.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"> Inspected Qty</td><td style="text-align: left;" colspan="1" class="confluenceTd">Qty that to be inspected</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"> Inspection Result</td><td style="text-align: left;" colspan="1" class="confluenceTd">The part number inspection result.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"> VIS total Defect Qty</td><td style="text-align: left;" colspan="1" class="confluenceTd">The total defect quantity of visual inspection.</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"> Dims total failed Qty</td><td style="text-align: left;" colspan="1" class="confluenceTd">The total failed quantity of dimension inspection.</td></tr><tr><td class="confluenceTd"> Fun total Failed Qty</td><td class="confluenceTd">The total failed quantity of functional inspection.</td></tr><tr><td class="confluenceTd"> Username</td><td class="confluenceTd">The user who has done the inspection.</td></tr><tr><td class="confluenceTd">Inspection Date</td><td class="confluenceTd">The inspection date that part number inspected.</td></tr><tr><td class="confluenceTd"> Status</td><td class="confluenceTd">The inspection status whether is Pass or fail.</td></tr><tr><td class="confluenceTd"> QN</td><td class="confluenceTd">Quality Notification that given to the part number which has failed the inspection.</td></tr><tr><td class="confluenceTd"> Dispose</td><td class="confluenceTd">Dispose code that given to the part number once the QN is confirmed.</td></tr><tr><td class="confluenceTd">Remarks</td><td class="confluenceTd">Remark that given to the part number inspection.</td></tr><tr><td colspan="1" class="confluenceTd">Attachment </td><td colspan="1" class="confluenceTd"><p>User is able to provide report name and upload multiple reports.</p><p>Once report is uploaded , </p><ul><li style="list-style-type: none;"><ul><li><span>allow user to download uploaded report </span></li><li><span>allow user to remove uploaded report</span></li><li><span>system captures uploaded datetime and uploaded by.</span></li></ul></li></ul></td></tr></tbody></table>



#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/110920584.png)

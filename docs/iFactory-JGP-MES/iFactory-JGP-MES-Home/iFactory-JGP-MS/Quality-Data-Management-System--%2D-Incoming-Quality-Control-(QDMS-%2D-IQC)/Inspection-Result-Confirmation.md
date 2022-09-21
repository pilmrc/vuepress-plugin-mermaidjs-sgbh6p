# Introduction

Inspection Result Confirmation is a screen to let approver approval the inspection result. that associated to the seleted the approval workflow 


### **How to get there?** 



::: mermaid
graph LR
A("IQC CONFIRMATION")-->0("INSPECTION RESULT CONFIRMATION ")

:::


#### **Screen Activity** 


IQC Inspection View enables user to perform the following activities:

- Filter the list view

- Reject the inspection result

- Approval the inspection result

- View the inspection result

- Delete the inspection result

- Validate test report validity.


#### **Permission ( iFactory.IQC)** 



- Can Delete IQC Inspection

- Can Approval and Reject IQC Inspection

- Can View IQC Inspection


#### **Precondition** 



- Inspection Result Confirmation  for the IQC Inspection need to be submitted


- Seleted a approval workflow



#### **Screen Dependency** 



- IQC Inspection

- IQC Returned

- WorkFlow Maintenance

- Quality Notification & Dispose



#### **Screen Specification** 



- The
Inspection Result Confirmation
data comes from the submitted IQC nspection
- User is able to view

the inspection status of pending approval, 
Just needing this user to approval regardless of logged-on customer/division and whether relate to the customer/divsion permission

- User can delete the iqc inspection if user has permission



#### **Inspection Result Confirmation View** 


<table class="relative-table wrapped confluenceTable" style="width: 98.8806%;"><colgroup><col style="width: 13.2662%;" /><col style="width: 86.7059%;" /></colgroup><tbody><tr><th class="confluenceTh">Field</th><th class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd">Action</td><td colspan="1" class="confluenceTd">allow user to delete the iqc inspection if user has this permission</td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">PLM Link</span></td><td class="confluenceTd"><span style="color: rgb(23,43,77);">PLM Links that associated to part number will auto display.</span></td></tr><tr><td class="confluenceTd"><span style="color: rgb(23,43,77);">GRS.No</span></td><td class="confluenceTd"><p style="text-align: left;">GRS no. ( Goods receipt slip ) that submitted for Inspection.</p><p style="text-align: left;">This is clickable to view the entire details of GRS no.</p></td></tr><tr><td colspan="1" class="confluenceTd">Inspection Lot</td><td colspan="1" class="confluenceTd"><span style="color: rgb(23,43,77);">Inspection Lot that associated to part number will auto display.</span></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Part Number</span></td><td class="confluenceTd"><span style="color: rgb(23,43,77);">Part number that  be inspected.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Batch Number</span></td><td colspan="1" class="confluenceTd">Batch Number <span style="color: rgb(23,43,77);">that associated to part number will auto display.</span></td></tr><tr><td class="confluenceTd"><span style="color: rgb(0,0,0);">Approval Status</span></td><td class="confluenceTd">Show all pending for approval</td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Approval History</span></p></td><td class="confluenceTd"><p>Show the every approval level </p><ul><li><span>Executed By</span></li><li><span>Executed DateTime</span></li><li><span>Approval Level</span></li><li><span>Workflow Name</span></li><li><span>Approval Status (Pending Approval, Rejected, Approved)</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Sample Quantity</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Sample Quantity <span style="color: rgb(23,43,77);"> that associated to part number will auto display.</span></span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection Plan Revision</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection Plan Revision that user seleted </span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection Plan Name</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspection Plan Name that user seleted </span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Vendor</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Vendor <span style="color: rgb(23,43,77);"> that associated to part number will auto display.</span></span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Project</span></td><td colspan="1" class="confluenceTd">Project <span style="color: rgb(0,0,0);"><span style="color: rgb(23,43,77);">that associated to part number will auto display.</span></span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Creation Date</span></td><td colspan="1" class="confluenceTd">IQC Form creation date</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Inspector</span></td><td colspan="1" class="confluenceTd">All inspectors in <span style="color: rgb(0,0,0);">Inspector section</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Result</span></td><td colspan="1" class="confluenceTd"><p>The inspection result</p><ul><li>Fail</li><li>Pass</li></ul></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Submitter</span></td><td colspan="1" class="confluenceTd">Who submitter the IQC Inspection </td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Submission Datetime</span></td><td colspan="1" class="confluenceTd"><p>The IQC Inspection  submit time</p></td></tr></tbody></table>


- **Approval or Reject Inspection Result**

<table class="wrapped relative-table confluenceTable" style="width: 100.0%;"><colgroup><col style="width: 13.2199%;" /><col style="width: 86.7317%;" /></colgroup><tbody><tr><th class="confluenceTh">Action</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Approved</td><td class="confluenceTd"><div class="content-wrapper"><ol><li><span>Allow user to approve the inspection result.<br /></span><ul><li><span>Based on approval workflow configuration, either 1 of approval level approver approved, then it is approved.<br /></span></li><li><span>Based on approval workflow configuration, if there is next level approval then</span></li><ul><li><span>Approval status should remain as “Pending Approval”.</span></li><li><span>Either 1 of approver approved, then</span></li><li><span>System will trigger an email notification to</span><span> next level all approvers and cc submitter,the emial as below</span></li><li><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/116359906.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/116359906.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="116359906" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-6-9-11-9-42.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="116359198" data-linked-resource-container-version="14" /></span></li><li><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/116359907.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/116359907.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="116359907" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-6-9-11-10-59.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="116359198" data-linked-resource-container-version="14" /></span></li></ul></ul><ul><li><span>Based on approval workflow configuration, if there is no next level approval then</span></li></ul><ul><li style="list-style-type: none;"><ul><li><span>The approval status become to “Approved”</span></li><li><span>The inspection status become to “Completed” if the inspection result has been approved by all levels. </span></li><li><span>If the Inspection Result final result = Fail then list the form in<span style="color: rgb(0,0,0);"> Quality Notification & Dispose</span> screen.</span></li></ul></li><li><span>Even if the reports expired，approver still can approval </span></li></ul></li></ol></div></td></tr><tr><td class="confluenceTd">Rejected</td><td class="confluenceTd"><div class="content-wrapper"><ol><li><span>Allow user to reject the inspection result with comment whatever the inspection result final result = Pass/Fail.<br /></span><ul><li>If approver to reject the inspection result,they need to input comment.</li><li><span>Once inspection result is rejected, it always returns inspection result to submitter regardless any level of approval.</span></li><li><span>The approval status and inspection status become to “Rejected”.</span><span><br /></span></li><li><span>Allow user to go to the Form Return screen without any action.</span></li><li><span>System will trigger email notification to submitter and cc the level all approvers.the email as below</span></li><li><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="250" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/116359908.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/116359908.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="116359908" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2022-6-9-11-11-33.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="116359198" data-linked-resource-container-version="14" /></span></li></ul></li></ol></div></td></tr></tbody></table>







#### Attachments

[image2019-8-27_11-26-55.png](/.attachments/116359202.png)
[image2022-6-6_16-54-56.png](/.attachments/116359810.png)
[image2022-6-6_16-55-26.png](/.attachments/116359811.png)
[image2022-6-9_11-9-42.png](/.attachments/116359906.png)
[image2022-6-9_11-10-59.png](/.attachments/116359907.png)
[image2022-6-9_11-11-33.png](/.attachments/116359908.png)

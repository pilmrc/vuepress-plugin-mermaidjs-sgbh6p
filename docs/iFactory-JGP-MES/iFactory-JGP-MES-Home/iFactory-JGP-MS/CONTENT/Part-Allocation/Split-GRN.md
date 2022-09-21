# Introduction

Split GRN
screen is used to split a GRN in two or more GRNs. This is required when the same part has to be placed in different locations at same time. The split is possible only when a GRN is NOT marked as Prohibited (see [GRN ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Split-GRN.md)for details)/ blocked/ associated to feeder. The GRN field can support up to 50 chars to be used by Non-Unique Identifier.It is possible to split GRN with quantity 0, but the quantity of the new GRN cannot be greater than 0. In general the sum of the quantity of all GRN must be equal to the quantity of the original GRN.
For example:
GRN1 qty 100
It can be split in 3 different GRN: GRN1 with qty1, GRN2 with qty2, GRN3 with qty3.
Qty1+Qty2+Qty3=100
If GRN1 Qty 0, then also GRN2, GRN3 will have Qty 0.



### How to get there?



![image2020-7-6_14-8-3.png](/.attachments/73236873.png)


Then


::: mermaid
graph LR
A("GRN")-->0("SPLIT GRN")

:::


#### Screen Activity


Split GRN enables user to perform the following activity:

- Split GRN creating a new GRN

- Split GRN creating a new GRN (from a pre-printed label)

- Split GRN using an existing GRN (the existing GRN should be related to the same SAP material group. This check is not performed by the tool)


#### Post Condition


GRN created/split can be managed as any other GRN and can be associated to the assembling route step and BOM component in order to be assembled in production. These associations are performed in 
[Split GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Split-GRN.md),  [Split GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Split-GRN.md)and [Preload ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Split-GRN.md)screens.

#### Screen Dependency


The following screen(s) has dependency with Split GRN:

- [Split GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Split-GRN.md)
![image2020-7-6_15-35-22.png](/.attachments/73236874.png)




#### Fields 


**Split GRNs Tab:** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Printer</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>User have option to select the Printer for label printing. Upon page load, show the default printer with resource <span style="color: rgb(0,0,0);">associated according to the current local desktop resource IP Address. (Resource > Security > IP Address)</span></p><p><span style="color: rgb(0,0,0);"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" alt="Image" src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/8d9e7748-b55a-45bc-b86c-d97a1aa06027?fileName=image.png" data-image-src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/8d9e7748-b55a-45bc-b86c-d97a1aa06027?fileName=image.png" /></span></span></p><p><span style="color: rgb(0,0,0);">Printer resource should be associated at the Printer Maintenance:</span></p><p><span style="color: rgb(0,0,0);"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" alt="Image" src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/6a855fb1-9d2b-4568-b15d-4506c13d21bf?fileName=image.png" data-image-src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/6a855fb1-9d2b-4568-b15d-4506c13d21bf?fileName=image.png" /></span></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Printer Number</td><td colspan="1" class="confluenceTd">Show the printer number according to the selected printer</td></tr><tr><td colspan="1" class="confluenceTd">Print</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>This option is "on" to allow the GRN label to be printed whereas no label print out if option is "off" upon save.</p><p>Label print document is referring to the configured "GRN Document" at "Material Maintenance"</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="350" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73236875.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73236875.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="73236875" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-6-15-1-46.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919257" data-linked-resource-container-version="5" /></span></p></div></td></tr><tr><td class="confluenceTd"><p>GRN</p></td><td class="confluenceTd"><p>An existing GRN to be split from</p></td></tr><tr><td class="confluenceTd"><p>Part Number</p></td><td class="confluenceTd"><p>It is the material that GRN is referring to - Read Only</p></td></tr><tr><td class="confluenceTd"><p>Vendor</p></td><td class="confluenceTd"><p>It is the vendor name for the material related to the GRN - Read Only</p></td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">It is the quantity of components of the GRN - Read Only</td></tr><tr><td colspan="1" class="confluenceTd">Lot Code</td><td colspan="1" class="confluenceTd">It is the Lot of the material received - Read Only</td></tr><tr><td colspan="1" class="confluenceTd">Date Code</td><td colspan="1" class="confluenceTd">It is the date of the lot code - Read Only</td></tr><tr><td colspan="1" class="confluenceTd">Split GRN Type</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Option:</p><ul><li>Auto Create New GRN (request new GRN and label)<ul><li><span>Source/Parent GRN must be 16 only numeric digits</span></li><li>Auto generated GRN is only applicable to 16 digits<ul><li><span>First 10 digits generate according to the 10 digits of the Source GRN. e.g. Source GRN 2223330000000004, First 10 digits: 2223330000</span></li><li>Subsequent 3 digits always '000'</li><li><span>Last 3 digits is the running sequence number 001 - 999</span></li><ul style="margin-left: 0.375in;"><li><span>Running sequence number is referring to the current greatest sequence number which is sharing among the Part number. e.g. Say current sequence number is 90, Part Number: JK-UNSMPART05 need to split is 2223330000001002 and the Auto Generated GRN should be 2223330000</span><span style="color: rgb(237,125,49);">000</span>091 (90+1), subsequent split GRN could be from Part Number: JK-UNSMPART06 GRN is 4445550000002009 and Auto Generated GRN should be 4445550000<span style="color: rgb(237,125,49);">000</span><span>092 (91+1).</span></li><li><span>If the running sequence is reached 999, system to reset the number back to 1.</span></li><li><span>If System auto generated GRN found duplicated, increase sequence number (+1) until no duplication.</span></li></ul></ul></li></ul></li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="800" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73237148.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73237148.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="73237148" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-7-15-48-22.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919257" data-linked-resource-container-version="5" /></span></p><ul><li>Create GRN from existing label (user shall have a pre-printed GRN label to scan, system to create a new GRN according to the scanned GRN)<ul><li>supported 16 alphanumeric characters / GRN Validation Mask if configured</li></ul></li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="800" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73237144.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73237144.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="73237144" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-7-15-17-29.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919257" data-linked-resource-container-version="5" /></span></p><ul><li>Existing GRN (user could provide the GRN created previously. system to show the current remaining quantity after verified)<ul><li><span>if GRN is blocked/ is set to "Use Prohibited"/ is associated to feeder are not able to find from the Search feature</span></li><li><span>Given GRN Part Number, Vendor, Date code and Lot Code should be the same with Source/Parent GRN</span></li><li>Quantity request to be split should not greater than the Source/Parent GRN Quantity or lesser than the Remaining Quantity</li></ul></li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="800" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73237145.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73237145.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="73237145" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-7-15-18-20.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919257" data-linked-resource-container-version="5" /></span></p><p><br /></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Quantity (Split GRN Type)</td><td colspan="1" class="confluenceTd">It is the quantity requested to the split GRN which cannot be greater than the Quantity (Read Only) of Source/Parent GRN</td></tr><tr><td colspan="1" class="confluenceTd">Spilt GRN Button</td><td colspan="1" class="confluenceTd">The button will be activated when all fields in "Split GRN Type" filled up. Upon button triggered, new/existing GRN added in the Split GRN grid and source/parent GRN quantity on the page to be updated accordingly.</td></tr><tr><td colspan="1" class="confluenceTd">Remove Selected GRN button</td><td colspan="1" class="confluenceTd">This button will be activated when an item is added to Spilt GRN grid. Upon button triggered, source/parent GRN quantity to be reverted.</td></tr><tr><td colspan="1" class="confluenceTd"><p>Save Button</p><p>(top-right corner)</p></td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="37" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73236878.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73236878.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="73236878" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-6-15-42-3.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919257" data-linked-resource-container-version="5" /></span>Upon save triggered, all the records from grid and source/parent GRN quantity to be added/updated.</p></div></td></tr><tr><td colspan="1" class="confluenceTd">Clear Button</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="40" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73236879.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73236879.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="73236879" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-6-15-43-36.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919257" data-linked-resource-container-version="5" /></span>To clear current screen</p></div></td></tr></tbody></table>



- **History Tab:**

![image2020-7-7_16-9-59.png](/.attachments/73237149.png)


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span style="color: rgb(0,0,0);">New/Existing GRN saved during the split GRN . Show all the Child GRN that split from the Source/Parent GRN.</span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Current Quantity</td><td colspan="1" class="confluenceTd">Remaining quantity of the GRN</td></tr><tr><td colspan="1" class="confluenceTd">Split Quantity</td><td colspan="1" class="confluenceTd">Quantity been split during Split GRN </td></tr><tr><td colspan="1" class="confluenceTd">Split By</td><td colspan="1" class="confluenceTd">Person that performed the Split GRN</td></tr><tr><td colspan="1" class="confluenceTd">Split On</td><td colspan="1" class="confluenceTd">Date time that the Split GRN performed. It is sorted by ascending order.</td></tr></tbody></table>

**If given Split GRN is existing GRN with different parent GRN, system to show the split quantity of the Source GRN only.**  
E.g. Total quantity

150 
of GRN (
2223330000000007
) from 2 different source/parent GRN:
When Split GRN is referring to the source GRN (
**2223330000001001** ), history to show the Split history as below:GRN
2223330000000007
Split quantity
100
When Split GRN is referring to the source GRN (
**2223330000001002** ), history to show the Split history as below:GRN
2223330000000007
Split quantity
50



#### Attachments

[image2017-9-4 12:17:11.png](/.attachments/29919258.png)
[image2017-6-22 15:53:50.png](/.attachments/29919259.png)
[image2017-6-22 15:52:0.png](/.attachments/29919260.png)
[image2017-6-22 15:51:7.png](/.attachments/29919261.png)
[image2017-6-22 15:45:47.png](/.attachments/29919262.png)
[image2017-6-22 15:36:33.png](/.attachments/29919263.png)
[image2017-6-22 15:35:18.png](/.attachments/29919264.png)
[image2017-6-22 15:26:3.png](/.attachments/29919265.png)
[image2017-5-26 16:37:20.png](/.attachments/29919266.png)
[image2020-7-6_14-8-3.png](/.attachments/73236873.png)
[image2020-7-6_15-35-22.png](/.attachments/73236874.png)
[image2020-7-6_15-1-46.png](/.attachments/73236875.png)
[image2020-7-6_15-42-3.png](/.attachments/73236878.png)
[image2020-7-6_15-43-36.png](/.attachments/73236879.png)
[image2020-7-7_15-16-19.png](/.attachments/73237143.png)
[image2020-7-7_15-17-29.png](/.attachments/73237144.png)
[image2020-7-7_15-18-20.png](/.attachments/73237145.png)
[image2020-7-7_15-48-22.png](/.attachments/73237148.png)
[image2020-7-7_16-9-59.png](/.attachments/73237149.png)

# Introduction

Split GRN
screen is used to split a GRN in two or more GRNs. This is required when the same part has to be placed in different locations at same time. The split is possible only when a GRN is NOT marked as Prohibited (see GRN for details)/ blocked/ associated to feeder. The GRN field can support up to 50 chars to be used by Non-Unique Identifier.It is possible to split GRN with quantity 0, but the quantity of the new GRN cannot be greater than 0. In general the sum of the quantity of all GRN must be equal to the quantity of the original GRN.
For example:
GRN1 qty 100
It can be split in 3 different GRN: GRN1 with qty1, GRN2 with qty2, GRN3 with qty3.
Qty1+Qty2+Qty3=100
If GRN1 Qty 0, then also GRN2, GRN3 will have Qty 0.



### How to get there?





::: mermaid
graph LR
A("SETUP VERIFICATION")-->0("SPLIT GRN")

:::


#### Precondition



- The following permissions required for access Split GRN screen.

- SV Application with permission “Can Access Split GRN” set to ON

- Option permission

- Allow to Change Label Print Qty

- Allow to Select Is Not Final Split



#### Screen Activity


Split GRN enables user to perform the following activity:

- Split GRN creating a new GRN (applicable for both None MSD and MSD GRN)

- Split GRN creating a new GRN (from a pre-printed label, applicable for both None MSD and MSD GRN)

- Split GRN using an existing GRN (applicable for None MSD GRN only. The existing GRN should be related to the same SAP material group. This check is not performed by the tool)


#### Post Condition


GRN created/split can be managed as any other GRN and can be associated to the assembling route step and BOM component in order to be assembled in production. These associations are performed in Split GRN and Preload screens.


#### Screen Dependency


The following screen(s) has dependency with Split GRN:

- GRN Maintenance

- [Open Non MSD GRN Box](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Setup-Verification/Open-Non-MSD-GRN-Box.md)

- GRN Storage Manager

- [Customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)
/Division’s Field Retain Tim Limit![image2021-5-4_17-47-32.png](/.attachments/91128266.png)




#### Fields 


**Split GRNs Tab:** 
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Printer</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>User have option to select the Printer for label printing. Upon page load, show the default printer with resource <span style="color: rgb(0,0,0);">associated according to the current local desktop resource IP Address. (Resource > Security > IP Address)</span></p><p><span style="color: rgb(0,0,0);"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" alt="Image" src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/8d9e7748-b55a-45bc-b86c-d97a1aa06027?fileName=image.png" data-image-src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/8d9e7748-b55a-45bc-b86c-d97a1aa06027?fileName=image.png" /></span></span></p><p><span style="color: rgb(0,0,0);">Printer resource should be associated at the Printer Maintenance:</span></p><p><span style="color: rgb(0,0,0);"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" alt="Image" src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/6a855fb1-9d2b-4568-b15d-4506c13d21bf?fileName=image.png" data-image-src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/6a855fb1-9d2b-4568-b15d-4506c13d21bf?fileName=image.png" /></span></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Printer Number</td><td colspan="1" class="confluenceTd">Show the printer number according to the selected printer</td></tr><tr><td colspan="1" class="confluenceTd">Print</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>This option is "on" to allow the GRN label to be printed whereas no label print out if option is "off" upon save.</p><p>Label print document is referring to the configured "GRN Document" at "Material Maintenance" or “GRN Document” at “Customer's Division tab”. Priority will be based on Material's GRN Document setting.</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="350" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/91128254.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/91128254.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="91128254" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-6-15-1-46.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="91128246" data-linked-resource-container-version="1" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Label Print Quantity</td><td colspan="1" class="confluenceTd"><p>Control by Allow to Change Label Print Qty permission. If set to ON, will show and allow user to have option to change the printer label quantity. If set to OFF it will hidden with defaulted as 1.</p></td></tr><tr><td colspan="1" class="confluenceTd">Is Not Final Split Toggle</td><td colspan="1" class="confluenceTd"><p>Control by Allow to Select Is Not Final Split permission. If set to ON then toggle will be shown and user has option to decide when is final split from parent GRN to child GRN. By default, this toggle is set to OFF.</p><ul><li>Toggle set to OFF, means this is finial split, both parent and child GRN(s) will be complete split with label print (if printer is ON).</li><li>Toggle set to ON, means the parent GRN will remain after split child as expected to use it to split next child GRN. Only child GRN will be print (if printer is ON).</li></ul></td></tr><tr><td class="confluenceTd"><p>GRN</p></td><td class="confluenceTd"><p>An existing GRN to be split from (Parent GRN). The following bag status and remaining time calculation logic will be apply on MSD GRN:</p><ul><li>If the MSD GRN is already in Open Bag status before scan in parent GRN, the open bag time will be captured as it is, after complete split, both parent and child GRN will remain as Open Bag status. Child GRN will inherit the parent history. The remaining time will keep calculate until the GRN is manually Closed Bag or Inside DryBox status.</li><li>If the MSD GRN is in Close Bag status during scan in parent GRN, system will auto open bag for parent GRN and start calculate the remaining time. After split the GRN will be auto close bag.</li></ul></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>It is the material that GRN is referring to - Read Only</p></td></tr><tr><td class="confluenceTd"><p>Vendor</p></td><td class="confluenceTd"><p>It is the vendor name for the material related to the GRN - Read Only</p></td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">It is the quantity of components of the GRN - Read Only</td></tr><tr><td colspan="1" class="confluenceTd">Lot Code</td><td colspan="1" class="confluenceTd">It is the Lot of the material received - Read Only</td></tr><tr><td colspan="1" class="confluenceTd">Date Code</td><td colspan="1" class="confluenceTd">It is the date of the lot code - Read Only</td></tr><tr><td colspan="1" class="confluenceTd">Split GRN Type</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Option:</p><ul><li>Auto Create New GRN (request new GRN and label)<ul><li><span>Applicable for both None MSD and MSD GRN</span></li><li><span>Source/Parent GRN must be 16 only numeric digits</span></li><li>Auto generated GRN is only applicable to 16 digits<ul><li><span>First 10 digits generate according to the 10 digits of the Source GRN. e.g. Source GRN 2223330000000004, First 10 digits: 2223330000</span></li><li>Subsequent 3 digits always '000'</li><li><span>Last 3 digits is the running sequence number 001 - 999</span></li><ul style="margin-left: 0.375in;"><li><span>Running sequence number is referring to the current greatest sequence number which is sharing among the Part number. e.g. Say current sequence number is 90, Part Number: JK-UNSMPART05 need to split is 2223330000001002 and the Auto Generated GRN should be 2223330000</span><span style="color: rgb(237,125,49);">000</span>091 (90+1), subsequent split GRN could be from Part Number: JK-UNSMPART06 GRN is 4445550000002009 and Auto Generated GRN should be 4445550000<span style="color: rgb(237,125,49);">000</span><span>092 (91+1).</span></li><li><span>If the running sequence is reached 999, system to reset the number back to 1.</span></li><li><span>If System auto generated GRN found duplicated, increase sequence number (+1) until no duplication.</span></li></ul></ul></li></ul></li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="800" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/91128248.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/91128248.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="91128248" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-7-15-48-22.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="91128246" data-linked-resource-container-version="1" /></span></p><ul><li>Create GRN from existing label (user shall have a pre-printed GRN label to scan, system to create a new GRN according to the scanned GRN)<ul><li>Applicable for both None MSD and MSD GRN</li><li>supported 16 alphanumeric characters / GRN Validation Mask if configured</li></ul></li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="800" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/91128250.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/91128250.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="91128250" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-7-15-17-29.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="91128246" data-linked-resource-container-version="1" /></span></p><ul><li>Existing GRN (user could provide the GRN created previously. system to show the current remaining quantity after verified)<ul><li><span>Applicable for None MSD GRN only</span></li><li><span>if GRN is blocked/ is set to "Use Prohibited"/ is associated to feeder are not able to find from the Search feature</span></li><li><span>Given GRN Part Number, Vendor, Date code and Lot Code should be the same with Source/Parent GRN</span></li><li>Quantity request to be split should not greater than the Source/Parent GRN Quantity or lesser than the Remaining Quantity</li></ul></li></ul><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="800" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/91128249.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/91128249.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="91128249" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-7-15-18-20.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="91128246" data-linked-resource-container-version="1" /></span></p><p><br /></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Quantity (Split GRN Type)</td><td colspan="1" class="confluenceTd">It is the quantity requested to the split GRN which cannot be greater than the Quantity (Read Only) of Source/Parent GRN</td></tr><tr><td colspan="1" class="confluenceTd">Spilt GRN Button</td><td colspan="1" class="confluenceTd">The button will be activated when all fields in "Split GRN Type" filled up. Upon button triggered, new/existing GRN added in the Split GRN grid and source/parent GRN quantity on the page to be updated accordingly.</td></tr><tr><td colspan="1" class="confluenceTd">Remove Selected GRN button</td><td colspan="1" class="confluenceTd">This button will be activated when an item is added to Spilt GRN grid. Upon button triggered, source/parent GRN quantity to be reverted.</td></tr><tr><td colspan="1" class="confluenceTd"><p>Save Button</p><p>(top-right corner)</p></td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="37" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/91128253.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/91128253.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="91128253" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-6-15-42-3.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="91128246" data-linked-resource-container-version="1" /></span>Upon save triggered, all the records from grid and source/parent GRN quantity to be added/updated.</p></div></td></tr><tr><td colspan="1" class="confluenceTd">Clear Button</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="40" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/91128252.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/91128252.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="91128252" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-6-15-43-36.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="91128246" data-linked-resource-container-version="1" /></span>To clear current screen</p></div></td></tr></tbody></table>

**Label print document is referring to the configured "GRN Document" at "Material Maintenance" or “GRN Document” at “Customer’s Division tab”. Priority will be based on Material’s GRN Document setting.** 
![image2020-7-6_15-1-46.png](/.attachments/91128254.png)


Label Print Quantity
Control by Allow to Change Label Print Qty permission. If set to ON, will show and allow user to have option to change the printer label quantity. If set to OFF it will hidden with defaulted as 1.
Is Not Final Split ToggleControl by Allow to Select Is Not Final Split permission. If set to ON then toggle will be shown and user has option to decide when is final split from parent GRN to child GRN. By default, this toggle is set to OFF.

- Toggle set to OFF, means this is finial split, both parent and child GRN(s) will be complete split with label print (if printer is ON).

- Toggle set to ON, means the parent GRN will remain after split child as expected to use it to split next child GRN. Only child GRN will be print (if printer is ON).
GRN
An existing GRN to be split from (Parent GRN). The following bag status and remaining time calculation logic will be apply on MSD GRN:

- If the MSD GRN is already in Open Bag status before scan in parent GRN, the open bag time will be captured as it is, after complete split, both parent and child GRN will remain as Open Bag status. Child GRN will inherit the parent history. The remaining time will keep calculate until the GRN is manually Closed Bag or Inside DryBox status.

- If the MSD GRN is in Close Bag status during scan in parent GRN, system will auto open bag for parent GRN and start calculate the remaining time. After split the GRN will be auto close bag.
Material
It is the material that GRN is referring to - Read Only
Vendor
It is the vendor name for the material related to the GRN - Read Only
QuantityIt is the quantity of components of the GRN - Read OnlyLot CodeIt is the Lot of the material received - Read OnlyDate CodeIt is the date of the lot code - Read OnlySplit GRN TypeOption:

- Auto Create New GRN (request new GRN and label)

- Applicable for both None MSD and MSD GRN

- Source/Parent GRN must be 16 only numeric digits

- Auto generated GRN is only applicable to 16 digits

- First 10 digits generate according to the 10 digits of the Source GRN. e.g. Source GRN 2223330000000004, First 10 digits: 2223330000

- Subsequent 3 digits always '000'

- Last 3 digits is the running sequence number 001 - 999

- Running sequence number is referring to the current greatest sequence number which is sharing among the Part number. e.g. Say current sequence number is 90, Part Number: JK-UNSMPART05 need to split is 2223330000001002 and the Auto Generated GRN should be 2223330000
000
091 (90+1), subsequent split GRN could be from Part Number: JK-UNSMPART06 GRN is 4445550000002009 and Auto Generated GRN should be 4445550000000
092 (91+1).
- If the running sequence is reached 999, system to reset the number back to 1.

- If System auto generated GRN found duplicated, increase sequence number (+1) until no duplication.
![image2020-7-7_15-48-22.png](/.attachments/91128248.png)



- Create GRN from existing label (user shall have a pre-printed GRN label to scan, system to create a new GRN according to the scanned GRN)


- Applicable for both None MSD and MSD GRN

- supported 16 alphanumeric characters / GRN Validation Mask if configured
![image2020-7-7_15-17-29.png](/.attachments/91128250.png)



- Existing GRN (user could provide the GRN created previously. system to show the current remaining quantity after verified)


- Applicable for None MSD GRN only

- if GRN is blocked/ is set to "Use Prohibited"/ is associated to feeder are not able to find from the Search feature

- Given GRN Part Number, Vendor, Date code and Lot Code should be the same with Source/Parent GRN

- Quantity request to be split should not greater than the Source/Parent GRN Quantity or lesser than the Remaining Quantity
![image2020-7-7_15-18-20.png](/.attachments/91128249.png)



Quantity (Split GRN Type)It is the quantity requested to the split GRN which cannot be greater than the Quantity (Read Only) of Source/Parent GRNSpilt GRN ButtonThe button will be activated when all fields in "Split GRN Type" filled up. Upon button triggered, new/existing GRN added in the Split GRN grid and source/parent GRN quantity on the page to be updated accordingly.Remove Selected GRN buttonThis button will be activated when an item is added to Spilt GRN grid. Upon button triggered, source/parent GRN quantity to be reverted.Save Button
(top-right corner)
![image2020-7-6_15-42-3.png](/.attachments/91128253.png)


Upon save triggered, all the records from grid and source/parent GRN quantity to be added/updated.
Clear Button![image2020-7-6_15-43-36.png](/.attachments/91128252.png)


To clear current screen




#### Attachments

[image2020-7-7_16-9-59.png](/.attachments/91128247.png)
[image2020-7-7_15-48-22.png](/.attachments/91128248.png)
[image2020-7-7_15-18-20.png](/.attachments/91128249.png)
[image2020-7-7_15-17-29.png](/.attachments/91128250.png)
[image2020-7-7_15-16-19.png](/.attachments/91128251.png)
[image2020-7-6_15-43-36.png](/.attachments/91128252.png)
[image2020-7-6_15-42-3.png](/.attachments/91128253.png)
[image2020-7-6_15-1-46.png](/.attachments/91128254.png)
[image2020-7-6_15-35-22.png](/.attachments/91128255.png)
[image2020-7-6_14-8-3.png](/.attachments/91128256.png)
[image2017-5-26 16:37:20.png](/.attachments/91128257.png)
[image2017-6-22 15:26:3.png](/.attachments/91128258.png)
[image2017-6-22 15:35:18.png](/.attachments/91128259.png)
[image2017-6-22 15:36:33.png](/.attachments/91128260.png)
[image2017-6-22 15:45:47.png](/.attachments/91128261.png)
[image2017-6-22 15:51:7.png](/.attachments/91128262.png)
[image2017-6-22 15:52:0.png](/.attachments/91128263.png)
[image2017-6-22 15:53:50.png](/.attachments/91128264.png)
[image2017-9-4 12:17:11.png](/.attachments/91128265.png)
[image2021-5-4_17-47-32.png](/.attachments/91128266.png)

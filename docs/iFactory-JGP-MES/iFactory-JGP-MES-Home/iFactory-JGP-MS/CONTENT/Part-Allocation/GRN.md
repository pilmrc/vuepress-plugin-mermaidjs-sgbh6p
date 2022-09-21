# Introduction

GRN screen is used to create a new GRN (Goods Received Number) or to retrieve information of a GRN previously created or uploaded from SAP. The GRN is a combination of 
Material Doc Number, Date Code and Sequence Number.GRN usage has been extended to capture 
Non-Unique Identifierthat can be reused multiple times so that the usage of the material can be controlled. User can configure a validation mask 
against Material's GRN field in 
[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Materials-Data-Importer.md)screen. If the validation mask is configured, s
ystem shall validate at GRN maintenance screen when user create a new GRN. 
If no validation mask is configured, system shall remain the 16 alphanumeric GRN validation.


### How to get there?



![image2020-7-6_14-8-3.png](/.attachments/73236870.png)



Then



::: mermaid
graph LR
A("GRN")-->0("GRN MAINTENANCE")

:::


#### Screen Activity


GRN enables user to perform the following activity:

- Create, view, update GRN, label printing



#### Post Condition


GRN is required to be associated to the assembling route step and BOM component in order for the system to assemble in production. These associations are performed in 
[GRN](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN.md),  [GRN](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN.md)and [Preload ](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN.md)screens.


#### Screen Dependency


The following screen(s) has dependency with GRN/Non-Unique Identifier. 
GRN with extended length can be used in all GRN related screens
:
- [GRN Bag and Bake Details](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN.md)

- [Preload](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN.md)
![image2020-7-6_14-2-36.png](/.attachments/73236869.png)




#### Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Printer</p></td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>User have option to select the Printer for label printing. Upon page load, show the default printer with resource <span style="color: rgb(0,0,0);">associated according to the current local desktop resource IP Address. (Resource > Security > IP Address)</span></p><p><span style="color: rgb(0,0,0);"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" alt="Image" src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/8d9e7748-b55a-45bc-b86c-d97a1aa06027?fileName=image.png" data-image-src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/8d9e7748-b55a-45bc-b86c-d97a1aa06027?fileName=image.png" /></span></span></p><p><span style="color: rgb(0,0,0);">Printer resource should be associated at the Printer Maintenance:</span></p><p><span style="color: rgb(0,0,0);"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" alt="Image" src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/6a855fb1-9d2b-4568-b15d-4506c13d21bf?fileName=image.png" data-image-src="https://jblprd.visualstudio.com/3416e237-a20a-4514-985d-7993adabea7d/-apis/wit/attachments/6a855fb1-9d2b-4568-b15d-4506c13d21bf?fileName=image.png" /></span></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Printer Number</td><td colspan="1" class="confluenceTd">Show the printer number according to the selected printer</td></tr><tr><td colspan="1" class="confluenceTd">Print</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>This option is "on" to allow the GRN label to be printed whereas no label print out if option is "off" upon save.</p><p>Label print document is referring to the configured "GRN Document" at "Material Maintenance"</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="350" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73236872.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73236872.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="73236872" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-6-15-1-46.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919129" data-linked-resource-container-version="9" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd"><p>Part Number</p></td><td colspan="1" class="confluenceTd"><p>It is the material that GRN is referring to (The material must exists in the system)</p></td></tr><tr><td class="confluenceTd"><p>GRN</p></td><td class="confluenceTd"><p>The GRN value to create or search (The GRN is 16 chars. The system will accept more than 16 chars due to <a href="http://usplnd0wiki01:8090/pages/viewpage.action?pageId=29920444">GRN</a> configuration). This field can accept up to 50 characters to be used as Non-Unique Identifier.</p></td></tr><tr><td class="confluenceTd"><p>Vendor</p></td><td class="confluenceTd"><p>It is the vendor name for the material related to the GRN</p></td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">It is the quantity of components for that GRN (usually it is the number of components received)</td></tr><tr><td colspan="1" class="confluenceTd">Lot Code</td><td colspan="1" class="confluenceTd">It is the Lot of the material received</td></tr><tr><td colspan="1" class="confluenceTd">Date Code</td><td colspan="1" class="confluenceTd">It is the date of the lot code</td></tr><tr><td colspan="1" class="confluenceTd">Save</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>This button <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="37" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73236876.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73236876.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="73236876" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-6-15-42-3.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919129" data-linked-resource-container-version="9" /></span> to update all the changes done by user. Label to print if the Print option is turned "on".</p></div></td></tr><tr><td colspan="1" class="confluenceTd">Clear</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>This button <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="40" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73236877.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/73236877.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="73236877" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-7-6-15-43-36.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919129" data-linked-resource-container-version="9" /></span> to remove all the filled up.</p></div></td></tr><tr><td colspan="1" class="confluenceTd"><em>Use Prohibited</em> toggle button</td><td colspan="1" class="confluenceTd">It is a flag to set if the GRN is valid to be used in production. When set to ON won't be possible to use the GRN in other screens</td></tr><tr><td colspan="1" class="confluenceTd">Created by Packout</td><td colspan="1" class="confluenceTd">This is a non editable flag to determine if the GRN is created upon container closed at Planned order Packout.</td></tr></tbody></table>

**Vendor, Quantity, Lot Code and Date Code are optional fields, users allow to save the GRN details by skipping the optional fields.** 
GRN info can be manually created or uploaded via txt file. The format of txt file is the following:
1. Site 
2. Part Number 
3. GRN  
4. Version 
5. Status 
6. Received Quantity 
7. Quantity on Hand 
8. Reference GRN 
9. Storage Location 
10. Comment 
11. Vendor Code 
12. Vendor Name 
13. Vendor Date Code 
14. Vendor Lot Code 
15. Manufacturer 
16. Manufacturer Part Number 
17. Purchase Order Number
TAB delimited is accepted by the importer application. The drop path depends on site configuration.



#### Attachments

[image2017-9-4 12:11:33.png](/.attachments/29919130.png)
[image2017-7-10 15:29:15.png](/.attachments/29919131.png)
[image2017-5-26 16:37:20.png](/.attachments/29919132.png)
[image2018-8-14_15-22-19.png](/.attachments/32997417.png)
[image2019-3-4_10-59-27.png](/.attachments/44761565.png)
[image2020-7-6_14-2-36.png](/.attachments/73236869.png)
[image2020-7-6_14-8-3.png](/.attachments/73236870.png)
[image2020-7-6_15-1-41.png](/.attachments/73236871.png)
[image2020-7-6_15-1-46.png](/.attachments/73236872.png)
[image2020-7-6_15-42-3.png](/.attachments/73236876.png)
[image2020-7-6_15-43-36.png](/.attachments/73236877.png)

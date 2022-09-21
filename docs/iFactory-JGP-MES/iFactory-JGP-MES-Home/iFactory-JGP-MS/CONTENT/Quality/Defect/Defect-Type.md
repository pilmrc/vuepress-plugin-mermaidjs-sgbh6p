# Introduction

Defect Type is the actual defect logged into the system during test/inspection operation. There are two categories of defect type namely the Standard Defect Type and Customer Defect Type. Standard Defect Type is the set of Jabil defined defects. Customer Defect Type is provided by customer to Jabil as some customer require Jabil to log defect against defect types that they are familiar with. 
A Customer Defect Type is assigned/associated to a specific Standard Defect Type. Multiple Customer Defect Type can be assigned to a single Standard Defect Type. When a defect is logged, user selects a Standard Defect Type. System then presents a selection list of Customer Defect Types that are associated to the selected Standard Defect. With Phoenix's ability to map Customer Defect Type to Standard Defect Type, we are able to generate a more accurate report revolving around defects and DPMO. 


### How to get there?




::: mermaid
graph LR
A("CONFIGURATION")-->0("QUALITY")
0-->1("DEFECT TYPE")

:::


#### **Precondition** 


*[Defect Category](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Category.md)* 
needs to be configured before user can configure Defect Type.
Screen Activity

Defect Type Maintenance enables user to perform the following activity:

- Create, view, update and delete Defect Type

- Assign/Associate Customer Defect Type to the Standard Defect Type




#### **Screen Dependency** 




- ***Defect Category***

[  Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Type.md)
- [Defect Per Million Report](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Report/Defect-Per-Million-Report.md)

- Inspection and Rework Station



#### **Fields** 



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>General </strong></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Defect Type Name</p></td><td class="confluenceTd"><p>The unique name given to the Defect Type</p></td></tr><tr><td class="confluenceTd">Defect Description</td><td class="confluenceTd">Additional description for the Defect Type can be entered in this field</td></tr><tr><td class="confluenceTd"><p>Defect Category</p></td><td class="confluenceTd"><p>The <a href="Defect-Category-29919498.html">Defect Category</a> to group this Defect Type</p></td></tr><tr><td colspan="1" class="confluenceTd">Classification</td><td colspan="1" class="confluenceTd">To define the Defect type is under Major or Minor. Defect type using in "Manual Inspection Entry" and "Inspection and Rework" are classified as Major.</td></tr><tr><td colspan="1" class="confluenceTd">Auto Close Defect</td><td colspan="1" class="confluenceTd"><p>If enabled, it indicates that this defect will be closed automatically without requiring rework<br /><span>If disabled, it indicates that this defect cannot be closed without rework</span> </p></td></tr><tr><td class="confluenceTd"><p>Defect Image</p></td><td class="confluenceTd"><p>Allows user to upload an image for this Defect Type. Only image file format will be accepted by the system. </p></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong style="text-align: center;">Customer Defects Tab</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd"><span>Customer</span></td><td colspan="1" class="confluenceTd"><span>The customer where this Customer Defect Type can be applied</span></td></tr><tr><td colspan="1" class="confluenceTd">Name</td><td colspan="1" class="confluenceTd">The unique name given to the <span>Customer Defect Type. A customer cannot have duplicate <span>Customer Defect Type created</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Is Active</td><td colspan="1" class="confluenceTd"><p>If Active, the <span>Customer Defect Type will be available for user selection when logging a defect<br /><span>If Inactive, the </span><span>Customer Defect Type will not be available for user selection when logging a defect</span></span></p><p><span><span>Note: Only one Customer defect can be mapped actively against 1 Defect Type.</span></span></p></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong style="text-align: center;">Failure Tab</strong></td></tr><tr><td colspan="1" class="confluenceTd"><strong>Field</strong></td><td colspan="1" class="confluenceTd"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd"><span>The customer where this Customer Defect Type can be applied. Basically auto-selected through Customer Data Partitioning</span></td></tr><tr><td colspan="1" class="confluenceTd">Failure Category</td><td colspan="1" class="confluenceTd">Based on search Failure Label, the category field gets auto-selected.</td></tr><tr><td colspan="1" class="confluenceTd">Failure </td><td colspan="1" class="confluenceTd">User can search all Failures available against selected Customer.</td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd"><p>This identifies whether this mapping is active or not. Although multiple Failure can be associated with the same Defect Type.</p><p>       - If Active, the Failure<span> will be available for user selection when logging a Failure associated to the defect<br />       - If Inactive, the Failure will not be available for user selection when logging a failure / defect</span></p></td></tr></tbody></table>




**How to attach the customer defect to a WIP:** 
In order for the customer defect to show in the WIP View | Customer Defects column. The operator must select the customer defect while processing the WIP in the I&R module. 
![](https://attachments.office.net/owa/Roberto_Reynoso%40Jabil.com/service.svc/s/GetAttachmentThumbnail?id=AAMkADA3OTdjNTY1LTI3NDItNGEwZi05MzNkLTViMTY4YTMxZWJkNABGAAAAAAAovnL%2B0j%2FUQ4gyNkLwPntPBwCY8%2F3yUcmsT5IjiqGqb9nVAAAAAAEMAAB%2FP%2BTylbarSZu9dyqyZFt8AARWoggAAAABEgAQAAAzrLh5TFRIt%2FM89sp61dw%3D&thumbnailType=2&token=eyJhbGciOiJSUzI1NiIsImtpZCI6IkZBRDY1NDI2MkM2QUYyOTYxQUExRThDQUI3OEZGMUIyNzBFNzA3RTkiLCJ0eXAiOiJKV1QiLCJ4NXQiOiItdFpVSml4cThwWWFvZWpLdDRfeHNuRG5CLWsifQ.eyJvcmlnaW4iOiJodHRwczovL291dGxvb2sub2ZmaWNlLmNvbSIsInVjIjoiOTBiMDIzNGRiN2I4NGYxNzgyOTY1OWI3YmEwYjM5ZmEiLCJzaWduaW5fc3RhdGUiOiJbXCJpbmtub3dubnR3a1wiXSIsInZlciI6IkV4Y2hhbmdlLkNhbGxiYWNrLlYxIiwiYXBwY3R4c2VuZGVyIjoiT3dhRG93bmxvYWRAYmM4NzZiMjEtZjEzNC00YzEyLWEyNjUtOGVkMjZiN2YwZjNiIiwiaXNzcmluZyI6IldXIiwiYXBwY3R4Ijoie1wibXNleGNocHJvdFwiOlwib3dhXCIsXCJwdWlkXCI6XCIxMTUzOTc3MDI1MjE4Mjg2NzU5XCIsXCJzY29wZVwiOlwiT3dhRG93bmxvYWRcIixcIm9pZFwiOlwiNzE2YjdjOTctNGUyMC00NDdlLTllMDItY2E2YjNkY2ZlNzFkXCIsXCJwcmltYXJ5c2lkXCI6XCJTLTEtNS0yMS0yODA1MDU4ODgxLTIwMjM1NzczNjAtMTY3MTMzNDY5NC0xNzg3MjAxNVwifSIsIm5iZiI6MTY0NTU0MDQ0NywiZXhwIjoxNjQ1NTQxMDQ3LCJpc3MiOiIwMDAwMDAwMi0wMDAwLTBmZjEtY2UwMC0wMDAwMDAwMDAwMDBAYmM4NzZiMjEtZjEzNC00YzEyLWEyNjUtOGVkMjZiN2YwZjNiIiwiYXVkIjoiMDAwMDAwMDItMDAwMC0wZmYxLWNlMDAtMDAwMDAwMDAwMDAwL2F0dGFjaG1lbnRzLm9mZmljZS5uZXRAYmM4NzZiMjEtZjEzNC00YzEyLWEyNjUtOGVkMjZiN2YwZjNiIiwiaGFwcCI6Im93YSJ9.Q7jm_AhZJJWZi-lpQtfqHUMpfbMe4qjYfGuGlELBheXTHGgZ6S1gRdL82qs7zy9Qpq6WIODuowv4JH8uopoebHaSDvt_jeejCZqJjGr1GTzYPuaWwZMXU74cuSdXkNXu0ZW2Dp3aEH-oLaSJsyKkRKEZgSxgAMl8g91uLv3_3LhAMgZRJfVcrlIpZck0HRPj0738l8p2OrXqkBvL9RVTWOs-g3CGpjInvDRDYfxQ4P80JhjFKMZNx_LYKsZm4CPYxDL5ar2rLN6ERUyNagXPfy5L7uQrlSasuuPFxDhjumMmlxGQhRb9M-N-vPld0EnEaSGVMc0fg23zFDAaeleWHA&X-OWA-CANARY=plT4YWtw6ESU_j9ZU-tMn2B82XMQ9tkYZVklQXJbnOwVXgm0AViUgS-jj2Oz48uBxyqFF0ZSbmg.&owa=outlook.office.com&scriptVer=20220211003.11&animation=true)




#### Attachments

[image2012-7-23 11:10:17.png](/.attachments/29919508.png)
[image2012-7-23 11:9:10.png](/.attachments/29919509.png)
[image2012-7-23 11:6:17.png](/.attachments/29919510.png)
[image2012-7-23 11:5:28.png](/.attachments/29919511.png)
[image2012-7-23 11:5:22.png](/.attachments/29919512.png)
[image2012-7-23 11:4:56.png](/.attachments/29919513.png)
[image2012-7-23 11:3:43.png](/.attachments/29919514.png)

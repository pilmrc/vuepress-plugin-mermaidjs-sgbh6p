# Introduction

GRN Restrictions
screen is used to force GRN usage in production line. The GRN can be restricted based on:
- Equipment Setup Sheet (to restrict the usage of a GRN for one or more Equipment Setup Sheet ID)

- Manual Station Setup Sheet
(to restrict the usage of a GRN for one or more Manual Station Setup Sheet ID)
- Equipment
(to restrict the usage of a GRN for one or more Equipment/Resource)
- Manual Station
(to restrict the usage of a GRN for one or more Station)Different than 
[Block GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Block-GRN.md), that *not allows* the GRN usage for specific data (assembly, route...), GRN Restrictions*is forcing to use* the GRN only for specific data (setup ID, Resource...)The GRN field can support up to 50 chars to be used by Non-Unique Identifier.



### How to get there?


![image2017-9-4 12:13:40.png](/.attachments/29919165.png)



![image2017-9-4 12:13:40.png](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)



Then

::: mermaid
graph LR
A("CONFIGURATION")-->0("GRN RESTRICTIONS")

:::


#### Screen Activity


GRN Restrictions enables user to perform the following activity:

- Restrict GRN in production line



#### Post Condition


GRN restricted can be associated only to setup sheet/Resource defined in the configuration in order to be assembled in production using 
[Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md), [Manual Station Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md), [Preload ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)and GRN Associationscreens. The GRN cannot be used in different setup/resource than the ones configured.


#### Screen Dependency


The following screen(s) has dependency with GRN Restrictions:

- [Manual Station Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md)

- [Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md)

- [Preload](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)

- [GRN Association](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Association.md)


![image2017-7-3 15:53:4.png](/.attachments/29919169.png)






#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Restriction Type</p></td><td class="confluenceTd"><p>To define the range to restrict:</p><ul><li style="list-style-type: none;"><ul><li>Equipment Setup Sheet (to restrict the usage of a GRN for one or more Equipment Setup Sheet ID)</li><li>Manual Station Setup Sheet  (to restrict the usage of a GRN for one or more Manual Station Setup Sheet ID)</li><li>Equipment (to restrict the usage of a GRN for one or more Equipment/Resource)</li><li>Manual Station (to restrict the usage of a GRN for one or more Station)</li></ul></li></ul></td></tr><tr><td class="confluenceTd"><p>Partial Key</p><p>(or Setup Sheet ID)</p></td><td class="confluenceTd"><p>It is a field to insert the full resource value or a part of it.</p><p>When the restriction type is a <em>setup sheet</em> the label will change from "<em>Partial Key</em>" to "<em>Setup Sheet ID</em>"</p></td></tr><tr><td class="confluenceTd"><p>"Available" Data Grid</p></td><td class="confluenceTd"><p>Will show the list of data retrieved based on the filter<em> Partial Key</em> (to select pressing <em>green check</em> <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919168.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919168.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919168" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-7-3 15:56:15.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919164" data-linked-resource-container-version="2" /></span> )</p></td></tr><tr><td colspan="1" class="confluenceTd">"Selected" Data Grid</td><td colspan="1" class="confluenceTd">Will show the data configured for the restriction (selected using the <em>arrows</em> <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919167.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919167.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919167" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-7-3 15:56:53.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919164" data-linked-resource-container-version="2" /></span> )</td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd">The user can scan the GRN to Restrict/UnRestrict. Once scanned the GRN is immediately restricted/unrestricted</td></tr><tr><td colspan="1" class="confluenceTd"><em>UnRestrict GRN</em> toggle switch</td><td colspan="1" class="confluenceTd">It is a switch to define if the scanned GRN has to be restricted or UnRestricted</td></tr><tr><td colspan="1" class="confluenceTd"><em>Restricted GRNs</em> Data Grid</td><td colspan="1" class="confluenceTd"><p>The window will show the list of GRN restricted during this session for related resource/setup ID</p></td></tr><tr><td colspan="1" class="confluenceTd"><em>UnRestrict selected GRNs</em> button</td><td colspan="1" class="confluenceTd">Allow to UnRestrict in one shot the GRN selected from Restricted GRN window (can be all GRN in the window if required). The GRN to UnRestrict are selected pressing the related <em>green check</em> <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919166.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919166.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919166" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-7-3 16:1:21.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919164" data-linked-resource-container-version="2" /></span></td></tr></tbody></table>





#### Attachments

[image2017-9-4 12:13:40.png](/.attachments/29919165.png)
[image2017-7-3 16:1:21.png](/.attachments/29919166.png)
[image2017-7-3 15:56:53.png](/.attachments/29919167.png)
[image2017-7-3 15:56:15.png](/.attachments/29919168.png)
[image2017-7-3 15:53:4.png](/.attachments/29919169.png)
[image2017-7-3 15:50:8.png](/.attachments/29919170.png)
[image2017-6-22 15:53:50.png](/.attachments/29919171.png)
[image2017-6-22 15:51:7.png](/.attachments/29919172.png)
[image2017-6-22 15:52:0.png](/.attachments/29919173.png)
[image2017-6-22 15:45:47.png](/.attachments/29919174.png)
[image2017-6-22 15:36:33.png](/.attachments/29919175.png)
[image2017-6-22 15:26:3.png](/.attachments/29919176.png)
[image2017-6-22 15:35:18.png](/.attachments/29919177.png)
[image2017-6-22 16:32:40.png](/.attachments/29919178.png)
[image2017-5-26 16:37:20.png](/.attachments/29919179.png)
[image2017-6-27 16:53:34.png](/.attachments/29919180.png)
[image2017-6-27 16:56:1.png](/.attachments/29919181.png)

# Introduction

**Block GRN** 
screen is used to avoid GRN usage in production line. The GRN can be blocked based on:
- Assembly (to block the usage of a GRN for a specific Assembly/ies)

- Family
(to block the usage of a GRN for a specific Family/ies)
- Route
(to block the usage of a GRN in a specific Route/s)
- All (to Block the GRN in all production - The value of "Use Prohibited"
*won't change*  in [GRN ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN.md)screen)The GRN field can support up to 50 chars to be used by Non-Unique Identifier.



### How to get there?



![image2017-9-4 12:9:6.png](/.attachments/29919043.png)


![image2017-9-4 12:9:6.png](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)



Then


::: mermaid
graph LR
A("CONFIGURATION")-->0("BLOCK GRN")

:::


#### Screen Activity


Block GRN enables user to perform the following activity:

- Block GRN in production line



#### Post Condition


GRN blocked 
*cannot* be associated to the assembling route step and BOM component in order to be assembled in production using [Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md), [Manual Station Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md), [Preload ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)and [GRN Association](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Association.md)screens.


#### Screen Dependency


The following screen(s) has dependency with block GRN:

- [Manual Station Part Allocation](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Block-GRN.md)

- [Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md)

- [Preload](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)

- [GRN Association](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Association.md)



![image2017-11-17 16:3:19.png](/.attachments/29919042.png)





#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Tabs with Block Type</p></td><td class="confluenceTd"><p>To define the range to block:</p><ul><li>Block All (Block the GRN in all production)</li><li>Block by Assembly (to block the usage of a GRN for a specific Assembly/ies)</li><li>Block by Family (to block the usage of a GRN for a specific Family/ies)</li><li>Block by Route (to block the usage of a GRN in a specific Route/s)</li></ul></td></tr><tr><td class="confluenceTd">GRN</td><td class="confluenceTd">The user can scan the GRN to block/unblock. Once scanned the GRN is immediately blocked/unblocked</td></tr><tr><td class="confluenceTd">Block GRN toggle switch</td><td class="confluenceTd">It is a switch to define if the scanned GRN has to be blocked or unblocked. Default Value <strong>ON</strong> --> GRN blocked</td></tr><tr><td class="confluenceTd">"Batch Upload" button</td><td class="confluenceTd"><p>Allow to upload a list of GRN to block. <em><strong>The list is a text file that contains all GRN to block/unblock (each GRN in a new line)</strong></em></p><p><span style="background-color: transparent;font-size: 10.0pt;">The upload is managed in two phases:</span></p><p>1) select the file and press Upload --> the system will check if all data is correct (i.e. GRN with 16 chars)</p><p>2) once validation passed it is possible to Save uploaded data. Once saved the GRN will be blocked and the GRN list will appear in the <em>Blocked GRN</em> window</p><p> </p><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919044.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919044.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919044" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-7-10 11:50:9.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919035" data-linked-resource-container-version="2" /></span></p><p>If the processing failed the GRN cannot be blocked/unblocked.</p><p> <strong>The GRN will be blocked if "Block GRN" is set to ON (default value) otherwise, when OFF, the GRN will be unblocked.</strong></p></td></tr><tr><td class="confluenceTd">"Blocked GRN" Window</td><td class="confluenceTd"><p>The window will show the list of GRN blocked during this session. They can be blocked one by one scanning the GRN value in the "GRN" field, or uploading a list of GRN from a text file.</p><p>The columns of this window can be different based on the Block Type selected.</p></td></tr><tr><td class="confluenceTd">"UnBlock selected GRN" button</td><td class="confluenceTd"><p>Allow to unblock in one shot the GRN selected from <em>Blocked GRN</em> window (can be all GRN in the window if required). The GRN to unblock are selected pressing the related green check <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="100" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919048.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919048.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919048" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-6-27 16:56:1.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919035" data-linked-resource-container-version="2" /></span></p><p>The button is activated only when at lest one GRN is selected from the "Blocked GRN" window</p></td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"> </td></tr><tr><td colspan="1" class="confluenceTd"><p>"Assembly" field</p><p>"Assembly" Window</p><p>(available only when "Block By Assembly" tab is selected)</p><p> </p></td><td colspan="1" class="confluenceTd"><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919040.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919040.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919040" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-11-17 16:16:6.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919035" data-linked-resource-container-version="2" /></span></p><p>Assemby can be selected from the "Assembly" search field. Once selected from the search, the assembly will appear in the "Assembly" window.</p><p>The assembly can be removed <span>from the list </span>pressing the trash icon <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919039.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919039.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919039" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-11-17 16:17:45.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919035" data-linked-resource-container-version="2" /></span></p><p> </p></td></tr><tr><td class="highlight-grey confluenceTd" colspan="2" data-highlight-colour="grey"> </td></tr><tr><td class="confluenceTd"><p>"Product Family" field</p><p>"Product Family" Window</p><p>(available only when "Block By <span>Product Family</span>" tab is selected)</p><p> </p></td><td class="confluenceTd"><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919037.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919037.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919037" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-11-17 16:23:35.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919035" data-linked-resource-container-version="2" /></span></p><p>Product Family can be selected from the "Product Family" search field. Once selected from the search, the <span>Product Family </span>will appear in the "<span>Product Family</span>" window.</p><p>The <span>Product Family </span>can be removed <span>from the list </span>pressing the trash icon <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919039.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919039.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919039" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-11-17 16:17:45.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919035" data-linked-resource-container-version="2" /></span></p><p> </p></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"> </td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"> </td></tr><tr><td class="confluenceTd"><p>"Route" field</p><p>"<span>Route</span>" Window</p><p>(available only when "Block By Route" tab is selected)</p><p> </p></td><td class="confluenceTd"><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919036.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919036.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919036" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-11-17 16:25:2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919035" data-linked-resource-container-version="2" /></span></p><p><span>Route</span> can be selected from the "<span>Route</span>" search field. Once selected from the search, the <span>Route</span><span> </span>will appear in the "<span>Route</span>" window.</p><p>The <span>Route</span><span> </span>can be removed from the list pressing the trash icon <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919039.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919039.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919039" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-11-17 16:17:45.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919035" data-linked-resource-container-version="2" /></span></p><p> </p></td></tr></tbody></table>





#### Attachments

[image2017-11-17 16:25:2.png](/.attachments/29919036.png)
[image2017-11-17 16:23:35.png](/.attachments/29919037.png)
[image2017-11-17 16:21:20.png](/.attachments/29919038.png)
[image2017-11-17 16:17:45.png](/.attachments/29919039.png)
[image2017-11-17 16:16:6.png](/.attachments/29919040.png)
[image2017-11-17 16:14:18.png](/.attachments/29919041.png)
[image2017-11-17 16:3:19.png](/.attachments/29919042.png)
[image2017-9-4 12:9:6.png](/.attachments/29919043.png)
[image2017-7-10 11:50:9.png](/.attachments/29919044.png)
[image2017-7-5 11:32:29.png](/.attachments/29919045.png)
[image2017-7-3 16:5:37.png](/.attachments/29919046.png)
[image2017-7-3 16:4:49.png](/.attachments/29919047.png)
[image2017-6-27 16:56:1.png](/.attachments/29919048.png)
[image2017-6-27 16:53:34.png](/.attachments/29919049.png)
[image2017-6-22 16:32:40.png](/.attachments/29919050.png)
[image2017-5-26 16:37:20.png](/.attachments/29919051.png)
[image2017-6-22 15:26:3.png](/.attachments/29919052.png)
[image2017-6-22 15:35:18.png](/.attachments/29919053.png)
[image2017-6-22 15:36:33.png](/.attachments/29919054.png)
[image2017-6-22 15:45:47.png](/.attachments/29919055.png)
[image2017-6-22 15:51:7.png](/.attachments/29919056.png)
[image2017-6-22 15:52:0.png](/.attachments/29919057.png)
[image2017-6-22 15:53:50.png](/.attachments/29919058.png)

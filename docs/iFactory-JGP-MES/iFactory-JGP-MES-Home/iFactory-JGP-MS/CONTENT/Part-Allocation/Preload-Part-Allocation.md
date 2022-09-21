# Introduction

Preload Part Allocation is a module to allocate offline the component information for setups used by placement machines (equipment setup sheets).

The component allocation is based on the equipment setup sheet selected. Once the preload has created it can be used in Equipment Part Allocation screen for same setup sheet.

### How to get there?



![](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)


![image2017-9-4 12:16:41.png](/.attachments/29919252.png)



Then


::: mermaid
graph LR
A("PART ALLOCATION")-->0("PRELOAD")

:::


#### **Screen Activity** 


Preload Part Allocation enables user to perform the following activity:

- Load/Remove component for preparing setup offline

- Create new preload name



Pre Condition
The following data needs to be pre-configured (if used) before user configures Equipment Part Allocation

- Equipment Setup Sheet

- GRN

- [Feeder](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Feeder.md)
(if feeder tracking is required)
- GRN Association (if feeder tracking is required)



#### Screen Dependency


Following screens have direct dependency with Preload Part Allocation:

- Equipment Setup Sheet


- GRN


- GRN Association


- Feeder/Tray



![image2017-5-17 14:4:34.png](/.attachments/29919255.png)





#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="PreloadPartAllocation-SelectionCriteriamenu"><strong>Selection Criteria menu</strong></h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Preload Name</p></td><td class="confluenceTd"><p>It is the name to assign to the preload that will be configured based on setup sheet selected. The name will be used in Equipment Part Allocation screen to load all pre-loaded parts.</p><p>It can be created using "Create Preload Name" button or selected from a preload name created previously.</p></td></tr><tr><td class="confluenceTd"><p>Create Preload Name</p></td><td class="confluenceTd"><p>Button to create the preload name defined previously</p></td></tr><tr><td class="confluenceTd"><p>Setup Sheet ID</p></td><td class="confluenceTd"><p>The Setup Sheet ID of the setup that need to be used for loading parts into the preload</p></td></tr><tr><td colspan="1" class="confluenceTd">Setup Sheet Details</td><td colspan="1" class="confluenceTd">Sub-menu to show information related to the setup ID selected. Read only values.</td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr><tr><td colspan="1" class="confluenceTd"> </td><td colspan="1" class="confluenceTd"> </td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="PreloadPartAllocation-CurrentFeederGRNAssociationtab">Current Feeder GRN Association tab</h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Feeder</td><td colspan="1" class="confluenceTd"><p>This field is active only if Feeder Tracking is ON: User has to insert the feeder number</p></td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd"><span>This field is active only if Feeder Tracking is OFF: User has to insert the GRN number. The GRN field can support up to 50 chars to be used by Non-Unique Identifier.</span></td></tr><tr><td colspan="1" class="confluenceTd">Module ID/ Track ID/ Feeder Track</td><td colspan="1" class="confluenceTd">The user has to insert the Module ID, Track ID, Feeder Track. Depends on configuration the system is able to retrieve the related values from the setup sheet, so that the user doesn't have to insert any value.</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="PreloadPartAllocation-CurrentTrayGRNAssociationtab">Current Tray GRN Association tab</h5><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919253.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919253.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919253" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-5-17 14:12:30.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919251" data-linked-resource-container-version="2" /></span></p></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Tray</td><td colspan="1" class="confluenceTd">User has to insert Tray value</td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd">User has to insert the GRN value. The GRN field can support up to 50 chars to be used by Non-Unique Identifier.</td></tr><tr><td colspan="1" class="confluenceTd">Module ID/Track ID/Tray Tower/Tray Location/Tray Division</td><td colspan="1" class="confluenceTd"><p><span>Depends on configuration the system is able to retrieve the related values from the setup sheet, so that the user doesn't have to insert any value. Otherwise, information on component location are required.</span></p></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="PreloadPartAllocation-Generalmenu">General menu</h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td class="confluenceTd">Clear Preload</td><td class="confluenceTd">Button to clear all the allocation done</td></tr><tr><td colspan="1" class="confluenceTd">Clear Selection</td><td colspan="1" class="confluenceTd">Allow to remove the GRN/Feeder selected from the list showed at "Current Feeder GRN Association" or "Current Tray GRN Association" tabs).</td></tr></tbody></table>



#### Attachments

[image2017-9-4 12:16:41.png](/.attachments/29919252.png)
[image2017-5-17 14:12:30.png](/.attachments/29919253.png)
[image2017-5-17 14:12:1.png](/.attachments/29919254.png)
[image2017-5-17 14:4:34.png](/.attachments/29919255.png)
[image2017-5-17 13:38:25.png](/.attachments/29919256.png)

# Introduction

GRN Association
screen allows users to associate and disassociate GRNs to a Feeders/Trays before physically placing in machines, so that users can prepare the association offline to reduce the changeover duration.The GRNs and Feeders/Trays association only use when 'Feeder Tracking' is configured.
The GRN field can support up to 50 chars to be used by Non-Unique Identifier.


### How to get there?


![](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)


![image2017-9-4 12:11:58.png](/.attachments/29919139.png)


Then
<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Configuration</th><th class="confluenceTh"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919138.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919138.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919138" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-9-5 10:31:59.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919137" data-linked-resource-container-version="3" /></span></th><th class="confluenceTh">GRN Association</th></tr></tbody></table>



#### Screen Activity


The GRN Association enables user to perform the following action

- Associate and Disassociate GRNs to/from Feeders/Trays



#### Screen Dependency



- [Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md)


- [Preload](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)

![image2017-7-10 15:49:19.png](/.attachments/29919142.png)






#### Fields 


<table class="confluenceTable"><tbody><tr><th colspan="2" class="confluenceTh">Selection Tab</th></tr><tr><td class="confluenceTd"><p><strong>Field</strong></p></td><td class="confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Association Type</p></td><td class="confluenceTd"><p>Allow to select teh type of the association. There are 3 options:</p><p>Free to be Moved --> allow any usage of the feeder/tray that can be scanned in any equipment/route (Default Value)</p><ul><li>By Equipment/Resource --> the Feeder/Tray can be used only on selected Equipment Resource</li></ul><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919141.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919141.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919141" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-7-10 15:55:11.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919137" data-linked-resource-container-version="3" /></span></p><ul><li>By Setup Sheet --> the Feeder/Tray can be used only on selected Setup Sheet</li></ul><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919140.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919140.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919140" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-7-10 15:56:14.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919137" data-linked-resource-container-version="3" /></span></p><p>User has to scan the Setup Sheet ID (mandatory) and it can also enter the Setup Number (optional). If Setup Number has entered the system will compare it with the setup number related to the setup sheet ID scanned. This is just a double check in case of need.</p></td></tr><tr><td colspan="1" class="confluenceTd"><em>Remove GRN</em> toggle button</td><td colspan="1" class="confluenceTd"><p>If set to ON will change the functionality to "Remove", so that the GRN scanned is removed from the Feeder/Tray (if it was associated)</p><p>Default value OFF: the GRN scanned is added to Feeder/Tray (the association depends on several check made by the tool to be sure that the part is not in use before make any change)</p></td></tr><tr><td colspan="1" class="confluenceTd">Feeder/Tray</td><td colspan="1" class="confluenceTd">The Feeder or Tray that needs to be associated with the GRN. The Feeder/Tray validation is done once feeder is scanned to be sure the part is not in use. Mandatory field</td></tr><tr><td colspan="1" class="confluenceTd">Feeder Track</td><td colspan="1" class="confluenceTd">the Track ID of the feeder. It is required only if MultiTrack is set for the entered feeder value (see <a href="29919124.html">Feeder/Tray</a> screen for details)</td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd">The GRN that needs to be added. Th<span>e GRN validation is done once feeder is scanned to be sure the part is not in use. </span>Mandatory field</td></tr><tr><th colspan="2" class="confluenceTh">Data Grid Details</th></tr><tr><td class="confluenceTd"><p>Feeder/Tray</p></td><td class="confluenceTd">The Feeder/Tray number just scanned</td></tr><tr><td colspan="1" class="confluenceTd">Feeder Track</td><td colspan="1" class="confluenceTd">The Feeder Track entered, if feeder is multitrack</td></tr><tr><td colspan="1" class="confluenceTd">Part Number</td><td colspan="1" class="confluenceTd">The Part Number related to the GRN entered</td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd"><span>The GRN number just scanned</span></td></tr><tr><td colspan="1" class="confluenceTd">Action</td><td colspan="1" class="confluenceTd">The action performed, i.e. Add or Remove</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">The result of the action (Success, Fail)</td></tr><tr><td colspan="1" class="confluenceTd">Time</td><td colspan="1" class="confluenceTd">The time of the association</td></tr></tbody></table>


- **The system will display the current feeder/tray status, so if a GRN is already associated it will be displayed. The existing GRN can be replaced based on GRN validation rules (checking part usage and avoid GRN duplication).**





#### Attachments

[image2017-9-5 10:31:59.png](/.attachments/29919138.png)
[image2017-9-4 12:11:58.png](/.attachments/29919139.png)
[image2017-7-10 15:56:14.png](/.attachments/29919140.png)
[image2017-7-10 15:55:11.png](/.attachments/29919141.png)
[image2017-7-10 15:49:19.png](/.attachments/29919142.png)

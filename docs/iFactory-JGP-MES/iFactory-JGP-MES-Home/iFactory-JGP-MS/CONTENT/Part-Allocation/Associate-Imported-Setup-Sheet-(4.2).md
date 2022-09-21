# Introduction

Associate Imported Setup Sheet
is a screen to associate a setup previously uploaded with the Importer from an external .csv file.
The screen allows to create the setup sheet ID associating the imported setup details to the assembly, equipment, etc. It is working both for Equipment and Manual Station setup sheet.With this step is possible to create automatically a new setup sheet with few manual operations.



### How to get there?


![](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)


![image2017-9-4 12:8:45.png](/.attachments/29919019.png)


Then


::: mermaid
graph LR
A("SETUP SHEET")-->0("ASSOCIATE IMPORTED SETUP SHEET")

:::


#### **Screen Activity** 


Associate Imported Setup Sheet enables user to perform the following activity:

- Create new setup ID from imported setup sheet details, defining Assembly, Route, Setup Number, Setup Version related to the required setup.



Pre Condition
The external .csv with setup sheet details must be imported by the Importer (Drop CSV file in to proper Importer folder).
[The location is defined in the tool implementation phase in the site: i.e. "servername"/ngMES/eqSetupSheet].The .csv file (comma delimited) shall have following format: Machine,Program,Assembly,FeederTrayFlag,Module_ID,Track_ID,FeederTrack,Feeder Type,TrayLocation,TrayTower,TrayDivision,Part Number,Qty,RefDes,Description,Offset
![image2017-5-18 16:6:48.png](/.attachments/29919024.png)


The .csv file can be created from a BOM, from Valor, from Cimbridge, or any other placement machine tool, or manually, following above structure.



#### Screen Dependency


Following screens have direct dependency with Associate Imported Setup Sheet

- [Equipment Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)


- [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)


![image2017-7-5 11:28:56.png](/.attachments/29919021.png)





#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="AssociateImportedSetupSheet(4.2)-Configurationwindow"><strong>Configuration window</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The assembly number to produce</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd"><span>The route where the setup sheet has to be used</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>The route step where the setup sheet will be used</span></td></tr><tr><td colspan="1" class="confluenceTd">Setup Number</td><td colspan="1" class="confluenceTd">The setup number related to the setup Sheet ID. This value is defined by engineers</td></tr><tr><td colspan="1" class="confluenceTd">Setup Version</td><td colspan="1" class="confluenceTd">The setup number version related <span>to the setup Sheet ID. This value is defined by engineers. It's not possible to have two normal setups with same Setup number and version</span></td></tr><tr><td colspan="1" class="confluenceTd">Active toggle button</td><td colspan="1" class="confluenceTd">It is a flag to set the new setup as Active</td></tr><tr><td colspan="1" class="confluenceTd">Pull List toggle button</td><td colspan="1" class="confluenceTd">It is a flag to set the setup for Pull List purposes (see <a href="Equipment-Setup-Sheet-29919084.html">Equipment Setup Sheet</a> or <a href="Manual-Station-Setup-Sheet-29919193.html">Manual Station Setup Sheet </a>screens)</td></tr><tr><td colspan="1" class="confluenceTd">Equipment</td><td colspan="1" class="confluenceTd">Name of the resource configured in the route. This field is enabled only if an Equipment Setup sheet is selected from the details window (for Manual Station the resource value is selected at runtime in<a href="Manual-Station-Part-Allocation-29919186.html"> Part Allocation</a> screen)</td></tr><tr><td colspan="1" class="confluenceTd">Machine Name</td><td colspan="1" class="confluenceTd"><span><span>Name of Machine used by engineers</span>. This field is enabled only if an Equipment Setup sheet is selected from the details window (<a href="Manual-Station-Setup-Sheet-29919193.html">Manual Station Setup Sheet</a> doesn't have the Machine name)</span></td></tr><tr><td colspan="1" class="confluenceTd">Program Name</td><td colspan="1" class="confluenceTd"><span>Name of the program used by engineers</span></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="AssociateImportedSetupSheet(4.2)-Detailswindow">Details window</h5><p>This window will show all setup sheets details imported by the Importer. Every time a new .csv file is uploaded successfully the information will be available in the following window:</p><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919020.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919020.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29919020" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2017-7-5 11:30:11.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919018" data-linked-resource-container-version="1" /></span></p><p>Both Equipment and Manual Station setup sheets are showed in this screen. The "Setup Type" column helps to understand which one is Equipment and which one is Manual Station setup sheet (anyway, for Manual Station the column "Machine name" is also blank).</p><p>The user has to select one of above setups and fill the Configuration Window before saving and create the new setup sheet ID.</p><p>The Setup Type is automatically recognized by the system based on the <em>FeederTrayFlag</em> in the .csv file:</p><ul style="list-style-type: square;"><li>B : Bin - only used for Manual Station Setup Sheet (Route Step setup Type)</li><li>F : Feeder - only used for Equipment Setup Sheet (Equipment Setup Type)</li><li>T : Tray <span>- only used for Equipment Setup Sheet (Equipment Setup Type)</span></li></ul><p>At saving, the system will create the setup ID based on the information inserted.</p><p> </p></td></tr></tbody></table>



#### Attachments

[image2017-9-4 12:8:45.png](/.attachments/29919019.png)
[image2017-7-5 11:30:11.png](/.attachments/29919020.png)
[image2017-7-5 11:28:56.png](/.attachments/29919021.png)
[image2017-5-18 16:26:17.png](/.attachments/29919022.png)
[image2017-5-18 16:9:57.png](/.attachments/29919023.png)
[image2017-5-18 16:6:48.png](/.attachments/29919024.png)
[image2017-5-18 16:5:45.png](/.attachments/29919025.png)
[image2017-5-18 15:56:48.png](/.attachments/29919026.png)
[image2017-5-17 13:31:28.png](/.attachments/29919027.png)
[image2017-5-17 13:29:56.png](/.attachments/29919028.png)
[image2017-5-17 14:46:54.png](/.attachments/29919029.png)
[image2017-5-17 14:59:32.png](/.attachments/29919030.png)
[image2017-5-17 15:7:31.png](/.attachments/29919031.png)
[image2017-5-17 15:22:37.png](/.attachments/29919032.png)
[image2017-5-17 15:13:48.png](/.attachments/29919033.png)
[image2017-5-18 14:47:30.png](/.attachments/29919034.png)

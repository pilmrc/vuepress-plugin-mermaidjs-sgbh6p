# Introduction

Equipment Setup Sheet
is a module to create the setup with component information for placement machines (SMT area) to allow traceability.
The component allocation is based on the configuration made in this module.The screen is split in different tabs:

- Configuration
- where to put the generic information related to the machine, the step, the setup number, etc.
- Detail
- where to out the information related to component/material to place, related quantity and location (Feeder, Module, etc.)

The setup sheet can be created, but not used. In that case it will be possible to modify it anytime.
When the setup is installed (at least once) it is automatically locked and the locked icon appears: 
![](/.attachments/29919097.png)


In this case the setup cannot be deleted or modified to avoid loosing traceability.



### How to get there?



![](/.attachments/29919085.png)


![](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)


Then



::: mermaid
graph LR
A("SETUP SHEET")-->0("EQUIPMENT")

:::


#### Screen Activity


Equipment Setup Sheet enables user to perform the following activity:

- Add/Remove component by Feeder/GRN for creating the setup used in SMT area

- Add/Remove component by Tray for creating the setup used in SMT area

Pre Condition
The following data needs to be pre-configured (if used) before user configures Equipment Setup Sheet

- [Equipment Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)

- [Equipment Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)

- Resource Maintenance

- Route Maintenance



#### Screen Dependency


Following screens have direct dependency with Equipment Setup Sheet

- [Equipment Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)


- [Equipment Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)


- [Preload](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)


- [Validate](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)


- [Shared Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)

![image2020-4-14_15-36-21.png](/.attachments/69632081.png)





#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="EquipmentSetupSheet-ConfigurationTab"><strong>Configuration Tab</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Setup Sheet ID</p></td><td class="confluenceTd"><p>The unique ID that refer to the setup to use for allocating components. This value is generated automatically by the system after saving.</p></td></tr><tr><td class="confluenceTd"><p>Machine Name</p></td><td class="confluenceTd"><p>Name of Machine used in by engineers</p></td></tr><tr><td colspan="1" class="confluenceTd">Program Name</td><td colspan="1" class="confluenceTd">Name of the program used by engineers</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">Generic comment field (not mandatory)</td></tr><tr><td colspan="1" class="confluenceTd">Active toggle button</td><td colspan="1" class="confluenceTd">It is a flag to Activate/Deactivate the setup sheet. This is used to filter the setup during the research (the search can be done by setup ID, Machine Name, Equipment, etc.)</td></tr><tr><td colspan="1" class="confluenceTd">Export for SAP Pull List toggle button</td><td colspan="1" class="confluenceTd">It is a flag to Activate/Deactivate the possibility to send setup information to SAP for the Pull List creation. Default value is OFF. When set to ON the system will send the information of current setup sheet to SAP for managing the pull list.</td></tr><tr><td class="confluenceTd"><p>Equipment</p></td><td class="confluenceTd"><p>Name of resource used in the route that identify the location</p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The assembly number to produce</td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd"><span><span>The route/version where the setup sheet has to be used. </span></span>Only active route version are available for selection.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>The route step where the setup sheet will be used. </span></td></tr><tr><td colspan="1" class="confluenceTd">Setup Number</td><td colspan="1" class="confluenceTd">The setup number related to the setup Sheet ID. This value is defined by engineers</td></tr><tr><td colspan="1" class="confluenceTd">Setup Version</td><td colspan="1" class="confluenceTd">The setup number version related <span>to the setup Sheet ID. This value is defined by engineers. It's not possible to have two normal setups with same Setup number and version.</span></td></tr><tr><td colspan="1" class="confluenceTd">Deviation</td><td colspan="1" class="confluenceTd"><p>This field is available only for setup already created (with setup sheet ID) and identify the deviation associated to the setup sheet. If this value is empty it means that the setup is a normal setup without deviation.</p><p>If the setup selected is a deviated setup this field is read only and will show the deviation number related to the<a href="Equipment-Setup-Sheet-29919084.html"> deviated setup </a>selected.</p></td></tr><tr><td colspan="1" class="confluenceTd">Original Setup ID</td><td colspan="1" class="confluenceTd"><p>This field is available only if the setup sheet selected is a deviated setup and it shows what is the original setup, so that it is always possible to know where the selected setup is coming from once the deviation has been applied.</p><p>If the selected setup is not deviated this field doesn't appear.</p></td></tr><tr><td colspan="1" class="confluenceTd">Export.csv</td><td colspan="1" class="confluenceTd">This button will create a csv file with the setup sheet information. The button is active only if some info are available in the <em>Detail</em> tab. The format of csv file will reflect the same format used for importing the setup from external csv file.</td></tr><tr><td colspan="2" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919093.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919084/image2017-7-5%2014%3A45%3A44.png?version=1&modificationDate=1530103828750&api=v2" /></span></td></tr><tr><td colspan="1" class="confluenceTd">Existing Manual Setup Sheet Active toggle button</td><td colspan="1" class="confluenceTd"><p>This toggle button is available only when the setup sheet is copied. In that phase is possible to keep the original setup sheet active, or put it inactive when the copy is created, so that the only active setup is the copied one.</p><p>The copy of a setup happens pressing the "Copy" icon <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919091.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919084/image2017-7-5%2014%3A48%3A36.png?version=1&modificationDate=1530103828717&api=v2" /></span>, but the copied setup sheet is created only after saving. During the saving phase the system will check the setup number and version as well: if one of these value is not changed in the copied setup it won't be possible to save.</p></td></tr><tr><td style="text-align: left;" colspan="2" class="confluenceTd"><br /><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919094.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919084/image2017-7-3%2016%3A52%3A3.png?version=1&modificationDate=1530103828763&api=v2" /></span></td></tr><tr><td colspan="1" class="confluenceTd">Shared Name</td><td colspan="1" class="confluenceTd">This field is available only if the setup is part of a <a href="Equipment-Setup-Sheet-29919084.html">shared setups</a> group. The value is read only and shows the name of the shared group</td></tr><tr><td colspan="1" class="confluenceTd">IsShared</td><td colspan="1" class="confluenceTd">This toggle button is ON when the setup belong to a share. Putting the toggle button to OFF will remove the selected setup from the share (after saving)</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="EquipmentSetupSheet-DetailTab">Detail Tab</h5><p><span class="confluence-embedded-file-wrapper image-center-wrapper"><img class="confluence-embedded-image confluence-external-resource image-center" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919095.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919084/image2017-7-3%2016%3A47%3A34.png?version=1&modificationDate=1530103828777&api=v2" /></span></p></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td class="confluenceTd"><p>Machine Name</p></td><td class="confluenceTd"><p>Name of Machine used in by engineers. Read only value coming from Configuration Tab.</p></td></tr><tr><td class="confluenceTd">Program Name</td><td class="confluenceTd">Name of the program used by engineers. <span>Read only value coming from Configuration Tab.</span></td></tr><tr><td class="confluenceTd">Assembly</td><td class="confluenceTd">The assembly number to produce. <span>Read only value coming from Configuration Tab.</span></td></tr><tr><td class="confluenceTd">Route Step</td><td class="confluenceTd"><span>The route step where the setup sheet will be used. <span>Read only value coming from Configuration Tab.</span></span></td></tr><tr><td class="confluenceTd">Setup Number</td><td class="confluenceTd">The setup number related to the setup Sheet ID. <span>Read only value coming from Configuration Tab.</span></td></tr><tr><td class="confluenceTd">Setup Version</td><td class="confluenceTd">The setup number version related <span>to the setup Sheet ID. <span>Read only value coming from Configuration Tab.</span></span></td></tr><tr><td colspan="1" class="confluenceTd"><br /></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="EquipmentSetupSheet-FeederGRNAssociationtab">Feeder GRN Association tab</h5></td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td colspan="1" class="confluenceTd">Part Number</td><td colspan="1" class="confluenceTd"><p>This field is for selecting the part number (Material) related to the component that has to be configured</p></td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd"><p><span>This field is to associate one or multiple CRD to the above material. A new popup window will appears to allow user to insert the list of CRD. <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" width="300" src="attachments/thumbnails/29919084/29919099" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/29919084/image2017-5-17%2015%3A13%3A48.png?version=1&modificationDate=1530103828843&api=v2" /></span></span></p><p><span>User will be able to Add, Update, Remove one or more CRD.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Module ID/ Track ID/ Feeder Track / Feeder Type</td><td colspan="1" class="confluenceTd">The Module ID, Feeder ID, Feeder Track and Feeder Type where the part has to be located in Part Allocation screen.</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="EquipmentSetupSheet-TrayGRNAssociationtab">Tray GRN Association tab</h5></td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td colspan="1" class="confluenceTd">Module ID</td><td colspan="1" class="confluenceTd">It is the module of the placement machine.</td></tr><tr><td colspan="1" class="confluenceTd">Part Number</td><td colspan="1" class="confluenceTd">Same as above for Feeder Tab</td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd"><span>Same as above for Feeder Tab</span></td></tr><tr><td colspan="1" class="confluenceTd">Module ID/Track ID/Tray Tower/Tray Location/Tray Division</td><td colspan="1" class="confluenceTd"><p><span>Same as for Feeder Tab, but with Tray information for allocating the component in Part Allocation screens.</span></p></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="EquipmentSetupSheet-Detailswindow">Details window</h5><p><br /></p><p><span class="confluence-embedded-file-wrapper image-center-wrapper"><img class="confluence-embedded-image confluence-external-resource image-center" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919098.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919084/image2017-5-17%2015%3A22%3A37.png?version=1&modificationDate=1530103828827&api=v2" /></span></p></td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td class="confluenceTd">Add Button</td><td class="confluenceTd"><p>To Add in the details window the information just selected for the component to allocate</p></td></tr><tr><td colspan="1" class="confluenceTd">Remove Button</td><td colspan="1" class="confluenceTd">It allows to clear a row from the details window (the row must be selected first)</td></tr><tr><td colspan="1" class="confluenceTd">Clear Button</td><td colspan="1" class="confluenceTd"><span>It allows to clear all rows from the details window </span></td></tr></tbody></table>






If the setup sheet is a
**deviated setup** the system will allow to see the difference with the original one (see [Equipment Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)for details) selecting the toggle button "Show changes against original setup "setup ID""![image2020-4-14_15-36-21.png](/.attachments/29919090.png)


but in case of no difference the following message will appear in the deviate setup sheet detail window: 
"No changes found against original setup "setup ID"" 

![image2020-4-14_15-36-21.png](/.attachments/29919198.png)



The differences will be marked as following:

- Background color
**RED** 
: the row has been removed (it exists in the original setup, but doesn't exist in the deviated setup selected)
- Background color
**GREEN** 
: the row has been added (it doesn't exist in the original setup, but exists in the deviated setup selected)
- Background color
**YELLOW/AMBER** 
: the row has been modified (it exists in the original setup, but with different value on location or part or CRD)![image2020-4-14_15-36-21.png](/.attachments/29919087.png)


Double clicking on Yellow row the system will show the Original Setup Sheet row:
![image2020-4-14_15-36-21.png](/.attachments/29919086.png)





#### Attachments

[image2017-9-4 12:10:22.png](/.attachments/29919085.png)
[image2017-7-31 14:16:18.png](/.attachments/29919086.png)
[image2017-7-31 14:15:18.png](/.attachments/29919087.png)
[image2017-7-31 14:14:58.png](/.attachments/29919088.png)
[image2017-7-31 14:14:28.png](/.attachments/29919089.png)
[image2017-7-5 15:21:35.png](/.attachments/29919090.png)
[image2017-7-5 14:48:36.png](/.attachments/29919091.png)
[image2017-7-5 14:48:8.png](/.attachments/29919092.png)
[image2017-7-5 14:45:44.png](/.attachments/29919093.png)
[image2017-7-3 16:52:3.png](/.attachments/29919094.png)
[image2017-7-3 16:47:34.png](/.attachments/29919095.png)
[image2017-7-3 16:41:28.png](/.attachments/29919096.png)
[image2017-5-18 14:47:30.png](/.attachments/29919097.png)
[image2017-5-17 15:22:37.png](/.attachments/29919098.png)
[image2017-5-17 15:13:48.png](/.attachments/29919099.png)
[image2017-5-17 15:7:31.png](/.attachments/29919100.png)
[image2017-5-17 14:59:32.png](/.attachments/29919101.png)
[image2017-5-17 14:46:54.png](/.attachments/29919102.png)
[image2017-5-17 13:29:56.png](/.attachments/29919103.png)
[image2017-5-17 13:31:28.png](/.attachments/29919104.png)
[image2020-4-14_15-36-21.png](/.attachments/69632081.png)

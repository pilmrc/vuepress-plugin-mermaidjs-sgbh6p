# Introduction

Manual Station Setup Sheet is a module create the setup with component information for manual placement (assemble) to allow traceability.

The component allocation is based on the configuration made in this module.The screen is split in different tabs:

- Configuration
- where to put the generic information related to the machine, the step, the setup number, etc.
- Detail
- where to out the information related to component/material to place, related quantity and location (Feeder, Module, etc.)The setup sheet can be created, but not used. In that case it will be possible to modify it anytime.
When the setup is installed (at least once) it is automatically locked and the locked icon appears: 
![](/.attachments/29919097.png)


In this case the setup cannot be deleted or modified to avoid loosing traceability.



### How to get there?



![](/.attachments/29919194.png)


![](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)


Then



::: mermaid
graph LR
A("SETUP SHEET")-->0("MANUAL STATION")

:::


#### Screen Activity


Manual Station Setup Sheet enables user to perform the following activity:

- Add/Remove component (by
[Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)) for creating the setup used in Manual Assemble area

#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Manual Setup Sheet

- [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)

- [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)

- [Resource Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)

- [Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)



#### Permission


Can Access Manual Station Setup Sheet

- To View Manual Station Setup Sheet


- To display "Manual Station Setup Sheet" at Left Menu

Can Modify Manual Station Setup Sheet 

- To Create, Update, Delete Manual Station Setup Sheet if the Setup Sheet is not locked


- If Setup Sheet is locked, only able to update "Deviation", "Active", "Export for SAP Pull List" field



#### Screen Dependency


Following screens have direct dependency with Manual Station Setup Sheet

- [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)


- [Manual Station Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)


- [Validate](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)


- [Manual Station Setup Sheet - share](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Setup-Sheet.md)


![image2020-4-14_15-16-31.png](/.attachments/69632079.png)





#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="ManualStationSetupSheet-ConfigurationTab"><strong>Configuration Tab</strong></h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Setup Sheet ID</p></td><td class="confluenceTd"><p>The unique ID that refer to the setup to use for allocating components. This value is generated automatically by the system after saving. It can be searched using Search icon</p><p>when it is required to modify an existing setup.</p></td></tr><tr><td colspan="1" class="confluenceTd">Program Name</td><td colspan="1" class="confluenceTd">Name of the program used by engineers</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">Generic Comment field (not mandatory)</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The assembly number to produce</td></tr><tr><td colspan="1" class="confluenceTd">Route/Version</td><td colspan="1" class="confluenceTd"><span><span>The route/version where the setup sheet has to be used. Only active route version are available for selection</span></span>.</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>The route step where the setup sheet will be used. </span></td></tr><tr><td colspan="1" class="confluenceTd">Setup Number</td><td colspan="1" class="confluenceTd">The setup number related to the setup Sheet ID. This value is defined by engineers</td></tr><tr><td colspan="1" class="confluenceTd">Setup Version</td><td colspan="1" class="confluenceTd">The setup number version related <span>to the setup Sheet ID. This value is defined by engineers. It's not possible to have two normal setups with same Setup number and version</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Deviation</span></td><td colspan="1" class="confluenceTd"><p><span>This field is available only for setup already created (with setup sheet ID) and identify the deviation associated to the setup sheet. If this value is empty it means that the setup is a normal setup without deviation.</span></p><p><span><span>If the setup sheet is a deviated setup then this field will contain the deviation number and a new field "Original Setup ID" will appear with the setup ID number of the original setup where the deviated setup is coming from</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Original Setup ID</td><td colspan="1" class="confluenceTd"><p>This field is available only if the setup selected is a deviated setup sheet. The filed is showing the original setup where the deviated setup is coming from</p></td></tr><tr><td colspan="1" class="confluenceTd"><p class="auto-cursor-target">Active toggle button</p></td><td colspan="1" class="confluenceTd"><span>It is a flag to Activate/Deactivate the setup sheet. This is used to filter the setup during the research (the search can be done by setup ID,Program Name, etc.)</span></td></tr><tr><td colspan="1" class="confluenceTd">Material quantity Consumption toggle button</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>It is a flag to activate the quantity consumption at manual assemble (default value: OFF). When set to ON the GRN quantity becomes a mandatory field in Manual Station Part Allocation screen</p><p>and the tool will block the unit when the GRN quantity is not enough to produce.</p><p>The toggle is disabled when the setup sheet has been installed in part allocation before.</p><p>Configured in Material Maintenance is override the configuration at Setup Sheet. See the attached table below. No quantity is deducted although the Material Quantity Consumption is Yes if the GRN is not registered during the Part Allocation. <br /><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="350" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49643923.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/49643923.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="49643923" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-5-17-10-16-0.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29919193" data-linked-resource-container-version="9" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Export for SAP Pull List toggle button</td><td colspan="1" class="confluenceTd"><span>It is a flag to Activate/Deactivate the possibility to send setup information to SAP for the Pull List creation. Default value is OFF. When set to ON the system will send the information of current setup sheet to SAP for managing the pull list</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Export.csv</span></td><td colspan="1" class="confluenceTd"><span>This button will create a csv file with the setup sheet information. The button is active only if some info are available in the Details tab. The format of csv file will reflect the same format used for importing the setup from external csv file.</span></td></tr><tr><td colspan="2" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919203.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919193/image2017-7-5%2014%3A55%3A56.png?version=1&modificationDate=1530103832557&api=v2" /></span></td></tr><tr><td colspan="1" class="confluenceTd">Existing Manual Setup Sheet Active toggle button</td><td colspan="1" class="confluenceTd"><p>This toggle button is available only when the setup sheet is copied. In that phase is possible to keep the original setup sheet active, or put it inactive when the copy is created, so that the only active setup is the copied one.</p><p>The copy of a setup happens pressing the "Copy" icon <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="download/attachments/17235981/59580684647701072198" data-image-src="http://usplnd0wiki01:8090/download/attachments/17235981/image2017-7-5+14%3A48%3A36.png?version=1&modificationDate=1499258906583" /></span>, but the copied setup sheet is created only after saving. During the saving phase the system will check the setup number and version as well: if one of these value is not changed in the copied setup it won't be possible to save.</p></td></tr><tr><td colspan="2" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919204.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919193/image2017-7-5%2014%3A54%3A29.png?version=1&modificationDate=1530103832573&api=v2" /></span></td></tr><tr><td colspan="1" class="confluenceTd">Shared Name</td><td colspan="1" class="confluenceTd">This field is available only if the setup is part of a <a href="Manual-Station-Setup-Sheet-29919193.html">shared setups</a> group. The value is read only and shows the name of the shared group.</td></tr><tr><td colspan="1" class="confluenceTd">IsShared</td><td colspan="1" class="confluenceTd">This toggle button is ON when the setup belong to a share. Putting the toggle button to OFF will remove the selected setup from the share (after saving)</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ManualStationSetupSheet-DetailTab">Detail Tab</h5><p><span class="confluence-embedded-file-wrapper image-center-wrapper"><img class="confluence-embedded-image confluence-external-resource image-center" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919197.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919193/image2017-7-5%2015%3A15%3A16.png?version=1&modificationDate=1530103832460&api=v2" /></span></p></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey">Description</td></tr><tr><td class="confluenceTd">Program Name</td><td class="confluenceTd">Name of the program used by engineers. <span>Read only value coming from Configuration Tab.</span></td></tr><tr><td class="confluenceTd">Assembly</td><td class="confluenceTd">The assembly number to produce. <span>Read only value coming from Configuration Tab.</span></td></tr><tr><td class="confluenceTd">Route Step</td><td class="confluenceTd"><span>The route step where the setup sheet will be used. <span>Read only value coming from Configuration Tab.</span></span></td></tr><tr><td class="confluenceTd">Setup Number</td><td class="confluenceTd">The setup number related to the setup Sheet ID. <span>Read only value coming from Configuration Tab.</span></td></tr><tr><td class="confluenceTd">Setup Version</td><td class="confluenceTd">The setup number version related <span>to the setup Sheet ID. <span>Read only value coming from Configuration Tab.</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Bin</td><td colspan="1" class="confluenceTd"><span>The Bin number where the part has to be located in Part Allocation screen.</span></td></tr><tr><td colspan="1" class="confluenceTd">Part Number</td><td colspan="1" class="confluenceTd"><p>This field is for selecting the part number (Material) related to the component that has to be configured. When a WIP material is selected the user will have to choose the related assembly value. This assembly value will be showed in the Details window. The WIP material is not required to be scanned in <a href="Manual-Station-Setup-Sheet-29919193.html">Manual Station Setup Sheet</a></p><p><span style="color: rgb(0,0,0);">If the setup sheet is for Lot/Batch material, the part number must be of Unserialized or Lot batch Material only.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd"><p><span>This field is to associate one or multiple CRD to the above material. A new popup window will appears to allow user to insert the list of CRD. <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" width="300" src="attachments/thumbnails/29919193/29919215" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/29919193/image2017-5-17%2015%3A13%3A48.png?version=1&modificationDate=1530103832747&api=v2" /></span></span></p><p><span>User will be able to Add, Update, Remove one or more CRD.</span></p></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="ManualStationSetupSheet-Detailswindow">Details window</h5><p><span class="confluence-embedded-file-wrapper image-center-wrapper"><img class="confluence-embedded-image confluence-external-resource image-center" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29919206.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29919193/image2017-5-18%2015%3A41%3A28.png?version=1&modificationDate=1530103832603&api=v2" /></span></p><p>Then details window contains a column called "Assembly" that will be filled with the assembly value when the material is a WIP (i.e. child board, subassembly, etc.). This value is requested everytime the user will select a WIP Material from the above Partnumber field.</p></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td class="confluenceTd">Add Button</td><td class="confluenceTd"><p>To Add in the details window the information just selected for the component to allocate</p></td></tr><tr><td colspan="1" class="confluenceTd">Remove Button</td><td colspan="1" class="confluenceTd">It allows to clear a row from the details window (the row must be selected first)</td></tr><tr><td colspan="1" class="confluenceTd">Clear Button</td><td colspan="1" class="confluenceTd"><span>It allows to clear all rows from the details window </span></td></tr></tbody></table>



**deviated setup** 
the system will allow to see the difference with the original one (see Setup Sheet Deviation for details) selecting the toggle button "Show changes against original setup "setup ID""![image2019-5-17_10-16-0.png](/.attachments/29919090.png)


but in case of no difference the following message will appear in the deviate setup sheet detail window: 
"No changes found against original setup "setup ID""
![image2019-5-17_10-16-0.png](/.attachments/29919198.png)



The differences will be marked as following:

- Background color
**RED** 
: the row has been removed (it exists in the original setup, but doesn't exist in the deviated setup selected)
- Background color
**GREEN** 
: the row has been added (it doesn't exist in the original setup, but exists in the deviated setup selected)
- Background color
**YELLOW/AMBER** 
: the row has been modified (it exists in the original setup, but with different value on location or part or CRD)![image2019-5-17_10-16-0.png](/.attachments/29919087.png)


Double clicking on Yellow row the system will show the Original Setup Sheet row:
![image2019-5-17_10-16-0.png](/.attachments/29919086.png)





#### Attachments

[image2017-9-4 12:7:53.png](/.attachments/29919194.png)
[image2017-7-6 15:47:36.png](/.attachments/29919195.png)
[image2017-7-5 15:16:58.png](/.attachments/29919196.png)
[image2017-7-5 15:15:16.png](/.attachments/29919197.png)
[image2017-7-5 15:14:4.png](/.attachments/29919198.png)
[image2017-7-5 15:10:28.png](/.attachments/29919199.png)
[image2017-7-5 15:5:42.png](/.attachments/29919200.png)
[image2017-7-5 15:1:23.png](/.attachments/29919201.png)
[image2017-7-5 14:59:41.png](/.attachments/29919202.png)
[image2017-7-5 14:55:56.png](/.attachments/29919203.png)
[image2017-7-5 14:54:29.png](/.attachments/29919204.png)
[image2017-7-5 14:53:12.png](/.attachments/29919205.png)
[image2017-5-18 15:41:28.png](/.attachments/29919206.png)
[image2017-5-18 15:37:58.png](/.attachments/29919207.png)
[image2017-5-18 15:7:29.png](/.attachments/29919208.png)
[image2017-5-18 14:54:9.png](/.attachments/29919209.png)
[image2017-5-17 13:31:28.png](/.attachments/29919210.png)
[image2017-5-17 13:29:56.png](/.attachments/29919211.png)
[image2017-5-17 14:46:54.png](/.attachments/29919212.png)
[image2017-5-17 15:7:31.png](/.attachments/29919213.png)
[image2017-5-17 14:59:32.png](/.attachments/29919214.png)
[image2017-5-17 15:13:48.png](/.attachments/29919215.png)
[image2017-5-17 15:22:37.png](/.attachments/29919216.png)
[image2018-8-28_9-23-27.png](/.attachments/34087745.png)
[image2018-8-28_9-29-7.png](/.attachments/34087746.png)
[image2019-5-17_10-16-0.png](/.attachments/49643923.png)
[image2020-4-14_15-16-31.png](/.attachments/69632079.png)

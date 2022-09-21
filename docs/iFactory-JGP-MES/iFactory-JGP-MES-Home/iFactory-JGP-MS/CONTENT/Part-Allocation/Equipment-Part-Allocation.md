# Introduction

Equipment Part Allocation
is a module to allocate component information for placement machines (SMT area) to allow traceability.
The component allocation is based on the equipment setup sheet selected.

### How to get there?


![image2017-9-4 12:9:57.png](/.attachments/29919075.png)



![image2017-9-4 12:9:57.png](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)


Then


::: mermaid
graph LR
A("PART ALLOCATION")-->0("EQUIPMENT")

:::


#### **Screen Activity** 


Equipment Part Allocation enables user to perform the following activity:

- Load/Remove component for SMT traceability

- Load/Remove pre-load data

- Install/Uninstall Table



Pre Condition
The following data needs to be pre-configured before user configures Equipment Part Allocation

- [Equipment Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)

- [GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN.md)

- [Feeder/Tray](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Feeder%2DTray.md)
(if feeder tracking is required)
- [GRN Association](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Association.md)
(if feeder tracking is required)


#### Screen Dependency


Following screens have direct dependency with Equipment Part Allocation:

- [Equipment Setup Sheet](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Setup-Sheet.md)


- [GRN](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN.md)

- [GRN Association](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/GRN-Association.md)


- [Feeder/Tray](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Feeder%2DTray.md)


- [Preload](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md)


![image2017-7-5 12:1:59.png](/.attachments/29919078.png)


![image2017-7-5 11:40:39.png](/.attachments/29919079.png)


![image2017-7-5 11:38:37.png](/.attachments/29919080.png)





#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="EquipmentPartAllocation-SelectionCriteriamenu"><strong>Selection Criteria menu</strong></h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Setup Sheet ID</p></td><td class="confluenceTd"><p>The unique ID that refer to the setup to use for allocating components</p></td></tr><tr><td colspan="1" class="confluenceTd"><span><em>Feeder Tracking</em> toggle switch</span></td><td colspan="1" class="confluenceTd"><span>It defines the input mode: GRN or feeder (default value defined in <a href="Resource-29919981.html">Resource Maintenance</a> screen). When ON the feeder number is tracked and available in reporting. The feeder must be associated with a GRN in <a href="GRN-Association-29919137.html">GRN Association</a> screen</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Table</span></td><td colspan="1" class="confluenceTd"><span>This value is selected by the user to identify the table to use in the placement machine (Default value: 1)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Active Table</span></td><td colspan="1" class="confluenceTd"><span style="color: rgb(34,34,34);">Once Setup Sheet is installed, this field indicates/shows the active table the <em>Details</em> info (<em>Current Feeder/Tray GRN Association</em>) are referring to</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Removal Option</span></td><td colspan="1" class="confluenceTd"><span>To define the removal mode: remove the feeder/GRN from the setup, or remove also GRN from the feeder at same time</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Single Lane/Multi Lane radio button</span></td><td colspan="1" class="confluenceTd"><span>It defines if the equipment can manage the Multi Lane or not. The configuration is coming from <a href="Resource-29919981.html">Resource Maintenance</a></span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Lane</span></td><td colspan="1" class="confluenceTd"><span>Field to allow user to select which Lane the current setup installation is referring to. The field can be selected only if <em>Multi Lane</em> option is selected</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Preload Name</span></td><td colspan="1" class="confluenceTd"><span>Allow to define what is the pre-load to use (if <a href="Preload-Part-Allocation-29919251.html">pre-load</a> has been configured previously)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span><em>X-Out Board</em> toggle switch</span></td><td colspan="1" class="confluenceTd"><span>It is active only if the assembly has a panel. It allows to select from the panel </span><span>the boards</span><span> that won't be allocated, so that will be possible a partial assemble skipping the selected boards from the panel</span></td></tr><tr><td colspan="1" class="confluenceTd">Panel Type</td><td colspan="1" class="confluenceTd">It shows the panel structure and and the board to exclude in the assemble phase. Available if <em>x-Out</em> is ON. The <em>Panel Type</em> is coming from the Panel Configuration</td></tr><tr><td class="confluenceTd"><p>Equipment</p></td><td class="confluenceTd"><p>Equipment Name (value from Setup Sheet configuration). <span>This value is read only.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">The assembly number to produce (value from Setup Sheet Configuration), <span>This value is read only.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd"><span>The route where the setup sheet has been configured<span> (value from Setup Sheet Configuration)</span>. <span>This value is read only.</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>The route step where the setup sheet is used<span> (value from Setup Sheet Configuration)</span>. This value is read only.</span></td></tr><tr><td colspan="1" class="confluenceTd">Setup Number</td><td colspan="1" class="confluenceTd">The setup number related to the setup Sheet ID<span> (value from Setup Sheet Configuration)</span>. <span>This value is read only.</span></td></tr><tr><td colspan="1" class="confluenceTd">Setup Version</td><td colspan="1" class="confluenceTd">The setup number version related <span>to the setup Sheet ID<span> (value from Setup Sheet Configuration)</span>. </span><span>This value is read only.</span></td></tr><tr><td colspan="1" class="confluenceTd">Deviation</td><td colspan="1" class="confluenceTd">This field indicates if the selected setup sheet is a deviated setup or an Original Setup (not deviated)</td></tr><tr><td colspan="1" class="confluenceTd">Original Setup ID</td><td colspan="1" class="confluenceTd">This field shows the Original Setup ID where the deviated setup is coming from. It is available only if the selected setup is a deviated setup sheet</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="EquipmentPartAllocation-CurrentFeederGRNAssociationtab">Current Feeder GRN Association tab</h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Feeder</td><td colspan="1" class="confluenceTd"><p>This field is active only if Feeder Tracking is ON: User has to insert the feeder number (value created in F<a href="29919124.html">eeder/Tray</a> screen and associated to a GRN in <a href="GRN-Association-29919137.html">GRN Association</a> screen)</p></td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd"><span>This field is active only if Feeder Tracking is OFF: User has to insert the GRN number (value created in <a href="GRN-29919129.html">GRN </a>screen). The GRN field can support up to 50 chars to be used by Non-Unique Identifier.</span></td></tr><tr><td colspan="1" class="confluenceTd">Module ID/ Track ID/ Feeder Track</td><td colspan="1" class="confluenceTd"><p>The user has to insert the Module ID, Track ID, Feeder Track. Based on configuration, the system is able to retrieve the related values from the setup sheet, so that the user doesn't have to insert any value.</p><p><em><strong>Module ID + Track ID</strong> <strong>are the Slot </strong>of the equipment that can be forced to be scanned configuring the customer key in <a href="29919066.html">Customer Configuration (4.2)</a> screen</em></p></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="EquipmentPartAllocation-CurrentTrayGRNAssociationtab">Current Tray GRN Association tab</h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Tray</td><td colspan="1" class="confluenceTd">Same as Feeder. User has to insert Tray value when Feeder Tracking is ON</td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd"><span>This field is active only if Feeder Tracking is OFF: User has to insert the GRN number</span></td></tr><tr><td colspan="1" class="confluenceTd">Module ID/Track ID/Tray Tower/Tray Location/Tray Division</td><td colspan="1" class="confluenceTd"><p><span>Depends on configuration the system is able to retrieve the related values from the setup sheet, so that the user doesn't have to insert any value. Otherwise, information on component location are required.</span></p><p><span><em><strong>Module ID + Track ID</strong> <strong>are the Slot </strong>of the equipment that can be forced to be scanned configuring the customer key in <a href="29919066.html">Customer Configuration (4.2)</a> screen</em></span></p></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="EquipmentPartAllocation-Generalmenu">General menu</h5></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td class="confluenceTd">Install Button</td><td class="confluenceTd"><p>Allow to install the Setup. It is active only when all required information are filled (GRN/Feeders<span>, Module, </span> etc.)</p></td></tr><tr><td colspan="1" class="confluenceTd">Move To Preload</td><td colspan="1" class="confluenceTd">Allow to empty the current table and move the configuration to a Pre-load (pre-load name should exists)</td></tr><tr><td colspan="1" class="confluenceTd">Install Preload</td><td colspan="1" class="confluenceTd">Allow to install the pre-load previously selected in <em>Preload</em> name field</td></tr><tr><td colspan="1" class="confluenceTd">Clear Selection</td><td colspan="1" class="confluenceTd">Allow to remove the Feeder/GRN selected from the list showed at "<em>Current Feeder GRN Association</em>" (or "<em>Current Tray GRN Association</em>" tabs). The system will ask confirmation to remove and prompt the choice to empty also the reel, if required. With empty reel <span>the </span><a href="GRN-29919129.html">GRN</a><span> </span>will become "<em>Prohibited</em>"</td></tr><tr><td colspan="1" class="confluenceTd">Clear Table</td><td colspan="1" class="confluenceTd">Allow to remove all components from the table selected</td></tr><tr><td colspan="1" class="confluenceTd">Clear Equipment</td><td colspan="1" class="confluenceTd">To reset the current setup configuration</td></tr></tbody></table>

**Setup Sheet ID with some deviated setup: when a deviated setup is configured (see**  
[Setup Sheet Deviation (4.2)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Deviation/Setup-Sheet-Deviation-(4.2).md)) and the user is scanning the Original Setup Sheet ID, the system will prompt to select if the user wants to work with original setup or with existing deviated setup, so that the user is aware that a valid deviation setup is available for that product.![image2017-7-31 13:56:11.png](/.attachments/29919076.png)


If the deviated setup sheet ID is directly scanned into the field, the system will retrieve the setup sheet info and will provide a small notification saying that the setup selected is a deviated setup from the original.
![image2017-7-31 13:55:21.png](/.attachments/29919077.png)






#### Attachments

[image2017-9-4 12:9:57.png](/.attachments/29919075.png)
[image2017-7-31 13:56:11.png](/.attachments/29919076.png)
[image2017-7-31 13:55:21.png](/.attachments/29919077.png)
[image2017-7-5 12:1:59.png](/.attachments/29919078.png)
[image2017-7-5 11:40:39.png](/.attachments/29919079.png)
[image2017-7-5 11:38:37.png](/.attachments/29919080.png)
[image2017-7-5 11:37:52.png](/.attachments/29919081.png)
[image2017-5-17 13:31:28.png](/.attachments/29919082.png)
[image2017-5-17 13:29:56.png](/.attachments/29919083.png)

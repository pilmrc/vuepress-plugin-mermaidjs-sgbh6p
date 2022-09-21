# Introduction


The assemble point maintenance screen allows user to configure what and where to assemble specific materials for a product (also known as top-level material). The assemble point also allows user to assign data collection, define assembly sequence and configure assemble validation. Shop floor uses assemble validation to verify materials assembled in the upstream of the route is still intact as the WIP progresses down the route. For example: Label_X was printed at the first step of the route. The quality team frequently notices the labels were missing when the WIP reaches Final QC. With assemble validation configured for Label_X, operator is required to scan or acknowledge Label_X is still attached to the WIP. System will prevent the WIP from proceeding to the next step if assemble validation fails. The materials populated for configuration are derived from the top level material's current BOM. Normally, a top level material will have a multi-level BOM where it has several levels of phantom BOMs that groups the materials. To ease configuration, the Assemble Point exposes every materials in the BOM by recursively exploding the phantom BOMs until the component level.




### How to get there?



::: mermaid
graph LR
A("CONFIGURE")-->0("ASSEMBLE POINT")

:::
![image2015-9-2 17:11:57.png](/.attachments/29918109.png)




#### Pre Condition


The following data needs to be pre-configured (if used) before user configures the assemble point package. 

- The top level material has a BOM that is marked "Is Current" in BOM Maintenance

- Phantom materials need to be marked as "Phoenix Phantom" in Material Maintenance. This allow the phantom material's BOM to be exploded in assemble point for configuration.



#### Screen Activity


Assemble point screen enables user to perform the following activity:

- Allocate components on a bill of materials (BOM) to be assembled at specific route steps using assemble types

- Use sequence settings to enforce the order of materials being assembled.

- Assign data collection to be collected when material is being assembled

- Set the assemble configuration as default for the material. This saves and updates the default values into Material Maintenance's Assemble tab from the Assemble Point configuration. When a new Assemble Point is loaded containing the same material, the defaults will be pre-loaded into the Assemble Point for the user. User is required to review and save the Assemble Point configuration after the review. Defaults will only be transferred from Material for Assemble Point that has not been saved before. Defaults will not overwite configuration values that has been saved in the Assemble Point.

- Split quantities for a material for separate assemble point configurations

- Configure
[assemble validation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Assemble-Validation.md)
- Refresh assemble point to get the latest BOM item changes. After the initial BOM is sent to shop floor, SAP may update the BOM items by its quantity or changing the BOM item's validity dates. Using the refresh function, user easily gets the current BOM's structure displayed in assemble point. System will highlight the material that were changed with the current BOM.



#### Screen Dependency


The following screen(s) have direct dependency with assemble point package 

- [Bill Of Material - BOM (legacy)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)


#### Loading Assemble Point




- Start by entering the top level material name on the Search box. This will bring up a pop-up window. Select the the record with the current BOM (Is Current = True)

Note: User still has the ability to configure/view previous configuration by selecting previous BOM versions. However, only the current BOM is used for assembling the WIP
- Use the Filter By Date to display materials that are valid from the selected date

- For BOMs containing less than 5000 items, user can load the assemble point without specifying a material name in the Search Materials field. Click on the Search Materials search button to load the Assemble Point.


For BOMs containing more than 5000 items, user is required to specify a material name. Click on the Search Materials search button to load the Assemble Point. Entering a phantom material name shall display all components under the phantom material. Entering a raw material name shall display the hierarchy up to its parent. 

BOM items highlighted in green signifies they have not been configured in assemble point before. Top level material that has no assemble point configured before will have all their BOM items in green. BOM items highlighted in red signifies they have been removed

![image2015-4-16 16:12:32.png](/.attachments/29918122.png)




#### Configuring Assemble Point



<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Buttons</th><th class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918114.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918114.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918114" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-5-12 13:34:10.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd">Saves the assemble point configuration</td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918113.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918113.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918113" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-5-12 13:34:42.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd">Delete the assemble point</td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918112.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918112.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918112" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-5-12 13:35:16.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd">Clear the assemble point</td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918111.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918111.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918111" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-5-12 13:35:39.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd">Refresh the assemble point line items to g<span>et the latest BOM if there is a BOM change. This functionality is only applicable for Fixed BOM type.</span></td></tr><tr><td class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918121.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918121.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918121" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-5-12 13:4:15.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></td><td class="confluenceTd">Expand all line items</td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918120.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918120.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918120" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-5-12 13:4:50.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd">Collapse all <span>line items</span></td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918119.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918119.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918119" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-5-12 13:5:16.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd">Select all <span>line items</span></td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918118.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918118.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918118" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-5-12 13:5:44.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd">Deselect all selections</td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918117.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918117.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918117" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-5-12 13:6:1.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd">Edit Material. Brings up the Assemble Point configuration window.</td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918116.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918116.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918116" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-5-12 13:6:55.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd"><span><span>Edit Assemble Validation. Brings up the Assemble Validation configuration window. </span></span></td></tr></tbody></table>


- Once the assemble point is successfully loaded, select the desired material(s) for assemble point configuration.


- Click the Edit Material button. The Assemble Point Item(s) Edit window is displayed. Configure accordingly.


- Repeat steps 1-2 until you have completed configuration

- Click the Save button to save the assemble point
![image2015-5-12 13:14:33.png](/.attachments/29918115.png)


<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Fields</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Sequence</td><td class="confluenceTd">Configure the order which the material will be assembled in the route step</td></tr><tr><td class="confluenceTd">Assemble Type</td><td class="confluenceTd"><p>Determines the route step the material should appear for assembly. <br /><br />Example: <br />In Assemble Point, material-A's assemble type is <strong><span style="color: rgb(0,51,102);">Assembly1</span></strong><br />In the Route where material-A is built, route step Node 1 has assemble type <strong><span style="color: rgb(0,51,102);">Assembly1</span> </strong>configured </p><p>When a WIP is started in Node 1, system will perform a match calculation & display material-A for assembly</p></td></tr><tr><td colspan="1" class="confluenceTd">Data Collection</td><td colspan="1" class="confluenceTd"><span>If there is required user input pertaining to a material during assembly, the user has the ability to assign the data collect to the material.</span></td></tr><tr><td colspan="1" class="confluenceTd">Confirm button</td><td colspan="1" class="confluenceTd">Temporary save the assemble point configuration. You MUST press the Save button to save all configuration in this screen.  </td></tr><tr><td colspan="1" class="confluenceTd">Cancel button</td><td colspan="1" class="confluenceTd">Cancel any configuration prior to Confirm</td></tr></tbody></table>




In Assemble Point, material_A's assemble type is **Assembly1** 

In the Route where material_A is built, route step Node 1 has assemble type **Assembly1** 
configured When a WIP is started in Node 1, system will perform a match calculation & display material_A for assembly
Data CollectionIf there is required user input pertaining to a material during assembly, the user has the ability to assign the data collect to the material.Confirm buttonTemporary save the assemble point configuration. You MUST press the Save button to save all configuration in this screen.  Cancel buttonCancel any configuration prior to ConfirmTip
To speed up configuration, identify and select all materials that has the same configuration value




#### Split Quantity 


The assemble point maintenance screen has a column labeled Split.  The
![image2015-9-2 17:14:53.png](/.attachments/29918108.png)


icon appears next to a material that has quantity of more than one. Splitting is performed if the same material needs to be configured with different assemble type. When a material has multiple quantities, administrator may want to split the material to be assembled at different route steps.

- Click on the

![image2015-9-2 17:14:59.png](/.attachments/29918107.png)


icon corresponding to the material requiring a split.
System presents user with a Split Assemble Point Item pop-up window:

- User has a number of divisions for selection from the drop down list. The drop-down display provides a quantity list equal to the material quantity.

If the division selected is "2", then there will be two rows presented to the user for splitting the material quantity into two groups 
- Click the Confirm button to apply the split.

System will validate the total quantity entered in each row sums up to the quantity of the material. All rows are required to have a quantity before being saved. 

![image2015-9-2 17:16:2.png](/.attachments/29918106.png)


![image2015-9-2 17:16:47.png](/.attachments/29918105.png)


![image2015-9-2 17:18:7.png](/.attachments/29918104.png)


4. Result of a successful split. Since the material is split, user can have different assemble point configuration for each of the split material.
![image2015-9-2 17:20:26.png](/.attachments/29918102.png)


5. To remove split, select the 
![image2015-9-2 17:14:53.png](/.attachments/29918108.png)


icon for the parent material
6. Change the Split Count to 1
7. Then click the "Confirm" button
![image2015-9-2 17:21:44.png](/.attachments/29918101.png)


7. The previously split rows turns red to show that on Assemble Point save, these rows will be removed. 
![image2015-9-2 17:22:48.png](/.attachments/29918100.png)


8. For all spilt/unsplilt activities, user needs to save the configuration by clicking the "Save" button (header) of the assemble point screen.
![image2015-9-2 17:25:29.png](/.attachments/29918098.png)




#### Refresh Assemble Point



When there are ECN or BOM changes, it is 
*mandatory* to refresh the Assemble Point to get the latest changes. The ECN process is expected to be established by the site where ECN changes need to be communicated down to SME/Industrial Engineer to ensure the Assemble Point is refreshed.  

- Load the Assemble Point


- Click on the Refresh button

![image2015-9-3 16:10:38.png](/.attachments/29918083.png)



- Any items added will be highlighted in green. Items deleted will be in red. Items with changes such as change quantity will be in yellow.


- Save the Assemble Point



Note: In version 4.0 and above, user will no longer need to un-split every materials that has been split to refresh the Assemble Point. An enhancement was added to automatically unsplit affected materials (IE: only unsplit material that has quantity change) while leaving the rest of the splits unaffected. On clicking refresh, a preview is shown to the user prior to Assemble Point save to confirm the application of the changes. Prior to the save confirmation, user can cancel this action and no changes is applied to the Assemble Point. 



#### Fields/Functions



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="AssemblePoint-Fields/Functions.1"><strong>Fields/Functions</strong></h5></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Header</strong></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field/Functions</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Search for BOM text box</td><td colspan="1" class="confluenceTd">User to enter the top level material to search for its corresponding BOM</td></tr><tr><td class="confluenceTd"><p>Filter By Date</p></td><td class="confluenceTd"><p>Allows user to filter BOM items from the specified date onwards. By default, the BOM items will be filtered based on BOM items that are valid from Today's date</p></td></tr><tr><td colspan="1" class="confluenceTd">Search Materials check box</td><td colspan="1" class="confluenceTd">Allows user to further filter the BOM items by specifying the material name. The material's hierarchy in the BOM will be listed so user can configure the material under the right parent.</td></tr><tr><td colspan="1" class="confluenceTd">Name</td><td colspan="1" class="confluenceTd">BOM Name</td></tr><tr><td colspan="1" class="confluenceTd">Version</td><td colspan="1" class="confluenceTd">BOM Version</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">BOM Material Name</td></tr><tr><td colspan="1" class="confluenceTd">Material Description</td><td colspan="1" class="confluenceTd">BOM Material's Description</td></tr><tr><td colspan="1" class="confluenceTd">Valid From</td><td colspan="1" class="confluenceTd">BOM Valid From Date</td></tr><tr><td colspan="1" class="confluenceTd"><p>Valid To</p></td><td colspan="1" class="confluenceTd">BOM Valid To Date</td></tr><tr><td colspan="1" class="confluenceTd">Is Current</td><td colspan="1" class="confluenceTd">Specify if the BOM is a current BOM</td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Details</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field/Functions</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918082.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918082.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918082" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-9-3 16:26:34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd">The checked sign next to the material shows the material is currently selected for configuration</td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918081.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918081.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918081" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-9-3 16:26:54.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></td><td colspan="1" class="confluenceTd"><p>Flag the material to display as part of the filter used mostly in large BOMs where user wanted to view multiple materials.<br />In the example  below, <span style="color: rgb(82,98,115);">100-0035-01 & <span style="color: rgb(82,98,115);">104-0083-01 is flagged with a blue star. When user search for material 007-0003-01, although <span style="color: rgb(82,98,115);">100-0035-01 & </span><span style="color: rgb(82,98,115);">104-0083-01 are not part of the search, will be displayed as well. </span></span></span></p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" width="500" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918080.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918080.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918080" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-9-3 16:31:30.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Split</td><td colspan="1" class="confluenceTd">Refer to Split section above</td></tr><tr><td colspan="1" class="confluenceTd">Name</td><td colspan="1" class="confluenceTd">Material Name</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Material Description</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">Quantity of the material</td></tr><tr><td colspan="1" class="confluenceTd">Assemble Type</td><td colspan="1" class="confluenceTd">Material's Assemble Type<br /><br /><p>Determines the route step the material should appear for assembly. <br /><br />Note: User must also configure the same assemble type in the route step where the material needs to appear (Configuration is done in Route Step's Edit window under the Assemble Tab)<br />Example: <br />In Assemble Point, material-A's assemble type is <strong><span style="color: rgb(0,51,102);">Assembly1</span></strong><br />In the Route where material-A is built, route step Node 1 has assemble type <strong><span style="color: rgb(0,51,102);">Assembly1</span> </strong>configured </p><p>When a WIP is started in Node 1, system will perform a match calculation & display material-A for assembly.</p> </td></tr><tr><td colspan="1" class="confluenceTd">Material Type</td><td colspan="1" class="confluenceTd"><span>Material's Phoenix Material Type</span></td></tr><tr><td colspan="1" class="confluenceTd">Sequence</td><td colspan="1" class="confluenceTd"><p>Defines the order in which material is assembled. This field is optional. <br />If no sequence is configured, the materials in the route step can be assembled at any sequence. <br />If sequence is configured, user is enforced to assemble material following the sequence. <br /><br />Example#1:<br />Assemble Point configuration:<br />Material-A | Sequence = 1 <br /><span>Material-B | Sequence = 2</span></p><p><span>Result: User is enforced to assemble Material-A and then Material-B<br /><br /></span></p><p>Example#2:<br />Assemble Point configuration:<br />Material-A | Sequence = Not set<br />Material-B | Sequence = Not set</p><p>Result: User can choose to assemble Material-B or Material-A first. No assemble sequence enforcement by the system. <span> </span></p></td></tr><tr><td colspan="1" class="confluenceTd">Data Collection</td><td colspan="1" class="confluenceTd">Assemble Data Collection</td></tr><tr><td colspan="1" class="confluenceTd">Has Validation</td><td colspan="1" class="confluenceTd">An exclamation symbol <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918075.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918075.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918075" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-9-3 16:42:53.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span> means the material was configured with assemble validation</td></tr><tr><td colspan="1" class="confluenceTd">Set Default</td><td colspan="1" class="confluenceTd"><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918079.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918079.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918079" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-9-3 16:35:20.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span> <span>No default presently set for the material</span></p><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918078.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918078.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918078" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-9-3 16:35:37.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span> <span>Presently set as default. The assemble type and data collection will be copied as the material's default assemble type and assemble data collection (See Material Maintenance > Assemble tab)</span></p><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918077.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918077.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918077" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-9-3 16:36:9.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span> <span>Set differently from the default.</span></p><p><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918076.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918076.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918076" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2015-9-3 16:36:28.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918074" data-linked-resource-container-version="1" /></span> Have the same setting as the default.</p></td></tr><tr><td colspan="1" class="confluenceTd">Valid From</td><td colspan="1" class="confluenceTd">The line item's Valid From date</td></tr><tr><td colspan="1" class="confluenceTd">Valid To</td><td colspan="1" class="confluenceTd"><span>The line item's Valid To date</span></td></tr></tbody></table>








In Assemble Point, material_A's assemble type is **Assembly1** 

In the Route where material_A is built, route step Node 1 has assemble type **Assembly1** 
configured When a WIP is started in Node 1, system will perform a match calculation & display material_A for assembly.
Material TypeMaterial's Phoenix Material TypeSequenceDefines the order in which material is assembled. This field is optional. 

If no sequence is configured, the materials in the route step can be assembled at any sequence. 
If sequence is configured, user is enforced to assemble material following the sequence. 

Example#1:
Assemble Point configuration:
Material_A | Sequence = 1 
Material_B | Sequence = 2Result: User is enforced to assemble Material_A and then Material_B


Example#2:

Assemble Point configuration:
Material_A | Sequence = Not set
Material_B | Sequence = Not setResult: User can choose to assemble Material_B or Material_A first. No assemble sequence enforcement by the system. 
Data CollectionAssemble Data CollectionHas ValidationAn exclamation symbol ![image2015-9-3 16:42:53.png](/.attachments/29918075.png)


means the material was configured with assemble validation
Set Default![image2015-9-3 16:35:20.png](/.attachments/29918079.png)



No default presently set for the material![image2015-9-3 16:35:37.png](/.attachments/29918078.png)



Presently set as default. The assemble type and data collection will be copied as the material's default assemble type and assemble data collection (See Material Maintenance " Assemble tab)![image2015-9-3 16:36:9.png](/.attachments/29918077.png)



Set differently from the default.![image2015-9-3 16:36:28.png](/.attachments/29918076.png)


Have the same setting as the default.
Valid FromThe line item's Valid From dateValid ToThe line item's Valid To date



#### Attachments

[image2015-9-3 16:42:53.png](/.attachments/29918075.png)
[image2015-9-3 16:36:28.png](/.attachments/29918076.png)
[image2015-9-3 16:36:9.png](/.attachments/29918077.png)
[image2015-9-3 16:35:37.png](/.attachments/29918078.png)
[image2015-9-3 16:35:20.png](/.attachments/29918079.png)
[image2015-9-3 16:31:30.png](/.attachments/29918080.png)
[image2015-9-3 16:26:54.png](/.attachments/29918081.png)
[image2015-9-3 16:26:34.png](/.attachments/29918082.png)
[image2015-9-3 16:10:38.png](/.attachments/29918083.png)
[image2015-9-3 14:50:5.png](/.attachments/29918084.png)
[image2015-9-3 14:47:42.png](/.attachments/29918085.png)
[image2015-9-3 14:46:51.png](/.attachments/29918086.png)
[image2015-9-3 14:46:26.png](/.attachments/29918087.png)
[image2015-9-3 14:46:11.png](/.attachments/29918088.png)
[image2015-9-3 14:42:23.png](/.attachments/29918089.png)
[image2015-9-3 14:40:40.png](/.attachments/29918090.png)
[image2015-9-3 14:40:29.png](/.attachments/29918091.png)
[image2015-9-3 14:40:18.png](/.attachments/29918092.png)
[image2015-9-3 14:39:41.png](/.attachments/29918093.png)
[image2015-9-3 14:38:42.png](/.attachments/29918094.png)
[image2015-9-3 14:38:23.png](/.attachments/29918095.png)
[image2015-9-3 13:29:57.png](/.attachments/29918096.png)
[image2015-9-3 13:4:2.png](/.attachments/29918097.png)
[image2015-9-2 17:25:29.png](/.attachments/29918098.png)
[image2015-9-2 17:24:28.png](/.attachments/29918099.png)
[image2015-9-2 17:22:48.png](/.attachments/29918100.png)
[image2015-9-2 17:21:44.png](/.attachments/29918101.png)
[image2015-9-2 17:20:26.png](/.attachments/29918102.png)
[image2015-9-2 17:19:4.png](/.attachments/29918103.png)
[image2015-9-2 17:18:7.png](/.attachments/29918104.png)
[image2015-9-2 17:16:47.png](/.attachments/29918105.png)
[image2015-9-2 17:16:2.png](/.attachments/29918106.png)
[image2015-9-2 17:14:59.png](/.attachments/29918107.png)
[image2015-9-2 17:14:53.png](/.attachments/29918108.png)
[image2015-9-2 17:11:57.png](/.attachments/29918109.png)
[image2015-9-2 17:11:21.png](/.attachments/29918110.png)
[image2015-5-12 13:35:39.png](/.attachments/29918111.png)
[image2015-5-12 13:35:16.png](/.attachments/29918112.png)
[image2015-5-12 13:34:42.png](/.attachments/29918113.png)
[image2015-5-12 13:34:10.png](/.attachments/29918114.png)
[image2015-5-12 13:14:33.png](/.attachments/29918115.png)
[image2015-5-12 13:6:55.png](/.attachments/29918116.png)
[image2015-5-12 13:6:1.png](/.attachments/29918117.png)
[image2015-5-12 13:5:44.png](/.attachments/29918118.png)
[image2015-5-12 13:5:16.png](/.attachments/29918119.png)
[image2015-5-12 13:4:50.png](/.attachments/29918120.png)
[image2015-5-12 13:4:15.png](/.attachments/29918121.png)
[image2015-4-16 16:12:32.png](/.attachments/29918122.png)
[image2015-4-16 16:12:5.png](/.attachments/29918123.png)
[image2015-4-16 15:55:24.png](/.attachments/29918124.png)
[image2013-3-20 10:50:44.png](/.attachments/29918125.png)
[image2013-3-20 14:29:4.png](/.attachments/29918126.png)
[image2013-3-20 14:43:8.png](/.attachments/29918127.png)
[image2013-3-20 14:59:9.png](/.attachments/29918128.png)
[image2013-3-20 15:25:6.png](/.attachments/29918129.png)
[image2013-3-20 15:25:58.png](/.attachments/29918130.png)
[image2013-3-20 15:55:6.png](/.attachments/29918131.png)
[image2013-3-21 8:39:19.png](/.attachments/29918132.png)
[image2013-3-21 8:53:50.png](/.attachments/29918133.png)
[image2013-3-21 12:4:48.png](/.attachments/29918134.png)
[image2013-3-21 11:47:31.png](/.attachments/29918135.png)
[image2013-3-21 12:8:0.png](/.attachments/29918136.png)
[image2013-3-21 12:56:58.png](/.attachments/29918137.png)
[image2013-3-21 12:58:40.png](/.attachments/29918138.png)
[image2013-3-22 7:28:48.png](/.attachments/29918139.png)
[image2013-3-21 14:44:31.png](/.attachments/29918140.png)
[image2013-3-22 9:10:19.png](/.attachments/29918141.png)
[image2013-3-22 9:12:55.png](/.attachments/29918142.png)
[image2013-3-22 9:17:8.png](/.attachments/29918143.png)
[image2013-3-22 11:39:50.png](/.attachments/29918144.png)
[image2013-3-22 13:45:59.png](/.attachments/29918145.png)
[image2013-3-22 13:46:25.png](/.attachments/29918146.png)
[image2013-3-22 14:6:5.png](/.attachments/29918147.png)
[image2013-3-22 14:11:3.png](/.attachments/29918148.png)
[image2013-3-22 14:7:21.png](/.attachments/29918149.png)
[image2013-3-22 14:17:53.png](/.attachments/29918150.png)
[image2013-3-22 14:47:10.png](/.attachments/29918151.png)
[image2013-3-22 15:19:24.png](/.attachments/29918152.png)
[image2013-3-25 8:33:38.png](/.attachments/29918153.png)
[image2013-5-14 11:17:0.png](/.attachments/29918154.png)
[image2013-5-14 11:24:53.png](/.attachments/29918155.png)
[image2013-5-14 11:32:30.png](/.attachments/29918156.png)
[image2013-5-14 11:34:19.png](/.attachments/29918157.png)
[image2013-5-14 11:35:34.png](/.attachments/29918158.png)
[image2013-5-14 11:37:11.png](/.attachments/29918159.png)
[image2013-5-14 11:38:44.png](/.attachments/29918160.png)
[image2013-5-14 11:40:13.png](/.attachments/29918161.png)
[image2013-5-14 11:41:44.png](/.attachments/29918162.png)
[image2013-5-14 11:43:19.png](/.attachments/29918163.png)
[image2013-5-14 11:44:39.png](/.attachments/29918164.png)
[image2013-5-14 11:48:1.png](/.attachments/29918165.png)
[image2014-5-15 23:32:47.png](/.attachments/29918166.png)
[image2014-5-15 23:37:14.png](/.attachments/29918167.png)
[image2014-5-15 23:52:45.png](/.attachments/29918168.png)
[image2014-5-15 23:59:56.png](/.attachments/29918169.png)
[image2014-5-16 0:0:57.png](/.attachments/29918170.png)
[image2014-5-16 0:3:59.png](/.attachments/29918171.png)
[image2014-5-16 0:9:55.png](/.attachments/29918172.png)
[image2014-5-16 0:12:14.png](/.attachments/29918173.png)
[image2014-5-16 0:41:45.png](/.attachments/29918174.png)
[image2014-5-16 0:50:1.png](/.attachments/29918175.png)
[image2014-5-16 0:54:9.png](/.attachments/29918176.png)
[image2014-5-16 0:56:58.png](/.attachments/29918177.png)

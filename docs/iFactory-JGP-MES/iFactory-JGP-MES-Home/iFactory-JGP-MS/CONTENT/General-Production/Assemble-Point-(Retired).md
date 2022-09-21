# Introduction


The assemble point maintenance screen allows user to configure what and where to assemble specific materials for a product (also known as top-level material). The assemble point also allows user to assign data collection and define assembly sequence. The materials populated for configuration are derived from the product's current BOM. Normally, a product will have a multi-level BOM where it has several levels of phantom BOMs that groups the materials. To ease configuration, the Assemble Point exposes every materials in the BOM by recursively exploding the phantom BOMs until the component level. 



### How to get there?



::: mermaid
graph LR
A("CONFIGURATION")-->0("ASSEMBLE")
0-->1("ASSEMBLE POINT")

:::
![image2013-5-14 11:17:0.png](/.attachments/29918228.png)




#### Pre Condition


The following data needs to be pre-configured (if used) before user configures the assemble point package. 

- The product (top level material) has a BOM that is marked "Is Current" in BOM Maintenance

- Phantom materials need to be marked as "Phoenix Phantom" in Material Maintenance. This allow the phantom material's BOM to be exploded in assemble point for configuration.



#### Screen Activity


Assemble point screen enables user to perform the following activity:

- Allocate components on a bill of materials (BOM) to specific assemble types.

- Use sequence settings to enforce the order of materials being assembled.

- Assign data collection to be collected when material is being assembled

- Set the assemble configuration as default for the material. This saves the configuration into Material Maintenance's Assemble tab. When the same material is loaded for another product, the default configuration will be loaded from the default assemble configuration.

- Split quantities for a material.

- Assemble Point can edit a maximum of 100 materials at a time



#### Screen Dependency


The following screen(s) have direct dependency with assemble point package 

- [Bill Of Material - BOM (legacy)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)


#### Loading Assemble Point




- Start by clicking on the Search button. This will bring up a pop-up window for user to select the desired BOM to configure assemble point

- Use the filter to search the desired BOM. Normally, user will search by material name

- Click on the magnifying glass to filter the search. System will display all the BOMs associated to the material

- Select the current BOM (see the Is Current column. The current BOM for the material has a check mark on it)

Note: Assemble point also allows user to select and configure non-current BOM as well. See "Is Current" column.  

![image2014-5-15 23:37:14.png](/.attachments/29918215.png)


5. Once the assemble point is loaded, user can add additional filter the materials displayed by using "Filter By Date". System will check the Valid From & Valid To dates and display only the materials that are still valid on the selected date. This is useful when the BOM becomes larger and filled with obsolete materials. Click on the Calendar Icon 
6. Select the desired date. 
7. Then click on the green check to execute the filter.
![image2014-5-16 0:0:57.png](/.attachments/29918212.png)


Error message may appear if there's an issue while retrieving BOM information. Assemble point cannot be configured until these errors are fixed. 

In the screen shot below, one of the material in the BOM does not have a Phoenix Material Type defined. User is required to configure the Phoenix Material Type in Material Maintenance. Then reload the BOM again in Assemble Point. Another common issue is missing BOM for a material which is Phoenix Material Type = WIP or marked as Phoenix Phantom. User is required to get the BOM loaded in Phoenix before they can proceed. ![image2013-5-14 11:35:34.png](/.attachments/29918224.png)





#### Configure Assemble Point



- Once the assemble point is successfully loaded, right click on the desired material and click "Edit"

- The Assemble Point Edit window appears for configuration. Refer to the Fields section for more details on each fields.


- Set Default (optional)

- Select the Assemble Type

- Enter a sequence (optional)

- Select a Data Collection (optional)

- Click the Confirm button. System applies the configuration to the material

- Repeat Steps 1-3 for other materials that require assemble point configuration

- Click the Save button (header) to save this configuration

![image2014-5-16 0:9:55.png](/.attachments/29918210.png)


![image2014-5-16 0:12:14.png](/.attachments/29918209.png)





#### Split Quantity 


The assemble point maintenance screen has a column labeled Split.  The
![image2013-3-22 14:11:3.png](/.attachments/29918233.png)


icon appears next to a material that has quantity of more than one. Splitting is performed if the same material needs to be configured with different assemble type. When a material has multiple quantities, administrator may want to split the material to be assembled at different route step.

- Click on the

![image2013-3-22 14:11:3.png](/.attachments/29918233.png)


icon corresponding to the material requiring a split.
Phoenix system presents user with a Split Assemble Point Item pop-up window:

- User has a number of divisions for selection from the drop down list. The drop-down display provides a quantity list equal to the material quantity.

If the division selected is "2", then there will be two rows presented to the user for splitting the material quantity into two groups 
- Click the Confirm button to apply the split.

System will validate the total quantity entered in each row sums up to the quantity of the material. All rows are required to have a quantity before being saved. 

![image2014-5-16 0:41:45.png](/.attachments/29918208.png)




#### 4. On successful split, user can see the material "000-0004-02" with Qty of 8 was split into 2 groups of 4 quantity each. Since the material is split, user can have different assemble point configuration for each of the split groups.


![image2014-5-16 0:50:1.png](/.attachments/29918207.png)


5. To remove split, select the
![image2013-3-22 14:11:3.png](/.attachments/29918233.png)


icon for the parent material
6. In the division drop down list, select "Remove Split". Then click the "Confirm" button
![image2014-5-16 0:54:9.png](/.attachments/29918206.png)


7. The material will return back to its original form where it is with a quantity of 8.
![image2014-5-16 0:56:58.png](/.attachments/29918205.png)


8. For all spilt/unsplilt activities, user needs to save the configuration by clicking the "Save" button (header) of the assemble point screen.



#### Fields/Functions



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="AssemblePoint(Retired)-Fields/Functions.1"><strong>Fields/Functions</strong></h5></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Browse BOM window</strong></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field/Functions</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>BOM ID</p></td><td class="confluenceTd"><p>Bill Of Materials ID (BOM ID) is the unique identification number of a BOM (assigned by SAP).</p></td></tr><tr><td colspan="1" class="confluenceTd">Alternative BOM</td><td colspan="1" class="confluenceTd">Alternate BOM is defaulted to 1.</td></tr><tr><td colspan="1" class="confluenceTd">Customer Revision</td><td colspan="1" class="confluenceTd">Customer revision for the BOM. <br />If SAP PLM is not implemented, Customer Rev value sent from SAP will be defaulted to "SAP". This value is reserved and not allowed in BOMs created in Phoenix (source system "PHX").</td></tr><tr><td colspan="1" class="confluenceTd">Version</td><td colspan="1" class="confluenceTd">Version captures changes made to a BOM by incrementing each time (default starts at 1).</td></tr><tr><td class="confluenceTd"><p>Material/Plant Code</p></td><td class="confluenceTd"><p>The top level material and the plant of the BOM.</p></td></tr><tr><td class="confluenceTd"><p>BOM Type</p></td><td class="confluenceTd"><p>A BOM can be in one of the following types:</p><ul><li>Order (Order BOM is used with production orders) </li><li>Fixed (Fixed BOM is used with planned orders)</li><li>Super (Super BOM behaves like a dummy BOM. It contains all possible materials that builds an assembly and is mainly used for Assemble Point configuration)</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Is Current</td><td colspan="1" class="confluenceTd">If checked, it signifies the BOM is the current BOM used by the material</td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Assemble Point Item Edit window</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Set Default</td><td colspan="1" class="confluenceTd"><p>Optional field. Check this if there was not default assemble configuration set for this material before. On Assemble Point save, this configuration is also saved into the material's default configuration in Material Maintenance's Assemble tab. When the same material is loaded for another product, the default configuration will be loaded from the default assemble configuration.</p></td></tr><tr><td colspan="1" class="confluenceTd">Assemble Type</td><td colspan="1" class="confluenceTd"><p>Mandatory field. Determines the route step the material should appear for assembly. <br /><br />Note: User must also configure the same assemble type in the route step where the material needs to appear (Configuration is done in Route Step's Edit window under the Assemble Tab)<br />Example: <br />In Assemble Point, material-A's assemble type is <strong><span style="color: rgb(0,51,102);">Assembly1</span></strong><br />In the Route where material-A is built, route step Node 1 has assemble type <strong><span style="color: rgb(0,51,102);">Assembly1</span> </strong>configured </p><p>When a WIP is started in Node 1, system will perform a match calculation & display material-A for assembly.</p></td></tr><tr><td colspan="1" class="confluenceTd">Sequence</td><td colspan="1" class="confluenceTd"><p>Defines the order in which material is assembled. This field is optional. <br />If no sequence is configured, the materials in the route step can be assembled at any sequence. <br />If sequence is configured, user is enforced to assemble material following the sequence. <br /><br />Example#1:<br />Assemble Point configuration:<br />Material-A | Sequence = 1 <br /><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">Material-B | Sequence = 2</span></p><p><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">Result: User is enforced to assemble Material-A and then Material-B<br /><br /></span></p><p>Example#2:<br />Assemble Point configuration:<br />Material-A | Sequence = Not set<br /><span>Material-B | Sequence = <span>Not set</span></span></p><p><span>Result: User can choose to assemble Material-B or Material-A first. No assemble sequence enforcement by the system. </span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;"> </span></p></td></tr><tr><td colspan="1" class="confluenceTd">Data Collection</td><td colspan="1" class="confluenceTd">If there is required user input pertaining to a material, the user has the ability to assign the data collect to the material.</td></tr><tr><td colspan="1" class="confluenceTd">Confirm Button</td><td colspan="1" class="confluenceTd">Found in the Assemble Point Item edit. Clicking on this button applies the configuration to the assemble point but it is not saved. <br />User is required to click the Save button at the header to save the assemble point configuration. </td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Assemble Point header and grid section</strong></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Search button</td><td colspan="1" class="confluenceTd">Launch the Browse BOM window that allows user to select BOM to load for assemble point configuration</td></tr><tr><td colspan="1" class="confluenceTd">Save button</td><td colspan="1" class="confluenceTd">Save the assemble point configuration</td></tr><tr><td colspan="1" class="confluenceTd">Clear button</td><td colspan="1" class="confluenceTd">Clears the screen</td></tr><tr><td colspan="1" class="confluenceTd">Delete button</td><td colspan="1" class="confluenceTd">Deletes the assemble point. This action does not delete the BOM</td></tr><tr><td colspan="1" class="confluenceTd">Filter By Date</td><td colspan="1" class="confluenceTd">Once the assemble point is loaded, user can add additional filter the materials displayed by using "Filter By Date". System will check the Valid From & Valid To dates and display only the materials that are still valid on the selected date. This is useful when the BOM becomes larger and filled with obsolete materials. Click on the Calendar Icon</td></tr><tr><td colspan="1" class="confluenceTd">Refresh BOM</td><td colspan="1" class="confluenceTd">Get the latest BOM if there is a BOM change. This functionality is only applicable for Fixed BOM type.</td></tr><tr><td colspan="1" class="confluenceTd"><span>Default</span></td><td colspan="1" class="confluenceTd"><div>Represented by colored circles.<strong> </strong></div><div><strong><br /></strong></div><ol><li><strong>Green</strong><span>: Presently set as the default.</span></li><li><strong>Yellow</strong>: Set different than the default.</li><li><strong>Grey</strong>: No default presently set for a material.</li><li><strong>Blue</strong>: Saving this material assemble configurations retains the default.</li></ol></td></tr><tr><td colspan="1" class="confluenceTd">Split</td><td colspan="1" class="confluenceTd">If a material has a quantity of more than 1, the <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="17" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918233.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29918233.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29918233" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2013-3-22 14:11:3.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29918204" data-linked-resource-container-version="1" /></span> icon appears that allows the material to be split into defined quantities for the assemble process.</td></tr><tr><td colspan="1" class="confluenceTd">Item#</td><td colspan="1" class="confluenceTd">Order item number</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Material Name</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Material Description</td></tr><tr><td colspan="1" class="confluenceTd">Valid From & Valid To</td><td colspan="1" class="confluenceTd">The validity date of the material for usage in shop floor</td></tr><tr><td colspan="1" class="confluenceTd">Assemble Type</td><td colspan="1" class="confluenceTd"><span>The assemble type set for the material</span></td></tr><tr><td colspan="1" class="confluenceTd">Sequence</td><td colspan="1" class="confluenceTd">The assemble sequence set for the material</td></tr><tr><td colspan="1" class="confluenceTd">PHX Material Type</td><td colspan="1" class="confluenceTd"><p>Phoenix (PHX) Material Types can be one of the following:</p><ul><li>WIP</li><li>Serialized</li><li>Unserialized Material</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Enforce Material</td><td colspan="1" class="confluenceTd">This configuration is made in Material Maintenance's Assemble tab in the "Enforce Part Number" field.<br />If checked, user is required to scan the material name during assembly<br />If unchecked, <span>user is not required to scan the material name during assembly</span></td></tr></tbody></table>







- In Assemble Point, material_A's assemble type is
**Assembly1** 

In the Route where material_A is built, route step Node 1 has assemble type **Assembly1** 
configured When a WIP is started in Node 1, system will perform a match calculation & display material_A for assembly.
SequenceDefines the order in which material is assembled. This field is optional. 

If no sequence is configured, the materials in the route step can be assembled at any sequence. 
If sequence is configured, user is enforced to assemble material following the sequence. 

Example#1:
Assemble Point configuration:
Material_A | Sequence = 1 
Material_B | Sequence = 2
Result: User is enforced to assemble Material_A and then Material_B


Example#2:

Assemble Point configuration:
Material_A | Sequence = Not set
Material_B | Sequence = Not setResult: User can choose to assemble Material_B or Material_A first. No assemble sequence enforcement by the system. 

Data CollectionIf there is required user input pertaining to a material, the user has the ability to assign the data collect to the material.Confirm ButtonFound in the Assemble Point Item edit. Clicking on this button applies the configuration to the assemble point but it is not saved. 
User is required to click the Save button at the header to save the assemble point configuration. **Assemble Point header and grid section** FieldDescriptionSearch buttonLaunch the Browse BOM window that allows user to select BOM to load for assemble point configurationSave buttonSave the assemble point configurationClear buttonClears the screenDelete buttonDeletes the assemble point. This action does not delete the BOMFilter By DateOnce the assemble point is loaded, user can add additional filter the materials displayed by using "Filter By Date". System will check the Valid From & Valid To dates and display only the materials that are still valid on the selected date. This is useful when the BOM becomes larger and filled with obsolete materials. Click on the Calendar IconRefresh BOMGet the latest BOM if there is a BOM change. This functionality is only applicable for Fixed BOM type.DefaultRepresented by colored circles.


- **Green**
: Presently set as the default.
- **Yellow**
: Set different than the default.
- **Grey**
: No default presently set for a material.
- **Blue**
: Saving this material assemble configurations retains the default.SplitIf a material has a quantity of more than 1, the ![image2013-3-22 14:11:3.png](/.attachments/29918233.png)


icon appears that allows the material to be split into defined quantities for the assemble process.
Item#Order item numberMaterialMaterial NameDescriptionMaterial DescriptionValid From & Valid ToThe validity date of the material for usage in shop floorAssemble TypeThe assemble type set for the materialSequenceThe assemble sequence set for the materialPHX Material TypePhoenix (PHX) Material Types can be one of the following:

- WIP

- Serialized

- Unserialized Material
Enforce MaterialThis configuration is made in Material Maintenance's Assemble tab in the "Enforce Part Number" field.
If checked, user is required to scan the material name during assembly
If unchecked, user is not required to scan the material name during assembly

#### Attachments

[image2014-5-16 0:56:58.png](/.attachments/29918205.png)
[image2014-5-16 0:54:9.png](/.attachments/29918206.png)
[image2014-5-16 0:50:1.png](/.attachments/29918207.png)
[image2014-5-16 0:41:45.png](/.attachments/29918208.png)
[image2014-5-16 0:12:14.png](/.attachments/29918209.png)
[image2014-5-16 0:9:55.png](/.attachments/29918210.png)
[image2014-5-16 0:3:59.png](/.attachments/29918211.png)
[image2014-5-16 0:0:57.png](/.attachments/29918212.png)
[image2014-5-15 23:59:56.png](/.attachments/29918213.png)
[image2014-5-15 23:52:45.png](/.attachments/29918214.png)
[image2014-5-15 23:37:14.png](/.attachments/29918215.png)
[image2014-5-15 23:32:47.png](/.attachments/29918216.png)
[image2013-5-14 11:48:1.png](/.attachments/29918217.png)
[image2013-5-14 11:44:39.png](/.attachments/29918218.png)
[image2013-5-14 11:43:19.png](/.attachments/29918219.png)
[image2013-5-14 11:41:44.png](/.attachments/29918220.png)
[image2013-5-14 11:40:13.png](/.attachments/29918221.png)
[image2013-5-14 11:38:44.png](/.attachments/29918222.png)
[image2013-5-14 11:37:11.png](/.attachments/29918223.png)
[image2013-5-14 11:35:34.png](/.attachments/29918224.png)
[image2013-5-14 11:34:19.png](/.attachments/29918225.png)
[image2013-5-14 11:32:30.png](/.attachments/29918226.png)
[image2013-5-14 11:24:53.png](/.attachments/29918227.png)
[image2013-5-14 11:17:0.png](/.attachments/29918228.png)
[image2013-3-25 8:33:38.png](/.attachments/29918229.png)
[image2013-3-22 15:19:24.png](/.attachments/29918230.png)
[image2013-3-22 14:47:10.png](/.attachments/29918231.png)
[image2013-3-22 14:17:53.png](/.attachments/29918232.png)
[image2013-3-22 14:11:3.png](/.attachments/29918233.png)
[image2013-3-22 14:7:21.png](/.attachments/29918234.png)
[image2013-3-22 14:6:5.png](/.attachments/29918235.png)
[image2013-3-22 13:46:25.png](/.attachments/29918236.png)
[image2013-3-22 13:45:59.png](/.attachments/29918237.png)
[image2013-3-22 11:39:50.png](/.attachments/29918238.png)
[image2013-3-22 9:17:8.png](/.attachments/29918239.png)
[image2013-3-22 9:12:55.png](/.attachments/29918240.png)
[image2013-3-22 9:10:19.png](/.attachments/29918241.png)
[image2013-3-22 7:28:48.png](/.attachments/29918242.png)
[image2013-3-21 14:44:31.png](/.attachments/29918243.png)
[image2013-3-21 12:58:40.png](/.attachments/29918244.png)
[image2013-3-21 12:56:58.png](/.attachments/29918245.png)
[image2013-3-21 12:8:0.png](/.attachments/29918246.png)
[image2013-3-21 12:4:48.png](/.attachments/29918247.png)
[image2013-3-21 11:47:31.png](/.attachments/29918248.png)
[image2013-3-21 8:53:50.png](/.attachments/29918249.png)
[image2013-3-21 8:39:19.png](/.attachments/29918250.png)
[image2013-3-20 15:55:6.png](/.attachments/29918251.png)
[image2013-3-20 15:25:58.png](/.attachments/29918252.png)
[image2013-3-20 15:25:6.png](/.attachments/29918253.png)
[image2013-3-20 14:59:9.png](/.attachments/29918254.png)
[image2013-3-20 14:43:8.png](/.attachments/29918255.png)
[image2013-3-20 14:29:4.png](/.attachments/29918256.png)
[image2013-3-20 10:50:44.png](/.attachments/29918257.png)

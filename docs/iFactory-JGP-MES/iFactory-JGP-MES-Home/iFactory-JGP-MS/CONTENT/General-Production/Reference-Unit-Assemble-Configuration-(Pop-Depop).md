# Introduction

A reference unit is how the System identifies the parts that serve as a temporary replacement part in place for a production part within a manufacturing process. A finished good can never be shipped with reference units in its genealogy as they are not part of the order.



### Reference Unit Usage


A reference unit can be used both as a WIP or an assembled item.

- As a WIP, a reference unit act as a placeholder for ordered standalone components typically sold as Kits. Those components often cannot be tested on their own. Instead they need to be assembled into a higher level assembly and be tested as part of that HLA. Therefore a Reference Unit WIP is needed to serve as the HLA.

- As an assembled item, a reference unit aims to fill in the physical empty slots of a product due to the specific order. Often a product contains a fixed number of slots for a specific component. However the customer might not always order that product with all that component's slots filled. On the other hand, it is common that all the slots need to be filled when running a functional test just to verify that all the slots are working in anticipation of future expansion of that component. Therefore Reference Units for that assembled item are needed to fill in those empty slots to run the test.




#### Reference Unit Types


There are 2 types of Reference Units

- Temporary. A temporary reference unit refers to a part that used only temporarily as a reference unit with the objective of eventually shipping them out as production parts in another order.


- Permanent. A permanent reference unit can only be used as a reference unit throughout its lifetime and will never be shipped as a production part. They are typically kept permanent on the shopfloor solely for the purpose of accommodating the production parts test process.



#### Configure to assemble an Assembled-Item Reference Unit


On the production floor, the manual process to assemble a reference unit as a assembled item into a WIP is the same as assembling the actual production component. However since those reference unit are not in the BOM, the system needs a way to configure those reference unit to be assembled without depending on the BOM. All assembled items assembled via this configuration will be identified as reference unit to be removed before product is shipped. To configure those Reference Unit, we go to the Reference Unit Assemble Configuration screen (Pop De-pop).

::: mermaid
graph LR
A("CONFIGURE")-->0("POP DE-POP")

:::
Upon loading of the screen, the Item Detail screen that contains all the details of a particular configuration is displayed, followed by the list of all existing configuration. The Item Detail screen is empty until an existing configuration is selected from the list.
![image2017-5-4 15:39:34.png](/.attachments/29918461.png)


<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Scope</p></td><td class="confluenceTd"><p>The scope of WIP which this configuration is applied to.</p><ol><li>Material - the configured reference unit is applied to WIPs of a specific material</li><li>Product Family - the configured reference unit is applied <span>to all WIPs in a</span> specific product family</li><li>Customer - the configured reference unit is applied to all WIPs of a specific customer</li></ol></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Identifier</span></td><td colspan="1" class="confluenceTd">The actual Material, Product Family or Customer for the selected scope</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Custom Data and Value</span></td><td colspan="1" class="confluenceTd"><p>An assembled item reference unit looks to fill up the empty slots of a specific production part. A custom data and value is configured to such production parts. Here we configure the matching custom data and value for that component for system to identify the production part that this particular configuration is meant for.</p><p>E.g. A server system contains slots for 36 HDDs and 4 network cards. Customers are allowed to order the server system with any number of HDDs and nework cards they desire.In order to identify that refence units can be configured for the HDDs and Network Cards, the material for HDD is configured a Custom Data "FRU Type" with value of "HDD", while the material of the Network Card is configured with the same Custom Data "FRU Type" with different value "NC".</p><p>In the Reference Unit Assemble Configuration, the Custom Data "FRU TYPE" is then used to identify the components that require reference units, while the Custom Data Value is used to separate each unique material that requires the reference unit so that each can have its own configuration.</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Match Material</span></td><td colspan="1" class="confluenceTd"><p>When Match Material option is checked, the reference unit material must match any existing assembled item with the matching Custom Data and Value in the current configuration. If no such assembled item exist at the point of the first reference unit assembly, any material is allowed for the first reference unit as long as the Custom Data and Value of the material matches the configuration. The second reference units onwards however must follow the material of the first reference unit.</p><p>This option is mutually exclusive with Pop/Depop Material</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Pop/Depop Material</span></td><td colspan="1" class="confluenceTd"><p>When a Pop/Depop Material is selected, the reference unit scanned must be of the selected Material.</p><p>This option is mutually exclusive with Match Material</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Follow MPN Rules</span></td><td colspan="1" class="confluenceTd">When this option is checked, the MPN for the reference unit is required to be scanned and validated according to the MPN rules configured for the production part.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Max Quantity Required</span></td><td colspan="1" class="confluenceTd"><p>The maximum quantity of a particular production part within the product. System uses this quantity to determine how many reference units are required to be scanned.</p><p>E.g. If the Max Quantity Required is 36, and there are already 12 production parts assembled, system will prompt user to scan 24 more reference units to fill all the slots</p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Is Assembled Last</span></td><td colspan="1" class="confluenceTd">Determines if this reference unit shall be the last to be assembled among the list of all the different reference unit materials to be assembled in the same route step.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="col-md-6 col-sm-6"><label class="ng-binding">Sequence</label></div></td><td colspan="1" class="confluenceTd">Determines the sequence of which this particular reference unit shall be assembled among the list of all the different reference unit materials tobe assembled in the same route step. In round numbers. the lower the number the higher the priority.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Populate Route Steps</span></td><td colspan="1" class="confluenceTd">The route step where the reference units is assembled</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Depopulate Route Steps</span></td><td colspan="1" class="confluenceTd"><span>The route step where the reference units is dis-assembled</span></td></tr></tbody></table>


- **Add new Configuration**

To add a new configuration, click on the  
![image2017-5-4 15:41:13.png](/.attachments/29918460.png)


button on top of the grid. A wizard will popup to guide you through the configuration.
Step 1: Entity Scope. Select the scope and identifier to define the WIPs that the configuration will be applied to.
Step 2: Custom Data. Select the custom data and value of the material of which the reference unit will fill up for
Step 3: Settings. Configure the Match Material or Pop/Depop Material, the Follow MPN rules, Max Quantity Required, Is Assembled Last and the Sequence of the configuration.
Step 4: Populate Route Steps. Select the route step to assemble the reference units
Step 5: Depopulate Route Steps. Select the route step to disassemble the reference units and Save the new configuration.

Modify Existing ConfigurationTo modify an existing configuration, click on the  
![image2017-5-4 15:49:50.png](/.attachments/29918459.png)


button on the row of the configuration to be modified. The same 5 step wizard popup screen will appear, albeit with data populated for each field. Proceed to the step with the field to be modified and make the change. Proceed to Step 5 to save the changes.

Delete Existing ConfigurationTo delete an existing configuration, click on the  
![image2017-5-4 15:52:29.png](/.attachments/29918458.png)


button on the row of the configuration to be deleted. Click yes when prompted for confirmation.

Filter ConfigurationTo filter for an existing configuration by a keyword, click on the  
![image2017-5-4 16:9:36.png](/.attachments/29918457.png)


on the top of the grid. Enter the keyword on the popup textbox. All configurations with a matching field in any of the 5 columns will be displayed in the grid.



#### Attachments

[image2017-5-4 16:9:36.png](/.attachments/29918457.png)
[image2017-5-4 15:52:29.png](/.attachments/29918458.png)
[image2017-5-4 15:49:50.png](/.attachments/29918459.png)
[image2017-5-4 15:41:13.png](/.attachments/29918460.png)
[image2017-5-4 15:39:34.png](/.attachments/29918461.png)

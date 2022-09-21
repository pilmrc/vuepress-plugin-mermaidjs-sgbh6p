# Introduction


Occasionally, a WIP is required to be manually introduced into a route/route step. This screen allows a single WIP to be manually birthed into any route/route step at a given time. Each WIP that is successfully birthed will have a unique Serial Number. Note that the uniqueness of the Serial Number is governed at Customer's 
[Customer Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)tab. The generation of the WIPs Serial Number depends on its WIP Release Type configured in [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md).  
How to get there?



::: mermaid
graph LR
A("PRODUCTION")-->0("WIP")
0-->1("MANUAL BIRTH")

:::


### Screen Activity


Manual Birth enables user to perform the following activity:

- Manual Birth WIP by selecting a material

- Manual Birth WIP by selecting a BOM

- View remaining WIP that can be birthed into the batch



#### Screen Dependency


The following screen(s) has direct dependency with Manual Birth

- *[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)*

- *[BOM Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)*

- *[Batch Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Batch.md)*

- *[Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)*




#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Birth by Material</p></td><td class="confluenceTd"><p>Select this option if user knows the <a href="Material-29919417.html">material</a> to birth the WIP</p></td></tr><tr><td class="confluenceTd"><p>Birth by BOM</p></td><td class="confluenceTd"><p><span>Select this option if user knows the <a href="29919358.html">BOM</a> to birth the WIP</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Allows user to select an active Material to birth the WIP. Only assemblies (FERT) and subassemblies (HALB) materials are available for user selection. <br />User is still required to select one active BOM associated to the material BOM to proceed with the manual birth</td></tr><tr><td colspan="1" class="confluenceTd">BOM</td><td colspan="1" class="confluenceTd"><span>Allows user to select an active BOM to birth the WIP. System will automatically displays the Material of the selected BOM</span></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">Product Family is configured in <a href="Material-29919417.html">Material Maintenance</a>. Thus, this information is automatically populated once the Material is selected</td></tr><tr><td colspan="1" class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd"><span><a href="Customer-29919368.html">Customer</a> is automatically populated once the Material is selected</span></td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd"><span><a href="Division-29919379.html">Division</a> is automatically populated once the Material is selected</span></td></tr><tr><td colspan="1" class="confluenceTd">Next Number</td><td colspan="1" class="confluenceTd"><a class="createlink" href="/pages/createpage.action?spaceKey=IJM&title=Next+Number+%283.0%29&linkCreation=true&fromPageId=29918366">Next Number (3.0)</a> is also configured in Material Maintenance. In Material Maintenance, if the WIP Release Type is "Generate Serial Number" or "Temporary Serial Number", a Next Number must be configured. <br /><span style="font-size: 10.0pt;line-height: 13.0pt;">Once the Material and BOM is selected in Manual Birth, system will automatically display the next serial number to be birthed in the Serial Number field. <br />If the next number limit is reached, system will not allow user to manually birth a WIP for this material/BOM. </span></td></tr><tr><td colspan="1" class="confluenceTd">Validation Mask</td><td colspan="1" class="confluenceTd"><span><a href="Validation-Mask-29918474.html">Validation Mask</a> is also configured in Material Maintenance. In Material Maintenance, if the WIP Release Type is "Assigned Serial Number", a Validation Mask must be configured. </span><br /><span>To manually birth a WIP for this material/BOM, user is required to enter a Serial Number that matches the Validation Mask. </span></td></tr><tr><td colspan="1" class="confluenceTd">Batch Number</td><td colspan="1" class="confluenceTd">WIPs must be manually birthed into a <a href="Batch-29918279.html">batch</a>. System displays a list of active batches associated to the Customer for user selection</td></tr><tr><td colspan="1" class="confluenceTd">Batch Quantity</td><td colspan="1" class="confluenceTd">To help user know the remaining WIP quantity that can be birthed into the batch, system displays the batch quantity information<br />Batch Quantity = Current WIP quantity in the batch / Maximum WIP quantity allowed in the batch</td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd">User is required to select an active destination Route to birth the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>User is required to select the destination Route Step to birth the WIP. The Route Steps displayed are associated to the Route</span></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number</td><td colspan="1" class="confluenceTd"><ul><li>If <span>WIP Release Type = "Generate Serial Number", system will auto populate the next Serial Number here according to the Next Number configured</span></li><li><span><span>If </span><span>WIP Release Type = "Temporary Serial Number", system will auto populate the next Serial Number here according to the Next Number configured</span></span></li><li><span><span><span>If </span><span>WIP Release Type = "Assigned Serial Number", system will have user to enter a Serial Number according to the Validation Mask configured</span></span></span></li><li><span><span><span><span>If </span><span>WIP Release Type = "N/A", <span>system will have user to enter a Serial Number without any restriction<br /> </span></span></span></span></span></li></ul>Regardless of the WIP Release Types, each Serial Number birthed will be validated for uniqueness either by Customer or by Material</td></tr><tr><td colspan="1" class="confluenceTd">Clear Screen Button</td><td colspan="1" class="confluenceTd">Clears the selection of the entire screen</td></tr><tr><td colspan="1" class="confluenceTd">Birth WIP Button</td><td colspan="1" class="confluenceTd">Birth the WIP. If successful, the WIP will appear in the selected Route/Route Step. <br />If the WIP Release Type is <span>"Generate Serial Number" or "Temporary Serial Number", system will auto generate the next Serial Number (displayed in Serial Number field) after the current Serial Number is birthed.</span></td></tr></tbody></table>









# Introduction

Operations are the activities to be executed in a Route Step. Currently, these operations are executed from client side scripting which are maintained in Phoenix's 
[Script ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Script.md)Maintenance. Once the Operation Script is ready, system administrator accesses the Operation Assignment screen to attach the script to a Route Step. 

The scope to execute the script can be configured either by Customer, Product Family or Material level. If the same Route + Route Step has a "Product Family" and "Material" operation script assigned, the "Material" assignment shall override the "Product Family" assignment. In the example below, system will execute the material operation script (Script_2). <table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd" colspan="1"><strong>Route</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Route Version</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Route Step</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Operation Scope</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Operation Assignment</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Operation Type</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Operation Script</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Operation Version</strong></td></tr><tr><td colspan="1" class="confluenceTd">Route 1</td><td colspan="1" class="confluenceTd">A</td><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">SmartPhone-Family</td><td colspan="1" class="confluenceTd">Client Side</td><td colspan="1" class="confluenceTd">Script-1</td><td colspan="1" class="confluenceTd">v1</td></tr><tr><td colspan="1" class="confluenceTd">Route 1</td><td colspan="1" class="confluenceTd">A</td><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">SmartPhone-Cloud</td><td colspan="1" class="confluenceTd">Client Side</td><td colspan="1" class="confluenceTd">Script-2</td><td colspan="1" class="confluenceTd">v1</td></tr></tbody></table>

**SmartPhone_Family** Client SideScript_1v1Route 1AAssemblyMaterialSmartPhone_CloudClient SideScript_2v1


### **How to get there?** 



::: mermaid
graph LR
A("ROUTE")-->0("OPERATION")
0-->1("OPERATION ASSIGNMENT")

:::


#### **Screen Activity** 


**Operation Assignment enables user to perform the following activity:** 


- Assign an operation script to be executed at a route step




#### Screen Dependency


The following screen(s) has direct dependency with Factory

- *[Script Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Script.md)*

- [Operation Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Assignment.md)





#### Fields



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Route / Version</td><td colspan="1" class="confluenceTd">User is required to define the Route and its version</td></tr><tr><td class="confluenceTd"><p>Route Step</p></td><td class="confluenceTd"><p>The Route Steps of the selected Route/Route Version. This will be the Route Step where the Operation Script is assigned</p></td></tr><tr><td colspan="1" class="confluenceTd">Operation Scope</td><td colspan="1" class="confluenceTd">Operation Scope can be set at the following levels:<ul><li>Customer</li><li>Product Family</li><li><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">Material</span></li></ul><p>Customer is the highest level of the hierarchy followed by Product Family and finally Material. The script configured at the lower level hierarchy shall be executed. Refer to the table above for an example.</p><p>User can configure scripts at a global scope. Scripts configured at a global scope shall be executed for every WIP in the route step regardless of their product type.</p><ul><li>Global Initialization</li><li>Global Clean Up</li></ul><p>User can also configure script for non WIP items.</p><ul><li>Non WIP<br /><span style="color: rgb(34,34,34);"><span style="color: rgb(34,34,34);">The Non-Wip script is a script that allows interaction with the operator to start one or more individual scripts used in the multi-unit test environment.</span></span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Operation Assignment</td><td colspan="1" class="confluenceTd"><p><span>If Operation Scope = Customer, this field will populate Customer for user selection<br /></span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">If Operation Scope = Product Family, this field will populate Product Family for user selection<br /></span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">If Operation Scope = Material, this field will populate Material for user selection</span><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;"> </span></p></td></tr><tr><td colspan="1" class="confluenceTd">Attribute Name</td><td colspan="1" class="confluenceTd">Allows user to specify a WIP Attribute Name to further refine the scope for the script to be executed.</td></tr><tr><td colspan="1" class="confluenceTd">Attribute Value</td><td colspan="1" class="confluenceTd"><p><span>Allows user to specify a WIP Attribute Value to further refine the scope for the script to be executed.<br /><br />In the example below, Material-123 always uses GeneralAssembly script. However, if this material is to be shipped to Japan, additional validation needs to be added into the script. <br />Therefore, a SpecialAssembly script was created. To differentiate a normal WIP against those that need to be shipped to Japan, WIP Attribute will be added at preceding step. When the WIP is scanned at Assembly route step, if the Attribute Name and Value matches the operation assignment configuration, system will execute SpecialAssembly script.</span></p><p> </p><div class="table-wrap"><table class="confluenceTable"><tbody><tr><th class="confluenceTh">Route</th><th class="confluenceTh">Route Version</th><th class="confluenceTh">Route Step</th><th class="confluenceTh">Operation Scope</th><th colspan="1" class="confluenceTh">Operation Assignment</th><th colspan="1" class="confluenceTh">Attribute Name</th><th colspan="1" class="confluenceTh">Attribute Value</th><th colspan="1" class="confluenceTh">Operation Script</th><th colspan="1" class="confluenceTh">Operation Version</th></tr><tr><td colspan="1" class="confluenceTd">Route 1</td><td colspan="1" class="confluenceTd">A</td><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Material-123</td><td colspan="1" class="confluenceTd">-</td><td colspan="1" class="confluenceTd">-</td><td colspan="1" class="confluenceTd">GeneralAssembly</td><td colspan="1" class="confluenceTd">A.00.00</td></tr><tr><td colspan="1" class="confluenceTd">Route 1</td><td colspan="1" class="confluenceTd">A</td><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd"><span>Material</span></td><td colspan="1" class="confluenceTd"><span>Material-123</span></td><td colspan="1" class="confluenceTd">Ship To</td><td colspan="1" class="confluenceTd">Japan</td><td colspan="1" class="confluenceTd">SpecialAssembly</td><td colspan="1" class="confluenceTd">A.00.00</td></tr></tbody></table></div></td></tr><tr><td colspan="1" class="confluenceTd">Operation Type</td><td colspan="1" class="confluenceTd">The current Phoenix version only supports Client Side operation type</td></tr><tr><td colspan="1" class="confluenceTd">Operation Script / Version</td><td colspan="1" class="confluenceTd">This is the actual operation script to be executed at the Route Step. The scripts are maintained in <a href="Operation-Script-29920064.html">Script</a> Maintenance</td></tr></tbody></table>







- In the example below, Material_123 always uses GeneralAssembly script. However, if this material is to be shipped to Japan, additional validation needs to be added into the script.

Therefore, a SpecialAssembly script was created. To differentiate a normal WIP against those that need to be shipped to Japan, WIP Attribute will be added at preceding step. When the WIP is scanned at Assembly route step, if the Attribute Name and Value matches the operation assignment configuration, system will execute SpecialAssembly script.
<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Route</th><th class="confluenceTh">Route Version</th><th class="confluenceTh">Route Step</th><th class="confluenceTh">Operation Scope</th><th colspan="1" class="confluenceTh">Operation Assignment</th><th colspan="1" class="confluenceTh">Attribute Name</th><th colspan="1" class="confluenceTh">Attribute Value</th><th colspan="1" class="confluenceTh">Operation Script</th><th colspan="1" class="confluenceTh">Operation Version</th></tr><tr><td colspan="1" class="confluenceTd">Route 1</td><td colspan="1" class="confluenceTd">A</td><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Material-123</td><td colspan="1" class="confluenceTd">-</td><td colspan="1" class="confluenceTd">-</td><td colspan="1" class="confluenceTd">GeneralAssembly</td><td colspan="1" class="confluenceTd">A.00.00</td></tr><tr><td colspan="1" class="confluenceTd">Route 1</td><td colspan="1" class="confluenceTd">A</td><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd"><span>Material</span></td><td colspan="1" class="confluenceTd"><span>Material-123</span></td><td colspan="1" class="confluenceTd">Ship To</td><td colspan="1" class="confluenceTd">Japan</td><td colspan="1" class="confluenceTd">SpecialAssembly</td><td colspan="1" class="confluenceTd">A.00.00</td></tr></tbody></table>

Material_123--GeneralAssemblyA.00.00Route 1AAssemblyMaterialMaterial_123Ship ToJapanSpecialAssemblyA.00.00Operation TypeThe current Phoenix version only supports Client Side operation typeOperation Script / VersionThis is the actual operation script to be executed at the Route Step. The scripts are maintained in [Script](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Operation-Script.md)Maintenance
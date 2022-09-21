# Introduction

The product we build will be routed according to the path defined in Route Maintenance. A route is made up of 
[route steps](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)which contain [pre-start rules](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)and[ routing rules](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)to direct the WIP flow when the condition stated in the rules are met. A [customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)may create multiple routes to build different products. For example, a customer has an SMT route to build motherboards based on its planned order. Then, they will have another route for direct fulfillment orders (BTO/CTO) where the motherboard is assembled into a higher level end product.  To create route more efficiently, Phoenix Route designer provides a one-stop center to create a route, route steps, configure certifications, resources, assemble types and associate all the route step rules mentioned above.
![image2019-5-16_13-48-40.png](/.attachments/49643899.png)


In order to segregate between the Bay Line in the production floor, Route Step is allowed to define by Manufacturing Area (Production Floor Bay/Line) according to the different resource with its own Manufacturing Area (e.g. Resource01 with MA01, Resource02 with MA02 respectively) OR shared resource with multiple different Manufacturing Area. e.g. Resource01 with MA01, MA02 and MA03. This is applicable to only Repetitive Process Type.
![image2020-11-29_21-5-27.png](/.attachments/82903656.png)


![image2020-11-29_21-8-54.png](/.attachments/82903657.png)


![image2020-11-29_21-8-12.png](/.attachments/82903658.png)




### How to get there?




::: mermaid
graph LR
A("ROUTE")
:::


#### Screen Activity


Route Maintenance enables the user to perform the following activity:

- Create, view, update and delete route

- Create, view, update and delete materials associated with the route

- Create, view, update and delete route steps

- Add connection arrows between route steps for better visualization of the production flow

- Define the behavior of the route step

- Configure Pre-Start and/or Routing Rules for the route step

- Associate Resources, Certifications and Assemble Types for the route step



#### Pre Condition



- Factory, SAP storage location, and Material must exist for association with the Route

- Resources, certifications and assemble types must exist for association with the Route Steps



#### Creation Steps



- Create a unique name for the route and provide its version. Save. The General and Route Designer tabs appear.

- In General tab, configure route details and associated materials to be built to the route

- In Route Designer tab, click "Add Route Step" button to create route steps. Enter Route Step Name and Route Step Type

- Add connection arrows between route steps. Notice that each route steps have a red box (start) and black box (end) on it. To add connection arrow, drag the mouse from the black box to a red box of a connecting route step.

- Save

- Double click on the route steps to open the Edit Route Step window

- Configure route step properties in General Tab, Pre-Start Rules, Routing Rules, Resources, Certifications and Assemble Types (for more information, refer to
[Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md))
- Save your route configuration



#### Screen Dependency


The following screen(s) has a direct dependency with Route 

- [Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)

- [Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)

- [Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)

- [Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)

- [SAP storage location](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)

- [Assemble Types](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)

- [Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)

- [Route Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)



#### Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd">General Tab</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Route Name</td><td class="confluenceTd">The unique name for the route</td></tr><tr><td colspan="1" class="confluenceTd">Version</td><td colspan="1" class="confluenceTd">The version of the route</td></tr><tr><td colspan="1" class="confluenceTd">Export Route</td><td colspan="1" class="confluenceTd">Allows user to export the current route to local</td></tr><tr><td colspan="1" class="confluenceTd">Import Route</td><td colspan="1" class="confluenceTd">Allows user to import the new route from local</td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd">Additional description of the route is entered here</td></tr><tr><td class="confluenceTd">Factory</td><td class="confluenceTd">The factory where the route belongs</td></tr><tr><td colspan="1" class="confluenceTd">Manufacturing Area</td><td colspan="1" class="confluenceTd">The Manufacturing Area where the route belongs </td></tr><tr><td class="confluenceTd">SAP Storage Location</td><td class="confluenceTd">Used for pack out messages from Phoenix to SAP. SAP Storage Location defined here must match exactly with the SLOC name in SAP</td></tr><tr><td colspan="1" class="confluenceTd">Route Type</td><td colspan="1" class="confluenceTd"><p>The Route Type defines what manufacturing process will occur on the route. Once defined and the status of the route is set to 'Active' the Route Type is not able to be changed.</p><ul><li>Production - Typical production processing of WIP items occurs on this route type</li><li>Purge - (** Needs Definition **)</li><li>Deviation - <span>(** Needs Definition **)</span></li><li>RMA - <span>(** Needs Definition **)</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Process Type</td><td colspan="1" class="confluenceTd"><p>The Process Type defines the type of manufacturing process will be processed on the route.</p><ul><li><span>Configurable / Box Build - This is selected for the Configure To Order / Build To Order Box build final assembly (typically final product assembly)</span></li><li>Repetitive / Board Build - This is selected for the Discrete Repetitive, SMT Printed Circuit Assembly processing</li><li>Lot / Batch Build - This is used to manufacture non-serialized materials that are released, moved, and tracked by Lot (typically metal or plastic component manufacturing) This Process type is the only type that will allow a Planned order to be assigned to a Route during a Planned Order configuration process.</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd"><p>A route can be in one of the following statuses:</p><ul><li>New (New route)</li><li>Active (Ready to use)</li><li>Inactive (Obsolete route that is no longer in use)</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Associated Materials</td><td colspan="1" class="confluenceTd"><p>The material must be associated with the route before it can be built in this route. Without the association, WIP for the material cannot even be released or birth into this route.<br /><span>Only SAP material type "FERT" (assembly) & "HALB" (sub-assembly) are available for association. </span></p><p><span>For Lot / Batch Build process type the material must be associated to enable the Planned Order to be Assigned to a route. Only can associate Material Type = LotBatch</span></p><p><span><span style="color: rgb(34,34,34);">For Material with Phoenix Material Type = "WIP", the material process type must be the same as route process type. Below is the configuration to be followed:</span></span></p><div class="table-wrap"><table class="wrapped confluenceTable"><tbody><tr><th class="confluenceTh"><strong>RouteProcessType</strong></th><th class="confluenceTh"><strong>MaterialType</strong></th><th class="confluenceTh"><strong>MaterialProcessType</strong></th></tr><tr><td class="confluenceTd"><span>Repetitive</span></td><td class="confluenceTd"><span>WIP</span><span> </span></td><td class="confluenceTd"><span>Repetitive</span></td></tr><tr><td class="confluenceTd"><span>Lot/Batch</span></td><td class="confluenceTd"><span>Lot/Batch</span></td><td class="confluenceTd"><span>N/A</span></td></tr><tr><td class="confluenceTd"><span>Configurable</span></td><td class="confluenceTd"><span>WIP</span><span> </span></td><td class="confluenceTd"><span>Configurable</span></td></tr><tr><td class="confluenceTd"><span>Configurable</span></td><td class="confluenceTd"><span>Unserialized/Serialized</span></td><td class="confluenceTd"><span>N/A</span></td></tr></tbody></table></div><p class="auto-cursor-target">If Process Type is not selected, the user will not be able to search for any material to be associated.</p></td></tr><tr><td colspan="1" class="confluenceTd">Add New Material Button </td><td colspan="1" class="confluenceTd">Allows user to add material to the route by searching the material.</td></tr><tr><td colspan="1" class="confluenceTd">Actions</td><td colspan="1" class="confluenceTd">Allows user to perform delete action to the material in the route</td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd">Route Designer Tab</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">Add Route Step button</td><td colspan="1" class="confluenceTd"><p>Allows user to create route steps in the route by defining the <a href="Route-Maintenance-49643896.html">route step</a> name and <a href="Route-Maintenance-49643896.html">route step type</a></p></td></tr><tr><td colspan="1" class="confluenceTd">Actions</td><td colspan="1" class="confluenceTd">Allows user to perform edit and delete action of the route step in the route</td></tr><tr><td colspan="1" class="confluenceTd">Connection Arrows</td><td colspan="1" class="confluenceTd">Connection arrows between route steps provide a visual outlook of the product flow in the route</td></tr><tr><td colspan="1" class="confluenceTd">Legend</td><td colspan="1" class="confluenceTd">The legend shows the meaning of different route steps (for example: a green 'Starting' route step is set when 'Is Initial Route Step' is checked).</td></tr></tbody></table>


- **Purge - (\*\* Needs Definition \*\*)**


- Deviation -
(\*\* Needs Definition \*\*)
- RMA -
(\*\* Needs Definition \*\*)Process TypeThe Process Type defines the type of manufacturing process will be processed on the route.

- Configurable / Box Build - This is selected for the Configure To Order / Build To Order Box build final assembly (typically final product assembly)

- Repetitive / Board Build - This is selected for the Discrete Repetitive, SMT Printed Circuit Assembly processing

- Lot / Batch Build - This is used to manufacture non-serialized materials that are released, moved, and tracked by Lot (typically metal or plastic component manufacturing) This Process type is the only type that will allow a Planned order to be assigned to a Route during a Planned Order configuration process.
StatusA route can be in one of the following statuses:

- New (New route)

- Active (Ready to use)

- Inactive (Obsolete route that is no longer in use)
Associated MaterialsThe material must be associated with the route before it can be built in this route. Without the association, WIP for the material cannot even be released or birth into this route.

Only SAP material type "FERT" (assembly) & "HALB" (sub-assembly) are available for association. For Lot / Batch Build process type the material must be associated to enable the Planned Order to be Assigned to a route. Only can associate Material Type = LotBatch
For Material with Phoenix Material Type = "WIP", the material process type must be the same as route process type. Below is the configuration to be followed:
<table class="wrapped confluenceTable"><tbody><tr><th class="confluenceTh"><strong>RouteProcessType</strong></th><th class="confluenceTh"><strong>MaterialType</strong></th><th class="confluenceTh"><strong>MaterialProcessType</strong></th></tr><tr><td class="confluenceTd"><span>Repetitive</span></td><td class="confluenceTd"><span>WIP</span><span> </span></td><td class="confluenceTd"><span>Repetitive</span></td></tr><tr><td class="confluenceTd"><span>Lot/Batch</span></td><td class="confluenceTd"><span>Lot/Batch</span></td><td class="confluenceTd"><span>N/A</span></td></tr><tr><td class="confluenceTd"><span>Configurable</span></td><td class="confluenceTd"><span>WIP</span><span> </span></td><td class="confluenceTd"><span>Configurable</span></td></tr><tr><td class="confluenceTd"><span>Configurable</span></td><td class="confluenceTd"><span>Unserialized/Serialized</span></td><td class="confluenceTd"><span>N/A</span></td></tr></tbody></table>

**If Process Type is not selected, the user will not be able to search for any material to be associated.** 
Add New Material Button Allows user to add material to the route by searching the material.ActionsAllows user to perform delete action to the material in the routeRoute Designer TabFieldDescriptionAdd Route Step buttonAllows user to create route steps in the route by defining the 
[route step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)name and [route step type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Maintenance.md)ActionsAllows user to perform edit and delete action of the route step in the routeConnection ArrowsConnection arrows between route steps provide a visual outlook of the product flow in the routeLegendThe legend shows the meaning of different route steps (for example: a green 'Starting' route step is set when 'Is Initial Route Step' is checked).


#### Attachments

[image2019-5-16_13-47-1.png](/.attachments/49643898.png)
[image2019-5-16_13-48-40.png](/.attachments/49643899.png)
[image2019-5-16_14-5-35.png](/.attachments/49643901.png)
[image2020-11-29_21-5-27.png](/.attachments/82903656.png)
[image2020-11-29_21-8-54.png](/.attachments/82903657.png)
[image2020-11-29_21-8-12.png](/.attachments/82903658.png)

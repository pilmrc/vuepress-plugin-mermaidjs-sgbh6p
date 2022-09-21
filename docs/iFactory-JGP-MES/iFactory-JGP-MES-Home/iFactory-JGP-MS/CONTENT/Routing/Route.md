# Introduction

The product we build will be routed according to the path defined in Route Maintenance. A route is made up of 
[route steps](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)which contain [pre-start rules](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Pre%2DStart-Rules.md)and[ routing rules](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Routing-Rules.md)to direct the WIP or Lot flow when the condition stated in the rules are met. A [customer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Customer.md)may create multiple routes to build different products. For example, a customer has an SMT route to build motherboards based on its planned order. Then, they will have another route for direct fulfillment orders (BTO/CTO) where the motherboard is assembled into a higher level end product.  To create route more efficiently, Route Maintenance provides a one-stop center to create a route, route steps, configure certifications, resources, assemble types and others and associate all the route step rules mentioned above.
![image2019-7-10_16-36-4.png](/.attachments/51872164.png)


In order to segregate between the Bay Line in the production floor, Route Step is allowed to define by Manufacturing Area (Production Floor Bay/Line) according to the different resource with its own Manufacturing Area (e.g. Resource01 with MA01, Resource02 with MA02 respectively) OR shared resource with multiple different Manufacturing Area. e.g. Resource01 with MA01, MA02 and MA03. This is applicable to only Repetitive Process Type.
![image2020-11-29_21-5-27.png](/.attachments/82903643.png)


![image2020-11-29_21-8-54.png](/.attachments/82903646.png)


![image2020-11-29_21-8-12.png](/.attachments/82903645.png)




### General Tab


![image2019-7-10_16-58-9.png](/.attachments/51872165.png)




#### Route Designer Tab


![image2019-7-10_17-2-7.png](/.attachments/51872166.png)




#### Route Builder Tab


![image2020-7-16_9-43-42.png](/.attachments/75595897.png)





#### How to get there?




::: mermaid
graph LR
A("ROUTE")
:::


#### Screen Activity


Route Maintenance enables the user to perform the following activity:

- Create, view, update and delete route

- Create, view, update and delete materials associated with the route (Only base material can be associated, alias material is not allow)

- Create, view, update and delete route steps

- Add connection arrows between route steps for better visualization of the production flow

- Define the behavior of the route step

- Configure Pre-Start and/or Routing Rules for the route step

- Associate Resources, Certifications and Assemble Types for the route step

- Associate Alternative Names to steps.

- Creating new steps through drag and drop in Route Builder screen



#### Pre Condition 




- Factory, SAP storage location, and Material must exist for association with the Route

- Resources, certifications and assemble types must exist for association with the Route Steps

- Route Steps Type configured.



#### Creation Steps



- Create a unique name for the route and provide its version. Save. The General and Route Designer tabs appear.

- In General tab, configure route details and associated materials to be built to the route

- In Route Designer tab, click "Add Route Step" button to create route steps. Enter the required information

- Add the additional configuration like Pre Start rule or Routing rules


- Save


- Double click on the route steps to show a graphical flow of the interaction with the step (it is showing the step from where the product could come and where the product will go)

- Configure route step properties in General Tab, Pre-Start Rules, Routing Rules, Resources, Certifications and Assemble Types (for more information, refer to
[Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)[ Steps](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md))
- Save your route configuration



#### Screen Dependency


The following screen(s) has a direct dependency with Route 

- [Route Step Alternative Name](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step/Route-Step-Alternative-Name.md)

- [Route Step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)

- [Routing Rules](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Routing-Rules.md)

- [Pre-Start Rules](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Pre%2DStart-Rules.md)

- [SAP storage location](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Order/SAP-Storage-Locations.md)

- [Assemble Types](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Assembling/Assembly-Type.md)

- [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)

- [Certification (obsolete, please refers to security's Certification)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/Certification-(obsolete,-please-refers-to-security-Certification).md)


#### Buttons


![image2019-7-10_17-16-39.png](/.attachments/51872167.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd">Buttons</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Function</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Search</td><td class="confluenceTd">Load the route as typed in Route Name. It is possible to use partial string.</td></tr><tr><td colspan="1" class="confluenceTd">Save</td><td colspan="1" class="confluenceTd">Save the route. <u>Attention</u>: Any change in route designer tab is saved as soon as it is made</td></tr><tr><td class="confluenceTd">Copy</td><td class="confluenceTd"><p>If "Upgrade Route Version" toggle is turned ON, Route Name cannot be changed and user only provide the new Route Version.</p><p>If "Upgrade Route Version" toggle is turned OFF, user can copy the current route to a new Route Name which does not exist.</p><p>After clicking on Save in Copy Route dialog, if the route name and route version entered are valid, system will prompt the message "Do you want to duplicate existing configuration to the new route version?". If user selects "Yes", the existing configuration (as listed below) for the current route will be duplicated to the new route version. If user selects "No", a copy of the current route will be created without the other data configurations. Pre-Start and Routing rules which are associated with Deviation will not be copied.</p><p>The following data will be duplicated (only for Active or New status, not if Inactive):</p><ul><li>Equipment Setup Sheets (Shared setup for the original and new route version is created if there is no existing shared setup. If there is an existing shared setup for the original route version then the new route version will be added into the shared setup)</li><li>Manual Station Setup Sheets (Shared setup for the original and new route version is created if there is no existing shared setup. If there is an existing shared setup for the original route version then the new route version will be added into the shared setup)</li><li>Attribute Assignment Configuration</li><li>Defect Favorites Maintenance (New Defect Favorites Name = [Original Defect Favorites Name]/[New Route Version])</li><li>Document Assignment</li><li>Material Maintenance (Visual Aid & Data Collection)</li><li>FAI Configuration (New FAI Name = [Original FAI Name]/[New Route Version])</li><li>Route Step Reporting Name</li><li>Route Step Alternative Name</li><li><p>Assembly Alias Maintenance</p></li><li><span>Assembly Progression Maintenance</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">Clean the current screen</td></tr><tr><td colspan="1" class="confluenceTd">Export</td><td colspan="1" class="confluenceTd">Save the current route to a JSON file format. Pre-Start and Routing rules which are associated with Deviation are excluded.</td></tr><tr><td colspan="1" class="confluenceTd">Import</td><td colspan="1" class="confluenceTd">Load the route configuration from JSON file. If the route name/version is present, this is updated otherwise it is created. In order to use the functionality, it is required to have already defined what in pre-conditions. Pre-Start and Routing rules which are associated with Deviation are excluded.</td></tr><tr><td colspan="1" class="confluenceTd">Delete</td><td colspan="1" class="confluenceTd">Delete the current Route. This is possible only if it has never been used (no unit released on the route)</td></tr></tbody></table>


- #### ***Graphical Flow***

A double click on each step in Route designer, will show the graphical representation of the interaction of the step with the others.
![route.png](/.attachments/51872178.png)




#### Double click on step or pressing on 


![image2019-7-10_18-28-5.png](/.attachments/51872179.png)


, will drill down to the step.
Pressing on 
![image2019-7-10_18-28-38.png](/.attachments/51872180.png)


will open the edit route step pop up window to configure it.
Each step has the border based on Property:
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Color</th><th class="confluenceTh">Property</th></tr><tr><td class="confluenceTd">Green</td><td class="confluenceTd">Initial Route Step (Release)</td></tr><tr><td class="confluenceTd">Yellow</td><td class="confluenceTd">Pull Step</td></tr><tr><td colspan="1" class="confluenceTd">Blue</td><td colspan="1" class="confluenceTd">Inventory Step</td></tr><tr><td colspan="1" class="confluenceTd">Orange</td><td colspan="1" class="confluenceTd">Completion Step</td></tr></tbody></table>

Steps are connected with arrows, and based on color they have following meanings
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Color</th><th class="confluenceTh">Routing Rule meaning</th></tr><tr><td class="confluenceTd">Blue</td><td class="confluenceTd">Default Pass</td></tr><tr><td class="confluenceTd">Red</td><td class="confluenceTd">Default Fail</td></tr><tr><td class="confluenceTd">Purple</td><td class="confluenceTd">Other routing rules</td></tr></tbody></table>



#### Graphical Editor


The Route Builder tab is used 
to configure and view the route using a graphical editor.
When creating a new route, the Route Builder tab is disabled until the General page has been compiled/saved. If no route steps are configured, in Route Builder by default there will be one manufacturing area group shown with the default manufacturing area. If there are route steps already configured, the manufacturing area group(s) are shown collapsed. User shall expand the manufacturing area group box to view the route steps in the group.User can select the station or manufacturing area group from the Stations control and drop on the working area. Right click on the manufacturing area group or route step will show the Edit and Delete options (only able to delete a manufacturing area if there are no steps in the group). User can drag and drop steps from one group to another but it is not possible to have steps out of any manufacturing area group. If a station is selected from the control and added into a group, system will open the route step properties window (Add Route Step) with prepopulated manufacturing area and the route step type list will display those with the same station type as the one selected. Double clicking on a step will also show the route step properties window (Edit Route Step).
User can drag the connection between steps. The user shall select from the proper connector (green for Default Pass, red for Default Fail and purple for Other Rules) from source to destination step. There is no restriction related to manufacturing area. In case of a new link for Other Rules, the system will show the route step properties window on Routing Rules tab – Add New Routing Rule. Routing Rules with the "Destination Operations" disabled will not be available for selection when adding a new routing rule through linking the connectors. The destination route step will be saved automatically as the Destination Operations. Double clicking on a link will show the route step properties window on the Routing Rules tab.
Route Builder could be able present in block:
a. Block is segregated by the Route step with the same MA associated
b. If user drag and drop a new station type step to a block which will create new station type step with the associated Manufacturing Area, Station Type, Building, Building Type Name



#### Fields



<table class="wrapped confluenceTable" style="width: 1438.0px;"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;width: 1438.0px;" colspan="2" class="confluenceTd"><strong>General Tab</strong></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 123.0px;" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" style="width: 1315.0px;" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Route Name</td><td style="width: 1315.0px;" class="confluenceTd">The unique name for the route</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Version</td><td style="width: 1315.0px;" class="confluenceTd">The version of the route</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Description</td><td style="width: 1315.0px;" class="confluenceTd">Additional description of the route is entered here</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Factory</td><td style="width: 1315.0px;" class="confluenceTd">The factory where the route belongs</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Manufacturing Area</td><td style="width: 1315.0px;" class="confluenceTd"><p>The default Manufacturing Area where the route belongs </p><p>This field allows user to search manufacturing area belongs to which building and building type before selection.</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd">SAP Storage Location</td><td style="width: 1315.0px;" class="confluenceTd">Used for packout messages from System to SAP. SAP Storage Location defined here must match exactly with the SLOC name in SAP</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Route Type</td><td style="width: 1315.0px;" class="confluenceTd"><p>The Route Type defines what manufacturing process will occur on the route. Once defined and the status of the route is set to 'Active' the Route Type is not able to be changed.</p><ul><li>Production - Typical production processing of WIP items occurs on this route type</li><li>Purge - It is used to purge material. Works with <a href="Purge-29918422.html">Purge</a> screen</li><li>Deviation - It is a route coming from a deviation from an original (production) one</li><li>RMA - Route where receiving material from vendor (only for <span>Configurable / Box Build</span> process type)</li></ul></td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Process Type</td><td style="width: 1315.0px;" class="confluenceTd"><p>The Process Type defines the type of manufacturing process will be processed on the route.</p><ul><li><span style="font-size: 10.0pt;line-height: 13.0pt;">Configurable / Box Build - This is selected for the Configure To Order / Build To Order Box build final assembly (typically final product assembly)</span></li><li>Repetitive / Board Build - This is selected for the Discrete Repetitive, SMT Printed Circuit Assembly processing</li><li>Lot / Batch Build - This is used to manufacture non-serialized materials that are released, moved, and tracked by Lot (typically metal or plastic component manufacturing) This Process type is the only type that will allow a Planned order to be assigned to a Route during a Planned Order configuration process.</li></ul></td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Status</td><td style="width: 1315.0px;" class="confluenceTd"><p>A route can be in one of the following statuses:</p><ul><li>New (New route)</li><li>Active (Ready to use)</li><li>Inactive (Obsolete route that is no longer in use)</li></ul></td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Associated Materials</td><td style="width: 1315.0px;" class="confluenceTd"><p>The material must be associated with the route before it can be built in this route. Without the association, WIP for the material cannot even be released or birth into this route.<br /><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">Only SAP material type "FERT" (assembly) & "HALB" (sub-assembly) are available for association. </span></p><p><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;">For Lot / Batch Build process type the material must be associated to enable the Planned Order to be Assigned to a route. Only can associate Material Type = LotBatch</span></p><p><span style="font-size: 10.0pt;line-height: 13.0pt;background-color: transparent;"><span style="color: rgb(34,34,34);">For Material with Phoenix Material Type = "WIP", the material process type must be the same as route process type. Below is the configuration to be followed:</span></span></p><div class="table-wrap"><table class="wrapped confluenceTable"><tbody><tr><th class="confluenceTh"><strong>RouteProcessType</strong></th><th class="confluenceTh"><strong>MaterialType</strong></th><th class="confluenceTh"><strong>MaterialProcessType</strong></th></tr><tr><td class="confluenceTd"><span>Repetitive</span></td><td class="confluenceTd"><span>WIP</span><span> </span></td><td class="confluenceTd"><span>Repetitive, Repetitive with Work order</span></td></tr><tr><td class="confluenceTd"><span>Lot/Batch</span></td><td class="confluenceTd"><span>Lot/Batch</span></td><td class="confluenceTd"><span>N/A</span></td></tr><tr><td class="confluenceTd"><span>Configurable</span></td><td class="confluenceTd"><span>WIP</span><span> </span></td><td class="confluenceTd"><span>Configurable</span></td></tr><tr><td class="confluenceTd"><span>Configurable</span></td><td class="confluenceTd"><span>Unserialized/Serialized</span></td><td class="confluenceTd"><span>N/A</span></td></tr></tbody></table></div><p class="auto-cursor-target">If Process Type is not selected, the user will not be able to search for any material to be associated.</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Add New Material Button </td><td style="width: 1315.0px;" class="confluenceTd">Allows user to add material to the route by searching the material with correct process type.</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Actions</td><td style="width: 1315.0px;" class="confluenceTd">Allows user to perform delete action to the material in the route</td></tr><tr><td style="text-align: center;width: 1438.0px;" colspan="2" class="confluenceTd"><strong>Route Designer Tab</strong></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 123.0px;" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" style="width: 1315.0px;" data-highlight-colour="grey">Description</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Add Route Step button</td><td style="width: 1315.0px;" class="confluenceTd"><p>Allows user to create route steps in the route by defining the <a href="Route-Step-29919996.html">route step</a> name and <a href="Route-Step-Type-29920000.html">route step type</a></p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Actions</td><td style="width: 1315.0px;" class="confluenceTd">Allows user to perform edit and delete action of the route step in the route. It is possible to delete a step only if no wip is associated.</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">ID</td><td style="width: 1315.0px;" class="confluenceTd">Unique and sequential number of the step. It must be unique in the route and it will be rebaselined to a step to 10 when creating a new step intermediate to other twos.</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Step Type</td><td style="width: 1315.0px;" class="confluenceTd">It is configured in the <a href="Route-Step-Type-29920000.html">Route Step Type</a> and it is related to the station required.</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Step Name</td><td style="width: 1315.0px;" class="confluenceTd">The name assigned to the step. It must be unique in the route.</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Reporting Step Name</td><td style="width: 1315.0px;" class="confluenceTd">Additional name assigned to the step used for aggregate values. This name could be shared among multiple steps</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Station Type</td><td style="width: 1315.0px;" class="confluenceTd">Station type associated to the step. It is showing same icon as in station login</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Property</td><td style="width: 1315.0px;" class="confluenceTd">Basic property of the Route Step: Release (Initial Route Step), Pull, Inventory and Complete</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">In queue on pass</td><td style="width: 1315.0px;" class="confluenceTd">List of Step ID (as described before) configured in the routing rule "Default Pass Rule"</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">In queue on fail</td><td style="width: 1315.0px;" class="confluenceTd">List of Step ID (as described before) configured in the routing rule "Default Fail Rule"</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Other Routing</td><td style="width: 1315.0px;" class="confluenceTd">List of Step ID (as described before) configured for the other routing rules (except Default Pass and Default Fail rules)</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Prestart Rules</td><td style="width: 1315.0px;" class="confluenceTd">The "check" mark means there are prestart rules defined for the step</td></tr><tr><td style="width: 123.0px;" class="confluenceTd">Routing Rules</td><td style="width: 1315.0px;" class="confluenceTd">The "check" mark means there are routing rules defined for the step (excluding Default Pass and Default Fail rules)</td></tr><tr><td style="text-align: center;width: 1438.0px;" colspan="2" class="confluenceTd"><strong>Route Builder Tab</strong></td></tr><tr><td class="highlight-grey confluenceTd" style="width: 123.0px;" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" style="width: 1315.0px;" data-highlight-colour="grey">Description</td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Zoom In</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Zoom in 10%</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Zoom Out</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Zoom out 10%</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Zoom 100%</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Zoom to 100%</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Left</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Move the selected steps to the most left</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Right</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Move the selected steps to the most right</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Top</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Move the selected steps to the highest</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Bottom</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Move the selected steps to the most bottom</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Center X</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Move the selected steps to the average horizontal position</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Center Y</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Move the selected steps to the average vertical position</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>In Row</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Use a standard distance between the selected steps in horizontal</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>In Column</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Use a standard distance between the selected steps in vertical</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Grid</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Show/Hide a grid (default hide)</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Guidelines</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Show/Hide guidelines to align steps (default show)</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Snapping</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Enable/disable moving steps at fixed distance (default disable)</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Properties</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Show the properties window where configuring properties for the selected step (Edit Route Step pop up)</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Overview</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Show/Hide the overview pop up (default hide). Overview gives the overall view of the entire route. The user can scroll the overview diagram by clicking or dragging within the overview to show the current part where needs work.</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Stations</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Show/Hide the control with the list of stations and manufacturing area group (default show)</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Legend</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Show/Hide the legend pop up (default show)</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Default Pass</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Show/Hide default pass routing rule link (default show)</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Default Fail</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Show/Hide default fail routing rule link (default hide)</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Other Rules</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Show/Hide other routing rules link (default hide)</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>Expand All Groups</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Expand/Collapse all manufacturing area groups (default collapse)</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>PDF</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Export current route in PDF format</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>PNG</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Export current route in PNG format</p></td></tr><tr><td style="width: 123.0px;" class="confluenceTd"><p>SVG</p></td><td style="width: 1315.0px;" class="confluenceTd"><p>Export current route in SVG format</p></td></tr><tr><td colspan="1" class="confluenceTd">Header by MA group</td><td colspan="1" class="confluenceTd"><p>Each steps appears under set of Manufacturing area block (Applicable for Repetitive flow only).</p><p>For example, if Step 1 has MA1, MA2 and MA3 assigned, a block with header 'MA1/MA2/MA3' will be shown against which Step 1 to be available</p></td></tr></tbody></table>


<table class="wrapped confluenceTable"><tbody><tr><th class="confluenceTh"><strong>RouteProcessType</strong></th><th class="confluenceTh"><strong>MaterialType</strong></th><th class="confluenceTh"><strong>MaterialProcessType</strong></th></tr><tr><td class="confluenceTd"><span>Repetitive</span></td><td class="confluenceTd"><span>WIP</span><span> </span></td><td class="confluenceTd"><span>Repetitive, Repetitive with Work order</span></td></tr><tr><td class="confluenceTd"><span>Lot/Batch</span></td><td class="confluenceTd"><span>Lot/Batch</span></td><td class="confluenceTd"><span>N/A</span></td></tr><tr><td class="confluenceTd"><span>Configurable</span></td><td class="confluenceTd"><span>WIP</span><span> </span></td><td class="confluenceTd"><span>Configurable</span></td></tr><tr><td class="confluenceTd"><span>Configurable</span></td><td class="confluenceTd"><span>Unserialized/Serialized</span></td><td class="confluenceTd"><span>N/A</span></td></tr></tbody></table>

**If Process Type is not selected, the user will not be able to search for any material to be associated.** 
Add New Material Button Allows user to add material to the route by searching the material with correct process type.ActionsAllows user to perform delete action to the material in the route**Route Designer Tab** FieldDescriptionAdd Route Step buttonAllows user to create route steps in the route by defining the 
[route step](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step.md)name and [route step type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)ActionsAllows user to perform edit and delete action of the route step in the route. It is possible to delete a step only if no wip is associated.IDUnique and sequential number of the step. It must be unique in the route and it will be rebaselined to a step to 10 when creating a new step intermediate to other twos.Step TypeIt is configured in the [Route Step Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)and it is related to the station required.Step NameThe name assigned to the step. It must be unique in the route.Reporting Step NameAdditional name assigned to the step used for aggregate values. This name could be shared among multiple stepsStation TypeStation type associated to the step. It is showing same icon as in station loginPropertyBasic property of the Route Step: Release (Initial Route Step), Pull, Inventory and CompleteIn queue on passList of Step ID (as described before) configured in the routing rule "Default Pass Rule"In queue on failList of Step ID (as described before) configured in the routing rule "Default Fail Rule"Other RoutingList of Step ID (as described before) configured for the other routing rules (except Default Pass and Default Fail rules)Prestart RulesThe "check" mark means there are prestart rules defined for the stepRouting RulesThe "check" mark means there are routing rules defined for the step (excluding Default Pass and Default Fail rules)**Route Builder Tab** FieldDescriptionZoom In
Zoom in 10%
Zoom Out
Zoom out 10%
Zoom 100%
Zoom to 100%
Left
Move the selected steps to the most left
Right
Move the selected steps to the most right
Top
Move the selected steps to the highest
Bottom
Move the selected steps to the most bottom
Center X
Move the selected steps to the average horizontal position
Center Y
Move the selected steps to the average vertical position
In Row
Use a standard distance between the selected steps in horizontal
In Column
Use a standard distance between the selected steps in vertical
Grid
Show/Hide a grid (default hide)
Guidelines
Show/Hide guidelines to align steps (default show)
Snapping
Enable/disable moving steps at fixed distance (default disable)
Properties
Show the properties window where configuring properties for the selected step (Edit Route Step pop up)
Overview
Show/Hide the overview pop up (default hide). Overview gives the overall view of the entire route. The user can scroll the overview diagram by clicking or dragging within the overview to show the current part where needs work.
Stations
Show/Hide the control with the list of stations and manufacturing area group (default show)
Legend
Show/Hide the legend pop up (default show)
Default Pass
Show/Hide default pass routing rule link (default show)
Default Fail
Show/Hide default fail routing rule link (default hide)
Other Rules
Show/Hide other routing rules link (default hide)
Expand All Groups
Expand/Collapse all manufacturing area groups (default collapse)
PDF
Export current route in PDF format
PNG
Export current route in PNG format
SVG
Export current route in SVG format
Header by MA groupEach steps appears under set of Manufacturing area block (Applicable for Repetitive flow only).
For example, if Step 1 has MA1, MA2 and MA3 assigned, a block with header 'MA1/MA2/MA3' will be shown against which Step 1 to be available


#### Switching Tab


When user changes any data in General tab and then switch to another tab without first clicking on save, a pop up message will be shown.
![image2020-3-23_15-47-22.png](/.attachments/67569448.png)





#### Attachments

[Alien 1.bmp](/.attachments/29919992.bmp)
[image2013-2-14 11:6:22.png](/.attachments/29919993.png)
[image2013-2-14 11:5:45.png](/.attachments/29919994.png)
[image2013-2-14 10:57:0.png](/.attachments/29919995.png)
[image2019-7-10_16-36-4.png](/.attachments/51872164.png)
[image2019-7-10_16-58-9.png](/.attachments/51872165.png)
[image2019-7-10_17-2-7.png](/.attachments/51872166.png)
[image2019-7-10_17-16-39.png](/.attachments/51872167.png)
[route.png](/.attachments/51872178.png)
[image2019-7-10_18-28-5.png](/.attachments/51872179.png)
[image2019-7-10_18-28-38.png](/.attachments/51872180.png)
[image2020-3-23_15-47-22.png](/.attachments/67569448.png)
[image2020-7-16_9-43-42.png](/.attachments/75595897.png)
[image2020-11-29_21-5-27.png](/.attachments/82903643.png)
[image2020-11-29_21-6-37.png](/.attachments/82903644.png)
[image2020-11-29_21-8-12.png](/.attachments/82903645.png)
[image2020-11-29_21-8-54.png](/.attachments/82903646.png)

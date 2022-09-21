# Introduction

WIP maintenance permits users to modify WIP birth details, manage WIP attributes and provide an audit trail on such WIP changes. As this is a powerful screen that modifies vital details of the WIP, this screen should be restricted to users with administrator permission only. WIP Maintenance is supporting for Panel / Unit board.



### How to get there?



::: mermaid
graph LR
A("WIP")-->0("WIP MAINTENANCE")

:::


#### Permission


WIP Maintenance Group 
1) Can Access NG - Can Access WIP Maintenance 

2) Can Access NG - Can Configure WIP


#### Screen Activity


WIP Maintenance enables user to perform the following activity:

- Administor WIP changes to BOMs,Assembly Revisions, Batch and in-queue route steps

- Manually maintain WIP Attributes

- View audit log related to WIP changes.


#### Screen Dependency


The following screen(s) has direct dependency with WIP maintenance.

- [M](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(4.0).md)
[aterial](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)
- [R](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(4.0).md)
[oute](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)
- [B](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(4.0).md)
[ill Of Material - BOM (legacy)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)
- *[D](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Maintenance/WIP-Maintenance-(4.0).md)*
[ocument Assignment (3.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Assignment-(3.0).md)
- *[Document Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Maintenance-(4.0).md)*

- *[Batch Tag Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Batch-Tagging/Batch-Tag-Maintenance.md)*


#### Modify Birth Record


Each WIP birthed into system will be identified by its Serial Number, BOM, Assembly Revision and Batch. Shop floor will take these vital characteristics and process the WIP accordingly. 

At times, business decision would require a birthed WIP to be changed to another BOM and Material. Once changed, the WIP will assume a new characteristics and will be processed according to the rules setup for the new BOM, Assembly Revision and Batch. To modify birth record go to Modify Birth Record tab:
- Search and load Serial Number

- Existing value of the WIP will be displayed in Original Value section

- In the New Value section, go to the BOM field. Select the new BOM for the WIP. Material and other corresponding values of the BOM will be populated

- In the New Value section, go to the Assembly Revision field to select the new Assembly Revision.

- In the New Value section, go to the Batch field to select the new Batch Number.

- In the New Value section, go to the "Panel Breakout" toggle button to turn on for unit board to breakout

- Completed status unit board is allowed to perform panel breakout

- Packed Panel is not allowed to perform panel breakout

- Save
After panel breakout has performed, user is able to find the performed step at WIP View " Depaneled Route Step:

- Field to display value same as "Last Scanned Route Step"

- If Panel is generated but not release, field value should be leave blank

- If Panel is released but does not perform in any operation, field value should be leave blank


#### Manual Queue WIP to a location


WIP movement within the route will be controlled using Routing Rule. A system administrator may decide to override the rule and manually move WIP to any route step. 

To manual move WIP go to Modify Birth Record tab:

- Search and load Serial Number

- Existing value of the WIP will be displayed in Original Value section

- In the New Value section, go to the Route field. Select the desired Route and then select the desired Route Step

- Save. The WIP will be placed in queue at the selected Route and Route Step



#### WIP Attribute


There are 2 types of WIP attributes, generic WIP attribute and batch tag WIP attribute.
An example of a generic WIP attribute could be a software version. After the WIP passed its functional test, the script within Jabil Test will insert the WIP software version as a WIP Attribute. The software version stored could later be used for label printing, WIP routing criteria or for script validation usage. In the WIP Attribute Tab, user has the ability to manually add, modify or delete WIP attributes for the specific WIP Serial Number. 
For batch tag WIP attribute, the attribute name is referring to batch tag name and attribute value is referring to batch tag number. Batch tag WIP attribute apply some logics as per below:

- Batch tag attribute only allow add and delete function. (Only generic WIP attribute allow add, edit and delete)

- Cannot add invalid batch tag name (e.g. Expired or not in Active status)

- If the batch tag is using prompt method (configured in Attribute Assignment), allow to assign existing (if not fully use) or new batch tag number to WIP. Not allow to add if configured validation mask not match. No mask validation will perform if not configured.

- If the batch tag is using auto generate method (configured in Attribute Assignment), only existing batch tag number can assign to WIP (if not fully use).


#### Add New WIP Attribute



- Go to WIP Attribute tab, click Add WIP Attribute

- Select Is Batch Tag to ON if adding batch tag WIP attribute, otherwise default as OFF for generic WIP attribute.

- Enter WIP Attribute Name, Type and Value. (Free text for generic attribute. Batch tag name selection for batch tag attribute.)

- Click Confirm

- Use the Edit and Delete button to edit/delete the corresponding WIP Attribute. (Batch tag attribute not allow edit. Edit on generic WIP attribute will disable IsBatchTag as OFF)



#### WIP Audit Log 


The system contains an internal audit log for examining modifications performed on a WIP. 



#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="WIPMaintenance(4.0)-Header"><strong>Header</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field / Function</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">Serial Number</td><td class="confluenceTd"><span>Present serial numbers attached to "WIP"/"WIP associate Panel"(Means if WIP associate Panel, can maintenance one WIP then all WIP which associate this Panel will do same maintenance automatically)  intended for maintenance.<br /></span></td></tr><tr><td class="confluenceTd">Customer</td><td class="confluenceTd"><span>Exhibit customer names attached to serial numbers.</span></td></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd"><span>Display material name of the serial number.</span></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="WIPMaintenance(4.0)-ModifyBirthRecordTab-OriginalValue"><strong>Modify Birth Record Tab - Original Value</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field / Function</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">BOM & Alt BOM & Customer Rev & Version</td><td colspan="1" class="confluenceTd">Display the current BOM Name, Alternative BOM, Customer Revision and BOM Version for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Material & Plant</td><td colspan="1" class="confluenceTd">Display the current Material and Plant for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Assembly</td><td colspan="1" class="confluenceTd">Display the current Assembly for the WIP if applicable</td></tr><tr><td colspan="1" class="confluenceTd">Last Scan Location</td><td colspan="1" class="confluenceTd">Display the Last Scan Route and Route Step of the WIP</td></tr><tr><td colspan="1" class="confluenceTd">In Queued Route Step</td><td colspan="1" class="confluenceTd">Display the In Queue Route, Route Version and Route Step of the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Batch</td><td colspan="1" class="confluenceTd">Display the Batch Number of the WIP</td></tr><tr><td class="confluenceTd">Max Batch Quantity</td><td class="confluenceTd">Display Maximum Batch Quantity allow for the Batch Number</td></tr><tr><td colspan="1" class="confluenceTd">Panel Breakout</td><td colspan="1" class="confluenceTd">Turn on if unit board breakout whereas turn off if unit board is attached to panel</td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="WIPMaintenance(4.0)-ModifyBirthRecordTab-NewValue"><strong>Modify Birth Record Tab - New Value</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field / Function</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Search BOM</td><td colspan="1" class="confluenceTd">Look up for the new desired BOM for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Alt BOM & Customer Rev & Version</td><td colspan="1" class="confluenceTd">Display the selected BOM's Alternative BOM, Customer Revision and BOM Version</td></tr><tr><td colspan="1" class="confluenceTd">Material & Plant</td><td colspan="1" class="confluenceTd">Display the selected BOM's Material and Plant</td></tr><tr><td colspan="1" class="confluenceTd">Search Assembly Revision</td><td colspan="1" class="confluenceTd">Look up for the new desired Assembly Revision for the WIP</td></tr><tr><td colspan="1" class="confluenceTd">Search Batch</td><td colspan="1" class="confluenceTd">Look up for the new desired Batch</td></tr><tr><td colspan="1" class="confluenceTd">Search Route Step</td><td colspan="1" class="confluenceTd">Look up for the Route Step</td></tr><tr><td colspan="1" class="confluenceTd">Route/Version & Route Step</td><td colspan="1" class="confluenceTd">Display the selected Route/Version and Route Step</td></tr><tr><td colspan="1" class="confluenceTd">Panel Breakout</td><td colspan="1" class="confluenceTd">Turn on if unit board breakout whereas turn off if unit board is attached to panel</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="WIPMaintenance(4.0)-WIPAttributeTab">WIP <span>Attribute Tab</span></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field / Button</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">WIP Attribute Name</td><td colspan="1" class="confluenceTd">Display attribute name associated with a serial number. For Batch Tag attribute, batch tag name will be shown.</td></tr><tr><td colspan="1" class="confluenceTd">WIP Attribute Type</td><td colspan="1" class="confluenceTd"><p>Determine the data type of the WIP Attribute value</p><ul><li><strong>boolean</strong>; only true or false are accepted values.</li><li><strong>decimal</strong>; integers and decimal numbers are accepted values.</li><li><strong>integer</strong>; only numeric characters are accepted values.</li><li><strong>string</strong>; alphanumeric items are accepted values. (use string for Batch Tag attribute)</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">WIP Attribute Value</td><td colspan="1" class="confluenceTd">The Attribute Value for the corresponding WIP Attribute Name. For Batch tag attribute, batch tag number will be shown.</td></tr><tr><td colspan="1" class="confluenceTd">Is Batch Tag</td><td colspan="1" class="confluenceTd">Value “Yes” for batch tag attribute, “No” for generic attribute.</td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="WIPMaintenance(4.0)-WIPAuditLogTab">WIP Audit <span>Log Tab</span></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Event Type</td><td colspan="1" class="confluenceTd">Event Description such as WIP: Reserialization, WIP: Conversion, WIP: Change SFO, WIP: Change In Queue, WIP: Attribute, <span style="color: rgb(45,46,47);">WIP: Panel Breakout</span></td></tr><tr><td colspan="1" class="confluenceTd">Original Value</td><td colspan="1" class="confluenceTd">Value prior to change</td></tr><tr><td colspan="1" class="confluenceTd">New Value</td><td colspan="1" class="confluenceTd">Value after change</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">Status of the change</td></tr><tr><td colspan="1" class="confluenceTd">Last Modified</td><td colspan="1" class="confluenceTd"><p>Date and time when the WIP change occurs</p></td></tr><tr><td colspan="1" class="confluenceTd">Last Modified By</td><td colspan="1" class="confluenceTd"><p>User name of the user performing the change</p></td></tr></tbody></table>



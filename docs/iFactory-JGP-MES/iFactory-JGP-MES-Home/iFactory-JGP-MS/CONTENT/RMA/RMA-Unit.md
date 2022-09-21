# Introduction

RMA Unit screen allows user to accept an already shipped unit so that it can be either Upgraded, Reworked or Returned. After performing the RMA process in this screen, the unit will be able to be placed back to an RMA route to be reprocessed, or be returned to system to be re-assembled as a component.


### How to get there?



::: mermaid
graph LR
A("CONFIGURE")-->0("RMA UNIT")

:::


#### RMA Process



- Select Customer/Division


- If user is only assigned to a single Customer/Division, the Customer/Division will be auto loaded.




- Select Material



- Partial Material Name search allowed.


- Search by Customer Part Number allowed.


- If multiple matches, user need to select one from the list.




- Enter/Scan Serial Number



- Exact Serial Number of the RMA unit is required.




- Display Unit Information. System will display a list of information to assist user to ensure that the correct unit is selected and other information that relates to whether the unit is allowed to be RMA'd:

<table style="margin-left: 30.0px;" class="confluenceTable"><tbody><tr><th class="confluenceTh">Field Name</th><th class="confluenceTh">Description</th><th class="confluenceTh">Visible Condition</th></tr><tr><td class="confluenceTd">Phoenix Material Type</td><td class="confluenceTd">Only WIP and Serialized Material type units are allowed to be RMA'd</td><td class="confluenceTd">Always</td></tr><tr><td class="confluenceTd">Serial Number</td><td class="confluenceTd">The Serial Number for the RMA Unit</td><td class="confluenceTd">Always</td></tr><tr><td class="confluenceTd">Material Name</td><td class="confluenceTd">The Material Name for the RMA Unit</td><td class="confluenceTd">Always</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">The description of the Material for the RMA Unit</td><td colspan="1" class="confluenceTd">Always</td></tr><tr><td colspan="1" class="confluenceTd">Shipped By Component?</td><td colspan="1" class="confluenceTd">Is the Unit shipped as the Top Level Material of an Order? Yes or No</td><td colspan="1" class="confluenceTd">Always</td></tr><tr><td colspan="1" class="confluenceTd">Is Jabil Built?</td><td colspan="1" class="confluenceTd">Is the unit manufactured and shipped by Jabil previously Yes or No</td><td colspan="1" class="confluenceTd">Always</td></tr><tr><td colspan="1" class="confluenceTd">Plant</td><td colspan="1" class="confluenceTd">The Plant Code of the Material for the RMA Unit</td><td colspan="1" class="confluenceTd">Always</td></tr><tr><td colspan="1" class="confluenceTd">Shipped Container</td><td colspan="1" class="confluenceTd">The Container ID of which the unit was packed and shipped in.</td><td colspan="1" class="confluenceTd">Only if unit is shipped by Jabil</td></tr><tr><td colspan="1" class="confluenceTd">Delivery Order</td><td colspan="1" class="confluenceTd">The Delivery Order Number of which the unit was shipped in.</td><td colspan="1" class="confluenceTd">Only if unit was shipped through Delivery Order</td></tr><tr><td colspan="1" class="confluenceTd">Production Order</td><td colspan="1" class="confluenceTd">The Production Order Number of which the unit was shipped in</td><td colspan="1" class="confluenceTd">Only if unit was shipped through Production Order</td></tr><tr><td colspan="1" class="confluenceTd">Shipped By Top Level Material?</td><td colspan="1" class="confluenceTd">Is the unit assembled in a shipped Top Level Material? Yes or No</td><td colspan="1" class="confluenceTd">Only if the unit was assembled in a shipped Top Level Material</td></tr><tr><td colspan="1" class="confluenceTd">Top Level WIP Status</td><td colspan="1" class="confluenceTd">The status of the Top Level Material that the unit was assembled in</td><td colspan="1" class="confluenceTd">Only if the unit was assembled in a shipped Top Level Material</td></tr><tr><td colspan="1" class="confluenceTd">Top Level Serial Number</td><td colspan="1" class="confluenceTd">The Serial Number of the Top Level Material that the unit was assembled in</td><td colspan="1" class="confluenceTd">Only if the unit was assembled in a shipped Top Level Material</td></tr><tr><td colspan="1" class="confluenceTd">Top Level Material Name</td><td colspan="1" class="confluenceTd">The Material Name of the Top Level Material that the unit was assembled in</td><td colspan="1" class="confluenceTd">Only if the unit was assembled in a shipped Top Level Material</td></tr><tr><td colspan="1" class="confluenceTd">Top Level Material Description</td><td colspan="1" class="confluenceTd">The Material Description of the Top Level Material that the unit was assembled in</td><td colspan="1" class="confluenceTd">Only if the unit was assembled in a shipped Top Level Material</td></tr><tr><td colspan="1" class="confluenceTd">Can be RMA'd? </td><td colspan="1" class="confluenceTd">The final indicator on whether the unit is allowed to be RMA'd. Yes or No</td><td colspan="1" class="confluenceTd">Always</td></tr></tbody></table>


- Select RMA Event:

<table class="confluenceTable"><tbody><tr><th class="confluenceTh">RMA Event</th><th class="confluenceTh">Select when</th><th class="confluenceTh">Applicable to</th></tr><tr><td class="confluenceTd">Return</td><td class="confluenceTd">Unit is to be returned for future use</td><td class="confluenceTd">WIP and Serialized Material</td></tr><tr><td class="confluenceTd">Rework</td><td class="confluenceTd">Unit is to be reworked and shipped back to Customer without new order</td><td class="confluenceTd">WIP only</td></tr><tr><td class="confluenceTd">Upgrade</td><td class="confluenceTd">Unit is to be upgrade to latest specification and shipped back with new order</td><td class="confluenceTd">WIP only</td></tr></tbody></table>


- If RMA Unit is a

**WIP** , select the target RMA Route and Route Step


- If material assigned to only 1 RMA Route, RMA route will be auto selected.



- Enter RMA Number, RMA Customer Event and Comment


- Optional Fields




Click “Create RMA”. RMA record created for the RMA unit with below actions:

- If unit is assembled to a Top Level Material, disassemble the unit from the Top Level Material. Top Level Material remain unchanged otherwise


- If unit is packed in a Container, unpack the unit from the container


- If unit is non-Jabil shipped, access the external list table and update return count according to data in the list.


- If unit is a WIP, enqueue the unit at the assigned RMA Route and Route Step for further process.


- If unit is a Serialized Material, complete the RMA record immediately.


#### Allowed to be RMA'd Conditions


Any of the following conditions need to be met before a user can perform RMA to a unit.

- The unit had been shipped. (For WIP, Unit Status = Shipped
**AND** packed in a container Status = Shipped. For Serialized Material, unit is packed in container Status = Shipped)
- The unit had been assembled into a Top Level WIP that had been shipped.

- The Non-Jabil Shipped Unit had been birthed using the Birth Non-Jabil Shipped Unit screen and completed in a Route.
**Return Count Update from External List** 
A list of historical return records can be uploaded to a customized table where the recorded return count would be appended to the Non-Jabil Shipped units return count the very first time they are processed in RMA Unit screen. Refer to Customer Specific Feature " Return Count External List for more information.


# Introduction


Birth Non-Jabil Shipped Unit allows user to birth a WIP instantly to be later built with genealogy and then returned for reprocessing as part of the RMA process.

### How to get there?



::: mermaid
graph LR
A("CONFIGURE")-->0("BIRTH NON-JABIL SHIPPED UNIT")

:::


#### Prerequisite



- Import from SAP / Manually create Shipped Unit Material in System


- Import from SAP / Manually create Shipped Unit BOM in System for a WIP.


- Configure Assemble Point for a WIP


- Configure Production Route and Route Step for a WIP with Assemble Route Step Type to assemble components.



#### Birth Process



- Select Customer/Division


- If user is only assigned to a single Customer/Division, the Customer/Division will be auto loaded.



- Select Material


- Partial Material Name search allowed.

- Search by Customer Part Number allowed.

- If multiple matches, user need to select one from the list.



- Display Material Information. System will display information about the selected Material for user to ensure that the correct Material is selected

<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Field Name</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Customer</td><td class="confluenceTd">The customer of the material</td></tr><tr><td class="confluenceTd">Division</td><td class="confluenceTd">The division of the material</td></tr><tr><td class="confluenceTd">Material</td><td class="confluenceTd">The material name</td></tr><tr><td colspan="1" class="confluenceTd">Customer Part Number</td><td colspan="1" class="confluenceTd">The material's customer part number</td></tr><tr><td colspan="1" class="confluenceTd">Phoenix Material Type</td><td colspan="1" class="confluenceTd">The material's material type. Only WIP or Serialized Material can be birth</td></tr></tbody></table>


- Select BOM. Only if Phoenix Material Type = WIP


- Select the BOM that will be used to birth the WIP



- Enter BOM Effective Date.
Only if Phoenix Material Type = WIP

- Enter the Effective Date for the BOM to use the correct components.

- Default date is Today’s date.



- Select Route and Route Step.
Only if Phoenix Material Type = WIP

- Production type Route is required for the birthing.

- Route must contain an Assemble route step for the assembling of the components to the WIP.



- Scan/Enter Serial Number

- Enter Serial Number and click “Birth” to birth the WIP.


- Validation Mask will be validated.


- A WIP will be en-queued to the selected Production Route where user can proceed with assembling the components to the WIP using the standard Assemble station.



#### Prerequisite for Non-Jabil Shipped Unit RMA



- A WIP must be completed (WIP Status = Completed) before it can be selected in the RMA Unit screen.



#### Update Return Count from External List



- System will only check the External List for any return count update if a part is a Non-Jabil Shipped WIP or Serialized Material. Therefore, for a Non-Jabil Shipped WIP, all the components in the WIP must also be birthed using this screen before they are assembled to the WIP to ensure that all components have their return count updated accurately based on the list.











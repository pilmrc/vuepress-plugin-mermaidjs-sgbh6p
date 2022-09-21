# Introduction

Custom Data Maintenance provides user the flexibility to configure additional data fields to collect custom information. Custom Data is configured by categories: Resource, Container Type and Material. Once configured, these user defined fields can be found in the Custom Data tab in their respective maintenance screens. All of the Custom Data configured for the Material category will appear in Material Maintenance’s Custom Data tab. Any data that is entered by user in the Material Custom Data tab will be shared across all Materials.  The same logic applies for the other categories.

**How to get there?** 

::: mermaid
graph LR
A("CONFIGURATION")-->0("CUSTOM DATA")
0-->1("CUSTOM DATA")

:::

Precondition
*[Custom Data List](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Custom-Data/Custom-Data-List.md)* 
needs to be configured before user can configure Custom Data with “List” Data Type.
Screen Activity
Custom Data Maintenance enables user to perform the following activity:

- Create, view, update and delete custom data for each category

- Set Custom Data field as mandatory or optional in Custom Data tab

- Set Custom Data field as visible or invincible in the Custom Data tab

Screen Dependency


- ***[Custom Data List Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Custom-Data/Custom-Data-List.md)***

- [Resource Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)

- [Container Type (3.0)](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Custom-Data.md)

- [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Manufacturing Area](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)

- *[Validation Mask](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Validation-Mask.md)*




### **Fields** 



<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Custom Data Category</p></td><td class="confluenceTd"><p>The Custom Data Categories available are Resource, Container, Defect Code, Material, Manufacturing Order</p></td></tr><tr><td class="confluenceTd"><p>Sequence</p></td><td class="confluenceTd"><p>The sequence of the custom data field displayed in the Custom Data tab</p></td></tr><tr><td class="confluenceTd"><p>Custom Data Name</p></td><td class="confluenceTd"><p>The unique custom data field name displayed to the user in Custom Data tab. Each Custom Data Name are unique within each Custom Data Category.</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Additional description for the Custom Data can be entered in this field. The description is only visible in Custom Data Maintenance screen and will not appear <br />in the Custom Data tabs.</p></td></tr><tr><td class="confluenceTd"><p>Validation Mask</p></td><td class="confluenceTd"><p>Validation Mask will bring up the masks configured in Validation Mask Maintenance screen for user selection. If configured, system will verify the data entered <br />in Custom Data tab adheres to the Validation Mask.</p></td></tr><tr><td class="confluenceTd"><p>Data Type</p></td><td class="confluenceTd"><p>Data Type will depict how user enters Custom Data in Custom Data tab.</p><p>Data Types available:</p><ol><li>Text</li><li>Text Area</li><li>Date</li><li>Date Time</li><li>Number</li><li>Check Box</li><li>List (If selected will bring up the Custom Data List field)</li></ol></td></tr><tr><td class="confluenceTd"><p>Custom Data List</p></td><td class="confluenceTd"><p>Custom Data List will only appear if “List” Data Type is selected. This is the Custom Data List configured in <u><a href="Custom-Data-List-29918286.html">Custom Data List Maintenance</a></u></p></td></tr><tr><td class="confluenceTd"><p>Required Data</p></td><td class="confluenceTd"><p>If selected, the Custom Data is marked as mandatory user entry field. In Custom Data tab, system will not save the entry if user did not enter data into this field<br />If deselected, the Custom Data entry is optional. This is the default selection</p></td></tr><tr><td class="confluenceTd"><p>Visible</p></td><td class="confluenceTd"><p>If selected, the Custom Data is visible in Custom Data tab. This is the default selection<br />If deselected, the Custom Data is hidden in Custom Data tab. This is useful to reduce the custom data displayed by making obsolete custom data invincible while still keeping them for traceability purposes.</p></td></tr></tbody></table>






- ***References***


[Isilon and NetApp Custom Data](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material/Materials-Bulk-Edit.md)



# Introduction

Custom Data List Maintenance enables user to create a list that will be reflected in Custom Data Maintenance screen. In Custom Data Maintenance, if Data Type “List” is selected, the Custom Data List created here will be displayed in the browse screen for user selection.

How to get there?


::: mermaid
graph LR
A("CONFIGURATION")-->0("CUSTOM DATA")
0-->1("CUSTOM DATA LIST")

:::


### **Screen Activity** 


Custom Data List Maintenance enables user to perform the following activity:

- Create, view, update and delete custom data list

- Add custom data values into the custom data list

Screen Dependency


- *[Custom Data Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Custom-Data.md)*

- [Resources Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md)

- [Container Type ](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Custom-Data/Custom-Data-List.md)

- [Defect Category](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Defect-Category.md)

- [Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Manufacturing Area](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Location/Manufacturing-Area.md)

Fields

<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Custom Data List Name</p></td><td class="confluenceTd"><p>The unique name given to the Custom Data List. In Custom Data Maintenance, when user selects Data Type as “List”, the Custom Data List field will be displayed in the <br />browse screen for user selection</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Additional description for the Custom Data List can be entered in this field</p></td></tr><tr><td class="confluenceTd"><p>Sequence</p></td><td class="confluenceTd"><p>The sequence where the list name are displayed</p></td></tr><tr><td class="confluenceTd"><p>Name</p></td><td class="confluenceTd"><p>The Value's label displayed to the user. Each Name in the list is unique.</p></td></tr><tr><td class="confluenceTd"><p>Value</p></td><td class="confluenceTd"><p>This value is not visible to the end user. It is the actual value representing the list name</p></td></tr><tr><td class="confluenceTd"><p>Default</p></td><td class="confluenceTd"><p>If selected, the value in the selected row will be displayed to the user by default. When creating a new Custom Data List, the first row will be automatically set as the default value. <br />User is required to deselect a row before they can set a default value to another row.</p></td></tr></tbody></table>


The Value’s label displayed to the user. Each Name in the list is unique.
Value
This value is not visible to the end user. It is the actual value representing the list name
Default
If selected, the value in the selected row will be displayed to the user by default. When creating a new Custom Data List, the first row will be automatically set as the default value. 

User is required to deselect a row before they can set a default value to another row.
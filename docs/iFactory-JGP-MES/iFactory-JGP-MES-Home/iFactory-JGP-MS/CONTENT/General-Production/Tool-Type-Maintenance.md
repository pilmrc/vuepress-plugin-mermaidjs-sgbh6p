# Introduction

In Jabil manufacturing plants, it is common for sites to use additional tooling to aid in building products. There are many types of tooling that are used every day. 
This screen enables the user to create and manage tool type(s) for the tooling they use.
Samples of Tool Types: MPM Printer Blades, Screen Printer Stencils, Press Fit Base Plates, Wave Pallets


### How to get there?




::: mermaid
graph LR
A("CONFIGURE")-->0("TOOL TYPE")

:::


#### Screen Activity


Tool Type Maintenance enables user to perform the following activity:

- Create a new Tool Type

- Edit an existing Tool Type

- Delete a Tool Type


- Note: Tool Type cannot be deleted if it has been associated to a Tooling




#### Pre Condition


There are no pre-conditions.


#### Screen Dependency


The following screen has dependency on this screen.

- [Tooling](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Tooling-Management.md)


#### Fields


![image2022-3-14_16-6-2.png](/.attachments/110919728.png)


<table class="wrapped confluenceTable"><colgroup><col style="width: 91.0px;" /><col style="width: 378.0px;" /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Tool Type</p></td><td class="confluenceTd"><p>Tool Type name (must be unique). Alphanumeric 50 CHAR</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"> Description given to Tool Type</td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd"><p>Always default to ON .</p><p>If it is ON , then it can be used in Tooling Configuration.</p><p>If it is OFF , then it can't be used in Tooling Configuration.</p></td></tr></tbody></table>



#### Attachments

[image2017-5-25 13:54:17.png](/.attachments/29918463.png)
[image2022-3-14_16-6-2.png](/.attachments/110919728.png)

# Introduction

A panel type defines the quantity and orientation of 
[WIP](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/DICTIONARY.md#DICTIONARY-WIP(WorkInProgress))within a panel. It may consist of a single WIP or an array of WIPs. All WIPs in the panel will move together in the route and will have the same WIP status (Started, Arrived, etc). At some point in the route, the panel will be broken up and the WIPs in the panel will then move individually. A 2x2 panel means the panel contains 2 rows and 2 columns containing up to 4 WIPs.


### How to get there?



::: mermaid
graph LR
A("PRODUCT")-->0("PANEL TYPE")

:::
![image2018-10-22_13-48-54.png](/.attachments/36962395.png)



Screen Activity

Panel Type Maintenance enables user to perform the following activity:

- Create, view, update and delete Panel Type




#### **Screen Dependency** 




- **[Assembly Configuration](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Assembly-Configuration.md)**

- [Panelization](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panelization/Panelization-(4.0).md)

- [Panelization - MIE Auto Breakout](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panelization/Panelization-%2D-MIE-Auto-Breakout.md)

- [Panelization - MOE Auto Breakout](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Panelization/Panelization-%2D-MOE-Auto-Breakout.md)

- [Panel WIP Importer](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Data-Importer/Panel-WIP-Importer.md)

- [WIP Release - Assembly](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/WIP-Release-%2D-Assembly/WIP-Release-%2D-Assembly-(4.0).md)


#### **Fields** 



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Panel Type Name</p></td><td class="confluenceTd"><p>The unique name given to the panel type</p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(0,0,0);">Rows</span></p></td><td class="confluenceTd">User can specify the number of rows from the range of 1-50</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Columns</span></td><td colspan="1" class="confluenceTd"><span>User can specify the number of columns from the range of 1-50</span></td></tr><tr><td colspan="1" class="confluenceTd">Sides</td><td colspan="1" class="confluenceTd">Define whether it is a one-sided or two-sided panel. A two-sided panel means the panel will contain material at the top and bottom side of the panel. This is just an information field</td></tr><tr><td colspan="1" class="confluenceTd">Bar Code Options</td><td colspan="1" class="confluenceTd"><p>There system can handle the panel serial number with 2 options configurable for the panel type</p><ul><li>No Bar Code - the panel does not have its own bar code or it is using one of board serial numbers</li><li>Unique Bar Code - the panel uses a serial number different from any WIP bar code on the panel</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Panel Mapping</td><td colspan="1" class="confluenceTd"><p>Displays the graphical representation of the panel. System will automatically adjust the panel size and sequence the boxes in the panel based on the rows and columns defined. <br />System will sequence the panel starting from left to right, top to bottom. <br />These sequence of numbers are the physical location of the WIP in the panel. During production, the WIP will be scanned/processed according to this sequence. <br />User has the ability to rearrange the sequence. However, system will not allow duplicate sequence and the sequence defined must be within the range of the panel size.</p></td></tr></tbody></table>






#### Attachments

[image2018-10-22_13-48-54.png](/.attachments/36962395.png)

# Introduction


Bill of Material (BOM) is made up of a list of components, sub-assemblies and assemblies that are used to build an end product. BOMs are imported from SAP ECC via Idoc. The BOM Idoc is triggered when there are newly created BOMs or changes have been made in SAP on fields required by manufacturing system. Additionally, only BOMs used for Production, Sales & Distribution and GOF will be transferred. These BOMs have the source system indicator of "SAP". 
Users can create BOMs in the system and they will carry the source system indicator of "PHX". 
With SAP PLM, BOM import can include CRDs and 
Plant Revision Levels found in the BOM header
.
The diagram below shows the BOM transfer path. When Idoc is generated in SAP ECC, Idoc will be transferred to GIS (Gentran Integration Suite). GIS will convert Idoc to XML format and send to MSMQ. After MSMQ received the BOM message, the data will be further processed before they are sent to the system.
![image2019-1-15_17-53-10.png](/.attachments/41058372.png)




### How to get there?



::: mermaid
graph LR
A("PRODUCT")-->0("BOM")

:::


#### Screen Activity


BOM Maintenance enables user to perform the following activity:

- View BOMs that are imported from SAP ECC

- Create, view, update and delete BOM. Source system "PHX". Once a BOM is marked as Active or has been used, system will no longer allow the BOM to be updated or deleted

- Configure BOM inheritance


#### Pre Condition


Material to build the BOM must exist before user can create BOM in Phoenix



#### Screen Dependency


The following screen(s) has direct dependency with BOM 

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)




#### Navigating between BOM levels


In case of multilevel BOM, each sublevel of the current level will have the Item Number underlined. Selecting it, the system will open in a new browser tab the sublevel, and it will allow to edit it.


#### Configure CRD


For editing CRD, it is required to retrieve an existing BOM, and editing the Item Number required to change the CRD.
![image2019-1-15_20-56-45.png](/.attachments/41058385.png)


From the opening form, press the 
![image2019-1-15_20-59-18.png](/.attachments/41058387.png)


button to add a CRD or on the line with existing CRD the button for editing or delete (
![image2019-1-15_21-2-41.png](/.attachments/41058389.png)


)
![image2019-1-15_20-58-41.png](/.attachments/41058386.png)


From the new window, type the CRD or in case of multiple CRDs, the list comma separated, with the proper attribute of Top, Bottom (default unspecified)
![image2019-1-15_21-1-7.png](/.attachments/41058388.png)


The system will validate if the CRD quantity are matching the BOM material quantity.
It is not possible to add CRD if the material quantity is 0 or decimal or if this is already associated to another material in the current BOM level.



#### Configure BOM Inheritance


BOM inheritance is configured to allow phantom materials or material with "Temporary Serial Number" release type to inherit Serial Number from a non phantom serialized material within its BOM structure. 

Follow the example below to configure BOM inheritance. Material 861-0029-02-SUB has release type = Temporary Serial Number. It needs to inherit its Serial Number.
- Supposed to Load 00750591-SUB BOM

- The serialized material is found under AP_UNIVERSAL BOM structure. Click to Edit AP_UNIVERSAL. This will bring up the BOM Item Maintenance window

- Set Inherit Priority = 1

- Click Save. The BOM Item Maintenance window will be auto-closed

Note: If the Save is greyed out, change the BOM status temporarily to "Inactive" to allow BOM edits. If system prompts to upgrade the BOM, select "No" to remain the BOM version. 
- Set the BOM status back to "Active" if it was set to "Inactive"

- Save the BOM

![image2019-1-15_18-0-44.png](/.attachments/41058369.png)




![image2019-1-15_18-2-9.png](/.attachments/41058368.png)





- If the sub level just setup is a phantom material, it doesn't have it's own serial number, so it is required to repeat the same operation until getting to a not-phantom material. Just clicking on the line item, the system will open the sub level BOM in a new tab, to fast editing.



With the BOM inheritance configuration, in this way the bom level setup will inherit the same serial number of the lower material configured with the inherit flag to 1.

#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd">Header</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd">BOM Name*</td><td class="confluenceTd">The unique name for the BOM</td></tr><tr><td colspan="1" class="confluenceTd">Alternative BOM*</td><td colspan="1" class="confluenceTd">Alternate BOM is defaulted to 1</td></tr><tr><td colspan="1" class="confluenceTd">Customer Rev*</td><td colspan="1" class="confluenceTd">Customer revision for the BOM. <br />If SAP PLM is not implemented, Customer Rev value sent from SAP will be defaulted to "SAP". This value is reserved and not allowed in BOMs created in the manufacturing system (source system "PHX")</td></tr><tr><td colspan="1" class="confluenceTd">Version</td><td colspan="1" class="confluenceTd">BOM version is defaulted to 1. <br />User can modify BOMs with source system "PHX". System will prompt user to maintain or upgrade the BOM version when they attempted to save changes on these BOMs</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd">Additional information on the BOM can be entered here</td></tr><tr><td colspan="1" class="confluenceTd">Material Name*</td><td colspan="1" class="confluenceTd">The top level material and the plant of the BOM. This field is not editable once the BOM is saved</td></tr><tr><td colspan="1" class="confluenceTd">Valid From*</td><td colspan="1" class="confluenceTd">The valid start date of the BOM. System will not allow user to edit the "Valid From" date if Source System = "SAP"</td></tr><tr><td colspan="1" class="confluenceTd">Valid To*</td><td colspan="1" class="confluenceTd">The last day where the BOM is valid for use. This field is defaulted to "2099/12/31" and is editable by user</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd"><p>A BOM can be in one of the following statuses:</p><ul><li>New (BOM that is still under configuration. Newly created BOM in Phoenix is defaulted to "New")</li><li>Active (Only active BOM is visible for use Phoenix configuration and usage. BOM imported from SAP is defaulted to "Active". Once the BOM is active, system will restrict BOM modification)</li><li>Inactive (BOM that has became obsolete is marked as inactive. This is the only status where BOM values can be overwritten by changes in SAP)</li><li>Hold (BOM is temporary put on hold and cannot be used until it is turned back to "Active")</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Type*</td><td colspan="1" class="confluenceTd"><p><span>A BOM can be in one of the following types:</span></p><ul><li>Order (Order BOM is used with delivery orders)<span> </span></li><li>Fixed (Fixed BOM is used with planned orders)</li><li>Super (Super BOM behaves like a dummy BOM. It contains all possible materials that builds an assembly and is mainly used for Assemble Point configuration)</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Is Current</td><td colspan="1" class="confluenceTd">If checked, it signifies the BOM is the current BOM used by the material</td></tr><tr><td colspan="1" class="confluenceTd">Phantom*</td><td colspan="1" class="confluenceTd">Phantom BOM indicates the material never really exist as a stockable item. Thus, they are never consumed. They are used to fulfill the assembly of a higher level parent as called for by customer orders.<br />Phantom BOMs can be used to build higher level BOMs</td></tr><tr><td colspan="1" class="confluenceTd">Change Number*</td><td colspan="1" class="confluenceTd">Change number is only applicable for BOMs with source system "SAP". If source system is "PHX", change number will be null</td></tr><tr><td colspan="1" class="confluenceTd">Source System</td><td colspan="1" class="confluenceTd"><p>There are 2 types of BOM source system</p><ul><li>SAP (BOM imported from SAP)</li><li>PHX (BOM created in the manufacturing system)<br /><br />Note: BOM sent from SAP is not editable except for Description, Valid To, Status, Type, Component BOM ID and CRD List </li></ul></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd">Grid</td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Field</td><td class="highlight-grey confluenceTd" data-highlight-colour="grey">Description</td></tr><tr><td colspan="1" class="confluenceTd">View BOM Items</td><td colspan="1" class="confluenceTd"><p>There are 3 types of filter that can be applied to the BOM items display:</p><ul><li>All (Display all Component Line Items of the BOM)</li><li>Current (Display only the Component Line Items that are valid on the current date)</li><li>Valid On (<span>Display </span><span>only the Component Line Items that are valid on the specified date)</span></li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Item Number*</td><td colspan="1" class="confluenceTd"><p>The sequence of the <span>Component Line Items represented by 4 digits.<br />If the BOM is created in Phoenix, each item number automatically increases by 10. If the value is underlined, it means it is a sublevel, and pressing the link, the BOM sublevel will be opened in a new browser tab.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Material*</td><td colspan="1" class="confluenceTd">The <span>Component Line Items's </span>material name</td></tr><tr><td colspan="1" class="confluenceTd">Phantom</td><td colspan="1" class="confluenceTd">If the line item is blue char, it's a phantom material with sub-BOM<br />If the line item is green char, it's a non phantom material with sub-BOM<br />If the line item is black char, it's a component without any sub-BOM</td></tr><tr><td colspan="1" class="confluenceTd">Description</td><td colspan="1" class="confluenceTd"><span>Additional description for the <span>Component Line Item</span></span></td></tr><tr><td class="confluenceTd"><span>Quantity*</span></td><td class="confluenceTd"><span>The quantity of the </span><span>Component Line Item - Note there is now a facility to divide the qty by the SAP base Qty, if used in SAP, to give the correct unit Qty.</span></td></tr><tr><td colspan="1" class="confluenceTd">Valid From*</td><td colspan="1" class="confluenceTd"><span>The valid start date of the Component Line Item. This date follows the Valid From date as stated in the BOM header section. User has the ability to modify this date.</span></td></tr><tr><td colspan="1" class="confluenceTd">Valid To*</td><td colspan="1" class="confluenceTd"><span>The last day where the Component Line Items is valid for use. <span>This date follows the Valid To date as stated in the BOM header section. U<span>ser has the ability to modify this date.</span></span></span></td></tr><tr><td colspan="1" class="confluenceTd">Alternate Group*</td><td colspan="1" class="confluenceTd">The alternate group for the <span>Component Line Items. <br />An alternate group is a grouping of components added to the BOM which belong to the same family. Its withdrawal/reservation for production will depend upon the usage probability from SAP</span></td></tr><tr><td colspan="1" class="confluenceTd">Required*</td><td colspan="1" class="confluenceTd">Allows user to mark the Component Line Item as Required usage for a group of components<br />If there is value in Alternate Group, this field will be activated for user configuration</td></tr><tr><td colspan="1" class="confluenceTd">Change Number*</td><td colspan="1" class="confluenceTd"><span>Change number is only applicable for BOMs with source system "SAP". If source system is "PHX", change number will be null</span></td></tr><tr><td colspan="1" class="confluenceTd">CRDs*</td><td colspan="1" class="confluenceTd">Displays the list of CRDs for the <span>Component Line Item. CRDs can only be added for non phantom BOM item.</span></td></tr><tr><td colspan="1" class="confluenceTd">CRD Name*</td><td colspan="1" class="confluenceTd">The CRD for the <span>Component Line Item</span></td></tr><tr><td colspan="1" class="confluenceTd">CRD Side*</td><td colspan="1" class="confluenceTd"><p>Define the side where the CRD is located</p><ul><li>Top</li><li>Bottom</li><li>Unspecified</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Inherit Priority</td><td colspan="1" class="confluenceTd"><p>Used when the phantom parent material needs to inherit Serial Number from one of its component and report in the SAP Handling Unit message. <br /><br />Field Visibility:</p><ul><li>Only when <span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">Top Level Material shall be PHX Phantom Material and Material Type = "WIP" / "Serialized Material"</span></li><li><span style="background-color: transparent;font-size: 10.0pt;line-height: 13.0pt;">Top Level Material shall be PHX Phantom Material and IsSerialized = TRUE</span></li></ul></td></tr></tbody></table>














- \* Indicates the data is imported from SAP ECC




#### Attachments

[image2019-1-15_18-2-9.png](/.attachments/41058368.png)
[image2019-1-15_18-0-44.png](/.attachments/41058369.png)
[image2019-1-15_17-58-19.png](/.attachments/41058370.png)
[image2019-1-15_17-57-4.png](/.attachments/41058371.png)
[image2019-1-15_17-53-10.png](/.attachments/41058372.png)
[image2013-2-7 14:27:8.png](/.attachments/41058373.png)
[image2013-2-7 14:27:48.png](/.attachments/41058374.png)
[image2013-2-13 19:56:57.png](/.attachments/41058375.png)
[image2015-9-3 16:48:46.png](/.attachments/41058376.png)
[image2015-9-3 16:52:31.png](/.attachments/41058377.png)
[image2015-9-3 16:54:29.png](/.attachments/41058378.png)
[image2015-9-3 17:6:37.png](/.attachments/41058379.png)
[image2015-9-3 17:8:30.png](/.attachments/41058380.png)
[image2019-1-15_20-56-45.png](/.attachments/41058385.png)
[image2019-1-15_20-58-41.png](/.attachments/41058386.png)
[image2019-1-15_20-59-18.png](/.attachments/41058387.png)
[image2019-1-15_21-1-7.png](/.attachments/41058388.png)
[image2019-1-15_21-2-41.png](/.attachments/41058389.png)

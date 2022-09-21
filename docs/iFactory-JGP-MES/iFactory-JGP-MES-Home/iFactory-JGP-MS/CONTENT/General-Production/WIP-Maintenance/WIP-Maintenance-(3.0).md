# Introduction

WIP maintenance permits users to modify WIP birth details, manage WIP attributes and provide an audit trail on such WIP changes. As this is a powerful screen that modifies vital details of the WIP, this screen should be restricted to users with administrator permission only. 



### How to get there?



::: mermaid
graph LR
A("PRODUCTION")-->0("WIP")
0-->1("WIP MAINTENANCE")

:::
![image2013-5-14 11:1:57.png](/.attachments/29918522.png)





#### Screen Activity


WIP Maintenance enables user to perform the following activity:


- Administer WIP changes to BOMs, materials and in-queue route steps

- Manually maintain WIP Attributes

- View audit log related to WIP changes.


#### Screen Dependency


The following screen(s) has direct dependency with WIP maintenance.

- [Material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)

- [Bill Of Material - BOM (legacy)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md)

- *[Document Assignment (3.0)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-Assignment-(3.0).md)*

- *[Document Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Printing/Document-(3.0).md)*



#### Modify Birth Record


Each WIP birthed into Phoenix will be identified by its Serial Number, BOM and Material. Shop floor will take these vital characteristics and process the WIP accordingly. 

At times, business decision would require a birthed WIP to be changed to another BOM and Material. Once changed, the WIP will assume a new characteristics and will be processed according to the rules setup for the new BOM and Material. To modify birth record go to Modify Birth Record tab:
- Search and load Serial Number

- Existing value of the WIP will be displayed in Original Value section

- In the New Value section, go to the BOM field. Select the new BOM for the WIP. Material and other corresponding values of the BOM will be populated

- Save


#### Manual Queue WIP to a location


WIP movement within the route will be controlled using Routing Rule. A Phoenix administrator may decide to override the rule and manually move WIP to any route step. 

To manual move WIP go to Modify Birth Record tab:

- Search and load Serial Number

- Existing value of the WIP will be displayed in Original Value section

- In the New Value section, go to the Route field. Select the desired Route and then select the desired Route Step

- Save. The WIP will be placed in queue at the selected Route and Route Step

![image2014-4-24 17:44:39.png](/.attachments/29918519.png)





#### WIP Attribute


An example of a WIP attribute could be a software version. After the WIP passed its functional test, the script within Jabil Test will insert the WIP software version as a WIP Attribute. The software version stored could later be used for label printing, WIP routing criteria or for script validation usage. In the WIP Attribute Tab, user has the ability to manually add, modify or delete WIP attributes for the specific WIP Serial Number. 
![image2013-3-6 14:43:51.png](/.attachments/29918560.png)




#### Add New WIP Attribute



- Go to WIP Attribute tab, click Add New Record


- Enter WIP Attribute Name, Type and Value


- Save


- Use the Edit and Delete button to edit/delete the corresponding WIP Attribute



![image2014-4-24 18:48:30.png](/.attachments/29918518.png)






#### WIP Audit Log 


The Phoenix system contains an internal audit log for examining modifications performed on a WIP. 
![image2014-4-24 18:49:56.png](/.attachments/29918517.png)






#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 id="WIPMaintenance(3.0)-ModifyBirthRecordTab"><strong>Modify Birth Record Tab</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field / Function</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">BOM</td><td colspan="1" class="confluenceTd"><p>Bill of materials (BOM) is a list of raw materials, sub-assemblies, intermediate assemblies, sub-components, parts and quantities of each needed to manufacture an end product.</p></td></tr><tr><td colspan="1" class="confluenceTd">BOM & Customer Rev. & Alt. BOM</td><td colspan="1" class="confluenceTd"><p>Displays current BOM name, alternative BOM and serial number version.</p></td></tr><tr><td colspan="1" class="confluenceTd">Material & Plant</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Display material name and plant code regarding a serial number.</span></td></tr><tr><td colspan="1" class="confluenceTd">Route/Route Step</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Allows user to move a serial number to a desired route and route step. <br />If new BOM/Material is selected, system will only provide a list of Route and Route Step where the WIP can be built (Dependent on Material Assignment in Route Maintenance)</span></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>Present serial numbers attached to WIP intended for maintenance.</p></td></tr><tr><td class="confluenceTd"><p>Customer</p></td><td class="confluenceTd"><p>Exhibit customer names attached to serial numbers.</p></td></tr><tr><td class="confluenceTd"><p>Materials</p></td><td class="confluenceTd"><p>Display material name of the serial number.</p></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="WIPMaintenance(3.0)-WIPAttributeTab">WIP <span style="text-align: left;">Attribute Tab</span></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field / Button</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">WIP Attribute Name</td><td colspan="1" class="confluenceTd">Display attribute name associated with a serial number.</td></tr><tr><td colspan="1" class="confluenceTd">WIP Attribute Type</td><td colspan="1" class="confluenceTd"><p>Determine the data type of the WIP Attribute value</p><ul><li><strong>boolean</strong>; only true or false are accepted values.</li><li><strong>decimal</strong>; integers and decimal numbers are accepted values.</li><li><strong>integer</strong>; only numeric characters are accepted values.</li><li><strong>string</strong>; alphanumeric items are accepted values. </li></ul></td></tr><tr><td colspan="1" class="confluenceTd">WIP Attribute Value</td><td colspan="1" class="confluenceTd"><span>The Attribute Value for the corresponding WIP Attribute Name</span></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 style="text-align: center;" id="WIPMaintenance(3.0)-WIPAuditLogTab">WIP Audit <span style="text-align: left;">Log Tab</span></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1" style="text-align: left;">Description</td></tr><tr><td colspan="1" class="confluenceTd">Event Type</td><td colspan="1" class="confluenceTd">Event Description such as WIP: Reserialization, WIP: Conversion, WIP: Change SFO, WIP: Change In Queue</td></tr><tr><td colspan="1" class="confluenceTd">Original Value</td><td colspan="1" class="confluenceTd">Value prior to change</td></tr><tr><td colspan="1" class="confluenceTd">New Value</td><td colspan="1" class="confluenceTd">Value after change</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">Status of the change</td></tr><tr><td colspan="1" class="confluenceTd">Last Modified</td><td colspan="1" class="confluenceTd"><p>Date and time when the WIP change occurs</p></td></tr><tr><td colspan="1" class="confluenceTd">Last Modified By</td><td colspan="1" class="confluenceTd"><p>User name of the user performing the change</p></td></tr></tbody></table>




#### Attachments

[image2014-4-24 18:49:56.png](/.attachments/29918517.png)
































































































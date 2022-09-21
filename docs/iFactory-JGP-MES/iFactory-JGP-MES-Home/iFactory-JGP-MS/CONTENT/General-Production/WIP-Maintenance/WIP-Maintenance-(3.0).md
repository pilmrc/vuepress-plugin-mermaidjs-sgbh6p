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
[image2014-4-24 18:48:30.png](/.attachments/29918518.png)
[image2014-4-24 17:44:39.png](/.attachments/29918519.png)
[image2014-4-24 17:33:46.png](/.attachments/29918520.png)
[image2013-5-14 11:5:15.png](/.attachments/29918521.png)
[image2013-5-14 11:1:57.png](/.attachments/29918522.png)
[image2013-3-14 8:6:25.png](/.attachments/29918523.png)
[image2013-3-14 8:5:19.png](/.attachments/29918524.png)
[image2013-3-14 8:3:34.png](/.attachments/29918525.png)
[image2013-3-8 14:23:20.png](/.attachments/29918526.png)
[image2013-3-8 14:15:16.png](/.attachments/29918527.png)
[image2013-3-8 13:16:25.png](/.attachments/29918528.png)
[image2013-3-8 11:30:54.png](/.attachments/29918529.png)
[image2013-3-8 10:51:9.png](/.attachments/29918530.png)
[image2013-3-8 9:12:31.png](/.attachments/29918531.png)
[image2013-3-8 9:7:46.png](/.attachments/29918532.png)
[image2013-3-8 8:55:35.png](/.attachments/29918533.png)
[image2013-3-8 8:53:50.png](/.attachments/29918534.png)
[image2013-3-8 8:37:44.png](/.attachments/29918535.png)
[image2013-3-7 15:21:22.png](/.attachments/29918536.png)
[image2013-3-7 15:16:9.png](/.attachments/29918537.png)
[image2013-3-7 15:12:22.png](/.attachments/29918538.png)
[image2013-3-7 12:50:6.png](/.attachments/29918539.png)
[image2013-3-7 12:48:2.png](/.attachments/29918540.png)
[image2013-3-7 12:47:19.png](/.attachments/29918541.png)
[image2013-3-7 12:39:26.png](/.attachments/29918542.png)
[image2013-3-7 11:36:4.png](/.attachments/29918543.png)
[image2013-3-7 11:23:50.png](/.attachments/29918544.png)
[image2013-3-7 11:20:38.png](/.attachments/29918545.png)
[image2013-3-7 11:18:16.png](/.attachments/29918546.png)
[image2013-3-7 10:59:16.png](/.attachments/29918547.png)
[image2013-3-7 10:28:24.png](/.attachments/29918548.png)
[image2013-3-7 10:8:10.png](/.attachments/29918549.png)
[image2013-3-7 9:11:53.png](/.attachments/29918550.png)
[image2013-3-7 8:41:8.png](/.attachments/29918551.png)
[image2013-3-7 8:37:23.png](/.attachments/29918552.png)
[image2013-3-7 8:34:25.png](/.attachments/29918553.png)
[image2013-3-7 8:33:44.png](/.attachments/29918554.png)
[image2013-3-7 8:29:17.png](/.attachments/29918555.png)
[image2013-3-7 8:28:52.png](/.attachments/29918556.png)
[image2013-3-7 8:26:1.png](/.attachments/29918557.png)
[image2013-3-6 15:26:15.png](/.attachments/29918558.png)
[image2013-3-6 15:17:39.png](/.attachments/29918559.png)
[image2013-3-6 14:43:51.png](/.attachments/29918560.png)
[3-6-2013 1-46-23 PM.png](/.attachments/29918561.png)
[image2013-3-6 13:39:8.png](/.attachments/29918562.png)
[image2013-3-6 13:36:23.png](/.attachments/29918563.png)
[image2013-3-6 13:28:32.png](/.attachments/29918564.png)
[image2013-3-6 13:23:41.png](/.attachments/29918565.png)
[image2013-3-6 10:22:30.png](/.attachments/29918566.png)
[image2013-3-6 10:21:33.png](/.attachments/29918567.png)
[image2013-3-6 10:20:27.png](/.attachments/29918568.png)
[image2013-3-6 9:22:55.png](/.attachments/29918569.png)
[image2013-3-5 13:4:21.png](/.attachments/29918570.png)
[image2013-3-5 13:2:0.png](/.attachments/29918571.png)
[image2013-3-5 12:56:35.png](/.attachments/29918572.png)
[image2013-3-5 11:52:16.png](/.attachments/29918573.png)
[image2013-3-5 11:15:4.png](/.attachments/29918574.png)
[image2013-3-5 11:13:51.png](/.attachments/29918575.png)
[image2013-3-5 10:54:24.png](/.attachments/29918576.png)
[image2013-3-5 10:49:2.png](/.attachments/29918577.png)
[image2013-3-5 9:18:26.png](/.attachments/29918578.png)
[image2013-3-5 9:17:41.png](/.attachments/29918579.png)
[image2013-3-5 9:9:1.png](/.attachments/29918580.png)
[image2013-3-5 9:1:23.png](/.attachments/29918581.png)
[image2013-3-3 17:5:39.png](/.attachments/29918582.png)
[image2013-3-3 17:3:26.png](/.attachments/29918583.png)
[image2013-3-3 16:19:9.png](/.attachments/29918584.png)
[image2013-3-3 16:15:20.png](/.attachments/29918585.png)
[image2013-3-3 16:8:51.png](/.attachments/29918586.png)
[image2013-3-3 16:3:7.png](/.attachments/29918587.png)
[image2013-3-3 15:34:42.png](/.attachments/29918588.png)
[image2013-3-3 15:29:38.png](/.attachments/29918589.png)
[image2013-3-3 14:36:44.png](/.attachments/29918590.png)
[image2013-3-3 14:24:28.png](/.attachments/29918591.png)
[image2013-3-3 14:23:29.png](/.attachments/29918592.png)
[image2013-3-3 13:14:38.png](/.attachments/29918593.png)
[image2013-3-3 13:13:14.png](/.attachments/29918594.png)
[image2013-3-3 12:39:15.png](/.attachments/29918595.png)
[image2013-3-3 12:21:20.png](/.attachments/29918596.png)
[image2013-3-3 12:18:21.png](/.attachments/29918597.png)
[image2013-3-3 12:11:4.png](/.attachments/29918598.png)
[image2013-3-3 12:6:33.png](/.attachments/29918599.png)
[image2013-3-3 11:56:9.png](/.attachments/29918600.png)
[image2013-3-3 11:51:40.png](/.attachments/29918601.png)
[image2013-3-3 11:50:45.png](/.attachments/29918602.png)
[image2013-3-3 11:16:50.png](/.attachments/29918603.png)
[image2013-3-3 11:9:36.png](/.attachments/29918604.png)
[image2013-3-3 10:53:38.png](/.attachments/29918605.png)
[image2013-3-3 10:48:2.png](/.attachments/29918606.png)
[image2013-3-3 10:37:27.png](/.attachments/29918607.png)
[image2013-3-3 10:29:33.png](/.attachments/29918608.png)
[image2013-3-3 10:27:35.png](/.attachments/29918609.png)
[image2013-3-3 10:8:39.png](/.attachments/29918610.png)
[image2013-3-3 10:7:39.png](/.attachments/29918611.png)
[image2013-3-3 10:6:40.png](/.attachments/29918612.png)

# Introduction

The Rework
permits end users to find the root cause of the non conformance of an ***ITEM***  and perform the necessary repair/replace action to close the defect.

### How to get there?




::: mermaid
graph LR
A("MANUAL STATION LOGIN")-->0("REWORK")

:::


#### Screen Activity


Rework station enables user to perform the following activity:

- Select the Resource, Route, Route Step that the User is performing their activities

- Abort the activity

- Complete the activity

- Perform rework on open defect.



#### Pre Condition


The following data needs to be pre-configured before user is able to start a Rework

- [Resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource.md)
defined
- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)
,  all supporting Route steps and Resources configured for the Route Steps 
- [Create Carrier](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Rework-(Lot%2D-Batch-Build).md)
, Create a [Planned Order](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Rework-(Lot%2D-Batch-Build).md)and assign to Route,  [Lot Release](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Rework-(Lot%2D-Batch-Build).md)must have occurred for the Planned Order, Lot is assigned to a Carrier, and the Carrier present to start a the Route Step if the operation is to Start
- [Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Rework-(Lot%2D-Batch-Build).md)
User must identify the Resource they are using before performing the Operation activities  


#### Screen Dependency


Manual Inspection Entry 

- None specifically, once the Lot is Started the system will record the occurrence of the activity and can be seen via the
[Lot View](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Rework-(Lot%2D-Batch-Build).md)History Tab. 
- Will be a validation of the Routing Rules if the lot is not allowed to start will show an message the system.



#### Process


When the user has selected the station through the 
[Manual Station Login](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Rework-(Lot%2D-Batch-Build).md)the application will open the configured operation activity screen, in this example Rework. The Rework screen allows the user to perform rework on open defectfor the items, Abort, or Complete the operation activities at the Route Step. The user is prompted to scan a Carrier to start the operation activities. The user has also pressed the Station Details Control to optionally view what has been selected as Route and Route Step context.![image2019-6-3_16-45-51.png](/.attachments/50954259.png)


Once a valid Carrier Serial Number has been scanned, the Lot Number is looked up, and the Lot is Started automatically, the screen is presented to the user the open defects and the possibility to close them. 
![image2019-6-3_16-50-0.png](/.attachments/50954262.png)




The user needs to select a Defect and click on Close Defect to fill in the details. 
![image2019-1-29_15-0-24.png](/.attachments/42991660.png)



User can click on 'Complete' without closing all the defects for a partial rework.  For partial rework, user needs to enter the 'Split Quantity' (
the 
remaining defect quantity that are yet to rework) and the defect carrier number. 
Validation for the ‘Split Quantity’ entered:

- Split quantity cannot be more than total open defect quantity; (Split quantity "= total open defect quantity)

- If total open defect quantity equals the total original defect quantity (meaning no defect closed), Split quantity should equal the total failed quantity.

- Total failed quantity minus Split quantity cannot be more than the total closed defect quantity; (total fail quantity - split quantity) "= (total defect quantity - total open defect quantity)

- Total failed quantity minus Split quantity cannot be less than the remaining closed defect item quantity; (total fail quantity - split quantity) "= (max value from closed defect item quantity)

- Split quantity cannot be less than the max value from Open Defects item quantity

When user scans a defect carrier that is existing and already assigned, 
it must fulfill the following conditions:
- Carrier has Inspection History

- Carrier cannot be on hold (Individual, planned order or FAI)

- Carrier cannot be scrapped

- Carrier is not packed in a container

- Carrier available quantity must be more than or equal to the failed quantity being transferred

- Carrier must belong to the same material


- Carrier belongs to the same planned order if 'Restrict To Same Planned Orders' (
[Container Type - Packout Configurations](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)) is turned ON
- Carrier with different attribute values is not allowed to merge when "Allow multiple value" is configured as "NO" in
[Attribute Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Attribute-Assignment.md)Screen.
- If the current carrier has assembly, the defect carrier must have the same assembly

- Carrier should have the same assembled material at the same CRD as the lot in the defect carrier (example: if lot A has CRD1 assembled with Material1, lot B must also have CRD1 assembled with Material1)

- Carrier
must have the same open defect(s)
![image2019-1-29_8-38-49.png](/.attachments/42991645.png)




If the User decide to Abort the operation any Defect closed will be recorded in the DataBase. 
The user has the posibility to see the details of the rework clicking over the Defects closed or opened. 
![image2019-1-29_8-38-49.png](http://USPLND0WIKI01:8090/download/attachments/29918025/image2016-12-14%2014%3A6%3A16.png?version=1&modificationDate=1530103791323&api=v2)



*Remove/Replace Rework Category* 
When user adds a rework category of 'Replace' or 'Remove Only' at Lot Rework Station, it will apply to the whole lot so that all items in the lot will have the same assembled material and assembled status. The ‘Rework Quantity’ field will be disabled and the value is equal to the lot quantity. If user closes a defect with rework category of 'Remove Only' or 'Replace', they will not be able to split the lot anymore as the remove/replace is done for the whole lot quantity. When user clicks on 'Complete' button without closing all defects, an error message will prompt out. 
‘Replace’ or ‘Remove Only’ is only applicable to sub level materials.
When user Add Rework with Rework Category of ‘Remove’ to close a defect with CRD, the identifier row is removed from Lot View – Genealogy.
![image2019-1-29_14-49-36.png](/.attachments/42991659.png)



When user Add Rework with Rework Category of ‘Replace’ to close a defect with CRD, user will need to enter the replacement GRN. 
Lot View - Genealogy will show the replacement GRN and the Setup Sheet column will be blank.
Validation for the replacement GRN:

- GRN exists.


- GRN belongs to the material.


- GRN is not prohibited.


- GRN quantity is enough.


- GRN is not blocked.

![image2019-1-29_16-3-52.png](/.attachments/42991662.png)






Fields
<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Scan a carrier serial number</p></td><td class="confluenceTd"><p>This field may be empty for a full wild card search, partially completed for a partial match, exactly entered for a full match. The field should normally be scanned from the Carrier label in production</p></td></tr><tr><td class="confluenceTd"><p>Lot Number</p></td><td class="confluenceTd"><p>The Number of the Lot currently assigned to the Carrier that has just started. (Read only)</p></td></tr><tr><td class="confluenceTd"><p>Lot Quantity</p></td><td class="confluenceTd"><p>The Number of items for the Lot currently assigned to the Carrier that has just started. (Read only)</p></td></tr><tr><td class="confluenceTd"><p>Order Number</p></td><td class="confluenceTd"><p>The Planned Order this lot is fulfilling. (Read only)</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>The Material that is being processed on this Lot. (Read only)</p></td></tr><tr><td colspan="1" class="confluenceTd">Open Defects</td><td colspan="1" class="confluenceTd">Shows the list of Defects open for the operation</td></tr><tr><td colspan="1" class="confluenceTd"><p>Close Defects Button</p></td><td colspan="1" class="confluenceTd">The button allow to the user to close a Defect, first needs to be selected the defect to close</td></tr><tr><td colspan="1" class="confluenceTd">Close Defect list</td><td colspan="1" class="confluenceTd"><p><span>Shows the list of Defects open for the operation</span></p></td></tr></tbody></table>


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="Rework(Lot/BatchBuild)-AddRework"><strong>Add Rework </strong></h5></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Rework Material</p></td><td class="confluenceTd"><p><span>The defective material</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Rework Quantity</td><td colspan="1" class="confluenceTd">The number of units being reworked for the selected defect</td></tr><tr><td colspan="1" class="confluenceTd">Rework Category</td><td colspan="1" class="confluenceTd"><p><span>The standard rework categories configured are:</span></p><ul><li>False Call</li><li>Remove Only</li><li>Replace</li><li>Rework</li></ul><p>If rework for Top Level Material, rework categories are:</p><ul><li>False Call</li><li>Rework</li></ul></td></tr><tr><td colspan="1" class="confluenceTd">Rework Detail</td><td colspan="1" class="confluenceTd"><span>User to provide additional details of the rework action</span></td></tr><tr><td colspan="1" class="confluenceTd">CRD</td><td colspan="1" class="confluenceTd">The CRD of the defect, shown when Rework Category is 'Replace' <span style="color: rgb(51,51,51);">to close a defect with CRD</span></td></tr><tr><td colspan="1" class="confluenceTd">GRN</td><td colspan="1" class="confluenceTd">The replacement GRN for the <span>rework category of </span>'Replace' for defect with CRD</td></tr><tr><td colspan="1" class="confluenceTd">Rework Comment</td><td colspan="1" class="confluenceTd"><span>User to provide additional comment of the rework action (Max 200 characters)</span></td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">Cancel the rework action</td></tr><tr><td colspan="1" class="confluenceTd">Submit</td><td colspan="1" class="confluenceTd"><span>Saves the rework activity</span></td></tr></tbody></table>


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="Rework(Lot/BatchBuild)-DefectDetails"><strong>Defect Details</strong></h5></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p><span>The defective material</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Location</td><td colspan="1" class="confluenceTd"><p>Step where was performed the Inspection</p></td></tr><tr><td colspan="1" class="confluenceTd">Defect</td><td colspan="1" class="confluenceTd"><span>The defect recorded for the material</span></td></tr><tr><td colspan="1" class="confluenceTd">Defect Date</td><td colspan="1" class="confluenceTd"><span>The date/time when the defect is recorded</span></td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd"><span>Displays the defect comment as entered by the operator </span><span>when adding the defect (Inspection)</span></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd"><p>Currently placeholder - <span style="color: rgb(34,34,34);">Analysis status to determine the operator's analysis accuracy</span></p><p><span style="color: rgb(34,34,34);"> </span></p><p><span style="color: rgb(34,34,34);">Types of statuses:<br />Unconfirmed, Confirmed, Incorrect</span></p><p><span style="color: rgb(34,34,34);"> </span></p><p><span style="color: rgb(34,34,34);">Unconfirmed is when the there is pending retest/re-inspection for the failure. <br />Confirmed and Incorrect status are given based on the following truth table<br /><br /><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="download/attachments/8880197/00904629175447937295" data-image-src="http://usplnd0wiki01:8090/download/attachments/8880197/image2015-5-29+14%3A51%3A6.png?version=1&modificationDate=1432882266537" /></span></span></p><p><span style="color: rgb(34,34,34);"><br /></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Route</td><td colspan="1" class="confluenceTd"><span>The route where the defect was recorded</span></td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd"><span>The route step where the defect was recorded</span></td></tr><tr><td colspan="1" class="confluenceTd">User</td><td colspan="1" class="confluenceTd"><span>The user that recorded the defect</span></td></tr></tbody></table>








#### Attachments

[image2016-12-14 14:6:16.png](/.attachments/29918026.png)
[image2016-12-14 14:5:51.png](/.attachments/29918027.png)
[image2016-12-14 14:4:37.png](/.attachments/29918028.png)
[image2016-12-14 14:3:38.png](/.attachments/29918029.png)
[image2016-12-14 14:1:33.png](/.attachments/29918030.png)
[image2016-12-14 14:0:22.png](/.attachments/29918031.png)
[image2016-12-14 13:41:49.png](/.attachments/29918032.png)
[image2016-12-14 13:40:35.png](/.attachments/29918033.png)
[image2016-12-8 16:21:0.png](/.attachments/29918034.png)
[image2016-12-8 16:29:54.png](/.attachments/29918035.png)
[image2019-1-29_8-38-49.png](/.attachments/42991645.png)
[image2019-1-29_8-53-6.png](/.attachments/42991646.png)
[image2019-1-29_14-49-36.png](/.attachments/42991659.png)
[image2019-1-29_15-0-24.png](/.attachments/42991660.png)
[image2019-1-29_15-34-15.png](/.attachments/42991661.png)
[image2019-1-29_16-3-52.png](/.attachments/42991662.png)
[image2019-6-3_16-45-51.png](/.attachments/50954259.png)
[image2019-6-3_16-49-24.png](/.attachments/50954261.png)
[image2019-6-3_16-50-0.png](/.attachments/50954262.png)

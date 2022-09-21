# Introduction


The manual Lot Release screen is intended to permit the user to sub-divide a Planned Order into small manageable Lots that can be traced and transported with a Carrier in the factory. The basic tenet is, to collect and store information about the materials being processed requires some unique identifier by which all activities may be recorded against. The Lot number is a unique identifier the represents X number of materials that are part of a Planned Order. Unlike the serialized materials for the BTO/CTO and Repetitive process the Lot / Batch Build process has no unique identifier for each individual item. The Lot Serial / Number is used to identify all X items of the Lot. It is generally assumed for data integrity that items in the lot are processed together.  Upon successful release, the system provides a message indicating the Lot has been released and display the Lot Serial Number. The Lot Serial Number is a GUID, Globally Unique Identifier, that looks something like 'c6649eb2-5862-4586-a916-99c4eb2371fe'. Users will generally identify Lots by the Carrier that they are transported on as that number may be more user friendly.  


### How to get there?



::: mermaid
graph LR
A("LOT")-->0("LOT RELEASE")

:::


#### Screen Activity


Lot Release enables user to perform the following activity:

- The primary activity is to release a Lot, comprised of X number of items, for a Planned Order and associate them to a Carrier

- The screen limits the released quantity to the lesser of the Remaining Quantity of the Planned order or the Carrier Capacity

- The user may also release a lesser quantity if they so desire



#### Pre Condition


The following data needs to be pre-configured (if used) before user is permitted to perform a Lot Release

- [Planned Order](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Planned-Order-(Lot-%2D-Batch-Build).md)
must be created and assigned to a [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route.md)
- [Create Carrier](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)
must have previously occurred and must be "Unassigned", meaning the Carrier is not currently assigned a Lot


#### Screen Dependency


[Screen Name/Module Name]

- [Manual Station](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot-Station-(Lot-%2D-Batch-Build)/Manual-Station-Login-(Lot-%2D-Batch-Build).md)
, A Lot may not be started at a Manual Station until they have been Released 
- [Lot View](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot/Lot-View-(Lot-%2D-Batch-Build).md)
, Lots may not be viewed until they have been released![Manual Lot Release.png](/.attachments/29917830.png)




#### Fields


<table class="confluenceTable"><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p><em>Search by order number</em></p></td><td class="confluenceTd"><p>Listed as 'Search by order number' in the Search field is intended for the user to enter all or part of the Planned Order Number. If a complete Planned Order is entered an a match is found the details of the order will be populated on the form. If a partial match or not match is found a Search Result dialog will be presented to help select the specific order the user desires. A wild card search (no entry) may also be used. Only Planned Order with the status of Ready and In Progress will be available.</p></td></tr><tr><td class="confluenceTd"><p>Order Number</p></td><td class="confluenceTd"><p>The selected Planned Order Number to release a Lot from (Read Only)</p></td></tr><tr><td class="confluenceTd"><p>Material</p></td><td class="confluenceTd"><p>The Material to produce for the Planned Order (Read Only)</p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(45,46,47);">Scheduled start date</span></p></td><td class="confluenceTd"><p>The Scheduled Start Date the Planned Order is to begin in production <span>(Read Only)</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(45,46,47);">Assigned route</span></p></td><td class="confluenceTd"><p>The Route the Planned Order is assigned to be processed <span>(Read Only)</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(45,46,47);">Quantity</span></p></td><td class="confluenceTd"><p>The Total Quantity or the Planned Order <span>(Read Only)</span></p></td></tr><tr><td class="confluenceTd"><p><span style="color: rgb(45,46,47);">Quantity released</span></p></td><td class="confluenceTd"><p>The Number of items released to fulfill the Planned Order <span>(Read Only)</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Quantity remaining</span></td><td colspan="1" class="confluenceTd">The Number of items remaining to be released to fulfill the Planned Order. Currently the Remaining Quantity = Planned Order Quantity - Released Quantity. Once a material can be Scrapped it should be defined as <span>Remaining Quantity = Planned Order Quantity - Released Quantity + Scrapped Quantity so that the entire Planned Order is fulfilled even if there is fall out from scrap.</span> <span>(Read Only)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Carrier<span style="color: rgb(253,4,4);">*</span></span></td><td colspan="1" class="confluenceTd">The Carrier Serial Number that the Lot is to be transported by. The Carrier must have been created and currently has a status of 'Unassigned" <span>(Required) </span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Carrier capacity</span></td><td colspan="1" class="confluenceTd">This Carrier Capacity displays the maximum items that may be transported (Read Only)</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(45,46,47);">Release quantity<span style="color: rgb(253,4,4);">*</span></span></td><td colspan="1" class="confluenceTd">This field is auto populated to be the <span>lesser of the Remaining Quantity of the Planned order or the Carrier Capacity. The user is permitted change the value between 1 and the <span>lesser of the Remaining Quantity of the Planned order or the Carrier Capacity. (Required)</span> </span></td></tr></tbody></table>



#### Attachments

[Manual Lot Release.png](/.attachments/29917830.png)

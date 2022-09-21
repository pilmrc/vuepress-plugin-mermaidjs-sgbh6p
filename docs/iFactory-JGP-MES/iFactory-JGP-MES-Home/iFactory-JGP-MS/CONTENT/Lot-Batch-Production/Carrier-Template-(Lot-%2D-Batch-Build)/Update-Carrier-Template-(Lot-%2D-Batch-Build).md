# Introduction

![iFactory Manufacturing Suite 2.png](/.attachments/29917813.png)



The primary purpose of this screen is to allow the user to edit existing data for a Carrier Template, or to delete an existing Carrier Template. Upon entry, the user will be prompted to search for an existing Carrier Template that can be edited / updated or deleted. Note: Existing Carriers will not be effected by updates or deletions of the Carrier Templates as the Templates are used only during Carrier Creation process.


### How to get there?



::: mermaid
graph LR
A("CARRIER TEMPLATE")-->0("UPDATE CARRIER TEMPLATE")

:::


#### Screen Activity


Update Carrier Template enables user to perform the following activity:

- Edit an existing Carrier Template

- Delete an existing Carrier Template



#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Update Carrier Template

- [Create Carrier Template (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-Template-(Lot-%2D-Batch-Build)/Create-Carrier-Template-(Lot-%2D-Batch-Build).md)
must have been used to create a Carrier Template previously for a template to exist




#### Screen Dependency


The following screen has direct dependency with Update Carrier Template

- [Create Carrier (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)
will be affected by the update or deletion of a Carrier Template. Subsequent Carriers created will be created using the updated values. Deleted Templates will no longer be available to create a Carrier. Note: Existing Carriers will not be effected by updates or deletions of the Carrier Templates as the Templates are used only during Carrier Creation process.


#### Process


The process for Editing or Deleting a Carrier Templates start off with a search by the Customer / Division to identify the Carrier Template to be processed. The search field for Carrier Template may be left blank, partially filled, or filled in completely as shown in the example below followed by pressing the search icon 
![Search Icon.png](/.attachments/29917810.png)


.


![image2017-8-11 11:10:52.png](/.attachments/29917805.png)



Once the selection is made, the Carrier Template may be edited or deleted by selecting the applicable icons.  If the Delete is selected the system will confirm the user wishes to delete the template before actually deleting the template. If the Edit is selected then the user is presented the Update Carrier Template.
![image2017-9-26 15:0:4.png](/.attachments/29917803.png)




#### Fields


<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p> </p></td><td class="confluenceTd"><p><strong>Search Carrier Template</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Search</p></td><td class="confluenceTd"><p>The Carrier Template Name to be searched. The full Carrier Template Name, a partial name, or no name may be entered to search on.</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Name</p></td><td colspan="1" class="confluenceTd"><p>Name of the Carrier Template. (View Only)</p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Description</p></td><td colspan="1" class="confluenceTd"><p>Description of the Carrier Template.<span> (View Only)</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Rows</p></td><td colspan="1" class="confluenceTd"><p>Number of Carrier Rows <span> (View Only)</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Columns</td><td colspan="1" class="confluenceTd">Number of Carrier Columns <span> (View Only)</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Status</span></td><td colspan="1" class="confluenceTd"><span>Status of the Carrier Template; 'New' and not yet ready for use as a Template, 'Active' is available to be used as a Template to create Carriers <span> (View Only)</span></span></td></tr><tr><td colspan="1" class="confluenceTd">Maximum Cycles</td><td colspan="1" class="confluenceTd"><span>This field if set to 0 will permit the Carrier to be uses an unlimited amount of times. If this field is set to a positive integer, the Carrier may be assigned to a Lot and cycled this number of times. (View Only)</span></td></tr><tr><td colspan="1" class="confluenceTd">Edit</td><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917812.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917812.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29917812" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Edit icon.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29917802" data-linked-resource-container-version="1" /></span> Press this icon to edit the Carrier Template</td></tr><tr><td colspan="1" class="confluenceTd">Delete</td><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917811.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917811.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29917811" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Delete Icon.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29917802" data-linked-resource-container-version="1" /></span> Press this icon to Delete the Carrier Template</td></tr><tr><td class="confluenceTd"><p> </p></td><td class="confluenceTd"><p><strong>Update Carrier Template</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td colspan="1" class="confluenceTd">Customer/Division</td><td colspan="1" class="confluenceTd">Name of the Customer/Division (non-editable)</td></tr><tr><td class="confluenceTd"><p>Name</p></td><td class="confluenceTd"><p>Name of the template. It is suggested that a name that will be helpful in identifying the characteristics of Carrier to be created. (non-editable)</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Description of the template. It is suggested that a helpful description is used describing Carrier characteristics. (Required)</p></td></tr><tr><td colspan="1" class="confluenceTd">Batch Manage Carrier</td><td colspan="1" class="confluenceTd"><span>This flag is to manage carriers by batch number (PO number followed by a 4 digit unique value e.g. a PO called "TestPO1" would generate a batch Id of "TestPO1-0001", then "</span><span>TestPO1-0002" and so on). Selecting this flag will tie the batch number to the Lot and will persist, even when the lot is split/merged multiple times. Note - System will not allow 2 lot with different Batch Id's to be merged, unless they are both scrapped - If that actio is completed, the batch Id's will not be displayed, but will be retained in the Db.</span></td></tr><tr><td class="confluenceTd"><p>Rows</p></td><td class="confluenceTd"><p>Carrier are defined as two dimensional, Rows >= 1 (Required)</p></td></tr><tr><td colspan="1" class="confluenceTd">Columns</td><td colspan="1" class="confluenceTd">Carrier are defined as two dimensional, Columns >= 1 (Required)</td></tr><tr><td colspan="1" class="confluenceTd"><span>Maximum Cycles</span></td><td colspan="1" class="confluenceTd"><span>This field if set to 0 will permit the Carrier to be uses an unlimited amount of times. If this field is set to a positive integer, the Carrier may be assigned to a Lot and cycled this number of times. For example, if set to '2', then the Carrier may have a Lot Assigned, the Lot Unassigned and removed, and another Lot Assigned followed by Retired and removed a for a total of two Cycles. When a user attempts to assign a Lot to a Carrier a third time the Carrier will be unavailable to use as it was Retired on the completion of the second full usage cycle. (Required)</span></td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">Used to define if the Template is 'New' and not yet ready for use as a Template, or 'Active' and is available to be used as a Template to create Carriers <span> (Required)</span></td></tr><tr><td colspan="1" class="confluenceTd">Configuration</td><td colspan="1" class="confluenceTd">Configuration to generate Carrier, by Next Number or Validation Mask</td></tr><tr><td colspan="1" class="confluenceTd">Submit</td><td colspan="1" class="confluenceTd">This button will update the changes made in update Carrier Template</td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">This button will return to the Search Carrier Template screen</td></tr></tbody></table>



#### Attachments

[image2017-9-26 15:0:4.png](/.attachments/29917803.png)
[image2017-8-11 11:11:44.png](/.attachments/29917804.png)
[image2017-8-11 11:10:52.png](/.attachments/29917805.png)
[Create Carrier Template.png](/.attachments/29917806.png)
[Search Carrier Template.png](/.attachments/29917807.png)
[Update Carrier Template.png](/.attachments/29917808.png)
[Update Carrier Template .png](/.attachments/29917809.png)
[Search Icon.png](/.attachments/29917810.png)
[Delete Icon.png](/.attachments/29917811.png)
[Edit icon.png](/.attachments/29917812.png)
[iFactory Manufacturing Suite 2.png](/.attachments/29917813.png)

# Introduction

The primary purpose of this screen is to allow the user to edit existing data for a Carrier Template, or to delete an existing Carrier Template. Upon entry, the user will be prompted to search for an existing Carrier Template that can be edited / updated or deleted. Note: Existing Carriers will not be effected by updates or deletions of the Carrier Templates as the Templates are used only during Carrier Creation process.


### How to get there?



::: mermaid
graph LR
A("MANAGE CARRIER TEMPLATE")
:::


#### Permission


To access the screen and able to view and modify carrier template:

- Carrier Template - Have menu, can access and search carrier template.

- Modify Carrier Template - can edit or delete the Carrier Template.



#### Screen Activity


Manage Carrier Template enables user to perform the following activity:

- Edit an existing Carrier Template

- Delete an existing Carrier Template


#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Manage Carrier Template

- Create Carrier Template (BM2.0) must have been used to create a Carrier Template previously for a template to exist


#### Screen Dependency


The following screen has direct dependency with Manage Carrier Template

- Create Carrier (BM2.0) will be affected by the update or deletion of a Carrier Template. Subsequent Carriers created will be created using the updated values. Deleted Templates will no longer be available to create a Carrier. Note: Existing Carriers will not be effected by updates or deletions of the Carrier Templates as the Templates are used only during Carrier Creation process.



#### Process


The process for Editing or Deleting a Carrier Templates, the Customer/Division will be auto generated based on the data partition. The search field for Carrier Template may be left blank, partially filled, or filled in completely as shown in the example below followed by pressing the search icon.
![image2020-10-8_13-27-56.png](/.attachments/79790721.png)


Once the selection is made, the Carrier Template may be edited or deleted by selecting the Action.  If the Delete is selected the system will confirm the user wishes to delete the template before actually deleting the template. If the Edit is selected then the user is presented the Update Carrier Template.
![image2020-10-8_14-1-2.png](/.attachments/79790722.png)


![image2020-10-8_14-2-34.png](/.attachments/79790724.png)




#### Fields



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: left;" class="confluenceTd"><p><br /></p></td><td style="text-align: left;" class="confluenceTd"><p><strong>Manage Carrier Template</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Search</p></td><td style="text-align: left;" class="confluenceTd"><p>The Carrier Template Name to be searched. The full Carrier Template Name, a partial name, or no name may be entered to search on.</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Name</p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Name of the Carrier Template. (View Only)</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Description</p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Description of the Carrier Template.<span> (View Only)</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Rows</p></td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Number of Carrier Rows<span> </span><span>(View Only)</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Columns</td><td style="text-align: left;" colspan="1" class="confluenceTd">Number of Carrier Columns<span> </span><span>(View Only)</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Status</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Status of the Carrier Template; 'New' and not yet ready for use as a Template, 'Active' is available to be used as a Template to create Carriers (View Only)</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Maximum Cycles</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>This field if set to 0 will permit the Carrier to be uses an unlimited amount of times. If this field is set to a positive integer, the Carrier may be assigned to a Lot and cycled this number of times. (View Only)</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Actions</td><td style="text-align: left;" colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/79790725.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/79790725.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="79790725" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Edit icon.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="79790684" data-linked-resource-container-version="8" /></span></span><span> </span>Press this icon to edit the Carrier Template</p><p><span class="confluence-embedded-file-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/79790726.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/79790726.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="79790726" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Delete Icon.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="79790684" data-linked-resource-container-version="8" /></span></span><span> </span>Press this icon to Delete the Carrier Template</p></div></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><br /></p></td><td style="text-align: left;" class="confluenceTd"><p><strong>Edit Carrier Template</strong></p></td></tr><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Customer/Division</td><td style="text-align: left;" colspan="1" class="confluenceTd">Name of the Customer/Division (non-editable)</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Name</p></td><td style="text-align: left;" class="confluenceTd"><p>Name of the template. It is suggested that a name that will be helpful in identifying the characteristics of Carrier to be created. (non-editable)</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Description</p></td><td style="text-align: left;" class="confluenceTd"><p>Description of the template. It is suggested that a helpful description is used describing Carrier characteristics. (Required)</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Rows</p></td><td style="text-align: left;" class="confluenceTd"><p>Carrier are defined as two dimensional, Rows >= 1 (Required)</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Columns</td><td style="text-align: left;" colspan="1" class="confluenceTd">Carrier are defined as two dimensional, Columns >= 1 (Required)</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Maximum Cycles</span></td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>This field if set to 0 will permit the Carrier to be uses an unlimited amount of times. If this field is set to a positive integer, the Carrier may be assigned to a Lot and cycled this number of times. For example, if set to '2', then the Carrier may have a Lot Assigned, the Lot Unassigned and removed, and another Lot Assigned followed by Retired and removed a for a total of two Cycles. When a user attempts to assign a Lot to a Carrier a third time the Carrier will be unavailable to use as it was Retired on the completion of the second full usage cycle. (Required)</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Status</td><td style="text-align: left;" colspan="1" class="confluenceTd">Used to define if the Template is 'New' and not yet ready for use as a Template, or 'Active' and is available to be used as a Template to create Carriers<span> </span><span>(Required)</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Configuration</td><td style="text-align: left;" colspan="1" class="confluenceTd">Configuration to generate Carrier, by Next Number or Validation Mask</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Submit</td><td style="text-align: left;" colspan="1" class="confluenceTd">This button will update the changes made in update Carrier Template</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Cancel</td><td style="text-align: left;" colspan="1" class="confluenceTd">This button will return to the Manage Carrier Template screen</td></tr></tbody></table>




#### Attachments

[image2020-10-8_13-27-56.png](/.attachments/79790721.png)
[image2020-10-8_14-1-2.png](/.attachments/79790722.png)
[image2020-10-8_14-1-47.png](/.attachments/79790723.png)
[image2020-10-8_14-2-34.png](/.attachments/79790724.png)
[Edit icon.png](/.attachments/79790725.png)
[Delete Icon.png](/.attachments/79790726.png)

# Introduction

The Delete Carrier is intended to delete / remove a Carrier that does not have a assigned Lot. The system should only allow Unassigned Carriers to be deleted, this function is provided in the event that a mistake is made a the Carrier is to be removed from production use. 


### How to get there?



::: mermaid
graph LR
A("DELETE CARRIER")
:::


#### Permission


1. Delete Carrier - Allows the user to delete unassigned carriers for transporting materials


#### Screen Activity


Delete Carrier enables user to perform the following activity:

- Select a Carrier for deletion.
User can delete a Carrier if it has never been used (i.e no history of it having been used, status of ‘Unassigned’ or usage count =0)

#### Pre Condition


The following data needs to true before user is able to delete the Carrier

- Carrier must have been created

- User can delete a Carrier if it has never been used (i.e no history of it having been used, status of ‘Unassigned’ and usage count =0)


#### Screen Dependency


Carrier must exist to delete

- [Create Carrier](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Batch-Manufacturing-2.0)/Delete-Carrier-(Batch-Manufacturing-2.0).md)
must have been created

#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Search</p></td><td style="text-align: left;" class="confluenceTd"><p>A Carrier Serial Number the user wishes to delete, a complete Carrier Serial Number is recommended to be scanned. A wild card, or partial entry may be entered.</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p><span>Carrier Serial Number</span></p></td><td style="text-align: left;" class="confluenceTd"><p>Serial Number of the Carrier<span> </span><span>(informational only)</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Rows</p></td><td style="text-align: left;" class="confluenceTd"><p>The number of Row of the Carrier (informational only)</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Columns</p></td><td style="text-align: left;" class="confluenceTd"><p><span>The number of Columns of the Carrier (informational only)</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Maximum Cycles</p></td><td style="text-align: left;" class="confluenceTd"><p><span>The number of Maximum Cycles of the Carrier, 0 is unlimited (informational only)</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Status</p></td><td style="text-align: left;" class="confluenceTd"><p><span>The Status of the Carrier, currently Unassigned, Assigned are used. In the future Packed, and Retired will be used also. (informational only)</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Customer</p></td><td style="text-align: left;" class="confluenceTd"><p><span>The Customer for whom the Carrier was created (informational only)</span></p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Delete</td><td style="text-align: left;" colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/82903891.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/82903891.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="82903891" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Delete Icon.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="82903796" data-linked-resource-container-version="6" /></span></span><span> </span>The icon the user is to select to start the delete process</p></div></td></tr></tbody></table>

Searching for a carrier the user is able to enter the Carrier number, a portion of the Carrier number or us a blank wild card search.
![image2020-12-4_10-42-13.png](/.attachments/82903894.png)



![image2020-12-4_10-42-33.png](/.attachments/82903895.png)


Once the search returns the desired Carrier the user is required to press the delete button to receive the confirmation screen. The user is then prompted to cancel or confirm the deletion.
![image2020-12-4_10-42-33.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/63a5ab55-9a18-40ca-8422-57915a3069f8?fileName=image.png)



![image2020-12-4_10-44-3.png](/.attachments/82903897.png)




#### Attachments

[Delete Icon.png](/.attachments/82903891.png)
[image2020-12-4_10-41-54.png](/.attachments/82903892.png)
[image2020-12-4_10-42-13.png](/.attachments/82903894.png)
[image2020-12-4_10-42-33.png](/.attachments/82903895.png)
[image2020-12-4_10-43-45.png](/.attachments/82903896.png)
[image2020-12-4_10-44-3.png](/.attachments/82903897.png)

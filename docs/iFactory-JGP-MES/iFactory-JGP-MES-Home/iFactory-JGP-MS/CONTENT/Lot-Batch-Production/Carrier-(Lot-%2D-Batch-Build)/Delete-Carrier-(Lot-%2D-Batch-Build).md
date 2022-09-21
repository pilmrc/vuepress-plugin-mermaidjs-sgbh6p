# Introduction


The Delete Carrier is intended to delete / remove a Carrier that does not have a assigned Lot. The system should only allow Unassigned Carriers to be deleted, this function is provided in the event that a mistake is made a the Carrier is to be removed from production use. 


### How to get there?



::: mermaid
graph LR
A("CARRIER")-->0("DELETE CARRIER")

:::


#### Screen Activity


Delete Carrier enables user to perform the following activity:

- Select a Carrier for deletion.
User can delete a Carrier if it has never been used (i.e no history of it having been used. status of ‘UnAssigned’ or usage count =0)



#### Pre Condition


The following data needs to true before user is able to delete the Carrier

- Carrier must have been created

- User can delete a Carrier if it has never been used (i.e no history of it having been used. status of ‘UnAssigned’ and usage count =0)



#### Screen Dependency


Carrier must exist to delete

- [Create Carrier](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)
must have been created
- No other screens are dependent this. however, once deleted it may not be seen or used.





#### Fields


<table class="confluenceTable"><tbody><tr><td class="confluenceTd"><p> </p></td><td class="confluenceTd"><p><strong>[Name] Tab</strong></p></td></tr><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Search</p></td><td class="confluenceTd"><p>A Carrier Serial Number the user wishes to delete, a complete Carrier Serial Number is recommended to be scanned. A wild card, or partial entry may be entered.</p></td></tr><tr><td class="confluenceTd"><p><span>Serial Number</span></p></td><td class="confluenceTd"><p>Serial Number of the Carrier <span>(informational only)</span></p></td></tr><tr><td class="confluenceTd"><p>Rows</p></td><td class="confluenceTd"><p>The number of Row of the Carrier (informational only)</p></td></tr><tr><td class="confluenceTd"><p>Columns</p></td><td class="confluenceTd"><p><span>The number of Columns of the Carrier (informational only)</span></p></td></tr><tr><td class="confluenceTd"><p>Maximum Cycles</p></td><td class="confluenceTd"><p><span>The number of <span>Maximum Cycles</span> of the Carrier, 0 is unlimited (informational only)</span></p></td></tr><tr><td class="confluenceTd"><p>Status</p></td><td class="confluenceTd"><p><span>The Status of the Carrier, currently Unassigned, Assigned are used. In the future Packed, and Retired will be used also. (informational only)</span></p></td></tr><tr><td class="confluenceTd"><p>Customer</p></td><td class="confluenceTd"><p><span>The Customer for whom the Carrier was created (informational only)</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Delete</td><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917760.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917760.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29917760" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="Delete Icon.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29917757" data-linked-resource-container-version="1" /></span> The icon the user is to select to start the delete process</td></tr></tbody></table>

**Searching for a carrier the user is able to enter the Carrier number, a portion of the Carrier number or us a blank wild card search.**   
![Search Carrier Delete.png](/.attachments/29917758.png)


Once the search returns the desired Carrier the user is required to press the delete trash can to receive the confirmation screen. The user is then prompted to cancel or confirm the deletion.
![Carrier Delete Confirm Screen.png](/.attachments/29917759.png)





#### Attachments

[Search Carrier Delete.png](/.attachments/29917758.png)
[Carrier Delete Confirm Screen.png](/.attachments/29917759.png)
[Delete Icon.png](/.attachments/29917760.png)

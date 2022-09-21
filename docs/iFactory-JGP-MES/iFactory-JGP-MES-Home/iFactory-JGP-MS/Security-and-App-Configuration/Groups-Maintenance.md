# Introduction

This function allows to create a new or maintain a security group, assigning application's permissions and users.


### **How to get there?** 




::: mermaid
graph LR
A("SECURITY MODULE")-->0("GroupS")

:::


#### Permission



- iFactory Security Application’s “Allow To View Security Configuration” permission to allow user to view all security module information.

- iFactory Security Application’s “Allow to Configure Groups” permission to allow user to make changes such as add, edit and delete group properties.


#### Screen Activity


The screen allows to maintain the list of groups, application's permissions and users associated.


#### Pre Condition


Application's permissions and Users is already created



#### Screen Dependency



- [Applications](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Applications.md)


- [Users](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Users-Maintenance.md)



#### Groups Interface


![image2020-1-20_16-5-11.png](/.attachments/64422032.png)



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field/Icon</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Name</td><td class="confluenceTd"><p>The groups name to create. Typing a value in the grid table header will  filter the list</p></td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd"><p>Description of the group. Typing a value in the grid table header will filter the list</p></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Add a group <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639261.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639261.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639261" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-30-11.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639258" data-linked-resource-container-version="5" /></span> </p></div></td><td class="confluenceTd"><p>Pressing the button add the new group present in the Name and Description fields</p></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Cancel <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639262.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639262.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639262" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-31-3.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639258" data-linked-resource-container-version="5" /></span></p></div></td><td class="confluenceTd">Cancel and refresh the screen (clear Name and Description fields)</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Edit a group <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639263.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639263.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639263" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-32-25.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639258" data-linked-resource-container-version="5" /></span></p></div></td><td colspan="1" class="confluenceTd">Edit the current selected group</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Delete a group <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639264.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639264.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639264" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-33-12.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639258" data-linked-resource-container-version="5" /></span></p></div></td><td colspan="1" class="confluenceTd">Delete the current selected group</td></tr></tbody></table>



#### Add a new group


To add a new group it is required to type the name and description and after to press the add button 
![image2019-9-21_13-30-11.png](/.attachments/57639261.png)




#### Edit a group


Press the edit button 
![image2019-9-21_13-32-25.png](/.attachments/57639263.png)


on the selected group
The system will show the following window
![image2020-1-20_16-25-50.png](/.attachments/64422033.png)


<table class="relative-table confluenceTable" style="width: 57.9569%;"><colgroup><col style="width: 20.3601%;" /><col style="width: 79.5198%;" /></colgroup><tbody><tr><th class="confluenceTh">Field/Icon</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Name</td><td class="confluenceTd">Group Name</td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd">Group description. It is possible to edit the value</td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Back <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="40" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639267.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639267.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639267" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-42-6.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639258" data-linked-resource-container-version="5" /></span></p></div></td><td class="confluenceTd">Close current window and go back to group main page</td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Permissions <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="70" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639268.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639268.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639268" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-42-58.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639258" data-linked-resource-container-version="5" /></span></p></div></td><td class="confluenceTd">Setup permissions associated to the group. See <a href="57639269.html">Group's Permissions</a></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Users <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="40" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639271.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639271.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639271" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-45-2.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639258" data-linked-resource-container-version="5" /></span></p></div></td><td class="confluenceTd">Associate users to a security group. See <a href="64422049.html">Group's User</a></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Delete <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639276.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639276.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639276" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-54-7.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639258" data-linked-resource-container-version="5" /></span></p></div></td><td colspan="1" class="confluenceTd">Delete the current security group</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Save <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639277.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639277.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639277" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-54-54.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639258" data-linked-resource-container-version="5" /></span></p></div></td><td colspan="1" class="confluenceTd">Save the change of group description</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Cancel <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639278.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639278.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639278" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-55-33.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639258" data-linked-resource-container-version="5" /></span></p></div></td><td colspan="1" class="confluenceTd">Cancel current operation (same as pressing Back button)</td></tr></tbody></table>



#### Delete a group


Pressing per delete group button 
![image2019-9-21_13-54-7.png](/.attachments/57639276.png)


on the corresponding record, the system displays a confirmation message.
![image2020-1-20_16-29-21.png](/.attachments/64422034.png)


Pressing OK button, the group is deleted. Pressing cancel the operation is aborted.



#### Attachments

[image2019-9-21_13-25-21.png](/.attachments/57639260.png)
[image2019-9-21_13-30-11.png](/.attachments/57639261.png)
[image2019-9-21_13-31-3.png](/.attachments/57639262.png)
[image2019-9-21_13-32-25.png](/.attachments/57639263.png)
[image2019-9-21_13-33-12.png](/.attachments/57639264.png)
[image2019-9-21_13-39-26.png](/.attachments/57639265.png)
[image2019-9-21_13-39-59.png](/.attachments/57639266.png)
[image2019-9-21_13-42-6.png](/.attachments/57639267.png)
[image2019-9-21_13-42-58.png](/.attachments/57639268.png)
[image2019-9-21_13-45-2.png](/.attachments/57639271.png)
[image2019-9-21_13-46-21.png](/.attachments/57639272.png)
[image2019-9-21_13-47-59.png](/.attachments/57639273.png)
[image2019-9-21_13-54-7.png](/.attachments/57639276.png)
[image2019-9-21_13-54-54.png](/.attachments/57639277.png)
[image2019-9-21_13-55-33.png](/.attachments/57639278.png)
[image2019-9-21_13-57-28.png](/.attachments/57639279.png)
[image2020-1-20_16-5-11.png](/.attachments/64422032.png)
[image2020-1-20_16-25-50.png](/.attachments/64422033.png)
[image2020-1-20_16-29-21.png](/.attachments/64422034.png)

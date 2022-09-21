# Introduction

Using this function it is possible to add the list of permission associated to application and available to configure into security groups.


### **How to get there?** 



::: mermaid
graph LR
A("SECURITY MODULE")-->0("APPLICATIONS")
0-->1("EDIT APPLICATION")
1-->2("PERMISSIONS")

:::
![image2019-9-21_12-31-44.png](/.attachments/57639234.png)




#### Permission



- iFactory Security Application’s “Allow To View Security Configuration” permission to allow user to view all security module information.

- iFactory Security Application’s “Allow to Configure Application” permission to allow user to make changes such as add, edit and delete application and permissions.


#### Screen Activity


The screen allows to maintain the list of permissions associated to the application, that are possible to configure associated to security groups.


#### Pre Condition


Application is already created


#### Screen Dependency



- [Groups](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Groups-Maintenance.md)



#### Permission interface


![image2020-1-15_14-35-34.png](/.attachments/64421928.png)



<table class="relative-table confluenceTable" style="width: 93.2764%;"><colgroup><col style="width: 14.0893%;" /><col style="width: 85.9107%;" /></colgroup><tbody><tr><th class="confluenceTh">Field/Icon</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Name</td><td class="confluenceTd"><p>Friendly name of the permission used in group configuration. It is used for typing a new permission.</p><p>Typing the value in the grid table header will filter the list.</p></td></tr><tr><td class="confluenceTd">Code</td><td class="confluenceTd"><p>Technical name of the permission used in the application code. It is used for typing a new code.</p><p>Typing the value in the grid table header will filter the list. By default the list will be sorted on Code. </p></td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd"><p>Description of the permission that will be used during group configuration. It is used for typing a new description.</p><p>Typing the value in the grid table header will filter the list. </p></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Back <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="30" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639236.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639236.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639236" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-12-41-47.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639226" data-linked-resource-container-version="8" /></span></p></div></td><td class="confluenceTd">Close current screen and go back to application list. Data modified is saved</td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Add Permission <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639237.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639237.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639237" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-12-43-11.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639226" data-linked-resource-container-version="8" /></span></p></div></td><td class="confluenceTd"><div class="content-wrapper"><p>Pressing the top level button add a master permission. Pressing the button on existing permission add a secondary permission associated to. The indication <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="20" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639238.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639238.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639238" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-12-45-30.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639226" data-linked-resource-container-version="8" /></span> is showing if it is a master or derivated permission. Value added is the one present into Name, Code and Description field</p></div></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Edit permission <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639239.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639239.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639239" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-12-47-17.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639226" data-linked-resource-container-version="8" /></span></p></div></td><td class="confluenceTd"><div class="content-wrapper"><p>It enables the edit of the selected permission. Press “Save” button to confirm the edit or “Cancel” button to cancel current edit</p></div></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Delete permission <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639242.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639242.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639242" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-12-50-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639226" data-linked-resource-container-version="8" /></span></p></div></td><td class="confluenceTd"><div class="content-wrapper"><p>It deletes the selected permission. Press “Delete” button  to confirm the delete or “Cancel” button to cancel the operation</p></div></td></tr></tbody></table>



#### Attachments

[image2019-9-21_12-12-4.png](/.attachments/57639228.png)
[image2019-9-21_12-31-44.png](/.attachments/57639234.png)
[image2019-9-21_12-36-20.png](/.attachments/57639235.png)
[image2019-9-21_12-41-47.png](/.attachments/57639236.png)
[image2019-9-21_12-43-11.png](/.attachments/57639237.png)
[image2019-9-21_12-45-30.png](/.attachments/57639238.png)
[image2019-9-21_12-47-17.png](/.attachments/57639239.png)
[image2019-9-21_12-48-23.png](/.attachments/57639240.png)
[image2019-9-21_12-49-0.png](/.attachments/57639241.png)
[image2019-9-21_12-50-34.png](/.attachments/57639242.png)
[image2020-1-15_14-35-34.png](/.attachments/64421928.png)
[image2020-1-15_14-38-36.png](/.attachments/64421929.png)

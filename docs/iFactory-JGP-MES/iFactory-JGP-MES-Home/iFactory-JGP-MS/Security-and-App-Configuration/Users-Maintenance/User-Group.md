# Introduction

This page contains the list of assigned groups for a user.
**How to get there?** 


::: mermaid
graph LR
A("SECURITY MODULE")-->0("USER")
0-->1("EDIT USER")
1-->2("GROUPS")

:::
![image2020-1-17_14-21-41.png](/.attachments/64422017.png)




### Permission



- iFactory Security Application’s “Allow To View Security Configuration” permission to allow user to view all security module information.

- iFactory Security Application’s “Allow to Configure Users” permission to allow user to make changes such as add and remove group from a user.


#### Screen Activity



- Allows search to add single/multiple groups to a user.

- Allows removed group(s) from a user.


#### Pre Condition


User and groups is already created.


#### Screen Dependency



- [Groups](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Groups-Maintenance.md)



#### User's Group Screen interface


![image2020-1-17_14-22-59.png](/.attachments/64422018.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Fields/buttons</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Group / Name </p></td><td class="confluenceTd"><p>The group name (Group) used for assignment to a user.</p><p>Typing the value in the grid table header (Name) will filter the list.</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Description of the group that assigned to a user.</p><p>Typing the value in the grid table header will filter the list.</p></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Remove Group <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image" height="24" width="26" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64422007.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64422007.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="64422007" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-11-54-7.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="64421993" data-linked-resource-container-version="5" /></span></p></div></td><td class="confluenceTd"><p>Remove a group from user.</p></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Cancel <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64422004.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64422004.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="64422004" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-12-0-17.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="64421993" data-linked-resource-container-version="5" /></span></p></div></td><td class="confluenceTd"><p>Cancel current operation and refresh the screen.</p></td></tr></tbody></table>



#### Adding group(s) to a user


Type some words and enter at Group field, or pressing the search button will pop up Add Group dialog with filtered match result for user to add one or more groups to the user. If the return result has only one matching record, system will automatically add a group to user.
![image2020-1-17_14-32-25.png](/.attachments/64422019.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Fields/Button</p></th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><p>Name</p></td><td class="confluenceTd"><p>The group name used for assignment to a user. Typing the value in the grid table header will filter the list.</p></td></tr><tr><td class="confluenceTd"><p>Description</p></td><td class="confluenceTd"><p>Description of the group. Typing the value in the grid table header will filter the list.</p></td></tr><tr><td class="confluenceTd"><p>Cancel button</p></td><td class="confluenceTd"><p>Abort Current operation.</p></td></tr><tr><td class="confluenceTd"><p>Add button </p></td><td class="confluenceTd"><p>Commit to add the selected group to a user.</p></td></tr></tbody></table>




#### Remove a group from user


Pressing on delete button 
![image2019-9-21_12-5-28.png](/.attachments/64422001.png)


in group record, the system pop up a message box to confirm the operation:
![image2020-1-17_14-35-56.png](/.attachments/64422020.png)


Pressing Delete button to confirm delete action.
Pressing Cancel button the operation is aborted.



#### Attachments

[image2020-1-15_14-14-41.png](/.attachments/64421994.png)
[image2020-1-15_14-12-9.png](/.attachments/64421995.png)
[image2020-1-15_14-7-49.png](/.attachments/64421996.png)
[image2020-1-15_14-3-53.png](/.attachments/64421997.png)
[image2019-9-21_12-17-54.png](/.attachments/64421998.png)
[image2019-9-21_12-10-33.png](/.attachments/64421999.png)
[image2019-9-21_12-8-48.png](/.attachments/64422000.png)
[image2019-9-21_12-5-28.png](/.attachments/64422001.png)
[image2019-9-21_12-3-57.png](/.attachments/64422002.png)
[image2019-9-21_12-0-53.png](/.attachments/64422003.png)
[image2019-9-21_12-0-17.png](/.attachments/64422004.png)
[image2019-9-21_11-58-53.png](/.attachments/64422005.png)
[image2019-9-21_11-56-33.png](/.attachments/64422006.png)
[image2019-9-21_11-54-7.png](/.attachments/64422007.png)
[image2019-9-21_11-52-57.png](/.attachments/64422008.png)
[image2019-9-21_11-52-1.png](/.attachments/64422009.png)
[image2019-9-21_11-50-55.png](/.attachments/64422010.png)
[image2019-9-21_11-50-22.png](/.attachments/64422011.png)
[image2019-9-21_11-49-5.png](/.attachments/64422012.png)
[image2019-9-21_11-48-2.png](/.attachments/64422013.png)
[image2019-9-21_11-47-33.png](/.attachments/64422014.png)
[image2019-9-21_11-28-11.png](/.attachments/64422015.png)
[image2020-1-17_14-19-35.png](/.attachments/64422016.png)
[image2020-1-17_14-21-41.png](/.attachments/64422017.png)
[image2020-1-17_14-22-59.png](/.attachments/64422018.png)
[image2020-1-17_14-32-25.png](/.attachments/64422019.png)
[image2020-1-17_14-35-56.png](/.attachments/64422020.png)

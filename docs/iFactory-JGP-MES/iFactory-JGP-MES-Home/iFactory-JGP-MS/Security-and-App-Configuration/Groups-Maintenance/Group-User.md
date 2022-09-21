# Introduction

This functionality associate the list of users in the system to a specific security group, in order to get access to specific functionality and applications
**How to get there?** 


::: mermaid
graph LR
A("SECURITY MODULE")-->0("GROUPS")
0-->1("EDIT GROUP")
1-->2("USERS")

:::
![image2020-1-21_16-3-30.png](/.attachments/64422077.png)




### Permission



- iFactory Security Application’s “Allow To View Security Configuration” permission to allow user to view all security module information.

- iFactory Security Application’s “Allow to Configure Groups” permission to allow user to make changes such as add and remove user from a security group.


#### Screen Activity



- Allows search to add single/multiple user to a security group

- Allows removed user(s) from a security group.


#### Pre Condition


Users and group are already created


#### Screen Dependency



- [Users](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Users-Maintenance.md)


- [Groups](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Groups-Maintenance.md)



#### Group's User Screen interface


![image2020-1-21_16-5-42.png](/.attachments/64422078.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Fields/buttons</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Employee Number </p></td><td class="confluenceTd"><p>Employee number of user assigned to current group. Allow partial search.</p><p>Typing the value in the grid table header will filter the list.</p></td></tr><tr><td class="confluenceTd"><p>Username</p></td><td class="confluenceTd"><p>Jabil user account of user assigned to current group. Allow partial search (e.g. jabil\xxx).</p><p>Typing the value in the grid table header will filter the list.</p></td></tr><tr><td colspan="1" class="confluenceTd">First Name</td><td colspan="1" class="confluenceTd"><p>User first name of user assigned to current group. Allow partial search.</p>Typing the value in the grid table header will filter the list.</td></tr><tr><td colspan="1" class="confluenceTd">Last Name</td><td colspan="1" class="confluenceTd"><p>User last name of user assigned to current group. Allow partial search.</p>Typing the value in the grid table header will filter the list.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Search to add <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="29" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64422082.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64422082.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="64422082" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-1-21-16-11-30.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="64422049" data-linked-resource-container-version="2" /></span></p></div></td><td colspan="1" class="confluenceTd">Search to add a user to current security group. Allow multi selection to add to a group.</td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Clear <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64422066.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64422066.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="64422066" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-12-0-17.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="64422049" data-linked-resource-container-version="2" /></span></p></div></td><td class="confluenceTd"><p>Clear the current value (related to user list, employee number, username, first name and last name.)</p></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Remove <span style="color: rgb(0,0,0);"><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64422069.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64422069.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="64422069" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-12-5-28.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="64422049" data-linked-resource-container-version="2" /></span></span></p></div></td><td class="confluenceTd"><p>Remove a user from security group.</p></td></tr></tbody></table>



#### Adding user(s) to a group


Type some words and enter at Employee Number/Username/First Name/Last Name field, or pressing the search button will pop up an Add User dialog with filtered match result. User has option to add one or more users to security group. If the return result has only one matching record, system will automatically add a user to security group.
![image2020-1-21_16-13-52.png](/.attachments/64422083.png)



<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Fields/Button</p></th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd"><p>Employee Name</p></td><td class="confluenceTd"><p>Employee number of user assigned to current group. Typing the value in the grid table header will filter the list.</p></td></tr><tr><td class="confluenceTd"><p>Username</p></td><td class="confluenceTd"><p>Jabil user account of user assigned to current group. Typing the value in the grid table header will filter the list.</p></td></tr><tr><td class="confluenceTd"><p>First Name</p></td><td class="confluenceTd"><p>User first name of user assigned to current group. Typing the value in the grid table header will filter the list.</p></td></tr><tr><td colspan="1" class="confluenceTd">Last Name</td><td colspan="1" class="confluenceTd">User last name of user assigned to current group. Typing the value in the grid table header will filter the list.</td></tr><tr><td colspan="1" class="confluenceTd">Cancel button</td><td colspan="1" class="confluenceTd">Abort Current operation</td></tr><tr><td class="confluenceTd"><p>Add button </p></td><td class="confluenceTd"><p>Commit to add the selected user to security group.</p></td></tr></tbody></table>




#### Remove a group from user


Pressing on delete button 
![image2019-9-21_12-5-28.png](/.attachments/64422069.png)


in group record, the system pop up a message box to confirm the operation:
![image2020-1-21_16-17-56.png](/.attachments/64422084.png)


Pressing Delete button to confirm delete action.
Pressing Cancel button the operation is aborted.






#### Attachments

[image2020-1-17_14-35-56.png](/.attachments/64422050.png)



































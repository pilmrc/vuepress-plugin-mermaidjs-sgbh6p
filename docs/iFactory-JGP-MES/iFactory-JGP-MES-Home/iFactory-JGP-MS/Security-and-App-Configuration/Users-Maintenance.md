# Introduction

This screen allows to create system users and maintain properties.
**How to get there?** 

::: mermaid
graph LR
A("SECURITY MODULE")-->0("Users")

:::


### Permission



- iFactory Security Application’s “Allow To View Security Configuration” permission to allow user to view all security module information.

- iFactory Security Application’s “Allow to Configure Users” permission to allow user to make changes such as add and edit and user related information.


#### Screen Activity


The screen allows to create new users, update data of existing users and deactivate users


#### Pre Condition


N/A


#### Screen Dependency



- [Groups](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Groups-Maintenance.md)


- Partitions


- Tokens



#### User interface


![image2020-1-16_16-46-10.png](/.attachments/64421972.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field/Icon</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Employee Number</td><td class="confluenceTd">Jabil user employee number. Typing a value filter the list</td></tr><tr><td class="confluenceTd">Username</td><td class="confluenceTd">Jabil windows account. Typing a value filter the list</td></tr><tr><td class="confluenceTd">First Name</td><td class="confluenceTd">User First name. Typing a value filter the list</td></tr><tr><td class="confluenceTd">Last Name</td><td class="confluenceTd">User Last name. Typing a value filter the list</td></tr><tr><td class="confluenceTd">Email</td><td class="confluenceTd">Jabil user email. Typing a value filter the list</td></tr><tr><td colspan="1" class="confluenceTd">Supervisor Name</td><td colspan="1" class="confluenceTd">User's supervisor. Typing a value filter the list</td></tr><tr><td class="confluenceTd">Active</td><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="30" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639246.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639246.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639246" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-5-36.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span> The account is not active</p><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="30" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639247.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639247.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639247" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-6-4.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span> The account is active. </p><p>Selecting a value filter the list</p></div></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Add a user <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639248.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639248.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639248" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-9-48.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Open a window to create a new user</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Edit a user <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639249.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639249.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639249" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-10-41.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Edit and/or view the current selected user's related information</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Update User Info <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="26" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64421971.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64421971.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="64421971" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-1-16-16-45-14.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Update all the user's info (display in grid table) from AD. Alert will prompt when grid table contain more than 200 records. In this case, user can use filtering to reduce the number of records in grid table to do update.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Clean Filter <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639250.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639250.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639250" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-11-28.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Clean current values applied to filter the selection</td></tr></tbody></table>

User’s supervisor. Typing a value filter the listActive![image2019-9-21_13-5-36.png](/.attachments/57639246.png)


The account is not active
![image2019-9-21_13-6-4.png](/.attachments/57639247.png)


The account is active. 
Selecting a value filter the list
Add a user 
![image2019-9-21_13-9-48.png](/.attachments/57639248.png)


Open a window to create a new user
Edit a user 
![image2019-9-21_13-10-41.png](/.attachments/57639249.png)


Edit and/or view the current selected user's related information
Update User Info 
![image2020-1-16_16-45-14.png](/.attachments/64421971.png)


Update all the user’s info (display in grid table) from AD. Alert will prompt when grid table contain more than 200 records. In this case, user can use filtering to reduce the number of records in grid table to do update.
Clean Filter 
![image2019-9-21_13-11-28.png](/.attachments/57639250.png)


Clean current values applied to filter the selection


#### Create a new user


The window for creating new use is opened when user press the "Add” button 
![image2019-9-21_13-9-48.png](/.attachments/57639248.png)


for new user creation.
![image2020-1-16_16-47-58.png](/.attachments/64421973.png)


It is required to provide either a valid Employee Number / Username / Email value. User can press enter or click on the search button 
![image2019-9-21_13-15-42.png](/.attachments/57639252.png)


to retrieve the information from active directory.
<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field/Icon</th><th class="confluenceTh">Description</th><th colspan="1" class="confluenceTh">Read only</th></tr><tr><td class="confluenceTd">Employee Number</td><td class="confluenceTd">Jabil user employee number, as defined in HR system</td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td class="confluenceTd">Username</td><td class="confluenceTd">Jabil windows account (into JABIL domain)</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td class="confluenceTd">Email</td><td class="confluenceTd">Jabil user email address</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td class="confluenceTd">First Name</td><td class="confluenceTd">User First Name</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Last Name</td><td colspan="1" class="confluenceTd">User Last Name</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Contact</td><td colspan="1" class="confluenceTd">User office phone number</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Supervisor Name</td><td colspan="1" class="confluenceTd">User direct supervisor full name</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Supervisor Email</td><td colspan="1" class="confluenceTd">User direct supervisor email address</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Department</td><td colspan="1" class="confluenceTd">User associated department</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Job Title</td><td colspan="1" class="confluenceTd">User associated job title</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Copy User Security</td><td colspan="1" class="confluenceTd">Copy from this user's group to new user. Upon select this field, if service account selected, then system will display username value. If normal user selected, system will display Username – FirstName LastName</td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Back <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="40" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639253.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639253.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639253" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-19-46.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Close current screen and back to user list</td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Save data <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639255.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639255.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639255" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-20-48.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Save the current user data</td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Cancel <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639256.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639256.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639256" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-21-18.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Abort current operation</td><td colspan="1" class="confluenceTd"><br /></td></tr></tbody></table>


Copy from this user’s group to new user. Upon select this field, if service account selected, then system will display username value. If normal user selected, system will display Username – FirstName LastName

Back 
![image2019-9-21_13-19-46.png](/.attachments/57639253.png)


Close current screen and back to user list

Save data 
![image2019-9-21_13-20-48.png](/.attachments/57639255.png)


Save the current user data

Cancel 
![image2019-9-21_13-21-18.png](/.attachments/57639256.png)


Abort current operation



#### Update a user


On the selected user, press the edit button 
![image2019-9-21_13-10-41.png](/.attachments/57639249.png)


The following screen is showing:
![image2020-2-28_15-27-27.png](/.attachments/66093651.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field/Icon</th><th class="confluenceTh">Description</th><th colspan="1" class="confluenceTh">Read Only</th></tr><tr><td class="confluenceTd">Employee Number</td><td class="confluenceTd">Jabil user employee number, as defined in HR system. By click on search button, allows update information from AD. (Require click save)</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td class="confluenceTd">Username</td><td class="confluenceTd">Jabil windows account (into JABIL domain). By click on search button, allows update information from AD. (Require click save)</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td class="confluenceTd">Email</td><td class="confluenceTd">Jabil user email address. By click on search button, allows update information from AD. (Require click save)</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td class="confluenceTd">First Name</td><td class="confluenceTd">User First Name</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Last Name</td><td colspan="1" class="confluenceTd">User Last Name</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Contact</td><td colspan="1" class="confluenceTd">User office phone number</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Supervisor Name</td><td colspan="1" class="confluenceTd">User direct supervisor full name</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Supervisor Email</td><td colspan="1" class="confluenceTd">User direct supervisor email address</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Department</td><td colspan="1" class="confluenceTd">User associated department</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Job Title</td><td colspan="1" class="confluenceTd">User associated job title</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper image-center-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail image-center" width="16" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639282.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639282" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-14-5-34.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td></tr><tr><td colspan="1" class="confluenceTd">Copy User Security</td><td colspan="1" class="confluenceTd">Replace from this user's group to edit user's group. Upon select this field, if service account selected, then system will display username value. If normal user selected, system will display Username – FirstName LastName</td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Show API Key <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="28" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093653.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093653.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="66093653" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-2-28-15-33-50.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Generate and showing service account's API Key. For more details, please refers to <a href="66093464.html">User’s API Key Generation</a></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd">Active</td><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Activate <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="30" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639247.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639247.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639247" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-6-4.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span> or Deactivate <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="30" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639246.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639246.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639246" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-5-36.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span> a user</p></div></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Back <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="40" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639253.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639253.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639253" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-19-46.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Close current screen and back to user list</td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Groups <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="24" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64421968.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64421968.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="64421968" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-1-16-16-21-40.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Maintain group for a user. See <a href="64421993.html">User's Group</a></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Partitions <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="60" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64421970.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64421970.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="64421970" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-46-21.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Maintain customer partition for a user. See <a href="62423449.html">User's Data Partition</a></td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Save data <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639255.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639255.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639255" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-20-48.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Save the current user data</td><td colspan="1" class="confluenceTd"><br /></td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Cancel <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639256.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639256.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639256" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-13-21-18.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639244" data-linked-resource-container-version="13" /></span></p></div></td><td colspan="1" class="confluenceTd">Abort current operation</td><td colspan="1" class="confluenceTd"><br /></td></tr></tbody></table>

Replace from this user’s group to edit user’s group. Upon select this field, if service account selected, then system will display username value. If normal user selected, system will display Username – FirstName LastName

Show API Key 
![image2020-2-28_15-33-50.png](/.attachments/66093653.png)


Generate and showing service account’s API Key. For more details, please refers to 
[User’s API Key Generation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Users-Maintenance/User-API-Key-Generation.md)
ActiveActivate 
![image2019-9-21_13-6-4.png](/.attachments/57639247.png)


or Deactivate 
![image2019-9-21_13-5-36.png](/.attachments/57639246.png)


a user

Back 
![image2019-9-21_13-19-46.png](/.attachments/57639253.png)


Close current screen and back to user list

Groups 
![image2020-1-16_16-21-40.png](/.attachments/64421968.png)


Maintain group for a user. See 
[User's Group](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Users-Maintenance/User-Group.md)
Partitions 
![image2019-9-21_13-46-21.png](/.attachments/64421970.png)


Maintain customer partition for a user. See 
[User's Data Partition](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Users-Maintenance/User-Data-Partition.md)
Save data 
![image2019-9-21_13-20-48.png](/.attachments/57639255.png)


Save the current user data

Cancel 
![image2019-9-21_13-21-18.png](/.attachments/57639256.png)


Abort current operation



#### Allow copy from a user Group & Partition to multiple user. 



- Select user which Groups and Partitions need to copy from.

- Upload temp.csv ( Need fill-in employee number)
![image2021-12-17_13-40-40.png](/.attachments/104923563.png)


![image2021-12-17_13-45-37.png](/.attachments/104923564.png)


![image2021-12-17_13-46-16.png](/.attachments/104923565.png)




#### Deactivate/dormant inactive user


When a user is not active for some period of time, his/her account will be either automatically deactivate/dormant by system. This feature only applicable to normal user. Service account excludes from this deactivate/dormant feature as this require manual login to track the last seen date.

- Inactive 38 to 44 days - Inactive Warning email trigger everyday (1 am) to remind user his/her user account is going to deactivate at days 45.
![image2020-2-28_14-47-20.png](/.attachments/66093626.png)




- Inactive 45 days - Disable User Account email trigger to inform user his/her account has been deactivate by system. To activate back, require admin or service desk help to enable back this user account. Once enable back, the last seen date will be updated to current date and time. User won't received any email until next inactive 38 days.
![image2020-2-28_14-55-37.png](/.attachments/66093628.png)




- Inactive 83 to 89 days - Dormant Warning email trigger everyday (1 am) to remind user that his/her account is going to dormant at days 90.
![image2020-2-28_15-2-37.png](/.attachments/66093630.png)




- Inactive 90 days - Dormant User Account email trigger to inform user his/her account has been dormant by system. All the user group associated to this user will be dissociated by system automatically (As per result, user lost permission to access features.). To activate back, require admin or service desk help to enable back this user account and add back the user group.
![image2020-2-28_15-9-37.png](/.attachments/66093633.png)





#### Attachments

[image2019-9-21_13-1-0.png](/.attachments/57639245.png)
[image2019-9-21_13-5-36.png](/.attachments/57639246.png)
[image2019-9-21_13-6-4.png](/.attachments/57639247.png)
[image2019-9-21_13-9-48.png](/.attachments/57639248.png)
[image2019-9-21_13-10-41.png](/.attachments/57639249.png)
[image2019-9-21_13-11-28.png](/.attachments/57639250.png)
[image2019-9-21_13-14-42.png](/.attachments/57639251.png)
[image2019-9-21_13-15-42.png](/.attachments/57639252.png)
[image2019-9-21_13-19-46.png](/.attachments/57639253.png)
[image2019-9-21_13-20-43.png](/.attachments/57639254.png)
[image2019-9-21_13-20-48.png](/.attachments/57639255.png)
[image2019-9-21_13-21-18.png](/.attachments/57639256.png)
[image2019-9-21_14-1-7.png](/.attachments/57639281.png)
[image2019-9-21_14-5-34.png](/.attachments/57639282.png)
[image2019-9-21_14-8-8.png](/.attachments/57639283.png)
[image2020-1-16_16-16-1.png](/.attachments/64421967.png)
[image2020-1-16_16-21-40.png](/.attachments/64421968.png)
[image2019-9-21_13-46-21.png](/.attachments/64421970.png)
[image2020-1-16_16-45-14.png](/.attachments/64421971.png)
[image2020-1-16_16-46-10.png](/.attachments/64421972.png)
[image2020-1-16_16-47-58.png](/.attachments/64421973.png)
[image2020-2-28_14-47-20.png](/.attachments/66093626.png)
[image2020-2-28_14-55-37.png](/.attachments/66093628.png)
[image2020-2-28_15-2-37.png](/.attachments/66093630.png)
[image2020-2-28_15-9-37.png](/.attachments/66093633.png)
[image2020-2-28_15-27-27.png](/.attachments/66093651.png)
[image2020-2-28_15-33-50.png](/.attachments/66093653.png)
[image2021-12-17_13-40-40.png](/.attachments/104923563.png)
[image2021-12-17_13-45-37.png](/.attachments/104923564.png)
[image2021-12-17_13-46-16.png](/.attachments/104923565.png)

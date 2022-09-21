# Introduction


Role determine the access level or permissions of a person authorized to use Reverse application. 


### How to get there?



::: mermaid
graph LR
A("ADMINISTRATION")-->0("ROLE")

:::

Precondition[User](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide.md)
need to be configured before the assign of Role. In automatically when create the user will be assigned to the "User" Role
Screen Activity
Role 
allow to perform the following activity:
- Add user from a Role


- Remove user from a Role

![image2017-9-26 23:35:36.png](/.attachments/29920864.png)




#### Screen Dependency


The following screen(s) has direct dependency with User Group

- [User](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide.md)




#### Fields





<table class="wrapped confluenceTable"><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="Role(Obsolete)-Role"><strong>Role</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Role</td><td colspan="1" class="confluenceTd"><p>Today there are only 3 Roles:</p><p><u><strong>User</strong> </u>- Has access to all except to Administration </p><p><u><strong>Security Officer</strong></u> - Has access to the Administration</p><p><u><strong>Developer</strong></u> - Has access to all modules</p><p> A user can be added to one or multiple user Roles, it is accumulative permission if more than one. </p></td></tr><tr><td colspan="1" class="confluenceTd">Add User</td><td colspan="1" class="confluenceTd">It is for search the user that wants to be added, It search by First Name</td></tr><tr><td class="confluenceTd"><p>NT Login*</p></td><td class="confluenceTd"><p>The unique Jabil domain NT login ID. The entered value will be use to validate from the selected domain.</p></td></tr><tr><td class="confluenceTd"><p>First Name</p></td><td class="confluenceTd"><p>The user's First name.</p></td></tr><tr><td colspan="1" class="confluenceTd">Last Name</td><td colspan="1" class="confluenceTd">The user's Last name.</td></tr><tr><td colspan="1" class="confluenceTd">Email</td><td colspan="1" class="confluenceTd">The email address shall be used by other screens to send notification to user.</td></tr><tr><td colspan="1" class="confluenceTd">Delete</td><td colspan="1" class="confluenceTd">Desasociate the user from the Role</td></tr></tbody></table>

***The user’s First name.***  
Last NameThe user’s Last name.EmailThe email address shall be used by other screens to send notification to user.DeleteDesasociate the user from the Role


#### Attachments

[image2017-9-26 23:35:36.png](/.attachments/29920864.png)

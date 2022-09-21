# Introduction

People that need to access to Phoenix system will need to have their user account created here by the Phoenix administrator. Generally, users log into Phoenix using their Windows User ID and Password. For users who do not have Windows account, a non-domain user account can be created here. 




### How to get there?




::: mermaid
graph LR
A("ADMINISTRATION")-->0("USER")
0-->1("USERS")

:::

Screen Activity
User Maintenance enables user to perform the following activity:

- Create, view, update and delete domain or non-domain user records

- Change user password

- Activate or deactivate a user from Phoenix

- Configure user email address to receive email notification and alert from Phoenix

- Maintain user certification



#### Screen Dependency


The following screen(s) has direct dependency with User

- *[User Group Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/User/User-Group-(obsolete,-please-refers-to-security-Groups-Maintenance).md)*




#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="Users-UserInformationTab"><strong><span style="color: rgb(0,0,0);">User Information Tab</span></strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>User Login</p></td><td class="confluenceTd"><p>The unique user login ID required to log into Phoenix</p></td></tr><tr><td class="confluenceTd">User Name</td><td class="confluenceTd">The user's full name</td></tr><tr><td colspan="1" class="confluenceTd">User Password</td><td colspan="1" class="confluenceTd">The non-domain account password required to log into Phoenix. The password must be at least 6 characters with at least 1 digit, 1 uppercase and 1 lowercase letter.</td></tr><tr><td colspan="1" class="confluenceTd">Confirm Password</td><td colspan="1" class="confluenceTd">Re-enter the User Password to confirm the correct password is configured</td></tr><tr><td colspan="1" class="confluenceTd">User Email</td><td colspan="1" class="confluenceTd"><p>The email address shall be used by other screens to send notification to user. If no email address is configured here, user will not be able to receive these notifications.</p></td></tr><tr><td colspan="1" class="confluenceTd">User Is Active</td><td colspan="1" class="confluenceTd">User can only access Phoenix if this flag is enabled. When creating a new user, administrator will need to enable this flag <br />to activate the user account</td></tr><tr><td colspan="1" class="confluenceTd">User Is in Domain</td><td colspan="1" class="confluenceTd"><p>There are two types of users in Phoenix; Domain and Non-Domain users. <br />Domain users will have their own Jabil Windows account and logs into Phoenix using their Windows User ID and password. <br /><span style="color: rgb(0,0,0);">Some operators who do not have a Windows account can also access to Phoenix by having a Non-Domain user account in Phoenix. <br />These user accounts are stored at the application level</span><span><span style="color: rgb(255,0,0);">.</span></span></p></td></tr><tr><td colspan="1" class="confluenceTd">Copy User Security</td><td colspan="1" class="confluenceTd">Provides a quick way to copy the Group Assignment and Certification from another user</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="Users-CertificationTab"><span style="color: rgb(51,51,51);"><strong>Certification Tab</strong></span></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd"><span>Certification</span></td><td colspan="1" class="confluenceTd"><span>List the certifications that the user possesses. Once users are certified, the administrator will add their certification here.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Certification Expires</span></td><td colspan="1" class="confluenceTd"><span>If enabled, the certification is only valid within the effectivity date range.</span><br /><span>If disabled, the certification is considered never expire and defaulted by the system to 12/31/2099 12:00AM. User does not need to take re-certification. </span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Effective From</span></td><td colspan="1" class="confluenceTd"><span>The start date where the certification is in effect. User cannot access the operation, resource or material earlier than the effective date</span></td></tr><tr><td colspan="1" class="confluenceTd"><span>Effective To</span></td><td colspan="1" class="confluenceTd"><p><span>The end date where the certification is in effect. When the certification expires, user cannot access the <span>operation, resource or material that requires this certification</span> </span></p></td></tr></tbody></table>






<table class="confluenceTable"><tbody><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="Users-GroupAssignmentTab">Group Assignment Tab</h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Group Name Search</p></td><td class="confluenceTd"><p>Type in the Group Name you wish to assign and click the 'Search Available Groups' button</p></td></tr><tr><td class="confluenceTd">Available Groups column</td><td class="confluenceTd"><p>List of available User Groups available to assign to the user. Select desired group by highlighting it, then click the 'To Right' <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920100.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920100.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920100" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2013-6-8 16:30:41.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920098" data-linked-resource-container-version="1" /></span> button to move it to the 'Assigned Group' column.</p><p>**Only Groups maintained in the User Group Maintenance screen will appear**</p></td></tr><tr><td colspan="1" class="confluenceTd">Assigned Group column</td><td colspan="1" class="confluenceTd">Groups in this column have been assigned to the user.</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="Users-CustomersTab"><span style="color: rgb(51,51,51);">Customers Tab</span></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><strong>Field</strong></td><td class="highlight confluenceTd" colspan="1"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Available Customer</td><td colspan="1" class="confluenceTd">List of available Customers available to be assigned to the user. Select desired Customer by highlighting it, then click the 'To Right' <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920099.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920099.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29920099" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2013-6-8 16:38:42.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29920098" data-linked-resource-container-version="1" /></span> button to move it to the 'Assigned Customer column. **Only Customers maintained in the Customer Maintenance screen will appear**</td></tr><tr><td colspan="1" class="confluenceTd">Assigned Customer</td><td colspan="1" class="confluenceTd">Customers in this column have been assigned to the user.</td></tr></tbody></table>

**button to move it to the 'Assigned Customer column. \*\*Only Customers maintained in the Customer Maintenance screen will appear\*\*** 
Assigned CustomerCustomers in this column have been assigned to the user.




#### Attachments

[image2013-6-8 16:38:42.png](/.attachments/29920099.png)
[image2013-6-8 16:30:41.png](/.attachments/29920100.png)

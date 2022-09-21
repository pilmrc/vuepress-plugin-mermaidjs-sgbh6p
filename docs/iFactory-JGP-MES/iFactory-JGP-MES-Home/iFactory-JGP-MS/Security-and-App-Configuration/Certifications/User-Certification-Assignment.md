# Introduction

User Certification Assignment is another configuration screen that move from iFactory to security module. There will be a sync job running every minute at backend to sync any new added/update/delete action from security’s user certifications to iFactory's user certification table. The purpose of these changes is to minimize the impact at iFactory side and meanwhile allow other module can also be share to use this user certification in future.
As for iFactory usage, certification is require to ensure the user is qualified to handle certain resource, material or capable to perform the task in certain operation.
Three steps to configure certification

- Create certification records in security "
[Certifications](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Certifications.md)
- The certification required for the
[resource type,](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance/Resource-Type.md)[resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md), [material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)and [Route Step type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)are configured in their respective maintenance screens in the Certification tab
- The user will take the certifications required and all their completed certification will be added in their user account through Security " User Certification Assignment or Security "
[Group Certification Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Certifications/Group-Certification-Assignment.md)screen.
- When operator tries to access a resource, material or operation, system will check if a certification is required (as configured in step 2 above). If certification is required, system will check whether the operator has the required certification that is still active (as configured in step 3 above). Once system found the operator has the valid certification in either User or User Group Certification tab, the operator is allowed the access. If the required certification is not found, system will block the operator from proceeding with their task.


### **How to get there?** 



::: mermaid
graph LR
A("SECURITY MODULE")-->0("CERTIFICATION")
0-->1("USERS")

:::


#### Permission



- iFactory Security Application’s “Allow To View Security Configuration” permission to allow user to view all security module information.

- iFactory Security Application’s “Allow To Configure Certifications” permission to allow user to configure user certification assignment.


#### Screen Activity


This screen is allow to add/update/delete user certification assignment.


#### Pre Condition


Certificates configured and ready for assignment.


#### Screen Dependency



- [Certifications](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Certifications.md)


#### User Certification Assignment Interface


![image2021-12-17_13-36-38.png](/.attachments/104923561.png)


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field/Icon</th><th class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd">Username</td><td colspan="1" class="confluenceTd">Select a user to display certification list at grid table.</td></tr><tr><td class="confluenceTd">Certification</td><td class="confluenceTd"><p>Certificates assigned to selected user. Allow partial search</p><p>Typing the value in the grid table header will filter the list.</p></td></tr><tr><td class="confluenceTd">Certification Expires</td><td class="confluenceTd"><p>Yes, the certification is only valid within the effectively date range.</p><p>No, the certification is considered never expire and defaulted by the system to 12/31/2099 12:00 AM.</p></td></tr><tr><td colspan="1" class="confluenceTd">Effective From</td><td colspan="1" class="confluenceTd">The start date where the certification is in effect. User cannot access the operation, resource or material earlier than the effective date.</td></tr><tr><td colspan="1" class="confluenceTd">Effective To</td><td colspan="1" class="confluenceTd">The end date where the certification is in effect. When the certification expires, user cannot access the operation, resource or material that requires this certification.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Add a certificate <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-thumbnail" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093516.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093516.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="66093516" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-2-27-15-6-22.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="66093513" data-linked-resource-container-version="7" /></span> </p></div></td><td colspan="1" class="confluenceTd">Add a new certificate to user.</td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Clear <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" width="25" src="attachments/thumbnails/57639258/57639262" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/57639258/image2019-9-21-13-31-3.png?version=1&modificationDate=1569043863991&api=v2" /></span> </p></div></td><td class="confluenceTd"><p>Clear button beside Username - Clear current values applied to filtering.</p>Clear button beside Certification – Clear certification value.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Edit a certificate <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-thumbnail" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093515.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093515.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="66093515" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-2-27-15-7-55.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="66093513" data-linked-resource-container-version="7" /></span></p></div></td><td colspan="1" class="confluenceTd">Edit the selected certificate. </td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Remove a certificate <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-thumbnail" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093514.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093514.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="66093514" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-2-27-15-8-37.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="66093513" data-linked-resource-container-version="7" /></span></p></div></td><td colspan="1" class="confluenceTd">Remove the selected certificate from user.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Users <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-thumbnail" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093559.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093559.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="66093559" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-2-28-11-13-13.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="66093513" data-linked-resource-container-version="7" /></span></p></div></td><td colspan="1" class="confluenceTd">Click Users button to open User Certification Assignment screen.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Groups <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-thumbnail" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093560.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093560.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="66093560" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-2-28-11-14-4.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="66093513" data-linked-resource-container-version="7" /></span></p></div></td><td colspan="1" class="confluenceTd">Click Groups button to open Group Certification Assignment screen.</td></tr></tbody></table>



#### User Certificates configured allow batch upload.


![image2021-12-17_13-35-0.png](/.attachments/104923559.png)




#### Attachments

[image2020-2-27_15-8-37.png](/.attachments/66093514.png)
[image2020-2-27_15-7-55.png](/.attachments/66093515.png)
[image2020-2-27_15-6-22.png](/.attachments/66093516.png)
[image2020-2-27_15-4-26.png](/.attachments/66093517.png)
[image2019-9-21_13-25-21.png](/.attachments/66093518.png)
[image2019-9-21_17-4-3.png](/.attachments/66093519.png)
[image2020-1-23_10-51-12.png](/.attachments/66093520.png)
[image2020-2-27_15-59-45.png](/.attachments/66093536.png)
[image2020-2-28_11-13-13.png](/.attachments/66093559.png)
[image2020-2-28_11-14-4.png](/.attachments/66093560.png)
[image2020-2-28_13-52-17.png](/.attachments/66093586.png)
[image2021-12-17_13-35-0.png](/.attachments/104923559.png)
[image2021-12-17_13-36-27.png](/.attachments/104923560.png)
[image2021-12-17_13-36-38.png](/.attachments/104923561.png)

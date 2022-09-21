# Introduction

Certification is another configuration screen that move from iFactory to security module. There will be a sync job running every minute at backend to sync any new added/update/delete action from security’s certifications to iFactory certification table. The purpose of these changes is to minimize the impact at iFactory side and meanwhile allow other module can also be share to use this certification in future.
As for iFactory usage, Certification is require to ensure the user is qualified to handle certain resource, material or capable to perform the task in certain operation.
Three steps to configure certification

- Create certification records in security " Certifications

- The certification required for the
[resource type,](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance/Resource-Type.md)[resource](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Resource/Resources-Maintenance.md), [material](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md)and [Route Step type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Routing/Route-Step-Type.md)are configured in their respective maintenance screens in the Certification tab
- The user will take the certifications required and all their completed certification will be added in their user account through Security "
[User Certification Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Certifications/User-Certification-Assignment.md)or Security " [Group Certification Assignment](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Certifications/Group-Certification-Assignment.md)screen.
- When operator tries to access a resource, material or operation, system will check if a certification is required (as configured in step 2 above). If certification is required, system will check whether the operator has the required certification that is still active (as configured in step 3 above). Once system found the operator has the valid certification in either User or User Group Certification tab, the operator is allowed the access. If the required certification is not found, system will block the operator from proceeding with their task.


### **How to get there?** 



::: mermaid
graph LR
A("SECURITY MODULE")-->0("CERTIFICATION")

:::


#### Permission



- iFactory Security Application’s “Allow To View Security Configuration” permission to allow user to view all security module information.

- iFactory Security Application’s “Allow To Configure Certifications” permission to allow user to configure certificates.


#### Screen Activity


This screen is allow to create/update/delete certificates.


#### Pre Condition


NA


#### Screen Dependency


NA


#### Certifications Interface


![image2020-2-27_15-4-26.png](/.attachments/66093508.png)


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field/Icon</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Name</td><td class="confluenceTd"><p>Certificate Name.</p>Typing the value in the grid table header will filter the list.</td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd"><p>A description of the certificate.</p>Typing the value in the grid table header will filter the list.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Add a certificate <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="28" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093509.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093509.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="66093509" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-2-27-15-6-22.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="66093503" data-linked-resource-container-version="5" /></span> </p></div></td><td colspan="1" class="confluenceTd">Add a new certificate.</td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Clear <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" width="25" src="attachments/thumbnails/57639258/57639262" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/57639258/image2019-9-21-13-31-3.png?version=1&modificationDate=1569043863991&api=v2" /></span> </p></div></td><td class="confluenceTd">Clear current values applied to filtering.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Edit a certificate <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="27" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093510.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093510.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="66093510" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-2-27-15-7-55.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="66093503" data-linked-resource-container-version="5" /></span></p></div></td><td colspan="1" class="confluenceTd">Edit the selected certificate. In use certificate will not allow to edit.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Delete a certificate <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="31" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093511.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093511.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="66093511" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-2-27-15-8-37.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="66093503" data-linked-resource-container-version="5" /></span></p></div></td><td colspan="1" class="confluenceTd">Delete the selected certificate. In use certificate will not allow to delete.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Users <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="26" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093541.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093541.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="66093541" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-2-27-16-13-1.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="66093503" data-linked-resource-container-version="5" /></span></p></div></td><td colspan="1" class="confluenceTd">Click Users button to open User Certification Assignment screen.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Groups <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="26" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093542.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/66093542.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="66093542" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-2-27-16-15-0.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="66093503" data-linked-resource-container-version="5" /></span></p></div></td><td colspan="1" class="confluenceTd">Click Groups button to open Group Certification Assignment screen.</td></tr></tbody></table>



#### Attachments

[image2020-1-23_10-51-12.png](/.attachments/66093504.png)
[image2019-9-21_17-4-3.png](/.attachments/66093505.png)
[image2019-9-21_13-25-21.png](/.attachments/66093506.png)
[image2020-2-27_15-4-26.png](/.attachments/66093508.png)
[image2020-2-27_15-6-22.png](/.attachments/66093509.png)
[image2020-2-27_15-7-55.png](/.attachments/66093510.png)
[image2020-2-27_15-8-37.png](/.attachments/66093511.png)
[image2020-2-27_16-13-1.png](/.attachments/66093541.png)
[image2020-2-27_16-15-0.png](/.attachments/66093542.png)

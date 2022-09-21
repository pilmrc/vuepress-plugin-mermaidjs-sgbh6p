# Introduction

This function setup the permissions associate to a group, with possibility to enable or deny them.


### **How to get there?** 



::: mermaid
graph LR
A("SECURITY MODULE")-->0("GROUPS")
0-->1("PERMISSIONS")

:::


#### Permission



- iFactory Security Application’s “Allow To View Security Configuration” permission to allow user to view all security module information.

- iFactory Security Application’s “Allow to Configure Groups” permission to allow user to make changes such as add and remove permission from a security group.


#### Screen Activity


It associate which functionality of the different application module available in the system, are available or not available for user parts of a security group.
Copy over the permission from other existing group. Although it does not impact on already existing permissions but adds up new permission whatever available in Source group
A user can be part of multiple security groups, in order to have an unique list of application functionality the following logic is applied.
A functionality permission has 2 flags: Always and Enabled
Always means, independently from the value of the same permission in other security group, the one with always flag on override the others
Enabled means the user part of the security group has the authority to execute the associated logic.
This is the priority condition applied.
<table class="confluenceTable"><colgroup><col /><col /><col /><col /></colgroup><tbody><tr><th colspan="1" class="confluenceTh">Priority</th><th class="confluenceTh">Always</th><th class="confluenceTh">Enabled</th><th class="confluenceTh">Result</th></tr><tr><td style="text-align: center;" colspan="1" class="confluenceTd">1</td><td style="text-align: center;" class="confluenceTd">Yes</td><td style="text-align: center;" class="confluenceTd">No</td><td class="confluenceTd"><p>The functionality is never available for the user.</p><p>Note: Always No override Always Yes, if same permission have Always No and Always Yes on two groups.</p></td></tr><tr><td style="text-align: center;" colspan="1" class="confluenceTd">2</td><td style="text-align: center;" class="confluenceTd">Yes</td><td style="text-align: center;" class="confluenceTd">Yes</td><td class="confluenceTd">The functionality is always available for the user.</td></tr><tr><td style="text-align: center;" colspan="1" class="confluenceTd">3</td><td style="text-align: center;" class="confluenceTd">No</td><td style="text-align: center;" class="confluenceTd">No</td><td class="confluenceTd">The user doesn't have access to the functionality (unless another security group grants it with always flag).</td></tr><tr><td style="text-align: center;" colspan="1" class="confluenceTd">4</td><td style="text-align: center;" colspan="1" class="confluenceTd">No</td><td style="text-align: center;" colspan="1" class="confluenceTd">Yes</td><td colspan="1" class="confluenceTd">The user has access to the functionality (unless another security group doesn't grant it access).</td></tr></tbody></table>



#### Pre Condition


Security group and application permission are already created.


#### Screen Dependency



- [Groups](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Groups-Maintenance.md)


- [Applications](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Applications.md)


- [Application Permission](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/Security-and-App-Configuration/Applications/Application-Permission.md)



#### Group's Permission interface


![image2021-1-27_6-44-46.png](/.attachments/86311223.png)


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">Field/Icon</th><th class="confluenceTh">Description</th></tr><tr><td colspan="1" class="confluenceTd">Copy Group Permission</td><td colspan="1" class="confluenceTd">This field is to search for an existing group having some permission inside, so that user can copy over those new permissions from that selected Group. </td></tr><tr><td class="confluenceTd">Application</td><td class="confluenceTd">Application of the security associated. By default select iFactory. Change application will reflect the associated permissions in the list. </td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Permission / Search to add <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="29" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64422107.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/64422107.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="64422107" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2020-1-22-14-33-10.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639269" data-linked-resource-container-version="7" /></span></p></div></td><td class="confluenceTd">Search to add a permission to current security group. Allow multi selection to add to a group.</td></tr><tr><td colspan="1" class="confluenceTd">Name</td><td colspan="1" class="confluenceTd">Name of the permission. Typing the value in the grid table header will filter the list.</td></tr><tr><td class="confluenceTd">Code</td><td class="confluenceTd">Technical name of the permission. Typing the value in the grid table header will filter the list.</td></tr><tr><td class="confluenceTd">Description</td><td class="confluenceTd">Description of the permission. Typing the value in the grid table header will filter the list.</td></tr><tr><td class="confluenceTd">Always</td><td class="confluenceTd">Override value for the permission across all security groups. Selecting a value it is applied to the list.</td></tr><tr><td class="confluenceTd">Enabled</td><td class="confluenceTd">If the user has access or not to a security. Selecting a value it is applied to the list.</td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Cancel <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" width="25" src="attachments/thumbnails/57639244/57639250" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/57639244/image2019-9-21-13-11-28.png?version=1&modificationDate=1569042688303&api=v2" /></span></p></div></td><td class="confluenceTd">Clear the permission list or the values for Application, Name, Code, Always and Enabled filter. Application switch back to default; iFactory.</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p>Copy <span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/86311224.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/86311224.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="86311224" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2021-1-27-6-49-1.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639269" data-linked-resource-container-version="7" /></span></p></div></td><td colspan="1" class="confluenceTd">This icon copies over the permission from other existing searched group available. Although common permissions (available both in Source and Target group) are not impacted by copy. Permission copy over happens in all the applications where source group has the permission.</td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p>Delete <span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" width="25" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639299.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/57639299.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="57639299" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-9-21-16-49-49.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="57639269" data-linked-resource-container-version="7" /></span></p></div></td><td class="confluenceTd">Remove the current permission from the current security group.</td></tr></tbody></table>



#### Attachments

[image2019-9-21_16-41-36.png](/.attachments/57639298.png)
[image2019-9-21_16-49-49.png](/.attachments/57639299.png)
[image2020-1-22_14-16-48.png](/.attachments/64422104.png)
[image2020-1-22_14-33-10.png](/.attachments/64422107.png)
[image2021-1-27_6-44-46.png](/.attachments/86311223.png)
[image2021-1-27_6-49-1.png](/.attachments/86311224.png)

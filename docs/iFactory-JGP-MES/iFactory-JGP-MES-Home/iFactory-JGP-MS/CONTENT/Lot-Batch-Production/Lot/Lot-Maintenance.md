# Introduction

Lot Maintenance is to maintain a Lot to assign Lot Attribute, edit the changes of the existing Lot Attribute or to remove the existing Lot Attribute. 
This screen is restricted to user with permission. 

### How to get there?



::: mermaid
graph LR
A("carrier/LOT")-->0("LOT maintenance")

:::


#### Permission


1. Lot Maintenance - Can Access to Lot Maintenance 

2. View Lot Details - Allows the user to view detailed lot information (operation history, attributes, etc.) 
3. Add Lot Hold - Allows the user to put a lot on hold 
4. Release Lot Hold - Allows the user to release an existing hold on a lot 

#### Screen Activity


Lot Maintenance enables the user to perform the following activity:

- Add Lot Attribute

- Update Lot Attribute

- Remove Lot Attribute

- View history of the performed action (Audit Log)


#### Pre-Condition



- Permission - Can Access Lot/Batch Build " Lot Maintenance (Can Access to Lot Maintenance)

- Lot is released to a Carrier

- Only unique Lot Attribute name and Value can be added


#### Screen Dependency


N/A


#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td class="confluenceTd"><p>Carrier</p></td><td class="confluenceTd"><p>Scan an Carrier Number, Partial input is supported for searching function</p></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/41058443.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/41058436/image2017-4-13%2010%3A28%3A51.png?version=1&modificationDate=1547718975544&api=v2" /></span></span></p></div></td><td class="confluenceTd"><p>Clear Carrier field and the entire screen</p></td></tr><tr><td colspan="1" class="confluenceTd">Add Lot Attribute</td><td colspan="1" class="confluenceTd">Add a new attribute (multiple value allowed) to the lot</td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" height="35" src="attachments/thumbnails/41058436/41058444" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/41058436/image2019-1-17-18-11-13.png?version=1&modificationDate=1547719873539&api=v2" /></span></p></div></td><td class="confluenceTd"><p>Update the existing Lot Attribute Value</p></td></tr><tr><td class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail confluence-external-resource" height="35" src="attachments/thumbnails/41058436/41058446" data-image-src="http://usplnd0wiki01:8090/download/thumbnails/41058436/image2019-1-17-18-12-0.png?version=1&modificationDate=1547719920347&api=v2" /></span></p></div></td><td class="confluenceTd">Remove the existing Lot Attribute Name and Value</td></tr><tr><td colspan="1" class="confluenceTd">Original Value</td><td colspan="1" class="confluenceTd">Value recorded before the change</td></tr><tr><td colspan="1" class="confluenceTd">New Value</td><td colspan="1" class="confluenceTd">Value recorded after the change or the newly added value</td></tr><tr><td colspan="1" class="confluenceTd">Action</td><td colspan="1" class="confluenceTd">Add, Update and Delete</td></tr><tr><td colspan="1" class="confluenceTd">Modified</td><td colspan="1" class="confluenceTd">Date time of the action performed</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">Words recorded when action perform</td></tr><tr><td colspan="1" class="confluenceTd">Modified By</td><td colspan="1" class="confluenceTd">Person who performed the action</td></tr></tbody></table>



#### Attachments

[image2017-7-20 11:31:41.png](/.attachments/41058437.png)
[image2018-12-10_13-1-10.png](/.attachments/41058438.png)
[image2018-12-10_13-1-36.png](/.attachments/41058439.png)
[image2018-12-10_13-2-37.png](/.attachments/41058440.png)
[image2018-12-10_13-4-36.png](/.attachments/41058441.png)
[image2017-7-20 13:37:51.png](/.attachments/41058442.png)
[image2017-4-13 10:28:51.png](/.attachments/41058443.png)
[image2019-1-17_18-11-13.png](/.attachments/41058444.png)
[image2019-1-17_18-11-52.png](/.attachments/41058445.png)
[image2019-1-17_18-12-0.png](/.attachments/41058446.png)

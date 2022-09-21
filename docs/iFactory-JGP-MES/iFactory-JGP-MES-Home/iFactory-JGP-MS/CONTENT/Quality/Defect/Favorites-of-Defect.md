# Introduction

Defect Favorites Maintenance
screen is used to save a list of frequently used defects as favorites which can be retrieved easily to the operation stations. Favorite can be defined by the Customer, Top/Sub material (Phoenix Material Type as WIP/ LotBatch) of the customer to be used in the Route on the Route Step so that user can predetermine what defects are required for the inspection.\*\* This is applicable only to the Initial step of Manual Inspection Entry station which defined as "Allow Auto Release Failed Units" at Route Step.


### How to get there?




::: mermaid
graph LR
A("QUALITY")-->0("Defect Favorites")

:::


#### **Precondition** 


Following need to be pre-configured before use:

- User Permission: Can Access NG -" Defect Favorite -" Can Access Defect Favorite & Can Modify Defect Favorite

- Material configured with WIP or Lot/Batch at "Phoenix Material Type"

- BOM


#### Screen Activity



Enables user to perform the following activity:

- Add

- Copy

- Update

- Delete

- View the favorites of defect at
[MIE ](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Quality/Defect/Favorites-of-Defect.md)station (Route Step should be set as initial step and enabled "Allow Auto Release Failed Units")

#### **Screen Dependency** 



![image2020-4-14_9-45-26.png](/.attachments/69632056.png)



- **All fields are disabled except "Defect Favorites Name" and "Customer" fields.**


- System to enable the next field after the previous sequence of the field has been selected. E.g. Material will be enabled when the Customer is filled up

- Material is filtered by the Customer defined

- Route is filtered by the Material defined

- Route step list is from the Route defined only

- Manual Inspection Entry station will be auto listed to the selection if the route step is defined as Initial step

- Once the Defect Favorites is saved, the Defect Favorites detail add button will be enabled
![image2020-4-14_9-45-26.png](/.attachments/39649439.png)



- Defect Favorite is unique by Customer, Material, Route and Route Step


- Customer and Material field are disabled when user retrieve the defect favorite

- System is allowed copy an existing defect favorites to a new defect favorite

- once the Copy button
![image2019-1-31_16-22-0.png](/.attachments/42991752.png)


is clicked to show the below dialog box. 
![image2019-1-31_16-20-56.png](/.attachments/42991751.png)



- System to copy the full information of the selected defect favorite except the Route and Route Step. Customer and Material field should be disabled.

![image2020-4-14_9-55-1.png](/.attachments/69632057.png)




- System to save a new copy after the mandatory information filled up and click Save button.
![image2019-1-31_16-22-43.png](/.attachments/42991754.png)


When creating a new configuration, the search screen for route will show by default the Active Route/Version, but as option the user can also filter for Route/Version that is in Inactive or New status.
![image2020-4-14_10-1-57.png](/.attachments/69632059.png)


![image2020-4-14_10-2-23.png](/.attachments/69632060.png)




#### **Fields** 



<table class="confluenceTable"><colgroup><col style="width: 161.0px;" /><col style="width: 901.0px;" /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>General Screen</strong></td></tr><tr><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Field</strong></p></td><td class="highlight-grey confluenceTd" data-highlight-colour="grey"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">Defect Favorites Name</td><td colspan="1" class="confluenceTd">Name to be defined by the user</td></tr><tr><td class="confluenceTd"><p>Customer/Division</p></td><td class="confluenceTd"><p>Customer/Division where the configuration will be applied to. <span style="color: rgb(34,34,34);">The customer/division list will show only values associated to the logged on user</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><p>Material</p></td><td colspan="1" class="confluenceTd">Top/Sub material (Phoenix Material Type as WIP/ LotBatch) of the customer</td></tr><tr><td colspan="1" class="confluenceTd">Route / Version</td><td colspan="1" class="confluenceTd">Route version of the Material</td></tr><tr><td colspan="1" class="confluenceTd">Route Step</td><td colspan="1" class="confluenceTd">Route Step that defect favorites going to be used</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="36" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/42991754.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/42991754.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="42991754" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-1-31-16-22-43.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="39649431" data-linked-resource-container-version="4" /></span></p></div></td><td colspan="1" class="confluenceTd">Save the filled up information of the defect favorite</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="34" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/42991753.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/42991753.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="42991753" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-1-31-16-22-20.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="39649431" data-linked-resource-container-version="4" /></span></p></div></td><td colspan="1" class="confluenceTd">Copy an existing defect favorite</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="35" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/42991755.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/42991755.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="42991755" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-1-31-16-22-54.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="39649431" data-linked-resource-container-version="4" /></span></p></div></td><td colspan="1" class="confluenceTd">Clear the screen</td></tr><tr><td colspan="1" class="confluenceTd"><div class="content-wrapper"><p><span class="confluence-embedded-file-wrapper confluence-embedded-manual-size"><img class="confluence-embedded-image confluence-thumbnail" height="31" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/42991756.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/42991756.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="42991756" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2019-1-31-16-23-11.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="39649431" data-linked-resource-container-version="4" /></span></p></div></td><td colspan="1" class="confluenceTd">Remove an existing defect favorite</td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><strong>Details</strong></td></tr><tr><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Field</strong></td><td class="highlight-grey confluenceTd" colspan="1" data-highlight-colour="grey"><strong>Description</strong></td></tr><tr><td colspan="1" class="confluenceTd">Defect Type</td><td colspan="1" class="confluenceTd">Define the defect type for the sub material</td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">Top/Sub Material of the Material defined on the screen. Material can be defined as the Top Material or Child material or both. Materials are referring to BOM</td></tr><tr><td colspan="1" class="confluenceTd">CRD Name</td><td colspan="1" class="confluenceTd">CRD of the Material located which is optional field</td></tr></tbody></table>



#### Attachments

[image2018-4-26 15:48:52.png](/.attachments/39649433.png)
[image2018-4-26 15:52:19.png](/.attachments/39649434.png)
[image2018-4-26 17:8:4.png](/.attachments/39649435.png)
[image2018-4-26 17:10:28.png](/.attachments/39649436.png)
[image2018-12-18_10-34-23.png](/.attachments/39649437.png)
[image2018-12-18_10-49-15.png](/.attachments/39649438.png)
[image2018-12-18_11-23-4.png](/.attachments/39649439.png)
[image2019-1-31_16-20-56.png](/.attachments/42991751.png)
[image2019-1-31_16-22-0.png](/.attachments/42991752.png)
[image2019-1-31_16-22-20.png](/.attachments/42991753.png)
[image2019-1-31_16-22-43.png](/.attachments/42991754.png)
[image2019-1-31_16-22-54.png](/.attachments/42991755.png)
[image2019-1-31_16-23-11.png](/.attachments/42991756.png)
[image2019-1-31_16-28-16.png](/.attachments/42991757.png)
[image2020-4-14_9-45-26.png](/.attachments/69632056.png)
[image2020-4-14_9-55-1.png](/.attachments/69632057.png)
[image2020-4-14_10-1-57.png](/.attachments/69632059.png)
[image2020-4-14_10-2-23.png](/.attachments/69632060.png)

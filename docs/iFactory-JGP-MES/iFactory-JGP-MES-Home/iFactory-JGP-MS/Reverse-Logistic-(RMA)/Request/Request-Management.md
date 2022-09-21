# Introduction

An RMA (Return Material Authorization) request is used to track the units that the customer returns to Jabil for additional work.
Request Management screen is designed for creation and change of RMA Request.
In this screen it is possible to submit and accept RMA Request but it is not possible to change status of submitted Request or to change status of Request Item.

For Request and Item status changes please use 
**Request-"Review** option.
How to get there?


::: mermaid
graph LR
A("REQUEST")-->0("MANAGEMENT")

:::


### Screen Activity


Request Management enables user to perform the following activities:

- Create RMA request.


- Save

RMA request as "Drafted".
- Import an RMA request by XML file


- Import Items into a Group by .csv or .txt file


- View RMA request.


- Modify RMA request.

- Submit RMA request.

- Accept RMA request (single step for submission and acceptance).

*Request Information* 
The first step in creation of RMA Request is to enter Request Information and click "+" to save it as "Drafted".
Once "Drafted" request was created it is possible to enter additional data like "Request Properties" and "Materials and Items".
It is not possible to change in a created Request the fields that affect its processing: "Request Type", 
"Site", "Customer Division", "Factory"."Drafted" request can be saved, deleted, submitted or accepted. 
The diagram presents the processing of RMA Request.

![](/.attachments/29920917.png)



*Materials and Items* 
This screen is used to manage Request Items. Request Items are grouped into "Material Groups". "Material Group" is used to group the items with the same characteristics.
Material Group may be entered with serial numbers or only with the "Quantity" indicating how many units will be returned for this Material Group. Serial numbers will be added to Material Group later for example when they are physically received to Jabil.
Serial numbers must be added to all Material Groups before request is dispatched to production floor ("Rework", "Upgrade") or status is changed to "Completed" ("Return").
The diagram presents the processing of RMA Item.
![](/.attachments/29920915.png)


When serial number is added to Material Group additional fields can be displayed which were configured as Item Properties. 
RMA Request can be submitted or accepted only if all required values were entered and at least one Material Group was added.
Can be possible to Imports Item from a csv file or text file when creating a material group. ( see the attachments 
RMASerials2.csv and RMA
Serials.txt) 
![](/.attachments/29920921.png)




#### Pre Condition


The following data needs to be pre-configured (if used) before user creates a RMA request: 

- Contacts

- Emails notifications

- Jabil Shipping Addresses

- Customer Shipping Addresses

- Failure Categories

- Failure Symptoms

- Request Properties

- Request Item Properties

- Timeouts (if applicable)


#### Screen Dependency



The following screen(s) has direct dependency with Request Management:
- Request Review

- Request Dispatch


#### Fields



<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="RequestManagement-RequestInformation"><strong>Request Information</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Request type*</p></td><td class="confluenceTd"><p><strong>Rework: </strong>This type is used when the customer request to Jabil to perform a rework to returned units. The responsibility can be from "Jabil", "Customer" or "Unknown".</p><p><strong>Return: </strong>This type is used when units are returned and they will not be send back to the customer.<strong> </strong>These units don't require any upgrade or rework.<strong> </strong></p><p><strong>Upgrade:</strong> This type is used when a software o a material is required to upgrade. Usually the customer pays for it.</p></td></tr><tr><td class="confluenceTd"><p>Site*</p></td><td class="confluenceTd"><p><span>To indicate the RMA Request belongs to specific Site.</span></p></td></tr><tr><td class="confluenceTd"><p>Customer/Division*</p></td><td class="confluenceTd"><p><span>To indicate this RMA request belongs to specific Customer/Division.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Customer Contact*</td><td colspan="1" class="confluenceTd"><span>This person is the customer contact point for RMA request related matter. </span></td></tr><tr><td colspan="1" class="confluenceTd">Customer Shipping Address*</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);"><span style="color: rgb(51,51,51);">Jabil can return customer's RMA items to this address after RMA work completion. Each customer shipping address is specific to particular Customer/Division at Jabil Site</span>.<span style="color: rgb(51,51,51);"> Only apply when Request Type is Rework and Upgrade.</span> </span></td></tr><tr><td colspan="1" class="confluenceTd">Jabil Contact*</td><td colspan="1" class="confluenceTd"><span>This person is the Jabil contact point for RMA request related matter. </span></td></tr><tr><td colspan="1" class="confluenceTd">Jabil Shipping Address</td><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">The customer can send their RMA items to this address.</span></td></tr><tr><td colspan="1" class="confluenceTd">PO Number</td><td colspan="1" class="confluenceTd">The PO number assigned to the RMA.</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd">Additional RMA request comments can be entered here.</td></tr><tr><td colspan="1" class="confluenceTd">Request Status</td><td colspan="1" class="confluenceTd">The current RMA request status.</td></tr><tr><td colspan="1" class="confluenceTd">Submit</td><td colspan="1" class="confluenceTd">The RMA request will be submitted.</td></tr><tr><td colspan="1" class="confluenceTd">Accept</td><td colspan="1" class="confluenceTd"><span>The RMA request will be submitted and accepted.</span></td></tr><tr><td colspan="1" class="confluenceTd">RMA Request Number</td><td colspan="1" class="confluenceTd">The number assigned to track the RMA request. Request number will change when its status is changed from "Drafted" to "Submitted"/"Accepted".</td></tr><tr><td colspan="1" class="confluenceTd"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29920922.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29920913/image2016-4-8%2012%3A12%3A33.png?version=1&modificationDate=1530843078850&api=v2" /></span></td><td colspan="1" class="confluenceTd">Upload a XML file to create the RMA Request. Please see the attachment:<p>request-sample-001.xml</p></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="RequestManagement-RequestProperties">Request Properties</h5></td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td class="confluenceTd">Request Properties</td><td class="confluenceTd"><span>Request Property provides </span><span style="color: rgb(34,34,34);">an attribute, quality, or characteristic of an RMA Request. List of Properties is specific per "Site", "Customer Division" and "Request Type".</span></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="RequestManagement-MaterialGroup">Material Group</h5></td></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td colspan="1" class="confluenceTd">Request Item Group Name*</td><td colspan="1" class="confluenceTd">Name of Material Group. It must be unique within RMA Request.</td></tr><tr><td colspan="1" class="confluenceTd">Quantity</td><td colspan="1" class="confluenceTd">By default the field is empty. If you want to control the maximum number of assigned serial numbers you can enter the Quantity. <br />If you plan to submit Request without serial numbers assigned, Quantity must be entered as it defines the number of serial numbers allowed to be added.</td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd"><span>Additional comment for Material Group can be entered here.</span></td></tr><tr><td colspan="1" class="confluenceTd">Reason for changes*</td><td colspan="1" class="confluenceTd">When RMA Request was submitted, it is required to enter the reason of Material Group modification.</td></tr><tr><td colspan="1" class="confluenceTd">Material*</td><td colspan="1" class="confluenceTd">Material Number of a unit to be returned. Now it also support for Alias Material selection. </td></tr><tr><td colspan="1" class="confluenceTd">Assembly Revision</td><td colspan="1" class="confluenceTd"><span>Assembly Revision of a returned serial number.</span></td></tr><tr><td colspan="1" class="confluenceTd"><p><span style="color: rgb(0,0,0);">Upgrade Material</span></p></td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">In case RMA type is upgrade you can enter the Upgrade Material Number - optional.</span></td></tr><tr><td colspan="1" class="confluenceTd">Upgrade Assembly Revision</td><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">In case RMA type is upgrade you can enter the Upgrade Assembly Revision - optional. </span></td></tr><tr><td colspan="1" class="confluenceTd"><p>Customer Product Name</p></td><td colspan="1" class="confluenceTd">The <span>Customer Product Name - optional.</span></td></tr><tr><td colspan="1" class="confluenceTd">Customer Defect</td><td colspan="1" class="confluenceTd">Customer Defect - optional.</td></tr><tr><td colspan="1" class="confluenceTd">Responsible Party</td><td colspan="1" class="confluenceTd"><span>Who is responsible for the RMA. Can be: "Unknown", "Customer" or "Jabil".</span></td></tr><tr><td colspan="1" class="confluenceTd">In Warranty</td><td colspan="1" class="confluenceTd"><span>Indicates if a serial number is in warranty. It can be "ON" or "OFF".</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Failure Category*</span></td><td colspan="1" class="confluenceTd"><span>Failure Category. <span>This field displays only for "Rework" type. </span>List of available categories is configured per Customer. At least one "Failure Category/Symptom" must be assigned per Material Group.</span></td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(0,0,0);">Failure Symptom*</span></td><td colspan="1" class="confluenceTd"><span>Failure Symptom. <span>This field displays only for "Rework" type. </span><span>List of available symptoms is configured per Customer. It is filtered by selected "Failure Category". It is possible to assign more than one "Failure Category/Symptom".</span></span></td></tr><tr><td style="text-align: center;" colspan="2" class="confluenceTd"><h5 id="RequestManagement-MaterialGroup-SerialNumber"><strong>Material Group - Serial Number</strong></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,51,102);">Field</span></td><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,51,102);">Description</span></td></tr><tr><td colspan="1" class="confluenceTd">Serial Number*</td><td colspan="1" class="confluenceTd"><span>The serial number to be returned - assigned to Material Group. When entered it is validation the barcode mask assigned to the Material/Assembly in the Shop Floor Control system and the uniqueness of the Serial Number(by Material or by Customer), the return limit and that dont exists in another request. </span></td></tr><tr><td colspan="1" class="confluenceTd">Comment</td><td colspan="1" class="confluenceTd"><span>Additional comment for a Serial Number can be entered here.</span></td></tr><tr><td colspan="1" class="confluenceTd">Return Count</td><td colspan="1" class="confluenceTd">Number of times a serial number was returned to Jabil. If "Return Count Limit" was configured then a serial number will be automatically put "OnHold" if the limit was exceeded.</td></tr><tr><td colspan="1" class="confluenceTd"><span style="color: rgb(51,51,51);">Status</span></td><td colspan="1" class="confluenceTd"><p><span style="color: rgb(51,51,51);">Status of a serial number. Initial status when a serial number is added is "<strong>Pending</strong>".</span></p><p><span style="color: rgb(51,51,51);">Once the RMA request is accepted the item will be "<strong>Accepted</strong>" automatically, also can be change it manually in RMA request Review screen</span></p><p><span style="color: rgb(51,51,51);"><strong>"OnHold" </strong>- It is a flag to put a RMA Item on OnHold. This apply automatically when Item fail the Return Limit. RMA Order can't be accepted until this item status is changed to: “Rejected”, “Accepted”, “Cancelled”. Once the item is accepted can not be placed on hold. </span></p><p><span style="color: rgb(51,51,51);">"<strong>Cancel</strong>" - When the item is not longer needed. Cancelation comment is required.</span></p><p><span style="color: rgb(51,51,51);"> </span><span style="color: rgb(0,0,0);">"<span style="color: rgb(51,51,51);"><strong>Rejected</strong>"</span></span><span style="color: rgb(0,0,0);"> - <span style="color: rgb(51,51,51);">When the item needs to be rejected. Rejection comment is required.</span></span></p><p><span style="color: rgb(0,0,0);"><span style="color: rgb(51,51,51);">Action to perfom in the Serials once it is dispached </span></span></p><p><span>"</span><strong>Scrap</strong><span>" - When the item can not be repared </span></p><p><span>"<strong>UnScrap</strong></span><span>" - to rollback the operation of unscrap</span></p><p><span>"</span><strong>Close</strong><span>" - When the item is completed by Jabil and manully needs to be closed because it is needed to enter again and the Request still it is active. </span></p></td></tr><tr><td colspan="1" class="confluenceTd">Action</td><td colspan="1" class="confluenceTd">Actions available for a Serial Number. List of available actions depends on the Request status.</td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: center;" id="RequestManagement-MaterialGroup-SerialNumber-RequestItemProperty">Material Group - Serial Number - Request Item Property</h5></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Request Item Property</td><td colspan="1" class="confluenceTd"><span>Request Item Property provides </span><span style="color: rgb(34,34,34);">an attribute, quality, or characteristic of a RMA Item. <span style="color: rgb(34,34,34);">List of Item Properties is specific per "Site", "Customer Division" and "Request Type".</span></span></td></tr></tbody></table>

**Jabil can return customer’s RMA items to this address after RMA work completion. Each customer shipping address is specific to particular Customer/Division at Jabil Site** 
.Only apply when Request Type is Rework and Upgrade.
Jabil Contact\*This person is the Jabil contact point for RMA request related matter. Jabil Shipping AddressThe customer can send their RMA items to this address.
PO NumberThe PO number assigned to the RMA.CommentAdditional RMA request comments can be entered here.Request StatusThe current RMA request status.SubmitThe RMA request will be submitted.AcceptThe RMA request will be submitted and accepted.RMA Request NumberThe number assigned to track the RMA request. Request number will change when its status is changed from "Drafted" to "Submitted"/"Accepted".![](/.attachments/29920922.png)


Upload a XML file to create the RMA Request. Please see the attachment:
request_sample_001.xml
Request PropertiesFieldDescriptionRequest PropertiesRequest Property provides an attribute, quality, or characteristic of an RMA Request. List of Properties is specific per "Site", "Customer Division" and "Request Type".
Material GroupFieldDescriptionRequest Item Group Name\*Name of Material Group. It must be unique within RMA Request.QuantityBy default the field is empty. If you want to control the maximum number of assigned serial numbers you can enter the Quantity. 
If you plan to submit Request without serial numbers assigned, Quantity must be entered as it defines the number of serial numbers allowed to be added.CommentAdditional comment for Material Group can be entered here.Reason for changes\*When RMA Request was submitted, it is required to enter the reason of Material Group modification.Material\*Material Number of a unit to be returned. Now it also support for Alias Material selection. Assembly RevisionAssembly Revision of a returned serial number.Upgrade Material
In case RMA type is upgrade you can enter the Upgrade Material Number - optional.
Upgrade Assembly RevisionIn case RMA type is upgrade you can enter the Upgrade Assembly Revision - optional. 
Customer Product Name
The Customer Product Name - optional.Customer DefectCustomer Defect - optional.Responsible PartyWho is responsible for the RMA. Can be: "Unknown", "Customer" or "Jabil".In WarrantyIndicates if a serial number is in warranty. It can be "ON" or "OFF".Failure Category\*
Failure Category. This field displays only for "Rework" type. List of available categories is configured per Customer. At least one "Failure Category/Symptom" must be assigned per Material Group.Failure Symptom\*
Failure Symptom. This field displays only for "Rework" type. List of available symptoms is configured per Customer. It is filtered by selected "Failure Category". It is possible to assign more than one "Failure Category/Symptom".**Material Group - Serial Number** Field
Description
Serial Number\*The serial number to be returned - assigned to Material Group. When entered it is validation the barcode mask assigned to the Material/Assembly in the Shop Floor Control system and the uniqueness of the Serial Number(by Material or by Customer), the return limit and that dont exists in another request. CommentAdditional comment for a Serial Number can be entered here.Return CountNumber of times a serial number was returned to Jabil. If "Return Count Limit" was configured then a serial number will be automatically put "OnHold" if the limit was exceeded.Status
Status of a serial number. Initial status when a serial number is added is "
**Pending** ".Once the RMA request is accepted the item will be "
**Accepted** " automatically, also can be change it manually in RMA request Review screen**"OnHold"**  
- It is a flag to put a RMA Item on OnHold. This apply automatically when Item fail the Return Limit. RMA Order can’t be accepted until this item status is changed to: “Rejected”, “Accepted”, “Cancelled”. Once the item is accepted can not be placed on hold. "
**Cancel** " - When the item is not longer needed. Cancelation comment is required.
"
**Rejected** 
"- 
When the item needs to be rejected. Rejection comment is required.
Action to perfom in the Serials once it is dispached 
"
**Scrap** " - When the item can not be repared "
**UnScrap** " - to rollback the operation of unscrap"
**Close** " - When the item is completed by Jabil and manully needs to be closed because it is needed to enter again and the Request still it is active. ActionActions available for a Serial Number. List of available actions depends on the Request status.Material Group - Serial Number - Request Item PropertyFieldDescriptionRequest Item PropertyRequest Item Property provides an attribute, quality, or characteristic of a RMA Item. 
List of Item Properties is specific per "Site", "Customer Division" and "Request Type".


#### Attachments

[request_sample_001.xml](/.attachments/29920914.xml)
[image2017-7-4 16:24:0.png](/.attachments/29920915.png)
[image2017-7-4 16:23:22.png](/.attachments/29920916.png)
[image2017-7-4 16:19:30.png](/.attachments/29920917.png)
[image2016-4-8 16:47:49.png](/.attachments/29920918.png)
[RMASerials2.csv](/.attachments/29920919.csv)
[RMASerials.txt](/.attachments/29920920.txt)
[image2016-4-8 12:34:36.png](/.attachments/29920921.png)
[image2016-4-8 12:12:33.png](/.attachments/29920922.png)
[image2016-3-18 17:17:25.png](/.attachments/29920923.png)
[image2016-3-18 9:38:1.png](/.attachments/29920924.png)
[image2016-3-18 9:36:54.png](/.attachments/29920925.png)
[image2015-8-13 11:40:22.png](/.attachments/29920926.png)
[image2015-8-13 11:39:8.png](/.attachments/29920927.png)

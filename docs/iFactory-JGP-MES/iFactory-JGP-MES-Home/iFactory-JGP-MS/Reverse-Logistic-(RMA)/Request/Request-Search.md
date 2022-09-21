# Introduction

Request Search screen is designed to allow user search existing RMA Requests in the system with various criteria.
The output result will be presented on screen in tabular form and allow user to drill into individual Request and display the information on Request View screen by clicking the request.


### How to get there?



::: mermaid
graph LR
A("REQUEST")-->0("SEARCH")

:::


#### Screen Activity


Request Search screen enables user to perform RMA Request searching with the following filter groups.
All filtering criteria are optional. Cross filtering group criteria is possible. User just needs to do all necessary criteria selection and click any of the Search button. The ONLY thing to take note, multiple selections of single criteria is not possible. 
![image2016-3-18 16:25:16.png](/.attachments/29920991.png)




- Filter by Request


- RMA Request Number

- Request Type

- Request Status

- On Hold status [No Filter / Yes / No]

- Filter by Site and Customer Division


- Site

- Customer Division

- Filter by Contact and Address



- Jabil Contact

- Customer Contact

- Customer Shipping Address

- Filter by Material and Assembly Revision


- Product Family

- Material

- Assembly Revision

- Filter by Failure Category and Symptom


- Failure Category

- Failure Symptom
Search result will include all requests which fulfill the filtering criteria, with various request status except “Drafted”.
![image2016-3-18 16:26:47.png](/.attachments/29920990.png)




#### Pre Condition



- RMA Request to be searched MUST NOT in Drafted status.


#### Screen Dependency


N/A


#### Fields




<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Filter By Request</strong></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td colspan="1" class="confluenceTd">RMA Request Number</td><td colspan="1" class="confluenceTd"><p>This is the system generate number for the RMA request. Sometime we refer this as RMA Order Number.</p><p>If this field is filled, it has to be a valid RMA request number which start with “RMA”.  System will search for the specific RMA Request.</p></td></tr><tr><td class="confluenceTd"><p>Request Type</p></td><td class="confluenceTd"><p>Default to “<strong>All</strong>” option, system will not consider the Request Type when searching for RMA requests. (Default option)</p><p><strong>Rework: </strong><span>If this option selected, system will only search for </span><strong>Rework</strong><span> type of RMA requests.</span></p><p><strong>Return: </strong>If this option selected, system will only search for <strong>Return</strong> type of RMA requests.<strong> </strong></p><p><strong>Upgrade:</strong> If this option selected, system will only search for <strong>Upgrade</strong> type of RMA requests.</p></td></tr><tr><td colspan="1" class="confluenceTd">Request Status</td><td colspan="1" class="confluenceTd"><p>Default to “<strong>All</strong>” option. <span>System will filter RMA requests base on selected Request Status. </span></p></td></tr><tr><td class="confluenceTd"><p>On Hold</p></td><td class="confluenceTd"><p>Default to “<strong>No Filter</strong>” option.</p><p>This is the flag for filtering “On Hold” requests. User may choose desired “Yes” or “No” option.</p></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Filter By Site and Customer Division</strong></td></tr><tr><td colspan="1" class="confluenceTd">Site</td><td colspan="1" class="confluenceTd">Default to “<strong>All</strong>” option. This field refers to specific Jabil site of RMA Requests.</td></tr><tr><td colspan="1" class="confluenceTd">Customer Division</td><td colspan="1" class="confluenceTd">Default to “<strong>All</strong>” option. This field refers to specific “Customer / Division” of RMA Requests.</td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Filter By Contact and Address</strong></td></tr><tr><td colspan="1" class="confluenceTd">Jabil Contact</td><td colspan="1" class="confluenceTd">Jabil Contact Person for the RMA Request. If a specific Jabil Contact selected, Requests with this Contact will be retrieved.</td></tr><tr><td colspan="1" class="confluenceTd">Customer Contact</td><td colspan="1" class="confluenceTd">Customer Contact Person for the RMA Request. If a specific Customer Contact selected, Requests with this Contact will be retrieved.</td></tr><tr><td colspan="1" class="confluenceTd">Customer Shipping Address</td><td colspan="1" class="confluenceTd">Customer Shipping Address of the RMA Request. If selected, Requests with this desired Customer Shipping Address will be retrieved.</td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Filter By Material and Assembly Revision</strong></td></tr><tr><td colspan="1" class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">Request item's Product Family. </td></tr><tr><td colspan="1" class="confluenceTd">Material</td><td colspan="1" class="confluenceTd"><p>Assembly Number or Material of the Request Item. <span>It is filtered by selected “Product Family”.</span></p></td></tr><tr><td colspan="1" class="confluenceTd">Assembly Revision</td><td colspan="1" class="confluenceTd"><p>Assembly Revision of the Request Item. <span>It is filtered by selected “Product Family” and “Material”.</span></p></td></tr><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><strong>Filter By Failure Category and Symptom</strong></td></tr><tr><td colspan="1" class="confluenceTd">Failure Category</td><td colspan="1" class="confluenceTd"><span>Failure Category assigned to request item (Material Group).</span></td></tr><tr><td colspan="1" class="confluenceTd">Failure Symptom</td><td colspan="1" class="confluenceTd"><span>Failure Symptom assigned to request item (Material Group). It is filtered by selected "Failure Category". </span></td></tr></tbody></table>

**Request item’s Product Family.**  
MaterialAssembly Number or Material of the Request Item. 
It is filtered by selected “Product Family”.Assembly RevisionAssembly Revision of the Request Item. 
It is filtered by selected “Product Family” and “Material”.**Filter By Failure Category and Symptom** Failure CategoryFailure Category assigned to request item (Material Group).Failure SymptomFailure Symptom assigned to request item (Material Group). It is filtered by selected "Failure Category". <table class="confluenceTable"><tbody><tr><th class="nohighlight confluenceTh" colspan="2" style="text-align: center;"><strong>Search results</strong></th></tr><tr><td class="highlight confluenceTd">Field</td><td class="highlight confluenceTd">Description</td></tr><tr><td class="confluenceTd">RMA Request Number</td><td class="confluenceTd">RMA request number</td></tr><tr><td class="confluenceTd">Customer</td><td class="confluenceTd">Customer of the RMA request</td></tr><tr><td colspan="1" class="confluenceTd">Division</td><td colspan="1" class="confluenceTd">Customer's Division of the RMA request.</td></tr><tr><td colspan="1" class="confluenceTd">Jabil Contact</td><td colspan="1" class="confluenceTd">Respective Jabil contact person of the RMA request.</td></tr><tr><td colspan="1" class="confluenceTd">Customer Contact</td><td colspan="1" class="confluenceTd">Respective Customer contact person of the RMA request.</td></tr><tr><td colspan="1" class="confluenceTd">Customer Address</td><td colspan="1" class="confluenceTd">Specific customer shipping address of the RMA request.</td></tr><tr><td colspan="1" class="confluenceTd">Type</td><td colspan="1" class="confluenceTd">Request type of the RMA request.</td></tr><tr><td colspan="1" class="confluenceTd">Status</td><td colspan="1" class="confluenceTd">RMA request current status.</td></tr><tr><td colspan="1" class="confluenceTd">On Hold</td><td colspan="1" class="confluenceTd">Indicate if the RMA request is current put On-Hold.</td></tr></tbody></table>

Customer’s Division of the RMA request.Jabil ContactRespective Jabil contact person of the RMA request.Customer ContactRespective Customer contact person of the RMA request.Customer AddressSpecific customer shipping address of the RMA request.TypeRequest type of the RMA request.StatusRMA request current status.On HoldIndicate if the RMA request is current put On-Hold.

#### Attachments

[image2016-3-18 16:26:47.png](/.attachments/29920990.png)
[image2016-3-18 16:25:16.png](/.attachments/29920991.png)

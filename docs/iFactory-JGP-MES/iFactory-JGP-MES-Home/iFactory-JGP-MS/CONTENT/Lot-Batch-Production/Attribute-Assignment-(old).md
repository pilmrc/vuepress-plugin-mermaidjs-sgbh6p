# Introduction

From this Attribute Assignment Configuration screen the administrator is able to define the Attribute Names that are to be assigned to WIP, Serialized Materials, or Non-Serialized Materials for Lot based manufacturing.
Each Attribute is also configured to be of a specific Attribute Type (Prompt, List, or Const). The Attributes are set by Route Step according to a Scope of Material, Product Family, or Customer.  
These attributes are to be set by the users at workstations based on the configuration defined in this screen. The configuration screen defines the attribute name, value type, to be set at Route Step depending on a matching scope of Material, Product Family, or Customer criteria. The configuration can be applied to all Materials for a Customer, all Materials of a Product Family, or to a specific Material. The configuration is 
hierarchal in nature, if more than one configuration applies the more specific configuration is used. For example, if multiple configurations exist for a specific route step the most specific configuration is used according to the material that is being processed.  Let's say a material M-123 is assigned to Product Family PF-ABC, and is used to build a product for Customer CUS-XYZ. When processing Material M-123 at a route step A1 that has Material, Product Family and Customer defined and all three values match for the material being processed,
the most specific (Material) would apply so the user would be required to set attribute Att-A & Att-Q. If Material M-226 were to arrive at the route step the Attribute Att-B would be set as Product Family is more specific than Customer. If material M-12 were to arrive at the route step the Attribute Att-C would be set as only Customer scope applies.If Material M-909 were to arrive at the route step then no Attribute would be set as no matching scope applies. **Example Configurations for Step A1** 
<table class="confluenceTable"><tbody><tr><th class="confluenceTh">Route Step</th><th class="confluenceTh">Scope</th><th colspan="1" class="confluenceTh">Value</th><th class="confluenceTh">Attribute</th></tr><tr><td class="confluenceTd">Step A1</td><td class="confluenceTd">Material</td><td colspan="1" class="confluenceTd">M-123</td><td class="confluenceTd"><p>Att-A</p><p><span>Att-Q</span></p></td></tr><tr><td class="confluenceTd"><span>Step A1</span></td><td class="confluenceTd">Product Family</td><td colspan="1" class="confluenceTd">PF-ABC</td><td class="confluenceTd">Att-B</td></tr><tr><td class="confluenceTd"><span>Step A1</span></td><td class="confluenceTd">Customer</td><td colspan="1" class="confluenceTd">CUS-XYZ</td><td class="confluenceTd">Att-C</td></tr></tbody></table>


**Example**  
Material Configurations<table class="confluenceTable"><tbody><tr><th class="confluenceTh"><span style="color: rgb(0,0,0);">Material</span></th><th class="confluenceTh"><span style="color: rgb(0,0,0);">Product Family</span></th><th class="confluenceTh"><span style="color: rgb(0,0,0);">Customer</span></th></tr><tr><td class="confluenceTd"><span>M-123</span></td><td class="confluenceTd"><span> PF-ABC</span></td><td class="confluenceTd"><span>CUS-XYZ</span></td></tr><tr><td class="confluenceTd"><span>M-226</span></td><td class="confluenceTd"><span> PF-ABC</span></td><td class="confluenceTd"><span>CUS-XYZ</span></td></tr><tr><td class="confluenceTd"><span>M-12</span></td><td class="confluenceTd"><span> PF-CCA</span></td><td class="confluenceTd"><span>CUS-XYZ</span></td></tr><tr><td class="confluenceTd"><span>M-909</span></td><td class="confluenceTd"> </td><td class="confluenceTd"><span>CUS-ZZT</span></td></tr></tbody></table>

How to get there?

::: mermaid
graph LR
A("CONFIGURATION")-->0("ATTRIBUTE ASSIGNMENT")

:::


### **Screen Activity** 


Attribute Assignment enables the user to perform the following activity:

- Define the Attribute Name(s) and Attribute Data Types to be assigned to a material at a specific Route Step

- Edit the Attribute Name(s) and Attribute Data Types to be assigned to a material at a specific Route Step

- Delete the Attribute Name(s) and Attribute Data Types to be assigned to a material at a specific Route Step



#### Pre Condition


The following data needs to be pre-configured (if used) before user configures 
Attribute Assignment
- Material Maintenance / Material created

- Material Maintenance /
Product Family optional   
- Material Maintenance / Material Group manually or from SAP

- Material Group / Customer Division defined

- Route and Route Steps defined



#### Screen Dependency



- Lot Workstation / Lot Attributes (Assignment Dialog at workstation)

- Lot View / Lot Attributes tab



#### Fields



<table class="confluenceTable"><tbody><tr><td colspan="2" style="text-align: center;" class="confluenceTd"><h5 style="text-align: left;" id="AttributeAssignment(old)-ScopeType"><strong><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917741.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917741.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29917741" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2016-9-29 14:35:55.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29917736" data-linked-resource-container-version="1" /></span>Scope Type</strong></h5></td></tr><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Select Scope</p></td><td class="confluenceTd"><p>Select Radio Button for Material, Product Family, Customer</p></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: left;" id="AttributeAssignment(old)-ScopeDefinition"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917740.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917740.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29917740" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2016-9-29 14:41:11.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29917736" data-linked-resource-container-version="1" /></span>Scope Definition</h5></td></tr><tr><td class="highlight confluenceTd" colspan="1">Field</td><td class="highlight confluenceTd" colspan="1">Description</td></tr><tr><td colspan="1" class="confluenceTd">Select Material</td><td colspan="1" class="confluenceTd">Search Field, enter partial or exact match for the specific material. This field only appears is Material Scope was selected in step 1</td></tr><tr><td colspan="1" class="confluenceTd"><span>Select<span style="color: rgb(255,255,255);">.</span>Product<span style="color: rgb(255,255,255);">.</span>Family</span></td><td colspan="1" class="confluenceTd"><p><span>Search Field, enter partial or exact match for the specific Product Family. This field only appears is Product Family Scope was selected in step 1</span></p></td></tr><tr><td colspan="1" class="confluenceTd"><span>Select Customer</span></td><td colspan="1" class="confluenceTd"><p><span>Search Field, enter partial or exact match for the specific Customer. This field only appears is Customer Scope was selected in step 1</span></p></td></tr><tr><td colspan="2" class="confluenceTd"><h5 style="text-align: left;" id="AttributeAssignment(old)-Add,Edit,orDeleteaConfiguration"><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917737.png&$format=octetStream" data-image-src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917737.png&$format=octetStream" data-unresolved-comment-count="0" data-linked-resource-id="29917737" data-linked-resource-version="1" data-linked-resource-type="attachment" data-linked-resource-default-alias="image2016-9-29 14:56:13.png" data-base-url="http://usplnd0wiki01:8090" data-linked-resource-content-type="image/png" data-linked-resource-container-id="29917736" data-linked-resource-container-version="1" /></span><span style="font-size: 1.2em;text-align: left;">Add, Edit, or Delete a Configuration</span></h5></td></tr><tr><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,51,102);">Field</span></td><td class="highlight confluenceTd" colspan="1"><span style="color: rgb(0,51,102);">Description</span></td></tr><tr><td colspan="1" class="confluenceTd">Attribute Name</td><td colspan="1" class="confluenceTd">This field is used to enter the name of the attribute. This is whatever is needed as a text based name.</td></tr><tr><td colspan="1" class="confluenceTd">Route Name</td><td colspan="1" class="confluenceTd">This field is used to select the Route that will be used when specifying the Attribute Value</td></tr><tr><td colspan="1" class="confluenceTd">Route Step Name</td><td colspan="1" class="confluenceTd"><span>This field is used to select the Route Step that will be used when specifying the Attribute Value</span></td></tr><tr><td colspan="1" class="confluenceTd">Attribute Type</td><td colspan="1" class="confluenceTd">This field will define the type of Attribute Value is to be assigned. Valid choices are Prompt, List, and Constant for WIP and Serialized materials. <span>Valid choices are Prompt, and List for Non-Serialized materials in Lot based processing. Note that if a non supported Attribute Type configuration is encourntered the user will be notified and the operation will Abort at the workstation.</span></td></tr><tr><td colspan="1" class="confluenceTd">User Prompt</td><td colspan="1" class="confluenceTd">This field is to enter the User Prompt / instructions that are displayed to the operator to direct them as to what input is required. This field is applicable for and Attribute Type of Prompt and List.</td></tr><tr><td colspan="1" class="confluenceTd">Value</td><td colspan="1" class="confluenceTd"><span>This field is to enter the User choices that are displayed to the operator to direct them as to what input is applicable for a List Attribute Type. This field is applicable only for Attribute Type of List.</span></td></tr><tr><td colspan="1" class="confluenceTd">Sequence</td><td colspan="1" class="confluenceTd">This field is used to identify the order that the Attributes will be presented to the operator at the Workstation in the event that more than one attribute is configured for assignment.</td></tr></tbody></table>



#### Attachments

[image2016-9-29 14:56:13.png](/.attachments/29917737.png)
[image2016-9-29 14:41:28.png](/.attachments/29917738.png)
[image2016-9-29 14:41:24.png](/.attachments/29917739.png)
[image2016-9-29 14:41:11.png](/.attachments/29917740.png)
[image2016-9-29 14:35:55.png](/.attachments/29917741.png)

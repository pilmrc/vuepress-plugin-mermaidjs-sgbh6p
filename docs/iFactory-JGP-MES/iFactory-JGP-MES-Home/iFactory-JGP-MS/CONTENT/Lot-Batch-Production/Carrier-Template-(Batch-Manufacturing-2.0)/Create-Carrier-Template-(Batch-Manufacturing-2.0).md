# Introduction

The Create Carrier Template is used to predefine the values used to create a Carrier. A Carrier in this context is used to transport Material, so it can be thought of a a Material Carrier. Once a Carrier Template is defined and saved a user may select a Template when creating a Carrier thus eliminating the need for typing the same information repeatedly for each Carrier that is created.


### How to get there?



::: mermaid
graph LR
A("CREATE CARRIER TEMPLATE")
:::
Create Carrier Template enables user to perform the following activity:

- Creates a Template that can be used later to create Carriers with the defined values of the Template.

- Assign Next Number to a carrier template for system to generate carrier number

- Assign Validation Mask to a carrier template for user assigned carrier number


#### Permission


To access the screen and able create carrier template:

- Carrier Template - Have menu, can access and search carrier template.

- Create Carrier Template - Have menu, Can create the Carrier Template.


#### Pre Condition


The following data needs to be pre-configured (if used) before configuration

- [Next Number](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Next-Number.md)

- [Validation Mask](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/General-Production/Validation-Mask.md)


#### Screen Dependency


The following screen has direct dependency on this screen

- [Create Carrier](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-Template-(Batch-Manufacturing-2.0)/Create-Carrier-Template-(Batch-Manufacturing-2.0).md)


#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Customer/Division</td><td style="text-align: left;" colspan="1" class="confluenceTd">Customer Name and Division Name will be auto generated based on the data partition that assigned to the user</td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Name</p></td><td style="text-align: left;" class="confluenceTd"><p>Name of the template. It is suggested that a name that will be helpful in identifying the<span> </span><span>characteristics</span><span> </span>of Carrier to be created. The Template name must be unique for the Customer/Division (Required)</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Description</p></td><td style="text-align: left;" class="confluenceTd"><p>Description of the template.<span> </span><span>It is suggested that a helpful description is used describing Carrier characteristics. (Required)</span></p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Rows</p></td><td style="text-align: left;" class="confluenceTd"><p>Carrier are defined as two dimensional, Rows >= 1 (Required)</p></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Columns</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Carrier are defined as two dimensional, Columns >= 1 (Required)</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Maximum Cycles</td><td style="text-align: left;" colspan="1" class="confluenceTd">This field if set to 0 will permit the Carrier to be uses an unlimited amount of times. If this field is set to a positive integer, the Carrier may be assigned to a Lot and cycled this number of times. For example, if set to '2', then the Carrier may have a Lot Assigned, the Lot Unassigned and removed, and another Lot Assigned followed by Retired and removed a for a total of two Cycles. When a user attempts to assign a Lot to a Carrier a third time the Carrier will be unavailable to use as it was Retired on the completion of the second full usage cycle. (Required)</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Status</td><td style="text-align: left;" colspan="1" class="confluenceTd">Used to define if the Template is 'New' and not yet ready for use as a Template, or 'Active' and is available to be used as a Template to create Carriers. Note: When set to New, this template will not be available to be used to create a Carrier. (Required)</td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Configuration</td><td style="text-align: left;" colspan="1" class="confluenceTd"><span>Define the way to create the unique identifier for carriers by the user assigned (Validation Mask) or system generate (Next Number)</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Validation Mask</td><td style="text-align: left;" colspan="1" class="confluenceTd">Validation Mask use to validate the unique identifier entered by user during carrier creation. A<span style="color: rgb(23,43,77);">ny changes made to the Validation Mask will be reflected in this screen.</span></td></tr><tr><td style="text-align: left;" colspan="1" class="confluenceTd">Next Number</td><td style="text-align: left;" colspan="1" class="confluenceTd"><p>Next Number use to generate the unique identifier during carrier creation</p></td></tr></tbody></table>



#### Attachments

[image2020-10-8_15-34-58.png](/.attachments/79790735.png)

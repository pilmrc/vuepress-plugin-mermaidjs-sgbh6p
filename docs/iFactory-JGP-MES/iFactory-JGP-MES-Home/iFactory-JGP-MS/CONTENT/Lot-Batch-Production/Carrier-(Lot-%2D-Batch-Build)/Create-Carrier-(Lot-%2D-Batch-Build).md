# Introduction

![](/.attachments/29917756.png)


Create Carrier is intended to provide a means to create a Carrier that is to be used to transport materials. Each Carrier is uniquely identified with a Serial Number and is used to transport non-serialized, or serialized materials. This screen is used to define the attributes / characteristics of the Carrier. The Carrier Attributes may be manually entered or populated from a previously defined Carrier Template for convenience. The Carrier Serial Number is defined in one of two ways depending on the Customer configuration. The Customer Carrier Configuration for the Carrier may be set to use a Validation Mask for preprinted Serial Number labels, or will generate a Next Number. (See Customer Carrier Configuration for details)   



### How to get there?



::: mermaid
graph LR
A("CARRIER")-->0("CREATE CARRIER")

:::


#### Permission


1. Create Carrier - Allows the user to create new carriers for transporting materials


#### Screen Activity


Create Carrier enables user to perform the following activity:

- Create a Carrier from a predefined Carrier Template

- Create a Carrier from a user defined entry

- Create a Carrier from a predefine Carrier Template with user modifications



#### Pre Condition


The following data needs to be pre-configured (if used) before user configures Create Carrier.

- [Create Carrier (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)
, to define the Customer and the general configuration for the customer
- [Carrier Template](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)
, to set Serial Number assignment method, user assigned preprinted, or systems generated Next Number.
- [Create Carrier (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)
, if user assigned preprinted labels are used
- [Next Number](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)
, if the system is to generate a serial number. Currently the system generated Serial Number is only able to be printed from Document Generate (in the future will print the label on create)
- [Document Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)
, if the system is to generate a serial number and print it. (in the future will print the label on create)
- [Document Assignment](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)
, if the system is to generate a serial number and print it. (in the future will print the label on create)
- [Create Carrier (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)
, Printer Maintenance, [Printer Server](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md), [Printer Types](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)are all required to print a system generated label


#### Screen Dependency


To perform a Lot Release a Carrier must be identified to determine the Carrier association, and the quantity of items to release for the Planned Order.

- [Create Carrier (Lot / Batch Build)](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Carrier-(Lot-%2D-Batch-Build)/Create-Carrier-(Lot-%2D-Batch-Build).md)




#### Creating a Carrier


Navigate to the screen from Carrier --" Create Carrier. Select the Customer/Division for which the Carrier is to be used. Choose a pre-defined Carrier Template from the list of Available Carrier Templates associated to the selected Customer/Division. Once Carrier Template is selected, one of the two forms of the screen will be available. If the Carrier Template was configured to accept a Validation Mask the first is displayed, if the Carrier template is set to generate the Serial Number via Next Number, the second will display. If the Carrier Template is configured of a Next Number then no user entry of a Serial Number is permitted, otherwise the Serial Number is required. To create carrier in Bulk Carrier creation, user can upload a text file for serial number if Carrier Template is configured to accept by Validation Mask, else, the Bulk Quantity is required to generate next number. The remaining fields define the characteristics of the Carrier and may be used as populated from the template or modified as desired. Selecting the Submit will complete the Carrier Creation process and the Carrier may be used in the Lot Release process. Selecting Batch Manage Carrier, will assign a batch Id accordingly.
**Validation Mask** 
![](/.attachments/39649300.png)


**Next Number** 
![](/.attachments/39649301.png)


If the carrier template selected uses a next number with “ASSEMBLYREVISION PROPERTIES” or “MATERIAL CUSTOM DATA” segment type configuration, the carrier number will be generated without those values as there are no material associated to the carrier yet.



#### Fields


<table class="confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd">Customer/Division<p><br /></p></td><td class="confluenceTd">The list of Customer/Division, one must be selected. This field is used to filter the Carrier Template (Required)</td></tr><tr><td colspan="1" class="confluenceTd">Template</td><td colspan="1" class="confluenceTd">The list of Available Carrier Templates. One must be selected. This field is used to determine the Serial Number is User Assigned Validation Mask or System Generated Next Number. (Required)</td></tr><tr><td colspan="1" class="confluenceTd">Batch Manage Carrier</td><td colspan="1" class="confluenceTd"><span>This flag is to manage carriers by batch number (PO number followed by a 4 digit unique value e.g. a PO called "TestPO1" would generate a batch Id of "TestPO1-0001", then "</span><span>TestPO1-0002" and so on). Selecting this flag will tie the batch number to the Lot and will persist, even when the lot is split/merged multiple times. Note - System will not allow 2 lot with different Batch Id's to be merged, unless they are both scrapped - If that actio is completed, the batch Id's will not be displayed, but will be retained in the Db. <span>(Read Only, retrieve from Carrier Template) </span></span></td></tr><tr><td colspan="1" class="confluenceTd">Bulk Carrier Creation</td><td colspan="1" class="confluenceTd"><p>Option to create carrier in Bulkh. If Bulk Creation is enabled:<br />Validation Mask - User able to upload a text file for a list of serial number<br /><br /><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917751.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917747/image2017-8-11%2011%3A1%3A23.png?version=1&modificationDate=1530103782327&api=v2" /></span></p><p>Next Number - User able to enter quantity to generate by next number<br /><br /><span class="confluence-embedded-file-wrapper"><img class="confluence-embedded-image confluence-external-resource" src="https://dev.azure.com/jblprd/Production%20Systems-JGP/_apis/git/repositories/wiki-JGP iFactory/items?path=/.attachments/29917750.png&$format=octetStream" data-image-src="http://usplnd0wiki01:8090/download/attachments/29917747/image2017-8-11%2011%3A2%3A56.png?version=1&modificationDate=1530103782313&api=v2" /></span></p></td></tr><tr><td class="confluenceTd"><p>Serial Number</p></td><td class="confluenceTd"><p>This field is for the user to assign a Carrier Serial Number. The field will be hidden or visible according the configuration of the selected Carrier Template (Required and must be unique only for User Assigned - Validation Mask configuration).<span style="color: rgb(0,51,102);"> The serial number is validated against the validation mask's latest configuration set at Validation Mask Maintenance screen.</span></p></td></tr><tr><td class="confluenceTd">Rows</td><td class="confluenceTd"><p>Carrier are defined as two dimensional, Rows >= 1 (Read Only, retrieve from Carrier Template)</p></td></tr><tr><td class="confluenceTd">Columns</td><td class="confluenceTd"><span>Carrier are defined as two dimensional, Columns >= 1 <span>(Read Only, retrieve from Carrier Template) </span></span></td></tr><tr><td class="confluenceTd">Maximum Cycles</td><td class="confluenceTd"><span>This field if set to 0 will permit the Carrier to be uses an unlimited amount of times. If this field is set to a positive integer, the Carrier may be assigned to a Lot and cycled this number of times. For example, if set to '2', then the Carrier may have a Lot Assigned, the Lot Unassigned and removed, and another Lot Assigned followed by Retired and removed a for a total of two Cycles. When a user attempts to assign a Lot to a Carrier a third time the Carrier will be unavailable to use as it was Retired on the completion of the second full usage cycle.<span>(Read Only, retrieve from Carrier Template) </span></span></td></tr><tr><td colspan="1" class="confluenceTd">Printer</td><td colspan="1" class="confluenceTd">This field is for the user to assign the printer to print carrier label if a document is configured to print during carrier creation</td></tr><tr><td colspan="1" class="confluenceTd">Submit</td><td colspan="1" class="confluenceTd">This button will create Carrier based on the data entered above and it will not clear the screen in order for user to continue carrier creation without reenter all the data again</td></tr><tr><td colspan="1" class="confluenceTd">Cancel</td><td colspan="1" class="confluenceTd">This button will return user to the Carrier main screen</td></tr></tbody></table>









#### Attachments

[image2017-9-26 16:17:13.png](/.attachments/29917748.png)
[image2017-9-26 16:14:42.png](/.attachments/29917749.png)
[image2017-8-11 11:2:56.png](/.attachments/29917750.png)
[image2017-8-11 11:1:23.png](/.attachments/29917751.png)
[image2017-8-11 10:49:38.png](/.attachments/29917752.png)
[image2017-8-11 10:49:7.png](/.attachments/29917753.png)
[Create Carrier - Next Number.png](/.attachments/29917754.png)
[Create Carrier.png](/.attachments/29917755.png)
[iFactory Manufacturing Suite 2.png](/.attachments/29917756.png)
[image2018-12-10_14-25-53.png](/.attachments/39649300.png)
[image2018-12-10_14-26-17.png](/.attachments/39649301.png)

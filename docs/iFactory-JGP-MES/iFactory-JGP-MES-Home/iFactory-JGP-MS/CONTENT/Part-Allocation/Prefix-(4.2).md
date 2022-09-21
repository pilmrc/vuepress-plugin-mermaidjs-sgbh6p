# Introduction

Prefix screen is used to configure the prefix for some parameters. The prefix is an alphanumeric value that is automatically removed (when present) from the value entered into the system.
Usually the site is creating a prefix for some data (i.e. GRN value) to be sure that user is entering the correct number in the correct field. The prefix is part of the barcode value printed in the label. The human readable value usually doesn't contain the prefix.
When the prefix is configured is not possible to scan the serial number into the partnumber field and so on.
The system allows to configure prefix for following parameters:

- GRN

- Material

- Quantity

- Feeder

- Setup Sheet ID


### How to get there?


![image2017-9-4 12:16:22.png](/.attachments/29919248.png)



![image2017-9-4 12:16:22.png](https://outlook.office.com/owa/service.svc/s/GetFileAttachment?id=AAMkADExMjFjZTNkLWZiOGUtNGFlYS05NWU0LWU5M2FhYjBmYTUyYgBGAAAAAAAiGz%2BeOmYgRrb1RTb9VVmcBwCIN5DvWZyASqruYNutWaD%2FAAAAAAEJAACIN5DvWZyASqruYNutWaD%2FAAD6yzO%2BAAABEgAQAFBq4B1oX0BJnF%2FpXm2fZLk%3D&X-OWA-CANARY=GVCsri09DkimSx2oMiHPOyA48mlE5dQYRyycHtBABOzROY6d0LF43MDcXfDRVTWnHWsDDmKDnwo.&isImagePreview=True)



Then

::: mermaid
graph LR
A("CONFIGURATION")-->0("PREFIX")

:::


#### Screen Activity


Prefix enables user to perform the following activity:

- Create, view, update Prefix for GRN, Material, Quantity, Feeder and Setup Sheet ID



#### Post Condition


The prefix configuration is checked every time the configured parameter is entered into the main Part Allocation screens like: 
[Equipment Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Equipment-Part-Allocation.md),  [Manual Station Part Allocation](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Manual-Station-Part-Allocation.md), [Preload ](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Part-Allocation/Preload-Part-Allocation.md), GRN, etc.The prefix is not checked when the Search window appears (the purpose of prefix is to be sure the user is scanning the correct barcode value in the proper field, if user is searching for the value it means that the barcode label is not available).



#### Screen Dependency


The following screen(s) has dependency with GRN:

- Split GRN

- Block GRN

- GRN Restrictions

- GRN Association

- GRN Storage Manager

- GRN Exposure Time Reduction

- GRN Bag and Bake Details

- GRN Bake In/Out

- Equipment Part Allocation

- Manual Station Part Allocation

- Preload
![image2017-6-28 17:24:58.png](/.attachments/29919249.png)




#### Fields



All fields are mandatory.
<table class="confluenceTable"><tbody><tr><td class="highlight confluenceTd"><p><strong>Field</strong></p></td><td class="highlight confluenceTd"><p><strong>Description</strong></p></td></tr><tr><td class="confluenceTd"><p>Customer / Division</p></td><td class="confluenceTd"><p>The prefix can be configured based on customer /division, so that same parameter can have different prefix for different customer/division</p></td></tr><tr><td class="confluenceTd"><p>Prefix Type</p></td><td class="confluenceTd"><p>It is the parameter that required the prefix configured. Currently is possible configure prefix for:</p><ul><li>GRN</li><li>Material</li><li>Quantity</li><li>Feeder </li><li>Setup Sheet ID</li></ul></td></tr><tr><td class="confluenceTd"><p>Prefix</p></td><td class="confluenceTd"><p>It is the value that will be considered as Prefix. It can be any alphanumeric char, included number or special char. The maximum length of prefix is 10 char</p></td></tr><tr><td colspan="1" class="confluenceTd">"Is Optional" toggle button</td><td colspan="1" class="confluenceTd"><p>It is a flag to identify if the prefix is optional or mandatory.</p><p>Optional: if prefix is not present the tool will accept the value entered and validate it, <span>if present it will be removed and the remaining value will be validate</span></p><p><span>Mandatory</span>: if prefix is not present the tool will reject the value entered, if present it will be removed and the remaining value will be validate</p><p>It is possible to have multiple Optional and Mandatory prefix for same parameter. The tool will check if at least one of them is reflecting the value entered.</p></td></tr></tbody></table>


- **The prefix can be modified anytime and the new value will be used at the next validation.**

It is possible to configure a default value for "
**All customer/division** ". In that case any customer without its own configuration will get the default one.If a customer has a prefix configuration, this will replace the default one and the change will affect also not configured parameter. For example:
Default 
All Customerprefix configured:
- GRN = 9k

- Quantity = Q

- Material = P
Configuration for 
Customer1
- GRN = G
In this example, the Customer1 will use only prefix for GRN. Default prefix for Quantity and Material won't take effect due to specific customer configuration.
Configuration for 
Customer2
- "empty"
In this case the Customer2 will use default configuration for GRN, Quantity and Material because when there is no configuration for customer (but exists default configuration) the customer will get the default.






#### Attachments

[image2017-9-4 12:16:22.png](/.attachments/29919248.png)
[image2017-6-28 17:24:58.png](/.attachments/29919249.png)
[image2017-5-26 16:37:20.png](/.attachments/29919250.png)

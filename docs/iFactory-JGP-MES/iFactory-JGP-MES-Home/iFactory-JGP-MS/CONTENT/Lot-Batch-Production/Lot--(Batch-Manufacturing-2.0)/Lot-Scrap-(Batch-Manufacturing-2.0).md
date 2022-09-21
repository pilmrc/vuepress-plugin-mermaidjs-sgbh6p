# Introduction

Lot scrap is to mark a defective lot as scrapped. This helps to pack only scrapped lot into the same container without mixing with any other good lot. 
How to get there?

::: mermaid
graph LR
A("LOT SCRAP")
:::


### Permission


1. Scrap Lot- Allows the user to scrap Lot


#### Screen Activity


Lot Scrap enables a user to perform the following activity:

- Scrap a defective lot


#### Pre-Condition


The following data needs to be pre-configured (if used) before user scrap a Lot

- Carrier that gone through Inspection station and failed quantity = lot quantity

- Not in process in any other operation

- Not scrapped

- Not consumed

- Not shipped

- Not packed

- Has defect

- Has full defect


#### Screen Dependency



- Planned Order Packout


#### Process



- Scan Carrier / Lot / Internal Batch Number to scrap


![](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/df64b5f6-2cfc-46aa-bdad-67e0b9b9073d?fileName=image.png)




- If Carrier / Lot Number scanned do not have fully defective quantity, system will return message based on the value scanned "Carrier "Carrier Number" is not fully defective with failed unit of '"fail units/lot qty"'"


![](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/c4e52eb1-4ea4-4968-8032-ae71a2a1a761?fileName=image.png)




- If Carrier / Lot Number scanned is in progress at other operation, system will return message based on the value scanned "Carrier "Carrier Number" is already in progress at Route Step "RouteStep" of Route "Route""


![image2020-12-16_15-54-12.png](/.attachments/84705401.png)




- "Scrap" button enabled when scanned Carrier / Lot number is allowed to scrap


![image2020-12-11_9-52-7.png](/.attachments/82904265.png)



- The system returns the confirmation message to scrap a lot. Yes to confirm the action, No to return to Lot Scrap page.


![image2020-12-11_9-52-47.png](/.attachments/82904266.png)



- Lot Scrapped successfully, system will return message based on the value scanned


![image2020-12-11_9-52-47.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/4a42bce9-91b8-4670-be10-4c42f89c6f4d?fileName=image.png)




- The system will return message if the lot has been scrapped


![image2020-12-11_9-52-47.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/ae028537-7e29-4d98-b1c3-dfee89a1ecaf?fileName=image.png)




- The system will return message if the lot has been shipped


![image2020-12-11_9-52-47.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/cbb3cd13-416b-4a3f-aece-87b0af3985c4?fileName=image.png)




- The system will return message if the lot has been consumed


![image2020-12-11_9-52-47.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/a19875ee-080f-480b-8ff0-56f78a9395c3?fileName=image.png)




- The system will return message if the lot has no defect


![image2020-12-11_9-52-47.png](https://dev.azure.com/jblprd/3416e237-a20a-4514-985d-7993adabea7d/_apis/wit/attachments/ffab12be-c2ac-4ee1-959d-5845289e82e0?fileName=image.png)




- The system will return message if the lot is packed


![image2020-12-16_15-8-3.png](/.attachments/84705400.png)





#### Fields


<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><thead><tr><th style="text-align: left;" class="confluenceTh"><p>Field</p></th><th style="text-align: left;" class="confluenceTh"><p>Description</p></th></tr></thead><tbody><tr><td style="text-align: left;" class="confluenceTd"><p>Scan</p></td><td style="text-align: left;" class="confluenceTd"><p>Scan Carrier Number or Lot Number to perform lot scrap</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Scrap</p></td><td style="text-align: left;" class="confluenceTd"><p>The scanned Carrier Number or Lot Number will be scrapped</p></td></tr><tr><td style="text-align: left;" class="confluenceTd"><p>Cancel</p></td><td style="text-align: left;" class="confluenceTd"><p>Return to Lot Page</p></td></tr></tbody></table>



#### Attachments

[image2020-12-11_9-52-7.png](/.attachments/82904265.png)
[image2020-12-11_9-52-47.png](/.attachments/82904266.png)
[image2020-12-16_15-8-3.png](/.attachments/84705400.png)
[image2020-12-16_15-54-12.png](/.attachments/84705401.png)

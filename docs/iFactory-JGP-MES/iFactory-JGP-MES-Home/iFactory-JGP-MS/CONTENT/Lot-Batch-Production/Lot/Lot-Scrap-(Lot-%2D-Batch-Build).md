# Introduction

Lot scrap is to mark a defective lot as scrapped. This helps to pack only scrapped lot into the same container without mixing with any other good lot. 
How to get there?


::: mermaid
graph LR
A("LOT")-->0("LOT SCRAP")

:::


### Screen Activity


Lot Scrap enables a user to perform the following activity:

- Scrap a defective lot



#### Pre-Condition


The following data needs to be pre-configured (if used) before user scrap a Lot

- Carrier that gone through Inspection station and failed quantity = lot quantity

- Not in process in any other operation



#### Screen Dependency



- [Planned Order Packout](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Lot-Batch-Production/Lot/Lot-Scrap-(Lot-%2D-Batch-Build).md)




#### Process



- Scan Carrier / Lot number to scrap

![](/.attachments/29917839.png)



- If Carrier / Lot Number scanned do not have fully defective quantity, system will return message "Carrier "Carrier Number" is not fully defective with failed unit of '"fail units/lot qty"'"


![image2019-5-9_11-2-1.png](/.attachments/48169650.png)





- If Carrier / Lot Number scanned is in progress at other operation, system will return "Carrier "Carrier Number" is already in progress at Route Step "RouteStep" of Route "Route""

![image2019-5-9_11-16-47.png](/.attachments/48169651.png)





- "Scrap" button enabled when scanned Carrier / Lot number is allowed to scrap

![image2019-5-9_11-19-31.png](/.attachments/48169652.png)



- The system returns the confirmation message to scrap a lot. Yes to confirm the action, No to return to Lot Scrap page.


![image2019-5-9_11-20-47.png](/.attachments/48169653.png)



- Lot Scrapped successfully


![image2019-5-9_11-24-13.png](/.attachments/48169654.png)



- The system will return message if the lot has been scrapped


![image2019-5-9_11-25-55.png](/.attachments/48169655.png)





#### Fields


<table class="confluenceTable"><tbody><tr><th class="confluenceTh"><p>Field</p></th><th class="confluenceTh"><p>Description</p></th></tr><tr><td class="confluenceTd"><p>Scan</p></td><td class="confluenceTd"><p>Scan Carrier Number or Lot Number to perform lot scrap</p></td></tr><tr><td class="confluenceTd"><p>Scrap</p></td><td class="confluenceTd"><p>The scanned Carrier Number or Lot Number will be scrapped</p></td></tr><tr><td class="confluenceTd"><p>Cancel</p></td><td class="confluenceTd"><p>Return to Lot Page</p></td></tr></tbody></table>





#### Attachments

[image2016-12-16 17:18:31.png](/.attachments/29917832.png)
[image2016-12-16 17:10:19.png](/.attachments/29917833.png)
[image2016-12-16 17:10:12.png](/.attachments/29917834.png)
[image2016-12-16 17:6:43.png](/.attachments/29917835.png)
[image2016-12-16 17:0:48.png](/.attachments/29917836.png)
[image2016-12-16 16:48:32.png](/.attachments/29917837.png)
[image2016-12-16 16:10:10.png](/.attachments/29917838.png)
[image2016-12-16 16:8:17.png](/.attachments/29917839.png)
[image2016-12-16 16:4:6.png](/.attachments/29917840.png)
[image2019-5-9_11-2-1.png](/.attachments/48169650.png)
[image2019-5-9_11-16-47.png](/.attachments/48169651.png)
[image2019-5-9_11-19-31.png](/.attachments/48169652.png)
[image2019-5-9_11-20-47.png](/.attachments/48169653.png)
[image2019-5-9_11-24-13.png](/.attachments/48169654.png)
[image2019-5-9_11-25-55.png](/.attachments/48169655.png)

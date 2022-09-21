# Introduction

**Disclaimer: The examples shown below do not represent actual production configuration values. Use them as your references only** 
Error: Production order attributes require a divisionid to properly function


***Cause:***  

Customer/Division is not configured for Production Order Top Level Material.
***Solution:***  

Configure Product Family for Top Level Material in Material Maintenance 
![image2015-9-1 16:6:57.png](/.attachments/29920295.png)




Error: BOM validation failed Material [Material Name] is not present in BOM [BOM Name/Alt/Version00712603/01/SAP/1

Example: BOM validation failed Material 84-25228-00-A is not present in BOM 00712603/01/SAP/1

***Cause:***  
Parent of the Failed Material does not have Phoenix Material Type = WIP. 
***Solution:***  

Set the parent material's Phoenix Material Type = WIP in 
[Material Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Material.md).
Example: Parent for 84-25228-00-A (component configured to assembled at assemble point) is 50440-00-B. 50440-00-B must have Phoenix Material Type = WIP set it in Material maintenance.

![image2015-9-1 16:17:7.png](/.attachments/29920294.png)




Error: ErrorNumber:900005160 , Step: Validate production order line items against BOM, Procedure: up_Load_ProductionOrdersByTVP, DBName: Phoenix, Message: BOM validation failed Current bom for material [Material Name PlantCode] is not active.

Example: ErrorNumber:900005160 , Step: Validate production order line items against BOM, Procedure: up_Load_ProductionOrdersByTVP, DBName: Phoenix, Message: BOM validation failed Current bom for material 800-0064-01 TN01 is not active.


***Cause:***  
BOM status for the material is not set to Active in shop floor system***Solution:***  

Go to 
[BOM Maintenance](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Product/Bill-Of-Material-%2D-BOM/Bill-Of-Material-%2D-BOM-(legacy).md), verify the BOM and its inheritance configuration is set and set the BOM status to Active![image2015-9-23 16:58:10.png](/.attachments/29920293.png)


Error: ErrorNumber:900005160 , Step: Validate production order line items against BOM, Procedure: up_Load_ProductionOrdersByTVP, DBName: Phoenix, Message: BOM validation failed Current bom for material [Material Name PlantCode] does not exist.

Example: ErrorNumber:900005160 , Step: Validate production order line items against BOM, Procedure: up_Load_ProductionOrdersByTVP, DBName: Phoenix, Message: BOM validation failed Current bom for material 800-0064-01 TN01 does not exist.***Cause:***  

The Production Order Start Date is early than BOM Valid From Date. (For example: 
The Production Order Start Date is 
20180518
in the XML file from SAP but the BOM Valid From is 
20180522)
![image2018-6-8_8-35-40.png](/.attachments/29920291.png)



![image2018-6-8_8-36-48.png](/.attachments/29920288.png)


***Solution:***  
Please inform the SAP to rectify the Production Order Start Date and re-trigger the Production Order to iFactory.





#### Attachments

[image2018-6-8_8-36-48.png](/.attachments/29920288.png)
[image2018-6-8_8-36-27.png](/.attachments/29920289.png)
[image2018-6-8_8-36-13.png](/.attachments/29920290.png)
[image2018-6-8_8-35-40.png](/.attachments/29920291.png)
[image2018-6-8_8-35-22.png](/.attachments/29920292.png)
[image2015-9-23 16:58:10.png](/.attachments/29920293.png)
[image2015-9-1 16:17:7.png](/.attachments/29920294.png)
[image2015-9-1 16:6:57.png](/.attachments/29920295.png)

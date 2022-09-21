# Introduction

SAP ZHUPACK is the application that has integration with iFactory web service that able to retrieve pallets and boxes information from iFactory in order to validate the pallets or boxes is in the right state to ship out during the SAP packing process. Also, it able to retrieve serial numbers from iFactory based on boxes or pallets during packing depend on the flag that sending from SAP. It helps to reduce time and labor work to rescan and repack product during delivery. It is applicable for the Repetitive process and Lot Batch process. 

![image2020-1-22_8-55-23.png](/.attachments/64422095.png)




### **Precondition** 


Below is the SAP ZHUPACK configuration to connect iFactory, the Customer in MES, Division in MES and Site in MES is required to configure match with the configuration in iFactory that would like to enable the SAP ZHUPACK. For the HTTP Post URL, it is depending at the PRD environment or STG environment.
![image2020-3-27_11-8-49.png](/.attachments/67569685.png)


HTTP Post URL (STG): 
[http://AZAPSEIFDVWB81:8600/container](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Create-Container-with-Validation-Mask.md)HTTP Post URL (PRD): 
[http://sgsind0b2b01:8600/container](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/iFactory-API/Create-Container-with-Validation-Mask.md)

#### **Details** 


Please refer below for the detail information on the pallets and boxes shipping validation:
[Shipping Validation on Container](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/SAP-ZHUPACK-Shipping-Validation/Shipping-Validation-on-Container.md)
[Shipping Validation on Pallets](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/SAP-ZHUPACK-Shipping-Validation/Shipping-Validation-on-Pallet.md)



#### Attachments

[image2020-1-22_8-55-23.png](/.attachments/64422095.png)
[image2020-1-22_8-57-27.png](/.attachments/64422096.png)
[image2020-3-27_11-8-49.png](/.attachments/67569685.png)

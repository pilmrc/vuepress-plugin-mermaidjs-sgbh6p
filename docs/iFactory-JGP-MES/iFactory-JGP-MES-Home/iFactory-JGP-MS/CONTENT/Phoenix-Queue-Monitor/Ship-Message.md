# Introduction

Ship Message is imported from SAP ECC via Idoc by batch job scheduling. The Ship Message Idoc is triggered when there are shipments happen in the SAP.
The diagram below shows the Ship Message transfer path from SAP to shop floor. When Idoc is generated in SAP ECC, Idoc will be transferred to GIS(Gentran Integration Suite). GIS will convert Idoc to XML format and send it to MSMQ. After MSMQ received the Ship message, the data will be further processed before they are sent to the shop floor. Any success/fail message will return a status message back to GIS. The data is transferred.




### **Ship Message for Repetitive and Lot Batch Process** 


When received a Shipped message for Handling Units belong to Container, it will update the Container status to "Shipped" and all the WIP that packed under the container change to "Shipped" status.
When received a Shipped message for Handling Units belong to Pallet, it will update the Pallet status, Container status and all the WIP that packed under the container status change to "Shipped".
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">XML Element Name</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Transaction.Plant</td><td class="confluenceTd">Refer to the Plant Code, e.g SIP Plant Code is CN16</td></tr><tr><td class="confluenceTd">Transaction.CustomerNumber</td><td class="confluenceTd">Refer to partner id from the IDoc message</td></tr><tr><td class="confluenceTd">Transaction.TransType</td><td class="confluenceTd">Default is "SHIPPED"</td></tr><tr><td colspan="1" class="confluenceTd">Transaction.BPID</td><td colspan="1" class="confluenceTd">Default BP ID from IDoc</td></tr><tr><td colspan="1" class="confluenceTd">Transaction.SAPIDocNumber</td><td colspan="1" class="confluenceTd">Refer to SAP IDoc Number</td></tr><tr><td colspan="1" class="confluenceTd">Items.SAPMaterialGroup</td><td colspan="1" class="confluenceTd">Refer to the Material Group</td></tr><tr><td colspan="1" class="confluenceTd">Items.HandlingUnit</td><td colspan="1" class="confluenceTd">Refer to the Container Number or Pallet Number</td></tr></tbody></table>



#### Sample XML File


![image2020-2-12_16-34-15.png](/.attachments/66093061.png)




#### **Ship Message for BTO/CTO Process** 


When received a Shipped message for all Handling Units which will update all the WIP status become “Shipped”. When all WIP in the Production Order change to "Shipped" status, then the Production Order will change to "Shipped" status and Container status change to "Shipped".
<table class="wrapped confluenceTable"><colgroup><col /><col /></colgroup><tbody><tr><th class="confluenceTh">XML Element Name</th><th class="confluenceTh">Description</th></tr><tr><td class="confluenceTd">Transaction.Plant</td><td class="confluenceTd">Refer to the Plant Code, e.g GDL Plant Code for AG is LU03</td></tr><tr><td class="confluenceTd">Transaction.CustomerName</td><td class="confluenceTd">Refer to partner id from the IDoc message</td></tr><tr><td class="confluenceTd">Transaction.TransType</td><td class="confluenceTd">Default is "SHIPPED"</td></tr><tr><td colspan="1" class="confluenceTd">Transaction.BPID</td><td colspan="1" class="confluenceTd">Default BP ID from IDoc</td></tr><tr><td colspan="1" class="confluenceTd">Transaction.SAPIDocNumber</td><td colspan="1" class="confluenceTd">Refer to SAP IDoc Number</td></tr><tr><td colspan="1" class="confluenceTd">Items.ProductionOrderNumber</td><td colspan="1" class="confluenceTd">Refer to the Production Order Number</td></tr><tr><td colspan="1" class="confluenceTd">Items.HandlingUnit</td><td colspan="1" class="confluenceTd">Refer to the Container Number</td></tr></tbody></table>



#### Sample XML File


![image2020-2-12_16-36-4.png](/.attachments/66093062.png)





#### **Enhancement for SSCC 18d code as container number (** 


**Repetitive** 
**)** 

- The enhancement is for " Plant" equal “CN30” (WXI Plastic)

- If the length of "HandlingUnit" is 19 bits
，
starts with “B” or “P” and the rest all is number, then remove the prefix “B” or “P” and take the 18d number as container number to process the data like existing behavior，
update
the status of WIP\Box\Pallet accordingly


#### Attachments

[image2020-2-12_16-34-15.png](/.attachments/66093061.png)
[image2020-2-12_16-36-4.png](/.attachments/66093062.png)
[image2021-5-8_11-0-13.png](/.attachments/91128430.png)
[image2021-5-8_11-0-46.png](/.attachments/91128431.png)

# Introduction

The Pick & Pack station provides the same capability of a production order packout station with an additional feature. It provides direct packout for Kits (WIP) built from a planned order to a production order without the need to perform conversion. This direct method is required for materials that are ordered in a high volume where quick production order fulfillment is required. Conversion is deemed unnecessary as these kits are not converted to another kit unlike systems. D
ue to the simple nature of the Kits BOM, strict packout validation is not required. As long as the WIP material matches the production order and the WIP is in a completed status, the kits can be packed.  Upon container closure, the order activity and handling unit will be sent to SAP. As the order activity message is being sent, a
reverse backflush message will also be triggered to balance the inventory in SAP. This is because, w
hen these Kits were built with a planned order, a backflush message was already sent to SAP. 

**How to get there?** 


::: mermaid
graph LR
A("1. STATIONS")-->0("2. SCAN RESOURCE NAME")
0-->1("3. SELECT PACKOUT ICON")

:::
![image2015-9-26 15:13:9.png](/.attachments/29918935.png)



::: mermaid
graph LR
A("1. GENERIC")-->0("2. SCAN RESOURCE NAME")
0-->1("3. SCAN SERIAL NUMBER THAT IS ENQUEUED AT PICK PACK STATION")

:::
![image2015-9-26 15:14:41.png](/.attachments/29918933.png)




### **Screen Activity** 


Pick & Pack station enables user to perform the following activity:

- All activities similar to Production Order Packout station

- Pack WIP built using planned order directly to a Production Order without the need for conversion

Pre Condition
The following data needs to be pre-configured

- A production route that contains only the Pick & Pack route step.

- The Pick & Pack route step must be marked as "Is Initial Route Step", "Is Pull Step" and "Is WIP Completion Step"



#### Screen Dependency


The following screen(s) has direct dependency with Production Order Packout

- [Container Type](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Container-Type.md)

- [Route](/iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Phoenix-Scripting/GetDataCollectForWIPAndRouteStep.md)

- [Document Assignment](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/CONTENT/Pack,-OBA,-Warehouse,-Receiving-&-Ship/Pick-&-Pack.md)



#### Performing Pick & Pack




- #### The WIP below was completed from a Planned Order

![image2015-9-26 15:41:54.png](/.attachments/29918932.png)


2. Login to a Pick & Pack station
3. Select Container Type
4. Scan the Production Order Number or WIP Serial Number

![image2015-9-26 15:51:7.png](/.attachments/29918928.png)


![image2015-9-26 15:52:29.png](/.attachments/29918927.png)


5. Close the container. As it is a completion step, on container close, the container status will be automatically updated to "Packed"
![image2015-9-26 15:53:37.png](/.attachments/29918926.png)


6. Review the WIP in WIP View. You will notice that the WIP is now attached to a Production Order with the Container where it was packed in.
![image2015-9-26 15:54:21.png](/.attachments/29918925.png)




#### Fields 


Refer to Production Order Packout


#### Attachments

[image2015-9-26 15:54:21.png](/.attachments/29918925.png)
[image2015-9-26 15:53:37.png](/.attachments/29918926.png)
[image2015-9-26 15:52:29.png](/.attachments/29918927.png)
[image2015-9-26 15:51:7.png](/.attachments/29918928.png)
[image2015-9-26 15:49:5.png](/.attachments/29918929.png)
[image2015-9-26 15:46:47.png](/.attachments/29918930.png)
[image2015-9-26 15:46:20.png](/.attachments/29918931.png)
[image2015-9-26 15:41:54.png](/.attachments/29918932.png)
[image2015-9-26 15:14:41.png](/.attachments/29918933.png)
[image2015-9-26 15:13:59.png](/.attachments/29918934.png)
[image2015-9-26 15:13:9.png](/.attachments/29918935.png)
[image2015-9-24 17:24:19.png](/.attachments/29918936.png)
[image2015-9-24 17:24:9.png](/.attachments/29918937.png)

# Introduction

Once a WIP has been packed and passed the completion route step, the WIP status will be changed to "Completed"  and container status will be changed to "Packed". 
This represents the WIP completed processing in shop floor. At this point, several messages (IE: order activity & handling unit) are triggered to SAP. With these statuses, the WIP is prevented from being modified in the shop floor to preserve its data as its information as been sent to SAP. However, there are times due to incorrect packaging, shipping issue or customer order changes or cancellation that requires the packed WIP to be reprocessed in the shop floor. The Container Reprocessing module is used to reverse the packaging activities.Container Reprocessing will not modify the status of a "Completed" order since the WIP status is unchanged. However, if the order status is "Shipped", Container Reprocessing will update the order status to "Completed" 
as all the WIPs are either in Completed or Shipped status. When we receive Shipped message for ALL Handling Units, then the Production Order will be updated to Shipped again. 



### How to get there?



::: mermaid
graph LR
A("CONFIGURE")-->0("CONTAINER REPROCESSING")

:::


#### Screen Activity


Container Reprocessing enables user to perform the following activity:

- Change container status from "Packed" to "Closed"

- Resend Handling Unit



#### Screen Dependency


The following screen(s) has direct dependency with Container Reprocessing

- Production Order Packout



#### Change Container from Packed to Closed




- Search by Production Order or Container


Note: Production Order must either be “In Progress”, “Completed” or “Shipped”. Container status must be in “Packed” or “Shipped” status. Those that do not fall into 
this criteria will not be displayed for container reprocessing


![image2015-9-9 15:31:11.png](/.attachments/29918889.png)



- Select the container. Multiple containers may be selected by pressing on the CTRL key or

![image2015-9-9 15:50:24.png](/.attachments/29918883.png)


button. Container selected is highlighted in blue. Click
![image2015-9-9 15:49:42.png](/.attachments/29918884.png)


button to clear container selection

- Click the “Set Containers to Closed” button



![image2015-9-9 15:31:49.png](/.attachments/29918888.png)



- Warning message is prompted to remind user to confirm SAP has perform reversal prior to reprocessing this container in shop floor.




::: mermaid
graph LR
A("WARNING! NOT COMPLYING TO THIS PROCESS MAY RESULT IN ERROR IN SAP")
:::

- Enter the container reprocessing comment.

![image2015-9-9 15:32:23.png](/.attachments/29918887.png)



- On confirmation, the container status will be updated from “Shipped”/“Packed” to “Closed”. You will no longer see this container in the Container Reprocessing screen as it has been reprocessed.


- Access to Production Packout station. Verify that the container status has been updated to “Closed”. You may now scrap or reopen the container and repack the materials.


Resend Handling Unit

Scenario: SI or network issue causing SAP to not receive Handling Unit sent by shop floor. 
No container reprocessing required. Shop floor is required to resend the Handling Unit 
message to SAP. This is a new feature provided that helps to save time by resending Handling Unit 
message with a single click. Not needed to perform additional action like purge, reopen and 
close container just to resend the Handling Unit message.


- Go Container Reprocessing

- Enter a Production Order Number or Container Name


- Select the container. Multiple containers may be selected by pressing on the CTRL

key

- Click the “Resend Handling Unit” button


- Enter resend Handling Unit comment


- Press the “Resend” button. Press the “x” at the top right window if you wish to

cancel this action at this time. 
Message indicating the HU has been resent will be displayed. Verify the HU XML is 
being generated in the PQM history folder (Check with your respective SME if you do not know the PQM folder location) 
Note: This does not guarantee HU message is successfully resent. Always check PQM History folder to confirm and there’s no error in the ECC log viewer for this action.
![image2015-9-9 15:44:36.png](/.attachments/29918886.png)





#### Attachments

[image2015-9-9 15:50:24.png](/.attachments/29918883.png)
[image2015-9-9 15:49:42.png](/.attachments/29918884.png)
[image2015-9-9 15:49:7.png](/.attachments/29918885.png)
[image2015-9-9 15:44:36.png](/.attachments/29918886.png)
[image2015-9-9 15:32:23.png](/.attachments/29918887.png)
[image2015-9-9 15:31:49.png](/.attachments/29918888.png)
[image2015-9-9 15:31:11.png](/.attachments/29918889.png)

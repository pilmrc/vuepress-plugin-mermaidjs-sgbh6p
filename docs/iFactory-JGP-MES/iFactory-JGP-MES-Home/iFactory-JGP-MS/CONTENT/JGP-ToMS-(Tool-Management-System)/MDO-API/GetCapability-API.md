# Introduction

This API is being used for retrieve Capability data from JGP master data so that ToMS can determine which approval workflow to be executed
. 
The front end being used for inserting Json file format.


### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("MDO SWAGGER UI")-->0("CAPABILITYBUSINESSGROUP")
0-->1("GETCAPABILITY")

:::
![image2021-11-4_8-55-16.png](/.attachments/102040671.png)




#### **Permission** 



- Can access API Wrapper



#### **Method** 


Get
**Retrieve  Parameters** 
No parameters to retrieve Capability data.
**Return Parameters** 

- cabilityCode

- capabilityUid

- plantId

- plantName

- workCellId

- workCellName
**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-11-3_15-38-48.png](/.attachments/102040524.png)




#### Attachments

[image2021-11-3_15-6-7.png](/.attachments/102040519.png)
[image2021-11-3_15-1-58.png](/.attachments/102040520.png)
[image2021-11-3_15-23-58.png](/.attachments/102040521.png)
[image2021-11-3_15-31-26.png](/.attachments/102040522.png)
[image2021-11-3_15-38-22.png](/.attachments/102040523.png)
[image2021-11-3_15-38-48.png](/.attachments/102040524.png)
[image2021-11-4_8-55-16.png](/.attachments/102040671.png)

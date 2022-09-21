# Introduction

This API is being used for retrieve Profit Center data from JGP master data so that ToMS can determine which approval workflow to be executed
. 
The front end being used for inserting Json file.


### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("MDO SWAGGER UI")-->0("PROFITCENTER")
0-->1("GETPROFITCENTER")

:::
![image2021-11-3_15-6-7.png](/.attachments/102040506.png)




#### **Permission** 



- Can access API Wrapper



#### **Method** 


Get
**Retrieve  Parameters** 
All the parameter are mandatory.

- PlantCode


- WorkCell


- ProjectCode

**Return Parameters** 

- plantUid

- plantCode

- workCellId

- workCellName

- projectUid

- projectCode

- profitCenterCode

- projectAbbreviation

- bumData

- bumUid


- employeeName

- employeeId

- email

- wcmData

- wumUid

- employeeName

- employeeId

- email

- ioNumberData

- ioNumberUid

- ioNumber


**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-11-3_15-1-58.png](/.attachments/102040504.png)



**Return on Failure** 

If the insert can not found then return blank.![image2021-11-3_15-23-58.png](/.attachments/102040516.png)




#### Attachments

[image2021-8-4_16-2-45.png](/.attachments/102040500.png)
[image2021-11-3_11-40-50.png](/.attachments/102040501.png)
[image2021-11-3_13-30-24.png](/.attachments/102040502.png)
[image2021-11-3_11-46-16.png](/.attachments/102040503.png)
[image2021-11-3_15-1-58.png](/.attachments/102040504.png)
[image2021-11-3_15-3-46.png](/.attachments/102040505.png)
[image2021-11-3_15-6-7.png](/.attachments/102040506.png)
[image2021-11-3_15-23-58.png](/.attachments/102040516.png)

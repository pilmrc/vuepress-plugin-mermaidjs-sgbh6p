# Introduction

This API is being used for insert the approved Repair fixture application data to ToMS so that ToMS will get all data from K2
. Maximum of 50 records allowed to insert at a time. Input file is Json file format.
The front end being used for inserting Json file.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("TOMS SWAGGER UI")-->0("FIXTUREAPPDATA")
0-->1("INSERTRepairFIXTUREAPPDATA")

:::
![image2021-8-16_15-39-28.png](/.attachments/97354255.png)





#### **Permission** 



- Can access API Wrapper



#### **Method** 


Post
**Retrieve  Parameters** 
All the parameter are mandatory.

- applicationId


- applicantUserNTID


- applicantDept


- formType


- capability


- profitCenterId


- profitCenterName


- costCenter


- isNreGear


- stageCode


- subApplicationFormID


- submissionDate


- fixtureGroupCode


- repairType

- requestQty


- unitPrice


- currency


- totalAmonut


- estimatedCompletionDatTime


- remark


- repairReason

- statusLevel

- stationType

- Optional (Station/Cavity/Slot)

- requiredQualification - only true allow to insert into ToMS


- workOrderOpened - Optional


- applicationStatus - only Approved allow to insert into ToMS


- PlantId


- workCellId


- processFunctionId - Optional


- projectCodeId


- fixtureProcessId


- fixtureDrawingNumber


- version


- fixtureName


- bumNTID


- bumName


- ioNumber


**Return Parameters** 
It only return the the Fixture Name which is not deleted. 

- ApplicationId

- subApplicationId

- npiFixtureId

- remark

- isSuccess

- requestString

- bumNTID

- bumName

- ioNumber


**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-11-17_19-12-2.png](/.attachments/103252093.png)



**Return on Failure** 

If the insert is unsuccessful then return specific error message.
Stage Code is not 'EVT, DVT, PVT, Production Ramp, MP.
![image2021-11-17_19-13-10.png](/.attachments/103252094.png)


Required Qualification validation is not true.
![image2021-11-17_19-14-53.png](/.attachments/103252095.png)


Application status is not approved
![image2021-11-17_19-15-25.png](/.attachments/103252096.png)




#### Attachments

[image2021-8-13_11-1-50.png](/.attachments/97354242.png)
[image2021-8-13_11-22-50.png](/.attachments/97354243.png)
[image2021-8-13_11-23-54.png](/.attachments/97354244.png)
[image2021-8-13_11-18-13.png](/.attachments/97354245.png)
[image2021-8-13_11-19-7.png](/.attachments/97354246.png)
[image2021-8-13_11-20-0.png](/.attachments/97354247.png)
[image2021-8-13_11-20-27.png](/.attachments/97354248.png)
[image2021-8-13_11-21-16.png](/.attachments/97354249.png)
[image2021-8-16_15-36-32.png](/.attachments/97354250.png)
[image2021-8-16_15-36-55.png](/.attachments/97354251.png)
[image2021-8-16_15-37-25.png](/.attachments/97354252.png)
[image2021-8-16_15-37-44.png](/.attachments/97354253.png)
[image2021-8-16_15-38-6.png](/.attachments/97354254.png)
[image2021-8-16_15-39-28.png](/.attachments/97354255.png)
[image2021-11-17_19-12-2.png](/.attachments/103252093.png)
[image2021-11-17_19-13-10.png](/.attachments/103252094.png)
[image2021-11-17_19-14-53.png](/.attachments/103252095.png)
[image2021-11-17_19-15-25.png](/.attachments/103252096.png)

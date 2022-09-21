# Introduction

This API is being used for insert the approved new fixture application data to ToMS so that ToMS will get all data from K2
. Maximum of 50 records allowed to insert at a time. Input file is Json file format.
The front end being used for inserting Json file.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("Toms SWAGGER UI")-->0("FIXTUREappdata")
0-->1("InsertNewFixtureappdata")

:::
![image2021-8-13_11-1-50.png](/.attachments/97354172.png)





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


- bumNTID


- bumName


- costCenter


- isNreGear


- requiredQualification - only true allow to insert into ToMS


- stageCode


- submissionDate


- requestDate


- subApplicationFormID


- fixtureGroupCode


- requestQty


- unitPrice


- currency


- totalAmonut


- estimatedCompletionDatTime


- remark


- fixturePlantPartNumber -

It is mandatory for plastic capability but optional for others capability.
- plasticPlantPartNumber

- 
It is mandatory for plastic capability but optional for others capability.
- fixureType


- ioNumber - Optional


- stationType - Optional


- workOrderOpened - Optional


- applicationStatus


- PlantId


- workCellId


- processFunctionId - Optional


- projectCodeId


- fixtureProcessId


- fixtureDrawingNumber


- version


- fixtureName


**Return Parameters** 
It only return the the Fixture Name which is not deleted. 

- ApplicationId


- subApplicationId

- npiFixtureId

- remark

- isSuccess

- requestString


**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-11-17_19-54-55.png](/.attachments/103252101.png)



**Return on Failure** 

If the insert is unsuccessful then return specific error message.
Stage Code is not 'EVT, DVT, PVT, Production Ramp, MP.
![image2021-11-17_19-51-38.png](/.attachments/103252100.png)


Required Qualification validation is not true.
![image2021-8-13_11-19-7.png](/.attachments/97354174.png)


Capability = Plastic and Fixture Plant Part Number be blank
![image2021-8-13_11-20-0.png](/.attachments/97354175.png)


Capability = Plastic and Plastic Plant Part Number be blank
![image2021-8-13_11-20-27.png](/.attachments/97354176.png)


Application status is not approved
![image2021-8-13_11-21-16.png](/.attachments/97354177.png)





#### Attachments

[image2021-8-4_16-2-45.png](/.attachments/97354170.png)
[image2021-8-13_11-1-50.png](/.attachments/97354172.png)
[image2021-8-13_11-18-13.png](/.attachments/97354173.png)
[image2021-8-13_11-19-7.png](/.attachments/97354174.png)
[image2021-8-13_11-20-0.png](/.attachments/97354175.png)
[image2021-8-13_11-20-27.png](/.attachments/97354176.png)
[image2021-8-13_11-21-16.png](/.attachments/97354177.png)
[image2021-8-13_11-22-50.png](/.attachments/97354178.png)
[image2021-8-13_11-23-54.png](/.attachments/97354179.png)
[image2021-11-17_19-51-38.png](/.attachments/103252100.png)
[image2021-11-17_19-54-55.png](/.attachments/103252101.png)

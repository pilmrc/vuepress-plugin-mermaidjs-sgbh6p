# Introduction

This API is being used for insert the approved ECN fixture application data to ToMS so that ToMS will get all data from K2
. Maximum of 50 records allowed to insert at a time. The front end being used for inserting Json file.


### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("TOMS SWAGGER UI")-->0("FIXTUREAPPDATA")
0-->1("INSERTNEWECNFIXTUREAPPDATA")

:::
![image2021-11-3_16-7-55.png](/.attachments/102040537.png)





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


- requestDate


- subApplicationFormID


- originalApplicationFormId


- fixtureGroupCode


- fixtureVersion


- ecnType


- requestQty


- unitPrice


- currency


- totalAmonut


- estimatedCompletionDatTime


- remark


- stationType - Optional (Station/Cavity/Slot)


- requiredQualification - only true allow to insert into ToMS


- ecnDescription


- ecndate


- ecnEffectiveTime

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


- submissionDate


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

- submissionDate

- ioNumber


**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-11-17_18-16-51.png](/.attachments/103252088.png)


**Return on Failure** 

If the insert is unsuccessful then return specific error message.
Stage Code is not 'EVT, DVT, PVT, Production Ramp, MP.
![image2021-11-17_18-19-26.png](/.attachments/103252089.png)


Required Qualification validation is not true.
![image2021-11-17_18-20-7.png](/.attachments/103252090.png)


Application status is not approved
![image2021-11-17_18-20-43.png](/.attachments/103252091.png)




#### Attachments

[image2021-8-13_11-1-50.png](/.attachments/102040528.png)
[image2021-8-13_11-22-50.png](/.attachments/102040529.png)
[image2021-8-13_11-23-54.png](/.attachments/102040530.png)
[image2021-8-13_11-18-13.png](/.attachments/102040531.png)
[image2021-8-13_11-19-7.png](/.attachments/102040532.png)
[image2021-8-13_11-20-0.png](/.attachments/102040533.png)
[image2021-8-13_11-20-27.png](/.attachments/102040534.png)
[image2021-8-13_11-21-16.png](/.attachments/102040535.png)
[image2021-11-3_16-7-50.png](/.attachments/102040536.png)
[image2021-11-3_16-7-55.png](/.attachments/102040537.png)
[image2021-11-3_17-13-14.png](/.attachments/102040539.png)
[image2021-11-3_17-34-8.png](/.attachments/102040545.png)
[image2021-11-3_17-35-9.png](/.attachments/102040547.png)
[image2021-11-3_17-35-50.png](/.attachments/102040548.png)
[image2021-11-17_18-16-51.png](/.attachments/103252088.png)
[image2021-11-17_18-19-26.png](/.attachments/103252089.png)
[image2021-11-17_18-20-7.png](/.attachments/103252090.png)
[image2021-11-17_18-20-43.png](/.attachments/103252091.png)

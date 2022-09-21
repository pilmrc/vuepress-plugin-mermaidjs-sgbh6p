# Introduction

This API is being used for update the approved repair fixture application data to ToMS so that ToMS will get all data from K2
. Maximum of 10 records allowed to update at a time. Input file is Json file format.
The front end being used for inserting Json file.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("TOMS SWAGGER UI")-->0("FIXTUREAPPDATA")
0-->1("INSERTrepairFIXTUREAPPDATA")

:::
![image2021-8-24_8-44-22.png](/.attachments/97354610.png)





#### **Permission** 



- Can access API Wrapper



#### **Method** 


Post
**Retrieve  Parameters** 
All the parameter are mandatory.

- applicationId


- subApplicationFormID


- requiredQualification - only true allow to insert into ToMS


- applicationStatus - I

f the application status is approved then only allow to insert into ToMS.

- remark - Optional. If

the version is provided then this field will become mandatory.

- workOrderOpened - Optional


**Return Parameters** 
It only return the the Fixture Name which is not deleted. 

- repairApplicationFormID

- applicationId

- subApplicationId

- npiFixtureId

- remark

- workOrderOpeed

**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-8-24_8-46-59.png](/.attachments/97354611.png)


Equal or less 10 record
![image2021-8-24_8-47-27.png](/.attachments/97354612.png)


Remark 
be optional![image2021-8-24_8-48-13.png](/.attachments/97354613.png)


Work Order Opened be blank
![image2021-8-24_8-48-31.png](/.attachments/97354614.png)



**Return on Failure** 

If the insert is unsuccessful then return specific error message.
More then 10 record.

![image2021-8-24_8-49-27.png](/.attachments/97354616.png)


Required Qualification validation is not true.
![image2021-8-24_8-50-1.png](/.attachments/97354618.png)


Application status is not approved
![image2021-8-24_8-50-25.png](/.attachments/97354619.png)




#### Attachments

[image2021-8-13_11-44-3.png](/.attachments/97354600.png)




















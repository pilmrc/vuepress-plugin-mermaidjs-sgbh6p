# Introduction

This API is being used for update the approved new fixture application data to ToMS so that ToMS will get all data from K2
. Maximum of 10 records allowed to update at a time. Input file is Json file format.
The front end being used for inserting Json file.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("TOMS SWAGGER UI")-->0("FIXTUREAPPDATA")
0-->1("INSERTNEWFIXTUREAPPDATA")

:::
![image2021-8-13_11-44-3.png](/.attachments/97354198.png)




#### **Permission** 



- Can access API Wrapper



#### **Method** 


Post
**Retrieve  Parameters** 
All the parameter are mandatory.

- applicationId


- subApplicationFormID


- fixtureDrawingVersion - Optional


- requiredQualification - only true allow to insert into ToMS


- applicationStatus - I

f the application status is approved then only allow to insert into ToMS.

- remark - Optional. If

the version is provided then this field will become mandatory.

- workOrderOpened - Optional


**Return Parameters** 
It only return the the Fixture Name which is not deleted. 

- fixtureApplicationFormId

- applicationId

- subApplicationId

- npiFixtureId

- remark

- workOrderOpened

**Return on Successfully** 

If the insert is successful then return successfully message.
![image2021-8-13_11-37-22.png](/.attachments/97354190.png)


Equal or less 10 record
![image2021-8-13_11-41-24.png](/.attachments/97354193.png)


Fixture Drawing Version 
be optional![image2021-8-13_11-40-13.png](/.attachments/97354191.png)


Work Order Opened be blank
![image2021-8-13_11-40-44.png](/.attachments/97354192.png)





**Return on Failure** 

If the insert is unsuccessful then return specific error message.
More then 10 record.
![image2021-8-13_11-41-51.png](/.attachments/97354194.png)


Required Qualification validation is not true.
![image2021-8-13_11-42-6.png](/.attachments/97354195.png)


Application status is not approved
![image2021-8-13_11-42-26.png](/.attachments/97354196.png)


Fixture Drawing Version is not blank but Remark be blank
![image2021-8-13_11-43-11.png](/.attachments/97354197.png)




#### Attachments

[image2021-8-13_11-1-50.png](/.attachments/97354182.png)
[image2021-8-13_11-22-50.png](/.attachments/97354183.png)
[image2021-8-13_11-23-54.png](/.attachments/97354184.png)
[image2021-8-13_11-18-13.png](/.attachments/97354185.png)
[image2021-8-13_11-19-7.png](/.attachments/97354186.png)
[image2021-8-13_11-20-0.png](/.attachments/97354187.png)
[image2021-8-13_11-20-27.png](/.attachments/97354188.png)
[image2021-8-13_11-21-16.png](/.attachments/97354189.png)
[image2021-8-13_11-37-22.png](/.attachments/97354190.png)
[image2021-8-13_11-40-13.png](/.attachments/97354191.png)
[image2021-8-13_11-40-44.png](/.attachments/97354192.png)
[image2021-8-13_11-41-24.png](/.attachments/97354193.png)
[image2021-8-13_11-41-51.png](/.attachments/97354194.png)
[image2021-8-13_11-42-6.png](/.attachments/97354195.png)
[image2021-8-13_11-42-26.png](/.attachments/97354196.png)
[image2021-8-13_11-43-11.png](/.attachments/97354197.png)
[image2021-8-13_11-44-3.png](/.attachments/97354198.png)

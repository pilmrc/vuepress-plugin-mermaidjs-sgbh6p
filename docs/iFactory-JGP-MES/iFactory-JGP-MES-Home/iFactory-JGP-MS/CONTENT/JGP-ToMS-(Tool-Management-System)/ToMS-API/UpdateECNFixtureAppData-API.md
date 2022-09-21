# Introduction

This API is being used for update sompe parameters inECN fixture application form in ToMS from K2 system so the data in both system are in sync
. Input file is Json file format.
The front end being used for inserting Json file.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("TOMS SWAGGER UI")-->0("FIXTUREAPPDATA")
0-->1("INSERTECNFIXTUREAPPDATA")

:::
![image2021-11-3_17-41-20.png](/.attachments/102040568.png)




#### **Permission** 



- Can access API Wrapper



#### **Method** 


Put
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

- ecnFixtureApplicationFormID


- applicationID


- subApplicationId


- npiFixtureID


- remark


- workOrderOpened


**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-11-3_17-52-42.png](/.attachments/102040569.png)



**Return on Failure** 

If the insert is unsuccessful then return specific error message.
Required Qualification validation is not true.
![image2021-11-3_17-53-22.png](/.attachments/102040570.png)


Application status is not approved
![image2021-11-3_17-53-39.png](/.attachments/102040571.png)


Remark be blank
![image2021-11-3_17-54-9.png](/.attachments/102040572.png)




#### Attachments

[image2021-8-13_11-44-3.png](/.attachments/102040559.png)
[image2021-8-13_11-37-22.png](/.attachments/102040560.png)
[image2021-8-13_11-41-24.png](/.attachments/102040561.png)
[image2021-8-13_11-40-13.png](/.attachments/102040562.png)
[image2021-8-13_11-40-44.png](/.attachments/102040563.png)
[image2021-8-13_11-41-51.png](/.attachments/102040564.png)
[image2021-8-13_11-42-6.png](/.attachments/102040565.png)
[image2021-8-13_11-42-26.png](/.attachments/102040566.png)
[image2021-8-13_11-43-11.png](/.attachments/102040567.png)
[image2021-11-3_17-41-20.png](/.attachments/102040568.png)
[image2021-11-3_17-52-42.png](/.attachments/102040569.png)
[image2021-11-3_17-53-22.png](/.attachments/102040570.png)
[image2021-11-3_17-53-39.png](/.attachments/102040571.png)
[image2021-11-3_17-54-9.png](/.attachments/102040572.png)

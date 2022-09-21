# Introduction

The data source which is coming from Workday and it will sync latest data to JGP master data everyday. This API is being used for retrieve organization structure and employee data from JGP master data for approval workflow
. 
The front end being used for inserting Json file.


### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("MDO SWAGGER UI")-->0("EMPLOYEEDATA")
0-->1("GETORGANDEMPLOYEEDATA")

:::
![image2021-11-3_11-40-50.png](/.attachments/102040492.png)





#### **Permission** 



- Can access API Wrapper



#### **Method** 


Get
**Retrieve  Parameters** 
Either 1 need to be
mandatory.
- NTAccountName


- EmailAddress


**Return Parameters** 
It only return the the Fixture Name which is not deleted. 

- id

- employeeId

- supervisorEmployeeId

- firstName

- firstLastName

- secondLastName

- fullName

- legalName

- jobName

- job

- jobFamily

- locationName

- locationId

- companyCode

- jobCategory

- ntAccountName

- email

- status

- costCenter

- costCenterName

- supervisoryOrganization

- supervisorOrganizationName

- manageName


**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-11-3_13-30-24.png](/.attachments/102040494.png)



**Return on Failure** 

If the insert is unsuccessful then return specific error message.![image2021-11-3_11-46-16.png](/.attachments/102040493.png)





#### Attachments

[image2021-8-13_11-1-50.png](/.attachments/102040483.png)
[image2021-8-13_11-22-50.png](/.attachments/102040484.png)
[image2021-8-13_11-23-54.png](/.attachments/102040485.png)
[image2021-8-13_11-18-13.png](/.attachments/102040486.png)
[image2021-8-13_11-19-7.png](/.attachments/102040487.png)
[image2021-8-13_11-20-0.png](/.attachments/102040488.png)
[image2021-8-13_11-20-27.png](/.attachments/102040489.png)
[image2021-8-13_11-21-16.png](/.attachments/102040490.png)
[image2021-11-3_11-40-35.png](/.attachments/102040491.png)
[image2021-11-3_11-40-50.png](/.attachments/102040492.png)
[image2021-11-3_11-46-16.png](/.attachments/102040493.png)
[image2021-11-3_13-30-24.png](/.attachments/102040494.png)

# Introduction

This API is being used by K2 Application when user submit K2 Sub Application Form with Form Type = ECN, perform searching the original fixture application form data in ECN application so that user will be able to know what changing they are going to apply by referring to the original fixture application form data. 
Input file is Json file format.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.
TOMS SWAGGER UI  


FIXTUREAPPDATA  


GETORIGINALFIXTUREADDDATA
![image2021-10-26_20-37-1.png](/.attachments/102039695.png)





#### **Permission** 



- Can access API Wrapper



#### **Method** 


Post
**Input Parameters** 
All the below parameters are mandatory.

- Plant ID (mandatory)

- Work Cell ID (mandatory)
All the below parameters are optional. 

- Process Function ID (optional)

- Original Sub Application Form ID (optional)

- Project Code (optional)

- Fixture Group Code (optional)

- Fixture Name (optional)

- Currency (optional)

- Requestor (optional)

- Request Date From (optional)

- Request Date To (optional)

**Return Parameters** 
If all the Mandatory Input Parameters are fulfilled, return output parameters as below: 

- Plant

- Work Cell

- Process function

- Original Application Form ID

- Project Code

- Fixture Process

- Fixture Drawing Number

- Fixture Drawing version

- Fixture group code (Project code + Fixture Process + Fixture Drawing number)

- Fixture Name

- Request Dept

- Applicant

- Request Date

- Request Quantity

- Fixture Project Stage

- Fixture Producing Type

- Case Closed status

- work Order Opened

\*\* Input Parameters for Request Date (From & To) are in a pair. 

**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-10-26_20-41-54.png](/.attachments/102039697.png)






#### Attachments

[image2021-10-26_19-21-57.png](/.attachments/102039690.png)
[image2021-10-26_19-26-17.png](/.attachments/102039691.png)
[image2021-10-26_19-26-51.png](/.attachments/102039692.png)
[image2021-10-26_20-37-1.png](/.attachments/102039695.png)
[image2021-10-26_20-41-54.png](/.attachments/102039697.png)

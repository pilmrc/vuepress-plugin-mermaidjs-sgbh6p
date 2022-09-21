# Introduction


This API is being used by K2 Application when user submit K2 Sub Application Form with Form Type = ECN & ECN+Repair, and to validate the inserted value via upload function are correctly entered before allow the Sub Application Form to be process and progress for approval.
Input file is Json file format.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.
TOMS SWAGGER UI  


VALIDATEECNSUBFORMFIELD 


VALIDATEECNSUBFORMFIELD 

::: mermaid
graph LR
A("INSERTNEWFIXTUREAPPDATA")
:::
![image2021-10-29_17-22-50.png](/.attachments/102040040.png)




#### **Permission** 



- Can access API Wrapper



#### **Method** 


Post
**Input Parameters** 
All the below are the input parameters :

- Plant (mandatory)

- Plant ID (mandatory)

- Work Cell (mandatory)

- Work Cell ID (mandatory)

- Process Function (mandatory)

- Process Function ID (mandatory)

- Project Code (mandatory)

- Project Code ID (mandatory)

- Original Sub Application Form ID (Mandatory) – allow to enter “NA”

- Fixture Process (mandatory)\*

- Fixture Drawing Number (mandatory)\*

- Fixture Version (mandatory)\*

- Fixture Group Code (mandatory)\*

- Fixture Name (mandatory)\*

- \*All the Optional Field do not require to validate, automatic populate input parameters to output parameters

- Work Order Opened (optional)

- ToMS Qualification (optional)

- Total Amount (optional)

- Currency (optional)

- Unit Price (optional)

- Quantity (optional)

- Station Cavity Slot (optional)

- Desired Completion Date (optional)

- ECN Type (mandatory | Allow only 1,2,3,4&5)

- New Project Code (Mandatory only when ECN Type = 3, else optional)

- New Drawing Number (Mandatory only when ECN Type = 1,2,3 & 5, else optional)

- New Version (Mandatory for all ECN Type (1,2,3,4&5))

- New Fixture Group Code (optional)

- Change Date (optional)

- Effective Date (optional)

- Change Description (optional)

- Remarks (optional)

**Return Parameters** 
If all the Mandatory Input Parameters are fulfilled, return output parameters as below: 

- Plant

- Plant ID

- Work Cell

- Work Cell ID

- Process function

- Process Function ID

- Project Code

- Project Code ID

- Original Sub Application Form ID

- Fixture Process

- Fixture Process ID

- Fixture Drawing Number

- Fixture Drawing version

- Fixture Group Code

- Fixture Name

- Work Order Opened

- ToMS Qualification

- Total Amount

- Currency

- Unit Price

- Quantity

- Station Cavity Slot

- Desired Completion Date

- ECN Type

- New Project Code (refer to ECN Type condition if optional return “NA”)

- New Drawing Number (refer to ECN Type condition if optional return “NA”)

- New version (refer to ECN Type condition if optional return “NA”)

- New Fixture Group Code

- Change Date

- Effective Date

- Change Description

- Remarks
\*\* All the Optional Field do not require to validate, automatic populate input parameters to output parameters, if user entered Blank, return “NA” for Output Parameter. 

**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-10-29_17-24-37.png](/.attachments/102040041.png)


![image2021-10-29_17-24-52.png](/.attachments/102040042.png)






#### Attachments

[image2021-10-26_20-37-1.png](/.attachments/102040035.png)
[image2021-10-26_20-41-54.png](/.attachments/102040036.png)
[image2021-10-26_19-21-57.png](/.attachments/102040037.png)
[image2021-10-26_19-26-17.png](/.attachments/102040038.png)
[image2021-10-26_19-26-51.png](/.attachments/102040039.png)
[image2021-10-29_17-22-50.png](/.attachments/102040040.png)
[image2021-10-29_17-24-37.png](/.attachments/102040041.png)
[image2021-10-29_17-24-52.png](/.attachments/102040042.png)

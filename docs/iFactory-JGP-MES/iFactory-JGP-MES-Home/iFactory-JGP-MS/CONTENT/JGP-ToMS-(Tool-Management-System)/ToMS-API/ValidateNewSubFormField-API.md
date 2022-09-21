# Introduction


This API is being used by K2 Application when user submit K2 Sub Application Form with Form Type = New, and to validate the inserted value via upload function are correctly entered before allow the Sub Application Form to be process and progress for approval.
Input file is Json file format.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.
TOMS SWAGGER UI  


FIXTUREAPPDATA    


VALIDATENEWSUBFORMFIELD
![image2021-10-26_19-21-57.png](/.attachments/102039667.png)





#### **Permission** 



- Can access API Wrapper



#### **Method** 


Post
**Input Parameters** 
All the below parameters are mandatory.

- Plant (mandatory)

- Plant ID (mandatory)

- Work Cell (mandatory)

- Work Cell ID (mandatory)

- Process Function (mandatory)

- Process Function ID (mandatory)

- Project Code (mandatory)

- Project Code ID (mandatory)

- Fixture Process (mandatory)

- Fixture Drawing Number (mandatory)

- Fixture Version (mandatory)

All the below parameters are optional. 
- Work Order Opened (optional)

- ToMS Qualification (optional)

- Fixture Group Code (optional)

- Fixture Name (optional)

- Total Amount (optional)

- Currency (optional)

- Unit Price (optional)

- Quantity (optional)

- Fixture Category (optional)

- Plastic Part No (optional)

- Fixture Part No (optional)

- Brand (optional)

- Fixture Accessory No (optional)

- Material Specification (optional)

- Station Cavity Slot (optional)

- Desired Completion Date (optional)

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

- Fixture Process

- Fixture Process ID

- Work Order Opened

- ToMS Qualification

- Fixture Group Code

- Fixture Drawing Number

- Fixture Version

- Fixture Name

- Total Amount

- Currency

- Unit Price

- Quantity

- Fixture Category

- Plastic Part No

- Fixture Part No

- Brand

- Fixture Accessory No

- Material Specification

- Station Cavity Slot

- Desired Completion Date

- Remarks
\*\* All the Optional Field do not require to validate, automatic populate input parameters to output parameters, if user entered Blank, return “NA” for Output Parameter. 

**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-10-26_19-26-17.png](/.attachments/102039670.png)


![image2021-10-26_19-26-51.png](/.attachments/102039671.png)





#### Attachments

[image2021-8-13_11-44-3.png](/.attachments/100893461.png)
[image2021-8-13_11-37-22.png](/.attachments/100893462.png)
[image2021-8-13_11-41-24.png](/.attachments/100893463.png)
[image2021-8-13_11-40-13.png](/.attachments/100893464.png)
[image2021-8-13_11-40-44.png](/.attachments/100893465.png)
[image2021-8-13_11-41-51.png](/.attachments/100893466.png)
[image2021-8-13_11-42-6.png](/.attachments/100893467.png)
[image2021-8-13_11-42-26.png](/.attachments/100893468.png)
[image2021-8-13_11-43-11.png](/.attachments/100893469.png)
[image2021-10-26_16-46-38.png](/.attachments/102039645.png)
[image2021-10-26_19-21-57.png](/.attachments/102039667.png)
[image2021-10-26_19-26-17.png](/.attachments/102039670.png)
[image2021-10-26_19-26-51.png](/.attachments/102039671.png)

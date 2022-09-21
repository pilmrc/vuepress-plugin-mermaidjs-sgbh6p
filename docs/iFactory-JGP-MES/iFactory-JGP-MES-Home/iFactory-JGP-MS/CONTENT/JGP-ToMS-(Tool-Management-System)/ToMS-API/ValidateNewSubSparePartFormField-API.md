# Introduction


This API is being used by K2 Application when user submit K2 Sub Application Form with Form Type = New and Type = Spare Part, and to validate the inserted value via upload function are correctly entered before allow the Sub Application Form to be process and progress for approval.
Input file is Json file format.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("TOMS SWAGGER UI  ")-->0("FIXTUREAPPDATA")
0-->1("VALIDATENEWSUBSPAREPARTFORMFIELD")

:::
![image2021-10-29_17-34-31.png](/.attachments/102040051.png)





#### **Permission** 



- Can access API Wrapper



#### **Method** 


Post
**Input Parameters** 

- API input parameters as below:

- Plant (mandatory)

- Plant ID (mandatory)

- Work Cell (mandatory)

- Work Cell ID (mandatory)

- Process Function (mandatory)

- Process Function ID (mandatory)

- Project Code (mandatory)

- Project Code ID (mandatory)

- Fixture Process (mandatory)

- \*All the Optional Field do not require to validate, automatic populate input parameters to output parameters

- Work Order Opened (optional)

- ToMS Qualification (optional)

- Fixture Group Code (optional)

- Fixture Drawing Number (optional)

- Fixture Version (optional)

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

If the insert is successful then return successfully message.![image2021-10-29_17-35-22.png](/.attachments/102040052.png)




#### Attachments

[image2021-10-29_17-31-26.png](/.attachments/102040050.png)
[image2021-10-29_17-34-31.png](/.attachments/102040051.png)
[image2021-10-29_17-35-22.png](/.attachments/102040052.png)

# Introduction


This API is being used by K2 Application when user submit K2 Main Application Form, to validate all the uploaded fields are correctly entered before K2 allow and proceed to process the Application Form. 
Input file is Json file format.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.
MDO SWAGGER UI  


VALIDATEMDOFIELD


VALIDATEMAINK2MDOFIELD
![image2021-10-29_11-41-21.png](/.attachments/102040011.png)





#### **Permission** 



- Can access API Wrapper



#### **Method** 


Post
**Input Parameters** 
All the below parameters are mandatory.

- Capability (Mandatory)

- Plant (Mandatory)

- Work Cell (Mandatory)

- Process Function (Mandatory)

- Project (Mandatory)

- Stage (Mandatory)


All the below parameters are optional. 

- Form Type (Optional)

- New Application Type (Optional)

- Department (Optional)

- BUM (Optional)

- WCM (Optional)

- Cost Center (Optional)

- NRE Gear (Optional)

**Return Parameters** 
If all the Mandatory Input Parameters are fulfilled, return output parameters as below: 

- Capability (Mandatory)

- Capability ID (Mandatory)

- Plant (Mandatory)

- Plant ID (Mandatory)

- Work Cell (Mandatory)

- Work Cell ID (Mandatory)

- Process Function (Mandatory)

- Process Function ID (Mandatory)

- ProjectAbbreviation (Mandatory)

- Project ID (Mandatory)

- Profit Center (Mandatory)

- Profit Center ID (Mandatory)

- BUM Employee Name (Mandatory)

- BUM Employee ID (Mandatory)

- BUM Email (Mandatory)

- BUM (Optional \* from Input Parameter)

- WCM Employee Name (Optional)

- WCM Employee ID (Optional)

- WCM Email (Optional)

- WCM (Optional \* from Input Parameter)

- Stage (Mandatory)

- I/O Number (Optional)

- Form Type (Optional)

- New Application Type (Optional)

- Department (Optional)

- Cost Center (Optional)

- NRE Gear (Optional)
All the Optional Field do not require to validate, automatic populate input parameters to output parameters

**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-10-29_11-44-34.png](/.attachments/102040012.png)





#### Attachments

[image2021-10-26_20-37-1.png](/.attachments/102040009.png)
[image2021-10-26_20-41-54.png](/.attachments/102040010.png)
[image2021-10-29_11-41-21.png](/.attachments/102040011.png)
[image2021-10-29_11-44-34.png](/.attachments/102040012.png)

# Introduction

This API is being used for retrieve I/O Number data from JGP master data  for K2 application from usage. 
The front end being used for inserting Json file format.


### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("MDO SWAGGER UI")-->0("PROFITCENTER")
0-->1("GETIONUMBERBYSTAGE")

:::
![image2021-11-4_8-47-43.png](/.attachments/102040669.png)




#### **Permission** 



- Can access API Wrapper



#### **Method** 


Get
**Retrieve  Parameters** 
All the parameter are mandatory.

- PlantCode


- WorkCell


- ProjectCode


- ProfitCenter


- Stage

**Return Parameters** 

- I/O Number in the list


**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-11-4_8-43-37.png](/.attachments/102040665.png)



**Return on Failure** 

If the insert can not found then return blank.![image2021-11-4_8-45-14.png](/.attachments/102040667.png)




#### Attachments

[image2021-11-3_15-6-7.png](/.attachments/102040662.png)
[image2021-11-3_15-1-58.png](/.attachments/102040663.png)
[image2021-11-3_15-23-58.png](/.attachments/102040664.png)
[image2021-11-4_8-43-37.png](/.attachments/102040665.png)
[image2021-11-4_8-44-56.png](/.attachments/102040666.png)
[image2021-11-4_8-45-14.png](/.attachments/102040667.png)
[image2021-11-4_8-47-7.png](/.attachments/102040668.png)
[image2021-11-4_8-47-43.png](/.attachments/102040669.png)

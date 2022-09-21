# Introduction

This API is being used for retrieve project data from JGP master data for configuration in others system
. 
The front end being used for inserting Json file format.


### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("MDO SWAGGER UI")-->0("PROJECT")
0-->1("GETMDOPROJECT")

:::
![image2021-11-3_15-21-5.png](/.attachments/102040512.png)




#### **Permission** 



- Can access API Wrapper



#### **Method** 


Get
**Retrieve  Parameters** 
All the parameter are mandatory.

- Customer


- CustomerDivision

**Return Parameters** 
It only return the the Fixture Name which is not deleted. 

- projectUid

- projectCode

- projectAbbreviation

- IsDelete

- productionStep
**Return on Successfully** 

If the insert is successful then return successfully message.![image2021-11-4_9-3-34.png](/.attachments/102040675.png)



**Return on Failure** 

If the insert can not found then return blank.![image2021-11-4_9-3-56.png](/.attachments/102040678.png)




#### Attachments

[image2021-11-3_15-6-7.png](/.attachments/102040509.png)
[image2021-11-3_15-1-58.png](/.attachments/102040510.png)
[image2021-11-3_15-3-46.png](/.attachments/102040511.png)
[image2021-11-3_15-21-5.png](/.attachments/102040512.png)
[image2021-11-3_15-22-34.png](/.attachments/102040513.png)
[image2021-11-3_15-23-58.png](/.attachments/102040514.png)
[image2021-11-4_9-3-10.png](/.attachments/102040674.png)
[image2021-11-4_9-3-34.png](/.attachments/102040675.png)
[image2021-11-4_9-3-56.png](/.attachments/102040678.png)

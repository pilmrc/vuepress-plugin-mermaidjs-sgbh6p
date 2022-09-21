# Introduction

This API is being used for retrieve Fixture Process through ToMS API for Application form registration in K2 or 
any authorized user getting fixture name through API. Input file is Json file format.
The front end being used for inserting Json file.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("TOMS SWAGGER UI")-->0("NPIFIXTURE")
0-->1("GETFIXTUREProcess")

:::
![image2021-8-20_10-22-3.png](/.attachments/97354566.png)




#### **Permission** 



- Can access API Wrapper



#### **Method** 


Get
**Retrieve  Parameters** 
All the parameter are mandatory.

- PlantId


- WorkCellId


- ProcessFunctionId


- ProjectCodeId

**Return Parameters** 
It only return the the Fixture Process which is not deleted. 

- plantId

- plantName

- workCellId

- workCellName

- processFunctionId

- processFunctionName

- projectCodeId

- projectCodeName

- fixtureProcessId

- fixtureProcessName
**Return on Failure** 
In most cases this function does not return an error. It returns an empty value if the parameters does not retrieve any Fixture Process from the system.


#### Attachments

[image2021-8-4_16-2-45.png](/.attachments/97354565.png)
[image2021-8-20_10-22-3.png](/.attachments/97354566.png)

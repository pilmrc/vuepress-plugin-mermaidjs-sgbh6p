# Introduction

This API is being used for retrieve fixture name through ToMS API for Application form registration in K2 or 
any authorized user getting fixture name through API. Input file is Json file format.
The front end being used for inserting Json file.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("Toms Swagger UI")-->0("npIfixture")
0-->1("getnpifixturename")

:::
![image2021-8-4_16-2-45.png](/.attachments/95814353.png)





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


- FixtureProcessId


- FixtureDrawingNumber

**Return Parameters** 
It only return the the Fixture Name which is not deleted. 

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

- fixtureDrawingNumber

- FixtureDrawingVersion

- FixtureName
**Return on Failure** 
In most cases this function does not return an error. It returns an empty value if the parameters does not retrieve any Fixture name from the system.


#### Attachments

[image2021-7-21_16-11-42.png](/.attachments/95814323.png)
[image2021-8-4_16-2-45.png](/.attachments/95814353.png)

# Introduction

This API is being used for any authorized user getting fixture drawing number through API. Input file is Json file format.
The front end being used for inserting Json file, is Swagger.



### How to get there?


Any user can access the screen having swagger access. User has to login to the application to activate Application session.

::: mermaid
graph LR
A("SWAGGER UI")-->0("iFactory TOMS WEBAPI")
0-->1("NPI FIXTURE")
1-->2("GETNPIFIXTUREDRAWINGNUMBER")

:::
![image2021-7-21_16-11-42.png](/.attachments/95813975.png)




#### **Permission** 



- Can access API Wrapper



#### **Method** 


Get
**Retrieve  Parameters** 

- PlantId


- WorkCellId


- ProcessFunctionId


- ProjectCodeId


- FixtureProcessId

**Return Parameters** 

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
**Return on Failure** 
In most cases this function does not return an error. It returns an empty value if the Id or the filtering does not retrieve any Fixture drawing number from the system.


#### Attachments

[image2019-9-27_16-0-52.png](/.attachments/95813974.png)
[image2021-7-21_16-11-42.png](/.attachments/95813975.png)

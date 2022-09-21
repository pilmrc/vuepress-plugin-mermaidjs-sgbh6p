# Introduction


**The iFactory Jabiltest API Wrapper Client** 
The iFactory Jabiltest API Wrapper Client is a .NET console application that will connect to a specified site iFactory Web API. The client will require the following configuration parameters to be configured in the console application [ifactory-jabiltest-apiwrapper-client.exe.config]. 
The console application is configured to only work with GET requests. 
Note: Use GET requests to retrieve resource representation/information only:
**Parameters:** 

- ApiKey

: this entry represents the 
iFactory
accou
nt that the console application 
will be using to access 
iFactory 
Web API


- ApiSignInUrl

: this entry represents the sign in 
Url
for the API key. A typical value will look like 
[https://servername/security/api/auth/apisignin](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/iFactory-%2D-Jabiltest%2Dapiwrapper%2Dclient.md)
- ApiBaseUrl

: this entry represents the base URL
for the 
iFactory
API Wrapper. 
A typical value will look like 
https://"hostname":9000


## **Step-by-step guide** 


- In order to generate an iFactory API Key, you must have a windows service account previously created, the DCF team should create a iFactory user account for you as a service account.

Each site that required integrate between Jabiltest and iFactory API Wrapper Client needs to have its own iFactory service account [non human] account.
- The

iFactory
service account needs to have the necessary 
permissions [basic permissions for 
Get
WIPInformation, 
OkToStart
],
- Customer access in order to get the result from

iFactory.

- Group access: WRAPPER-ACCESS, WRAPPER-WIP


How to access the client:

- Assuming that we would like to call an exposed API called GetWIPItemById, we will need to first understand the path and the required query strings that we need to pass. To get the details for the GetWIPItemById Web API, we need to access the Wrapper’s Swagger page, which can be found at

[https://servername:9000.](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/iFactory-%2D-Jabiltest%2Dapiwrapper%2Dclient.md)
- From the Swagger page, we will only know the following information for the GetWIPItemById

Web API syntax.


- From Swagger, we will know that GetWIPItemById will require "

Wip unique identifier" 
as query string.![image2022-7-21_16-54-18.png](/.attachments/122749670.png)



**How to simulate the Console: from the command prompt and PowerShell**  

**Command prompt:** 

- Make sure you open the command prompt as an administrator.


- The console will return

the results in a JSON string. For example, 
the above call will return 

- Breaking apart the syntax


- navigate to: c:\ifactory-jabiltest-apiwrapper-client" where the client is located


- Call out the executable: [

[ifactory-jabiltest-apiwrapper-client.exe](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/iFactory-%2D-Jabiltest%2Dapiwrapper%2Dclient.md)] from c:\ifactory-jabiltest-apiwrapper-client"
- The syntax to call the API [

**GetWIPItemById** ] -→ /api/Wip/GetWIPItemById?Id=22
- The entire call is: c:\ifactory-jabiltest-apiwrapper-client"ifactory-jabiltest-apiwrapper-client.exe

**/api/Wip/GetWIPItemById?Id=22** ![image2022-7-21_17-7-57.png](/.attachments/122749671.png)


The results is below:
![image2022-7-21_18-12-46.png](/.attachments/122749679.png)


The console will return
the results in a JSON string.

**PowerShell:** 

- Make sure you open the PowerShell as an administrator.


- The console will return

the results in a JSON string, for example, 
the above call will return 

- Breaking apart the syntax


- make sure you are using this syntax [.\] with PowerShell


- navigate to: c:\ifactory-jabiltest-apiwrapper-client" where the client is located


- Call out the executable: [

[ifactory-jabiltest-apiwrapper-client.exe](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/iFactory-%2D-Jabiltest%2Dapiwrapper%2Dclient.md)] from c:\ifactory-jabiltest-apiwrapper-client"
- The syntax to call the API [

**GetWIPItemById** ] -→ /api/Wip/GetWIPItemById?Id=22
- The entire call is: c:\ifactory-jabiltest-apiwrapper-client" .\ifactory-jabiltest-apiwrapper-client.exe

**/api/Wip/GetWIPItemById?Id=22** ![image2022-7-21_17-36-52.png](/.attachments/122749675.png)


The results is below:
![image2022-7-21_17-34-56.png](/.attachments/122749673.png)


The console will return
the results in a JSON string.

**Installation Package location:** 
The executable package [ifactory-jabiltest-apiwrapper-client.exe] and this instructions document is located in the following 
**URL:** below:[iFactory API Integration with JabilTest Repository](iFactory-JGP-MES/iFactory-JGP-MES-Home/iFactory-JGP-MS/User-Guide/iFactory-%2D-Jabiltest%2Dapiwrapper%2Dclient.md)



## Related articles




**标签内容** 在指定标签中没有内容




#### Attachments

[image2022-7-21_16-54-18.png](/.attachments/122749670.png)
[image2022-7-21_17-7-57.png](/.attachments/122749671.png)
[image2022-7-21_17-12-48.png](/.attachments/122749672.png)
[image2022-7-21_17-34-56.png](/.attachments/122749673.png)
[image2022-7-21_17-36-10.png](/.attachments/122749674.png)
[image2022-7-21_17-36-52.png](/.attachments/122749675.png)
[image2022-7-21_18-12-46.png](/.attachments/122749679.png)

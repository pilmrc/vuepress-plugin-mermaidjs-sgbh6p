**Introduction**
----------------

This function allows users to pack items into the already created container

**Function details**
--------------------

|     |     |     |
| --- | --- | --- |
| URL | /api/Wip/PerformPackWIPItems |     |
| Method | POST |     |
| Message Body Content Type | JSON |     |
| Required Properties | Key | Value |
| Container name (Field mandatory) | Container Name exists in the system |
| WIP Serial number( Field mandatory) | Valid WIP serial number  <br />WIP Should be complete status.  |
| Route Name (Field mandatory) | The route should be valid for the material associated with provided WIP |
| Route Step Name (Field mandatory) | Route Step belongs to Route  <br />Route Step type is WIP Packout |
| Resource Name (Field mandatory) | Resource items exist in the system.  <br />The resource is associated with provided Route Step  <br />The resource is in Production Status |
| DivisionId (Field mandatory) | Division should be valid for the material associated with provided WIP |
| Material (Field mandatory) | The material should be associated with provided WIP |
| Return on Success | 1\. Status - Status of HTTP request  <br />2\. Success message  <br />3\. Result: ContainerName, ContainerStatus, wipSerialNumber(s)<br /> <br />Example - <br /> <br />  <br />Body content:<br /> <br />{  <br />"containerName": "AABKG2554118",  <br />"routeStepName": "BAHAMA-R1-MTE",  <br />"resourceName": "BAHAMA-TEST",  <br />"routeName": "RTN B1",  <br />"serialNumbers": \["mama-19110004"\]  <br />}  <br />Result:  <br />{  <br />"version": "1.0.0.0",  <br />"statusCode": 200,  <br />"message": "Serial numbers were packed",  <br />"isError": false,  <br />"responseException": null,  <br />"result": {  <br />"containerName": "AABKG2554118",  <br />"containerStatus": 1,  <br />"wipSerialNumbers": \[  <br />"MAMA-19110004"  <br />\]  <br />}  <br />} |     |
| Return on Failure | 1\. StatusCode - Status of HTTP request  <br />2\. IsError - True  <br />3\. Name - The name of property causing error. Example - SerialNumbers, ContainerName etc  <br />4\. Reason - The description of error. Example - Serial Numer(s) \[S-301330-0034\] does not exist, Resourse US\_REC\_Un is not in status Production.<br /><br />Example -<br /><br />  <br />Body content:<br /><br />{  <br />"containerName": "AABKG2554118",  <br />"routeStepName": "US-Un-Packout",  <br />"resourceName": "US\_RES\_Un\_Packout",  <br />"routeName": "US\_Unserialized",  <br />"serialNumbers": \["S-301330-0034"\]  <br />}<br /><br />Exception error:  <br />{  <br />"statusCode": 400,  <br />"isError": true,  <br />"responseException": {  <br />"exceptionMessage": "Request responded with one or more validation errors occurred.",  <br />"validationErrors": \[  <br />{  <br />"Name": "SerialNumbers",  <br />"Reason": "Serial Numer(s) \[S-301330-0034\] does not exist"  <br />}  <br />\]  <br />}  <br />} |     |

**Dependency on other iFactory API functions**
----------------------------------------------

*   N/A
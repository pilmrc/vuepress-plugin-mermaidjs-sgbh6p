**Introduction**
----------------

This function allows a third-party application to retrieve Material information from the iFactory System. Users can retrieve Container contents by packed WIP items.

  

**Function details**
--------------------

|     |     |     |
| --- | --- | --- |
| URL | /api/Wip/GetContainerInfoByWIPId |     |
| Method | GET |     |
| Required Properties | CustomerId (Field mandatory) | Customer Id |
| WIP SN(Field mandatory ) | WIP SN (packed WIP items) |
| Return on Success | {  <br />  "customer": "string",  <br />  "division": "string",  <br />  "containerNumber": "string",  <br />  "containerUsageType": "string",  <br />  "containerStatus": "string",  <br />  "containerDetails": {  <br />    "material": "string",  <br />    "assemblyNumber": "string",  <br />    "assemblyRevision": "string",  <br />    "assemblyVersion": "string",  <br />    "containerTotalItems": 0,  <br />    "containerMaxCapacity": 0,  <br />    "wipSerialNumbers": \[  <br />      {  <br />        "serialNumber": "string"  <br />      }  <br />    \]  <br />  }  <br />}. |     |
| Return on Failure | 1.  Status - Status of HTTP request<br />2.  Error Message - The message describing the error            <br />3.  Error Code - An internal code to trace the error |     |

**Dependency on other iFactory API functions**
----------------------------------------------

*   N/A
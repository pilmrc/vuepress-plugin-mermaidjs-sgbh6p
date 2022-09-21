**Introduction**
----------------

This function allows a third party application to retrieve Material information from iFactory System. User can retrieve Materials by filtering any of the available fields, or by stating the Material Id

In a typical scenario, this function is called when further details about a Material is needed for the process in the third party application.

**Function Details**
--------------------

|     |     |
| --- | --- |
| URL | Retrieve All - [http://\[servername\]:2010/odata/materials](http://usplnd0ifaweb42:2010/odata/wips?$filter=SerialNumber). (Limited to maximum of 500 records)<br /><br />Retrieve by Filter - [http://\[servername\]:2010/odata/materials?$filter=](http://usplnd0ifaweb42:2010/odata/wips?$filter=SerialNumber)Name eq '\[Material Name\]'<br /><br />Retrieve by Id - [http://\[servername\]:2010/odata/materials(\[Material Id\])](http://usplnd0ifaweb42:2010/odata/wips(3)) |     |
| Method | GET |     |
| Return on Success | 1.  Id - Material Id<br />2.  Name<br />3.  Description<br />4.  PlantCode<br />5.  MaterialType - Shop Floor Material Type. Can be "WIP", "SerializedMaterial", "UnserializedMaterial", "Inventory" |     |
| Return on Failure | In most cases this function does not return an error. It returns an empty value if the Id or the filtering does not retrieve any Material from the system.<br /><br />Error can occur when the the filter statement is invalid. For instance a field name is wrongly entered. In that case an error will be returned in below format.<br /><br />"error": {  <br />"code": "\[error code. can be empty\]",  <br />"message": \[error message describing the error in detail\]"  <br />} |     |

**Dependency on other iFactory API functions**
----------------------------------------------

N/A
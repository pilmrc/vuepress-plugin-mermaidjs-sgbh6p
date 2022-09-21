**Introduction**
----------------

This function allows a third party application to retrieve Serialized Materials information from iFactory System. User can retrieve Serialized Materials by filtering any of the available fields, or by stating the Serialized Material Id

In a typical scenario, this function is called when the third party application requires further information regarding a Serialized Material in its process. The Serialized Material Id is used in other API functions to retrieve additional information regarding the Serialized Material

**Function Details**
--------------------

|     |     |
| --- | --- |
| URL | Retrieve All - [http://usplnd0ifaweb42:2010/odata/serializedMaterials](http://usplnd0ifaweb42:2010/odata/wips?$filter=SerialNumber) (Limited to maximum of 500 records)<br /><br />Retrieve by Filter - [http://usplnd0ifaweb42:2010/odata/serializedMaterials?$filter=SerialNumber](http://usplnd0ifaweb42:2010/odata/wips?$filter=SerialNumber) eq '\[serialnumber\]'<br /><br />Retrieve by Id - [http://usplnd0ifaweb42:2010/odata/serializedMaterials(\[SerializedMaterialId\])](http://usplnd0ifaweb42:2010/odata/wips(3)) |     |
| Method | GET |     |
| Return on Success | 1.  Id - Serialized Material Id<br />2.  SerialNumber<br />3.  CustomerName<br />4.  CustomerId<br />5.  MaterialName<br />6.  MaterialId<br />7.  IsOnHold - Indicate whether the WIP is currently on hold. True or False<br />8.  IsScrapped - Indicate whether the WIP is already scrapped. True or False<br />9.  IsReferenceUnit - Indicate whether the WIP is currently being used as a Reference Unit. True or False<br />10.  CreationDate - The datetime the WIP is created/released. |     |
| Return on Failure | In most cases this function does not return an error. It returns an empty value if the Id or the filtering does not retrieve any Serialized Material from the system.<br /><br />Error can occur when the the filter statement is invalid. For instance a field name is wrongly entered. In that case an error will be returned in below format.<br /><br />"error": {  <br />"code": "\[error code. can be empty\]",  <br />"message": \[error message describing the error in detail\]"  <br />} |     |

**Dependency on other iFactory API functions**
----------------------------------------------

N/A
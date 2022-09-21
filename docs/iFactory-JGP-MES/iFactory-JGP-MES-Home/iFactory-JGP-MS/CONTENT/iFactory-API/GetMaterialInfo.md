**Introduction**
----------------

This function allows a third-party application to retrieve Material information from the iFactory System. Users can retrieve Materials by filtering any of the available fields, or by stating the Material Id

In a typical scenario, this function is called when further details about a Material are needed for the process in the third-party application.

**Function details**
--------------------

|     |     |     |
| --- | --- | --- |
| URL | /api/PMI/GetMaterialInfo |     |
| Method | GET |     |
| Required Properties | MaterialId (Field mandatory if Product Family is blank) | Material Id |
| ProductFamily (Field mandatory if Material is blank) | Product Family configured in material |
| Return on Success | 1.  Id - Material Id<br />2.  Name<br />3.  Description<br />4.  PlantCode<br />5.  MaterialType - Shop Floor Material Type. Can be "WIP", "SerializedMaterial", "UnserializedMaterial", "Inventory"<br />6.  Actual Weight<br />7.  Minimum Weight<br />8.  Maximum Weight<br />9.  Weight UOM<br />10.  CustomerPartNumber<br />    <br />11.  MaterialStatus<br />    <br />12.  ReleaseDocumentId<br />    <br />13.  ReleaseDocumentName<br />    <br />14.  ReleaseDocumentVersion<br />    <br />15.  ProductFamily<br />    <br />16.  CustomerName<br />    <br />17.  DivisionName<br />    <br />18.  IsPanel |     |
| Return on Failure | In most cases this function does not return an error. It returns an empty value if the Id or the filtering does not retrieve any Material from the system.<br /><br />Error can occur when the the filter statement is invalid. For instance a field name is wrongly entered. In that case an error will be returned in below format.<br /><br />"error": {  <br />"code": "\[error code. can be empty\]",  <br />"message": \[error message describing the error in detail\]"  <br />} |     |

**Dependency on other iFactory API functions**
----------------------------------------------

*   N/A
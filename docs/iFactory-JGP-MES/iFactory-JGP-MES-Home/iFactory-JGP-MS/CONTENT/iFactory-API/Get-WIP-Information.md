**Introduction**
----------------

This function allows a third-party application to retrieve WIPs information from the iFactory System. Users can retrieve WIPs by filtering any of the available fields, or by stating the Wip Id

In a typical scenario, this is usually the first function called within a process as it is the only way to retrieve a Wip Id from a Serial Number. The WIP Id will subsequently be used in many other iFactory API functions. It is also common to retrieve any of the WIP information as an input to the application process.

**Function details**
--------------------

|     |     |     |
| --- | --- | --- |
| URL | /api/Wip/GetWipInfoBySerialNumber |     |
|     | GET |     |
| Required Properties | WIP SN(Field mandatory) | WIP SN |
| Return on Success | 1.  Id - This is the internal WIP Id used for many of the subsequent APIs<br />2.  SerialNumber<br />3.  CustomerName<br />4.  CustomerId<br />5.  MaterialName<br />6.  MaterialId<br />7.  AssemblyId<br />8.  AssemblyNumber<br />9.  AssemblyRevision<br />10.  AssemblyVersion<br />11.  AssemblyDescription<br />12.  AssemblyStatus<br />13.  IsOnHold - Indicate whether the WIP is currently on hold. True or False<br />14.  IsScrapped - Indicate whether the WIP is already scrapped. True or False<br />15.  IsPacked - Indicate whether the WIP is currently packed in a container. True or False<br />16.  IsReferenceUnit - Indicate whether the WIP is currently being used as a Reference Unit. True or False<br />17.  CreationDate - The datetime the WIP is created/released<br />18.  DivisionId<br />19.  Division Name<br />20.  Wip Status<br />21.  Upds. Contains an array of Unique Product Datas associated to the WIP each with below details<br />    1.  UpdName<br />    2.  UpdTypeName<br />    3.  UpdValue<br />22.  In Queue Route Steps<br />23.  Parent WIP (only populated if Is Assembled is true)<br />    1.  Parent Id (Parent WIP ID)  - (only populated if Parent WIP field is not NULL)<br />    2.  Parent Serial Number - (only populated if Parent WIP field is not NULL)<br />24.  BOM<br />    1.  BOM ID<br />    2.  BOM Name<br />    3.  BOM Revision<br />    4.  BOM Alternative<br />    5.  BOM Version<br />    6.  BOM Material Name<br />    7.  BOM Description<br />    8.  BOM Status<br />    9.  BOM Type<br />    10.  Is Current<br />    11.  Valid From<br />    12.  Valid To<br />25.  Material<br />    1.  Id (Material ID)<br />    2.  Material Name<br />    3.  Material Description<br />    4.  PlantCode<br />    5.  Material Type<br />    6.  Actual Weight<br />    7.  Minimum Weight<br />    8.  Maximum Weight<br />    9.  Weight UOM<br />    10.  Customer Part Number<br />        <br />    11.  Material Status<br />        <br />    12.  Release Document Id<br />        <br />    13.  Release Document Name<br />        <br />    14.  Release Document Version<br />    15.  Product Family<br />    16.  Customer Name<br />    17.  Division Name<br />    18.  Is Panel |     |
| Return on Failure | In most cases, this function does not return an error. It returns an empty value if the Id or the filtering does not retrieve any WIP from the system.<br /><br />The error can occur when the filter statement is invalid. For instance, a field name is wrongly entered. In that case, an error will be returned in the below format.<br /><br />"error": {  <br />"code": "\[error code. can be empty\]",  <br />"message": \[error message describing the error in detail\]"  <br />} |     |

**Dependency on other iFactory API functions**
----------------------------------------------

*   N/A
**Introduction**
----------------

This function allows a third party application to retrieve WIPs information from iFactory System. User can retrieve WIPs by filtering any of the available fields, or by stating the Wip Id

In a typical scenario, this is usually the first function called within a process as it is the only way to retrieve a Wip Id from a Serial Number. The WIP Id will subsequently be used in many other iFactory API functions. It is also common to retrieve any of the WIP information as a input to the application process.

**Function Details**
--------------------

|     |     |
| --- | --- |
| URL | Retrieve All - [http://usplnd0ifaweb42:2010/odata/wips](http://usplnd0ifaweb42:2010/odata/wips?$filter=SerialNumber) (Limited to maximum of 500 records)<br /><br />Retrieve by Filter - [http://usplnd0ifaweb42:2010/odata/wips?$filter=SerialNumber](http://usplnd0ifaweb42:2010/odata/wips?$filter=SerialNumber) eq '\[Serial Number\]'<br /><br />Retrieve by Id - [http://usplnd0ifaweb42:2010/odata/wips(\[WIP Id\])](http://usplnd0ifaweb42:2010/odata/wips(3)) |     |
| Method | GET |     |
| Return on Success | 1.  AssemblyValidFrom - Assembly Valid From Datetime<br />2.  AssemblyValidTo - Assembly Valid To Datetime<br />3.  Id - Wip Id<br />4.  SerialNumber<br />5.  CustomerName<br />6.  CustomerId<br />7.  MaterialName<br />8.  MaterialId<br />9.  AssemblyId<br />10.  AssemblyNumber<br />11.  AssemblyRevision<br />12.  AssemblyVersion<br />13.  AssemblyDescription<br />14.  AssemblyCustomerRevision<br />15.  AssemblyCustomerNumber<br />16.  AssemblyStatus<br />17.  IsOnHold - Indicate whether the WIP is currently on hold. True or False<br />18.  IsScrapped - Indicate whether the WIP is already scrapped. True or False<br />19.  IsPacked - Indicate whether the WIP is currently packed in a container. True or False<br />20.  IsReferenceUnit - Indicate whether the WIP is currently being used as a Reference Unit. True or False<br />21.  CreationDate - The datetime the WIP is created/released. |     |
| Return on Failure | In most cases this function does not return an error. It returns an empty value if the Id or the filtering does not retrieve any WIP from the system.<br /><br />Error can occur when the the filter statement is invalid. For instance a field name is wrongly entered. In that case an error will be returned in below format.<br /><br />"error": {  <br />"code": "\[error code. can be empty\]",  <br />"message": \[error message describing the error in detail\]"  <br />} |     |

**Dependency on other iFactory API functions**
----------------------------------------------

N/A